#include <lmic.h>
#include <hal/hal.h>
#include <SPI.h>
#include "wiring_private.h"
#include <TinyGPS++.h>
#include <LoraEncoder.h>
#include <Wire.h>
#include <HIH61xx.h>
#include <AsyncDelay.h>
#include <SparkFunLSM9DS1.h>
#define LSM9DS1_M 0x1E
#define LSM9DS1_AG 0x6B
#define DECLINATION -8.58 // Declination (degrees) in Boulder, CO.

Uart GPSSerial(&sercom2, 3, 4, SERCOM_RX_PAD_1, UART_TX_PAD_0); // create uart on pin 3 and 4 for GPS
void SERCOM2_Handler()
{
  GPSSerial.IrqHandler();
}
int GPSBaud = 9600;
int16_t Temperature;
uint16_t relativeHumidity;
float Lat, Long, GForce;
bool IsHumidityOutOfBoundary, IsTemperatureOutOfBoundary, IsTiltedOutOfBoundary, ShockDetected;
float tiltedBoundaryDegrees = 45;
float TemperatureBoundary[] = {-20, 40}; //{LOW, HIGH}
float HumidityBoundary[] = {0, 55};      //{LOW, HIGH}
TinyGPSPlus gps;
AsyncDelay samplingInterval;
HIH61xx<TwoWire> hih(Wire);
byte payload[12];
LoraEncoder encoder(payload);
LSM9DS1 imu;
static const PROGMEM u1_t NWKSKEY[16] = {0x96, 0x74, 0x6C, 0x57, 0xD8, 0xE3, 0xB1, 0xD6, 0x3A, 0x04, 0x83, 0x04, 0xC4, 0x56, 0x8D, 0x36};
static const u1_t PROGMEM APPSKEY[16] = {0x1F, 0x42, 0x97, 0x73, 0xAE, 0xEA, 0xDA, 0xE8, 0xD4, 0xEE, 0x45, 0xF7, 0x54, 0xD4, 0xAE, 0x57};
static const u4_t DEVADDR = 0x26011BFE;
void os_getArtEui(u1_t *buf) {}
void os_getDevEui(u1_t *buf) {}
void os_getDevKey(u1_t *buf) {}

static osjob_t sendjob;
const unsigned TX_INTERVAL = 30;

const lmic_pinmap lmic_pins = {
    .nss = 12,
    .rxtx = LMIC_UNUSED_PIN,
    .rst = 6,
    .dio = {38, 2, LMIC_UNUSED_PIN},
};

void onEvent(ev_t ev)
{
  Serial.print(os_getTime());
  Serial.print(": ");
  switch (ev)
  {
  case EV_TXCOMPLETE:
    Serial.println(F("EV_TXCOMPLETE (includes waiting for RX windows)"));
    if (LMIC.txrxFlags & TXRX_ACK)
      Serial.println(F("Received ack"));
    if (LMIC.dataLen)
    {
      Serial.println(F("Received "));
      Serial.println(LMIC.dataLen);
      Serial.println(F(" bytes of payload"));
    }
    // Schedule next transmission
    os_setTimedCallback(&sendjob, os_getTime() + sec2osticks(TX_INTERVAL), do_send);
    break;
  default:
    Serial.println(F("Unknown event"));
    break;
  }
}

void do_send(osjob_t *j)
{
  if (LMIC.opmode & OP_TXRXPEND)
    Serial.println(F("OP_TXRXPEND, not sending"));
  else
  {
    encoder.writeTemperature(Temperature);
    encoder.writeHumidity(relativeHumidity);
    encoder.writeLatLng(Lat, Long);
    encoder.writeBitmap(IsTemperatureOutOfBoundary, IsHumidityOutOfBoundary,
                        IsTiltedOutOfBoundary, ShockDetected, false, false, false, false);
    LMIC_setTxData2(1, payload, sizeof(payload) - 1, 0);
    Serial.println(F("Packet queued"));
  }
}

