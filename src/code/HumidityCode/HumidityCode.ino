#include "wiring_private.h" // pinPeripheral() function
#include <Wire.h>
#include <HIH61xx.h>
#include <AsyncDelay.h>
Uart GPSSerial(&sercom2, 3, 4, SERCOM_RX_PAD_1, UART_TX_PAD_0); // create uart on pin 3 and 4 for GPS
void SERCOM2_Handler()
{
  GPSSerial.IrqHandler();
}
HIH61xx<TwoWire> hih(Wire);
AsyncDelay samplingInterval;

void setup()
{
  GPSSerial.begin(9600);
  pinPeripheral(3, PIO_SERCOM_ALT);
  pinPeripheral(4, PIO_SERCOM_ALT);
  Wire.begin();
  hih.initialise();
  samplingInterval.start(2000, AsyncDelay::MILLIS);
}


bool printed = true;
void loop()
{
  GPSSerial.println("GPS SERIAL Humidity");
  if (samplingInterval.isExpired() && !hih.isSampling()) {
    hih.start();
    printed = false;
    samplingInterval.repeat();
  }
  hih.process();
  if (hih.isFinished() && !printed) {
    printed = true;
    GPSSerial.print("Relative Humidity: ");
    GPSSerial.print(hih.getRelHumidity() / 100.0);
    GPSSerial.println(" %RH");
    GPSSerial.print("Temperature: ");
    GPSSerial.print(hih.getAmbientTemp() / 100.0);
    GPSSerial.println(" °C");
  }
}
