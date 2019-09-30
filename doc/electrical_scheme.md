# 1. Electrical Scheme

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

## MIC5219-3.3YM5-TR

The voltage regulator of this project. Because MIC5219-**3.3** is used the fixed output is 3.3V.

Schematic used for the Fixed-Voltage version. ([Datasheet MIC5219](./datasheets/mic5219-3_3.pdf) p. 12, Figure 6)

### Connections to the IC

> ([Datasheet TPS735](./datasheets/tps735.pdf) p. 4, 5. Pin configuration)  
> Given all the connections for the pins, minimum and maximum values for capacitors.

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

## SE876Q5-A

For this project is the serial port of the MCU used. So the TX from the GPS is connected to the RX from the MCU.
The TX from the MCU will be used for sending commands to the GPS.
