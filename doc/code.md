# Code - Documentation

## Summary

The IDE used for this project is Atmel Studio 7. Programming to the MCU will be done via SWD programmer ATMEL ICE on the custom MCU module board [MCU Module](../src/pcb/img/mcu_module_3d.png). For testing code etc. before the custom board is printed and solderd the **Atmel SAMD21 XPlained PRO** board is used.

## Project init

Via the website of [Start Atmel](https://start.atmel.com/) you can initalize your project and basic settings like pin names.  
You start by choosing your IC/dev board. After choosing your IC/dev board you can add software components/drivers like for example Delay, DAC, etc. When you chose your drivers or if you didn't need any you can click on PINMUX. Here you can select a pin e.g. PA00/Pin 1 change the user label and the pin mode. After these steps you can export the project as an Atmel Project.

When exported you can import this in atmel studio as Atmel Start project. The project will have made a file **atmel_start_pins.h**.  
Here you can manually add pins as macros through (E.g. PA04):

```
#define PA04 GPIO(GPIO_PORTA, 4)
```
