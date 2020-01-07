#include <Wire.h>
#include <SparkFunLSM9DS1.h>

LSM9DS1 imu;

#define LSM9DS1_M 0x1E
#define LSM9DS1_AG 0x6B
#define PRINT_CALCULATED
//#define PRINT_RAW
#define PRINT_SPEED 250
static unsigned long lastPrint = 0;


// Earth's magnetic field varies by location. Add or subtract
// a declination to get a more accurate heading. Calculate
// your's here:
// http://www.ngdc.noaa.gov/geomag-web/#declination
#define DECLINATION -8.58 // Declination (degrees) in Boulder, CO.
#include "wiring_private.h" // pinPeripheral() function
Uart GPSSerial(&sercom2, 3, 4, SERCOM_RX_PAD_1, UART_TX_PAD_0);
void SERCOM2_Handler()
{
  GPSSerial.IrqHandler();
}
//void printGyro();
void printAccel();
//void printMag();
void printAttitude(float ax, float ay, float az, float mx, float my, float mz);

void setup()
{
  GPSSerial.begin(115200);
  pinPeripheral(3, PIO_SERCOM_ALT);
  pinPeripheral(4, PIO_SERCOM_ALT);
  imu.settings.device.commInterface = IMU_MODE_I2C;
  imu.settings.device.mAddress = LSM9DS1_M;
  imu.settings.device.agAddress = LSM9DS1_AG;
  if (!imu.begin())
  {
    GPSSerial.println("Failed to communicate with LSM9DS1.");
    GPSSerial.println("Double-check wiring.");
    GPSSerial.println("Default settings in this sketch will "
                      "work for an out of the box LSM9DS1 "
                      "Breakout, but may need to be modified "
                      "if the board jumpers are.");
    while (1)
      ;
  }
}

void loop()
{
  if (imu.gyroAvailable())
  {
    imu.readGyro();
  }
  if (imu.accelAvailable())
  {
    imu.readAccel();
  }
  if (imu.magAvailable())
  {
    imu.readMag();
  }

  if ((lastPrint + PRINT_SPEED) < millis())
  {
    //printGyro();  // Print "G: gx, gy, gz"
    printAccel(); // Print "A: ax, ay, az"
    //printMag();   // Print "M: mx, my, mz"
    printAttitude(imu.ax, imu.ay, imu.az,
                  -imu.my, -imu.mx, imu.mz);
    GPSSerial.println();
    lastPrint = millis(); // Update lastPrint time
  }
}

//void printGyro()
//{
//  Serial.print("G: ");
//#ifdef PRINT_CALCULATED
//  Serial.print(imu.calcGyro(imu.gx), 2);
//  Serial.print(", ");
//  Serial.print(imu.calcGyro(imu.gy), 2);
//  Serial.print(", ");
//  Serial.print(imu.calcGyro(imu.gz), 2);
//  Serial.println(" deg/s");
//#elif defined PRINT_RAW
//  Serial.print(imu.gx);
//  Serial.print(", ");
//  Serial.print(imu.gy);
//  Serial.print(", ");
//  Serial.println(imu.gz);
//#endif
//}

void printAccel()
{
  // Serial.print("A: ");
#ifdef PRINT_CALCULATED
  //  Serial.print(imu.calcAccel(imu.ax), 2);
  //  Serial.print(", ");
  //  Serial.print(imu.calcAccel(imu.ay), 2);
  //  Serial.print(", ");

  float accel_z = imu.calcAccel(imu.az);
  if (accel_z > 1.5 || accel_z < 0.5)
  {
    GPSSerial.print("Shock detected with a value of: ");
    GPSSerial.println(accel_z);
  }

  //  Serial.println(" g");
#elif defined PRINT_RAW
  //  Serial.print(imu.ax);
  //  Serial.print(", ");
  //  Serial.print(imu.ay);
  //  Serial.print(", ");
  // Serial.println(imu.az);
#endif
}

//void printMag()
//{
//  Serial.print("M: ");
//#ifdef PRINT_CALCULATED
//  Serial.print(imu.calcMag(imu.mx), 2);
//  Serial.print(", ");
//  Serial.print(imu.calcMag(imu.my), 2);
//  Serial.print(", ");
//  Serial.print(imu.calcMag(imu.mz), 2);
//  Serial.println(" gauss");
//#elif defined PRINT_RAW
//  Serial.print(imu.mx);
//  Serial.print(", ");
//  Serial.print(imu.my);
//  Serial.print(", ");
//  Serial.println(imu.mz);
//#endif
//}

// Calculate pitch, roll, and heading.
// Pitch/roll calculations take from this app note:
// http://cache.freescale.com/files/sensors/doc/app_note/AN3461.pdf?fpsp=1
// Heading calculations taken from this app note:
// http://www51.honeywell.com/aero/common/documents/myaerospacecatalog-documents/Defense_Brochures-documents/Magnetic__Literature_Application_notes-documents/AN203_Compass_Heading_Using_Magnetometers.pdf
void printAttitude(float ax, float ay, float az, float mx, float my, float mz)
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

  //  Serial.print("Pitch, Roll: ");
  //  Serial.print(pitch, 2);
  //  Serial.print(", ");
  //  Serial.println(roll, 2);
  //  Serial.print("Heading: "); Serial.println(heading, 2);
}
