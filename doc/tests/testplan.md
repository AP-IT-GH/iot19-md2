# Testplan

## Testplan MCU

- [] Test wire connections 
    - [] VDD
        - [] Input supply between +2.5V & +12V
        - [] Humidity 3.3V
        - [] 9DoF 3.3V
        - [] GPS 3.3V
        - [] LoRa Module
    - [] GND
    - [] RX, TX
    - [] SDA, SCL
    - [] Reset
- [] Measure input supply voltages
- [] Measure voltages between VDD's and GND's
- [] Burn bootloader via [jp19-luwb burn bootloader doc](https://github.com/AP-Elektronica-ICT/jp19-luwb/blob/master/doc/AP%20Lokalisatie/Branden%20bootloader%20ATSAMD21G18/BootloaderBurningATSAMD21G18.md).
- [] Program blink led on MCU port PA12 [SWD Programming 2.1](../code/SWD_programming.md).
- [] Program LoRa library on MCU and send hardcoded string to LoRaWAN network.

## LoRa Module

## Testplan Sensor

- [] Test wire connections
    - [] VDD
    - [] GND
    - [] Specific sensor pins
- [] Log data on micrcontroller  
    - [] Every 2 secondes
    - [] Data should be printed as: NameSensor: xx.xx unit.
    - [] Add screenshot of timestamp and data
