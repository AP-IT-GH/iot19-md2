# Testrapport - MCU Board
#### Datum: 8-12-2019
#### Code versie: Nvt.
#### Test done by: Oussama Es-Salhi
 
## Test MCU 1

- [NOK] Test wire connections 
    - [OK] VDD
        - [OK] Input supply between +2.5V & +12V
        - [OK] Humidity 3.3V
        - [OK] 9DoF 3.3V
        - [OK] GPS 3.3V
        - [OK] LoRa Module
    - [OK] GND
    - [OK] RX, TX
    - [OK] SDA, SCL
    - [OK] Reset
    - [NOK] Reset switch
- [OK] Measure input supply voltages
- [OK] Measure voltages between VDD's and GND's
- [OK] Burn bootloader via [jp19-luwb burn bootloader doc](https://github.com/AP-Elektronica-ICT/jp19-luwb/blob/master/doc/AP%20Lokalisatie/Branden%20bootloader%20ATSAMD21G18/BootloaderBurningATSAMD21G18.md).
- [OK] Program blink led on MCU port PA12 [SWD Programming 2.1](../code/SWD_programming.md).
- [OK] Program LoRa library on MCU and send hardcoded string to LoRaWAN network.

*Swtich changes voltage to 0V to reset*

## Test MCU 2

- [OK] Test wire connections 
    - [OK] VDD
        - [OK] Input supply between +2.5V & +12V
        - [OK] Humidity 3.3V
        - [OK] 9DoF 3.3V
        - [OK] GPS 3.3V
        - [OK] LoRa Module
    - [OK] GND
    - [OK] RX, TX
    - [OK] SDA, SCL
    - [OK] Reset
    - [OK] Switch
- [OK] Measure input supply voltages
- [OK] Measure voltages between VDD's and GND's
- [OK] Burn bootloader via [jp19-luwb burn bootloader doc](https://github.com/AP-Elektronica-ICT/jp19-luwb/blob/master/doc/AP%20Lokalisatie/Branden%20bootloader%20ATSAMD21G18/BootloaderBurningATSAMD21G18.md).
- [OK] Program blink led on MCU port PA12 [SWD Programming 2.1](../code/SWD_programming.md).
- [] Program LoRa library on MCU and send hardcoded string to LoRaWAN network.

## Besluit
Schrijf hier je besluit van de testen