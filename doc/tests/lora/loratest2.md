# Testrapport - LoRa Module
#### Datum: 12-12-2019
#### Code versie: code 1.00
#### Test done by: Oussama Es-Salhi & Jarno Cools
#### Tested with Microcontroller: [MCU Module - 1.LoRa module pins](../../electrical_scheme.md)
 
## Test LoRa 1

- [OK] Test wire connections
    - [OK] Atnenna
    - [OK] DIO0
    - [OK] DI01
    - [OK] DI02
    - [OK] VDD
    - [OK] GND
    - [OK] Reset
    - [1*] MISO : Same for every LoRa Module
    - [1*] MOSI : Same for every LoRa Module
    - [1*] SCK : Same for every LoRa Module
    - [OK] NSS
- [NOK] Connect LoRa module with MCU
    - [NOK] Send string over LoRaWAN network.

## Test LoRa 2

- [OK] Test wire connections
    - [OK] Atnenna
    - [OK] DIO0
    - [OK] DI01
    - [OK] DI02
    - [OK] VDD
    - [OK] GND
    - [OK] Reset
    - [1*] MISO : Same for every LoRa Module
    - [1*] MOSI : Same for every LoRa Module
    - [1*] SCK : Same for every LoRa Module
    - [OK] NSS
- [NOK] Connect LoRa module with MCU
    - [NOK] Send string over LoRaWAN network.

## Besluit

SPI van LoRa libraries werkt niet, library aangepast zodat SPI van SERCOM3 gebruik wordt. Uitslag: Geen verschil gemaakt. Fout ligt niet bij LoRa modules maar bij de library. Mogelijkheid dat wanneer legacy ISCP gebruikt werd van de SAMD21 dat het we zou werken.

1*: The SAMD21 has specific pins for the SPI connection we used the right SPI pins on our MCU module but connected them with the wrong connected pin.   
MISO was connected with PA16 and should be connected with PA18  
MOSI was connected with PA17 and should be connected with PA16  
SCK was connected with PA18 and should be connected with PA17  

*This could be fixed by cutting the three lines and solder them with some cable to the right LoRa pin connection => then our LoRa module would still be able to be plugged in into our MCU board.*