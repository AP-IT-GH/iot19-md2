//9Dof

#include <SPI.h> // SPI library included for SparkFunLSM9DS1
#include <Wire.h> // I2C library included for SparkFunLSM9DS1
#include <SparkFunLSM9DS1.h> // SparkFun LSM9DS1 library


LSM9DS1 imu;
#define LSM9DS1_M  0x1E // Would be 0x1C if SDO_M is LOW
#define LSM9DS1_AG  0x6B // Would be 0x6A if SDO_AG is LOW

static unsigned long lastGyro = 0;  // Keep track of gyro time
float previousGyro = 0; // previous gyro state


float rotation = 0;
float rotationCorrection = 1.11;

#define PRINT_CALCULATED
//#define PRINT_RAW
#define PRINT_SPEED 250 // 250 ms between prints

static unsigned long lastPrint = 0; // Keep track of print time


void init9Dof() {
  
  imu.settings.device.commInterface = IMU_MODE_I2C;
  imu.settings.device.mAddress = LSM9DS1_M;
  imu.settings.device.agAddress = LSM9DS1_AG;
  imu.begin();
  
  if (!imu.begin()){
    
      Serial.println("Failed to communicate with LSM9DS1");
      Serial.println("Check connections, and try again.");
      Serial.println();
     while (1);
  }  
  
}
void setup() {
Serial.begin(115200);
Serial.print("Serial Started");
init9Dof();

}

void loop() {
updateGyro();
//printAccel();
}
void printAccel()
{
 
  // To read from the accelerometer, you must first call the
  // readAccel() function. When this exits, it'll update the
  // ax, ay, and az variables with the most current data.
   if ( imu.accelAvailable() ){
  imu.readAccel();
   }
  float accelX = imu.calcAccel(imu.ax);
  float accelY = imu.calcAccel(imu.ay);
  float accelZ = imu.calcAccel(imu.az);
  
    if ((lastPrint + PRINT_SPEED) < millis())
  {
  // Now we can use the ax, ay, and az variables as we please.
  Serial.print("A: ");
  Serial.print(accelX);
  Serial.print(", ");
  Serial.print(accelY);
  Serial.print(", ");
  Serial.println(accelZ);
  Serial.println();
    
    lastPrint = millis(); // Update lastPrint time
  }
  // Now we can use the ax, ay, and az variables as we please.
  Serial.print("A: ");
  Serial.print(accelX);
  Serial.print(", ");
  Serial.print(accelY);
  Serial.print(", ");
  Serial.println(accelZ);

  /*if ((abs(accelX)||(abs(accelY)||(abs(accelZ) >= 1.60))))
  {
    Serial.print("product is broken");
  }*/
  delay (500);
}

void updateGyro() {
  // Update the sensor values whenever new data is available
  if ( imu.gyroAvailable() )
  {
    // update gx, gy, and gz variables with the most current data.
    imu.readGyro();
  }
  if ((lastPrint + PRINT_SPEED) < millis())
  {
  Serial.print(imu.calcGyro(imu.gx), 2);
  Serial.print(", ");
  Serial.print(imu.calcGyro(imu.gy), 2);
  Serial.print(", ");
  Serial.print(imu.calcGyro(imu.gz), 2);
  Serial.println(" deg/s");
  
    Serial.println();
    
    lastPrint = millis(); // Update lastPrint time
  }
/*
  float f_gz = imu.calcGyro(imu.gz);
  float d_t = (f_gz - previousGyro) / (millis() - lastGyro);
  if (abs(f_gz) > 2.25) {
    
      Serial.print("Rotation: ");
      Serial.println(rotation);
      Serial.println();
     rotation += f_gz * (millis() - lastGyro) / 1000 * rotationCorrection;
  }
  previousGyro = f_gz;
  lastGyro = millis();*/
}
