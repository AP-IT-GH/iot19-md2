//9Dof
#include <SparkFunLSM9DS1.h>
LSM9DS1 imu;
#define LSM9DS1_M  0x1E // Would be 0x1C if SDO_M is LOW
#define LSM9DS1_AG  0x6B // Would be 0x6A if SDO_AG is LOW

static unsigned long lastGyro = 0; // Keep track of gyro time
float previousGyro = 0; // previous gyro state


float rotation = 0;
float rotationCorrection = 1.11;

void initGyro() {
  
  imu.settings.device.commInterface = IMU_MODE_I2C;
  imu.settings.device.mAddress = LSM9DS1_M;
  imu.settings.device.agAddress = LSM9DS1_AG;
  if (!imu.begin()){
    Serial.println("Failed to communicate with LSM9DS1.");
    Serial.println("Double-check wiring.");
    Serial.println("Default settings in this sketch will " \
                   "work for an out of the box LSM9DS1 " \
                   "Breakout, but may need to be modified " \
                   "if the board jumpers are.");
    while (1)
      ;
  }
}
void setup() {
Serial.begin(9600);
Serial.print("Serial Started");
initGyro();

}

void loop() {
  // put your main code here, to run repeatedly:
//updateGyro();
  if ( imu.gyroAvailable() )
  {
    // update gx, gy, and gz variables with the most current data.
    imu.readGyro();
  }
}

void updateGyro() {
  // Update the sensor values whenever new data is available
  if ( imu.gyroAvailable() )
  {
    // update gx, gy, and gz variables with the most current data.
    imu.readGyro();
  }

  float f_gz = imu.calcGyro(imu.gz);
  float d_t = (f_gz - previousGyro) / (millis() - lastGyro);

  if (abs(f_gz) > 2.25) {

      Serial.print("Rotation: ");
      Serial.println(rotation);
      Serial.println();
     rotation += f_gz * (millis() - lastGyro) / 1000 * rotationCorrection;
  }
  previousGyro = f_gz;
  lastGyro = millis();
}
