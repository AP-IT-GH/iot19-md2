# 1. MCU Module PCB

## ATSAMD21

### Power supply

> ([Datasheet ATSAMD21](./datasheets/Atmel-42181-SAM-D21_Datasheet.pdf) p. 26, 7.2.3 and p. 1008, Table 38-1)  
> Power Supply Connection used is the typical Powering Schematic out of the datasheet.

### Externall Oscillator

> ([Datasheet ATSAMD21](./datasheets/Atmel-42181-SAM-D21_Datasheet.pdf) p. 1013, 38.6.3)

_Load capacitors calculation_

> CLtotal = (CL1 \* CL2)/(CL1+CL2) + CP  
> CL1=CL2= (CLtotal - CP) \* 2  
> CL = 12,5pF ([Datasheet ATSAMD21](./datasheets/Atmel-42181-SAM-D21_Datasheet.pdf) p.1013, Table 18-6)  
> CP = 5pF  
> CL1 = CL2 = (12,5pF - 5pF) \* 2 = 15pF

### Programmer SWD (Cortex Debug Connector)

> ([Datasheet ATSAMD21](./datasheets/Atmel-42181-SAM-D21_Datasheet.pdf) p. 1015, 38.7.1)  
> Program the MCU via SWD connection. 10 pin connector

> PA30 - SWDCLK  
> PA31 - SWDIO  
> RESET - RESET

## MIC5219-3.3YM5-TR

The voltage regulator of this project. Because MIC5219-**3.3** is used the fixed output is 3.3V.

Schematic used for the Fixed-Voltage version. ([Datasheet MIC5219](./datasheets/mic5219-3_3.pdf) p. 12, Figure 6)

### Connections to the IC

> ([Datasheet TPS735](./datasheets/tps735.pdf) p. 4, 5. Pin configuration)  
> Given all the connections for the pins, minimum and maximum values for capacitors.

### Reset circuit

The reset circuit has it's purpose to reset the MCU when the pin is triggered low. 2 header pins are added so if needed an externall reset controller could be added.

### Connections to the modules

All the sensor modules are given power through the MCU board every module has 2 extra pins for the GND and VDD(3.3V) pins.

#### LoRa Module pins

The connection between the MCU and the LoRa is SPI. Therefor the typical SPI pins are used MISO, MOSI, SCK and NSS. The reset pin from the LoRa module is connected with an DIO pin from the MCU so the MCU can reset the LoRa module.

> PA15 - RESET LoRa  
> PA16 - MOSI  
> PA17 - SCK  
> PA18 - NSS  
> PA19 - MISO

#### GPS Module pins

The connection used for the GPS module is a simple serial connection (TX,RX).

> PA08 - RX  
> PA09 - TX

#### Humidity/Temp sensor pins

I2C is used between MCU and humidity sensor.

> PA22 - SCL  
> PA23 - SDA

#### 9DoF sensor pins

I2C is used between MCU and 9DoF.

> PA22 - SCL  
> PA23 - SDA

# 2. GPS Module PCB

> ([Datasheet SE876Q5-A](./datasheets/Telit_SE876Q5-A_Datasheet.pdf))  
> ([gps_module_sch.png](../src/pcb/img/gps_module_sch.png))

### Power supply

> ([User Guide SE876Q5-A](./datasheets/Telit_SE876Q5-A_User_Guide.pdf) p. 34, 8.4.3 )  
> Capacitors are recommended with a minimum value of 10uF in parallel with a 0.1uF ceramic capacitor.

## Voltage divider

The voltage retrieved from the supply on the MCU's PCB is 3.3V. The maximum voltage of the GPS module is 1.8V. Therefore there is a voltage divider.

> Vout = I \* R2  
> I = Vin/(R1+R2)  
> Vout = Vin \* (R2/(R1 + R2))

Vin = 3.3V  
R2 = 120 Ohm and R1 = 100 Ohm

Vout = 1.8V

## SE876Q5-A

For this project is the serial port of the MCU used. So the TX from the GPS is connected to the RX from the MCU.
The TX from the MCU will be used for sending commands to the GPS.
