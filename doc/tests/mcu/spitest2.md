# Testrapport - SPI MCU Module - Arduino Nano
#### Datum: 13-12-2019
#### Code versie: Nvt
#### Test done by: Oussama Es-Salhi & Jarno Cools
#### Tested with Microcontroller: MCU Module
 
## LoRa Module 1
- [OK] Simple SPI sercom with Arduino Nano [SPI tutorial link](https://circuits4you.com/2019/01/03/arduino-spi-communication-example/) 
- [OK] Library LMIC 
- [OK] TinyLoRa -> In library sercom toegevoegd zodat ipv de basic SPI de SPI de SPI sercom zou gebruiken

## Besluit
Bedrading aanpassen van LoRa modules zodat we de juiste sercoms kunnen gebruiken. SERCOM1 gebruiken   
- MOSI: PA16 - 11 - sercom1 [0]    
- SCK: PA17 - 13 - sercom1 [1]    
- MISO: PA18 - 10 - sercom1 [2]   
