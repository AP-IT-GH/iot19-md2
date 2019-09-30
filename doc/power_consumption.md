# Power consumption

De engerie die verbruikt wordt door alle componenten samen zou door de power supply een x-aantal uur geleverd moeten kunnen worden. Het berekenen van de consumptie gaat als volgt.
Vermogen W (**P = U \* I**) van dit vermogen wordt Wh genomen (**Wh = W \* h**). Hierna wordt er mAh berekend **mAh = 1000 \* Wh / V**. Deze mAh is nodig omdat batterij capaciteit in mAh is.

### Atmel SAMD21E

> (Datasheet Atmel SAMD21)  
> When the CPU is running a Fibonacci algorithm at 3.3V (25°C). The max. power consumption is 4.6mA.

- P = U \* I => P = 3.3V \* 4.6mA = 0.01518W
- Wh = 0.01518Wh (t = 1h)
- mAh = 1000 \* 0.1518Wh/3.3V = 20mAh

### HONEYWELL - HIH8120-021-001 TEMP HUM

> (HONEYWELL DATASHEET)
> -Via I2C is het verbruik gewoonlijk 0.65 mA

- P = U \* I => P = 3.3V \* 0.65mA = 0.002145W
- Wh = 0,002145 Wh
- mAh = 1000 \* 0.002145 Wh/3.3V = 0.65mAh

### Telit SL876Q5-A GPS

> (Telit Datasheet )

- Current consumption: ( GPS+GLO)
- Acquisition: 85mW
- Tracking: 83 mW

> Low power modes

- Hibernate: 69 uW
- SG1 mode: 47-56mW
- HPR mode: 24-27mW

- Verbruik = 83 Mwh
- wh = 0.083Wh (watt hour)
- mAh = 1000 \* 0.083Wh/3.3V = 25.15mAh

### Voltage regulator - TPS73533DRVT

> TPS73533DRVT Datasheet

- Verbruik 45-μA (typical)
- P = U \* I => P = 3.3V \* 45μA = 0.0001485‬W
- wh = 0.0001485‬Wh
- mAh = 1000 \* 0.0001485‬Wh /3.3V = 0.045‬mAh

### Crystal Oscillator

> (Datasheet)

- Verbruik +- 100µW
- Wh = 0.0001 Wh
- mAh = 1000 \* 0.0001‬Wh /3.3V = +- 0.33mAh

### LMT87

> (Datasheet)

- Verbruik 6.6μA
- P = U \* I => P = 3.3V \* 6.6μA = ‬0.00002178W
- Wh = 0.00002178 Wh
- mAh = 1000 \* 0.00002178 Wh /3.3V = 0.066mAh

### IMU 9DoF v2.0

> (Datasheet)

- 9-axis (no DMP), 1 kHz gyro ODR, 4 kHz accel ODR, 8 Hz mag. repetition rate
- 4,9 mA
- P = U \* I => P = 3.3V \* 0.049A = 0,1617‬W
- Wh = 0.1617‬ Wh
- mAh = 1000 \* 0.1617‬ Wh /3.3V = 49 mAh

### RFM95W

> (Datasheet RFM95 p.13 2.4.1)  
> IDDT supply current when transmitting is 120mA.

- P = U \* I => P = 3.3V \* 120mA = 27,5W
- Wh = 0.01518Wh (t = 1h)
- mAh = 1000 \* 0.1518Wh/3.3V = 20mAh

## Totale verbruik

- mAh(totaal) = 20mAh + 0.65mAh + 25.15mAh + 0.045mAh + 0.33mAh + 49mAh + 20mAh = 115.175mAh

Het aantal uren voordat de batterij leeg is:

- Capaciteit / Totale Verbruik => 2000mAh / 115.175mAh = 17.36 Uur

_\*Opmerking: In deze berekening is er geen rekening gehouden met het feit dat de LoRa module niet continu gaat uitzenden en de mogelijke optimalisatie van het verbruik van de verschillende componenten. Dit betekent dat het totale verbruik behoorlijk lager zal liggen._
