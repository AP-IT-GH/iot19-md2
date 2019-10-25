#include <TinyGPS++.h>
//Default baud of NEO-6M is 9600
int GPSBaud = 9600;

TinyGPSPlus gps;
void setup()
{
  // Start the Arduino hardware serial port at 9600 baud
  Serial.begin(9600);

  // Start the software serial port at the GPS's default baud
  Serial1.begin(GPSBaud);
}

void loop()
{
  // Displays information when new sentence is available.
  while (Serial1.available() > 0)
    gps.encode(Serial1.read());
    if (gps.location.isUpdated()){
      Serial.print("Latitude= "); 
      Serial.print(gps.location.lat(), 6);
      Serial.print(" Longitude= "); 
      Serial.println(gps.location.lng(), 6);
      Serial.print(" Satellites Connected= "); 
      Serial.println(gps.satellites.value(), 6);
    }
}
