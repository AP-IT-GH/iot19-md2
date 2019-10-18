## Summary

For This Project i used a 9dof stick With the LSM9DS1 motion sensing system in a chip.
I used the gyroscope and accelerometer to know if the box is tilted.
For g force i used only the accelerometer.
I used SparkFunLSM9DS1.h library for a faster development (Take note working with libraries uses more ram)


## Introduction

#include <Wire.h> // I2C library included for SparkFunLSM9DS1
#include <SparkFunLSM9DS1.h> // SparkFun LSM9DS1 library

LSM9DS1 imu;    is to initaialize the library

#define LSM9DS1_M  0x1E // Would be 0x1C if SDO_M is LOW
#define LSM9DS1_AG  0x6B // Would be 0x6A if SDO_AG is LOW




## 9dof Setup init


### this is the code for the initialisation of the 9dof it is actually wich communication type it is (I2C) and what address it is used to communicate with the MCU. If the communication fails there will be a serial print that it doesnt work
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

### Setup will Look like So.
setup(){
Serial.begin(115200);
void init9Dof() ; 
  }
  
### In the loop i use a updategyro and a printaccel methods. Those are used for accelerometer data and  Gyro. further i will explain what each  method
  void loop() {
updateGyro();
printAccel();
  }
  

## Accelerometer

### For the Accelerometer i used  imu.accelAvailable() and  imu.readAccel(); to read the live data from the accelerometer
### iuse imu.calcAccel for the convertion from volt to g's as we see it is acual good data but i cannot use it to detect an actual fall
### So for that i use the theorem pythagorean in 3d for te angle of each side so the accelerometer is 1 g for each side.
   }
  // To read from the accelerometer, you must first call the
  // readAccel() function. When this exits, it'll update the
  // ax, ay, and az variables with the most current data.
   if ( imu.accelAvailable() ){
  imu.readAccel();
   }
  float accelX = imu.calcAccel(imu.ax);
  float accelY = imu.calcAccel(imu.ay);
  float accelZ = imu.calcAccel(imu.az);
  
 // total acceleration of all axis it is used to get a reference for the raw data
 float acceltot = sqrt(pow(accelX,2)+pow(accelY,2)+pow(accelZ,2));
 
 float accfilterdX = accelX/acceltot;
 float accfilterdY = accelY/acceltot;
float accfilterdZ = accelY/acceltot; 

    if ((lastPrint + PRINT_SPEED) < millis())
  {
  // Now we can use the ax, ay, and az variables as we please.
  Serial.print("X: ");
  Serial.print(accfilterdX);
  Serial.print("Y: ");
  Serial.print(", ");
  Serial.print(accfilterdY);
   Serial.print("Z: ");
  Serial.print(", ");
  Serial.println(accfilterdZ);
  Serial.println();

  
  }

  delay (500);
}


## Gyroscope