void setup()
{
  Serial.begin(115200);
  Serial.println("Starting");
  GPSSerial.begin(GPSBaud);
  pinPeripheral(3, PIO_SERCOM_ALT);
  pinPeripheral(4, PIO_SERCOM_ALT);
  samplingInterval.start(2000, AsyncDelay::MILLIS);
  Wire.begin();
  hih.initialise();
  delay(100);
  os_init();
  LMIC_reset();
#ifdef PROGMEM
  uint8_t appskey[sizeof(APPSKEY)];
  uint8_t nwkskey[sizeof(NWKSKEY)];
  memcpy_P(appskey, APPSKEY, sizeof(APPSKEY));
  memcpy_P(nwkskey, NWKSKEY, sizeof(NWKSKEY));
  LMIC_setSession(0x1, DEVADDR, nwkskey, appskey);
#endif
  LMIC_setupChannel(0, 868100000, DR_RANGE_MAP(DR_SF12, DR_SF7), BAND_CENTI);  // g-band
  LMIC_setupChannel(1, 868300000, DR_RANGE_MAP(DR_SF12, DR_SF7B), BAND_CENTI); // g-band
  LMIC_setupChannel(2, 868500000, DR_RANGE_MAP(DR_SF12, DR_SF7), BAND_CENTI);  // g-band
  LMIC_setupChannel(3, 867100000, DR_RANGE_MAP(DR_SF12, DR_SF7), BAND_CENTI);  // g-band
  LMIC_setupChannel(4, 867300000, DR_RANGE_MAP(DR_SF12, DR_SF7), BAND_CENTI);  // g-band
  LMIC_setupChannel(5, 867500000, DR_RANGE_MAP(DR_SF12, DR_SF7), BAND_CENTI);  // g-band
  LMIC_setupChannel(6, 867700000, DR_RANGE_MAP(DR_SF12, DR_SF7), BAND_CENTI);  // g-band
  LMIC_setupChannel(7, 867900000, DR_RANGE_MAP(DR_SF12, DR_SF7), BAND_CENTI);  // g-band
  LMIC_setupChannel(8, 868800000, DR_RANGE_MAP(DR_FSK, DR_FSK), BAND_MILLI);   // g2-band
  LMIC_setLinkCheckMode(0);
  LMIC.dn2Dr = DR_SF9;
  LMIC_setDrTxpow(DR_SF7, 14);
  os_setTimedCallback(&sendjob, os_getTime() + sec2osticks(TX_INTERVAL), do_send);
}

void loop()
{
  read9dof();
  readGPS();
  readhumTemp();
  os_runloop_once();
}
void readGPS()
{
  while (GPSSerial.available() > 0)
    gps.encode(GPSSerial.read());
  if (gps.location.isUpdated())
  {
    Lat = gps.location.lat();
    Long = gps.location.lng();
  }
}
void readhumTemp()
{
  if (samplingInterval.isExpired() && !hih.isSampling())
  {
    hih.start();
    samplingInterval.repeat();
  }
  hih.process();
  if (hih.isFinished())
  {
    relativeHumidity = hih.getRelHumidity() / 100.0;
    Temperature = hih.getAmbientTemp() / 100.0;
    if (relativeHumidity < HumidityBoundary[0] || relativeHumidity > HumidityBoundary[1])
      IsHumidityOutOfBoundary = true;
    if (Temperature < TemperatureBoundary[0] || Temperature > TemperatureBoundary[1])
      IsTemperatureOutOfBoundary = true;
  }
}

void read9dof()
{
  readImu();
  if (calcTilted(imu.ax, imu.ay, imu.az, -imu.my, -imu.mx, imu.mz, tiltedBoundaryDegrees))
    IsTiltedOutOfBoundary = true;
  if (shockDetected())
  {
    // use this method "getGForce();" to send lora signal with this value
    ShockDetected = true;
    float gforce = getGForce();
    if (gforce > GForce)
      GForce = gforce;
  }
}

// returns true or false. true if 9dof stick is tilted over boundaryDegrees
bool calcTilted(float ax, float ay, float az, float mx, float my, float mz, float boundaryDegrees)
{
  float roll = atan2(ay, az);
  float pitch = atan2(-ax, sqrt(ay * ay + az * az));
  float heading;
  if (my == 0)
    heading = (mx < 0) ? PI : 0;
  else
    heading = atan2(mx, my);
  heading -= DECLINATION * PI / 180;
  if (heading > PI)
    heading -= (2 * PI);
  else if (heading < -PI)
    heading += (2 * PI);

  // Convert everything from radians to degrees:
  heading *= 180.0 / PI;
  pitch *= 180.0 / PI;
  roll *= 180.0 / PI;

  bool outOfBoundsRoll = (roll < boundaryDegrees && roll > boundaryDegrees * -1);
  bool outOfBoundsPitch = (pitch < boundaryDegrees && pitch > boundaryDegrees * -1);
  if (outOfBoundsRoll && outOfBoundsPitch)
    return true;
  return false;
}

bool shockDetected()
{
  float accel_z = getGForce();
  if (accel_z > 1.5 || accel_z < 0.5)
    return true;
  return false;
}

float getGForce()
{
  return imu.calcAccel(imu.az);
}

void readImu()
{
  if (imu.gyroAvailable())
    imu.readGyro();
  if (imu.accelAvailable())
    imu.readAccel();
  if (imu.magAvailable())
    imu.readMag();
}
