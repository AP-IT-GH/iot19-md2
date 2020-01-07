#include "wiring_private.h" // pinPeripheral() function
Uart GPSSerial(&sercom2, 3, 4, SERCOM_RX_PAD_1, UART_TX_PAD_0);
//Uart SerialMonitor(&sercom2, 38, 22, SERCOM_RX_PAD_1, UART_TX_PAD_0);
Uart SerialMonitor(&sercom1, 13, 11, SERCOM_RX_PAD_1, UART_TX_PAD_0);
void SERCOM2_Handler()
{
  GPSSerial.IrqHandler();
}
void SERCOM1_Handler()
{
  SerialMonitor.IrqHandler();
}
int GPSBaud = 9600;
int UARTmonitorBaud = 9600;
void setup()
{
  
  // Start the Arduino hardware serial port at 9600 baud
  SerialMonitor.begin(UARTmonitorBaud);
  pinPeripheral(11, PIO_SERCOM);
  pinPeripheral(13, PIO_SERCOM);
  // Start the software serial port at the GPS's default baud
  GPSSerial.begin(GPSBaud);
  pinPeripheral(3, PIO_SERCOM_ALT);
  pinPeripheral(4, PIO_SERCOM_ALT);
}

void loop()
{
  while (GPSSerial.available() > 0)
    SerialMonitor.write(GPSSerial.read());
}
