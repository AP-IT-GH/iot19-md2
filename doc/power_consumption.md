# Power consumption

De engerie die verbruikt wordt door alle componenten samen zou door de power supply een x-aantal uur geleverd moeten kunnen worden. Het berekenen van de consumptie gaat als volgt.
Vermogen W (**P = U \* I**) van dit vermogen wordt Wh genomen (**Wh = W \* h**). Hierna wordt er mAh berekend **mAh = 1000 \* Wh / V**. Deze mAh is nodig omdat batterij capaciteit in mAh is.

### Atmel SAMD21G

When the CPU is running a Fibonacci algorithm at 3.3V (25°C). The max. power consumption is 4.6mA.

- P = U \* I => P = 3.3V \* 4.6mA = 0.01518W
- Wh = 0.01518Wh (t = 1h)
- mAh = 1000 \* 0.1518Wh/3.3V = 20mAh

### MTK3339

### LMT87

### IMU 9DoF v2.0

### RFM95W
