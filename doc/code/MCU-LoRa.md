# LoRa The Things Network Code Documentation

## Getting started

To communicate with the LoRaWAN network via the RFM95W module the "arduino-lmic" library is used.

To install this library:

- Install it using the Arduino Library manager ("Sketch" -> "Include Library" -> "Manage Libraries...")
- download a zipfile from github using the "Download ZIP" button and install it using the IDE ("Sketch" -> "Include Library" -> "Add .ZIP Library..."
- clone the git repository into your sketchbook/libraries folder

  [Link to arduino-lmic github repo](https://github.com/matthijskooijman/arduino-lmic)

## Library configuration

Open this file in your code editor: C:\Users\\\<username>\\Documents\Arduino\libraries\arduino-lmic-master\src\lmic\config.h

Make the following changes and save:

- set: #define CFG_eu868 1 (EU only)
- set: #define CFG_sx1276_radio 1
- set: #define LMIC_DEBUG_LEVEL 2 and #define LMIC_FAILURE_TO Serial
- Uncomment line: #define DISABLE_PING
- Uncomment line: #define DISABLE_BEACONS

## Using ttn-abp example sketch

To test the module and TTN integration an example sketch can be used.  
Load this sketch up in the arduino IDE by going to "File" -> "Examples" -> "LMIC-Arduino" -> ttn-abp (Activation-by-personalisation)

There are a couple things that need to be changed before uploading the sketch.

Copy the Network Session Key in constant variable:  
&nbsp; &nbsp; static const PROGMEM u1_t NWKSKEY[16] = { 0x1F, 0x42, 0x97, 0x73, 0xAE, 0xEA, 0xDA, 0xE8, 0xD4, 0xEE, 0x45, 0xF7, 0x54, 0xD4, 0xAE, 0x57 };

Copy the App Session Key in constant variable:  
&nbsp; &nbsp; static const u1_t PROGMEM APPSKEY[16] = { 0x96, 0x74, 0x6C, 0x57, 0xD8, 0xE3, 0xB1, 0xD6, 0x3A, 0x04, 0x83, 0x04, 0xC4, 0x56, 0x8D, 0x36 };

Copy the Device Address in constant variable:  
&nbsp; &nbsp; static const u4_t DEVADDR = 0x43984832;

Change the pinmap object:  
const lmic_pinmap lmic_pins = {  
&nbsp; &nbsp; &nbsp; &nbsp; .nss = 10,  
&nbsp; &nbsp; &nbsp; &nbsp; .rxtx = LMIC_UNUSED_PIN,  
&nbsp; &nbsp; &nbsp; &nbsp; .rst = 5,  
&nbsp; &nbsp; &nbsp; &nbsp; .dio = {2, 3, LMIC_UNUSED_PIN},  
};
