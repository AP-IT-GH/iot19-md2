# Electrical Scheme

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

## TPS73533

The voltage regulator of this project. Input Voltage between 2.7V and 6.5V. Fixed Outputs of 1.2V to 4.3V. Because TPS735**33** is used the fixed output is 3.3V.

Schematic used for the Fixed-Voltage version. ([Datasheet TPS735](./datasheets/tps735.pdf) p. 13, Figure 15)

### Connections to the IC

> ([Datasheet TPS735](./datasheets/tps735.pdf) p. 4, 5. Pin configuration)  
> Given all the connections for the pins, minimum and maximum values for capacitors.
