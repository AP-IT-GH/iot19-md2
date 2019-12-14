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
- [OK] Connect LoRa module with MCU
    - [OK] Send string over LoRaWAN network.

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
- [OK] Connect LoRa module with MCU
    - [OK] Send string over LoRaWAN network.

## Besluit

Tests gebeurd via SPI legacy verholpen probleem niet. Wanneer serial.print blijft hangen in een print statement betekent dit dat er een slechte connectie is tussen de lora module en de microcontroller. SPI veranderd in LoRa library naar SPI waar de LoRa is op aangesloten SERCOM 1.