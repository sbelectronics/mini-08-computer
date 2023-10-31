# Mini-08 Computer
### Scott Baker, https://www.smbaker.com/

## Description

The Mini-08 is a Single Board Computer (SBC) based on the Intel 8008 CPU, an 8-bit processor that was designed in approximately 1972. The Mini-08 has the following features

* 8008 CPU
* Up to 128 KB of RAM, mapped in 4K pages
* Up to 128 KB of ROM/EPROM/EEPROM, mapped in 4K pages
* On-board 8251 UART serial port
* 8 Onboard Diagnostic LEDs
* Support for interrupts
* A mostly-RC2014-compatible expansion bus connector

Also featured is an optional display board, which piggybacks on to the mini-08 and adds the following:

* Ten 7-segment hexadecimal display digits
* A 16-digit hexadecimal keypad
* Complex Sound Generator (3 music voices + 1 noise generator)
* Real-Time Clock

![Display Board](./pictures/mini-08-top-3840.jpg)

![CPU Board](./pictures/mini-08-bottom-3840.jpg)

## Ports

The following describes the IO ports that I have allocated to various peripherals.

### Input

* 0 BB Serial / Dip Switches (internal)
* 1 Interrupt register (internal)
* 2 8251 UART - Data
* 3 8251 UART - Control
* 4 FP Keyboard
* 5 RTC
* 6 
* 7

### Output

* 8 BB Serial / LEDs (internal)
* 9 
* A FPEI (internal)
* B FPDI (internal)
* C mmap (internal)
* D mmap (internal)
* E mmap (internal)
* F mmap (internal)
* 10 Port multiplexer / RTC-ALE
* 11 Sound
* 12 8251 UART - Data
* 13 8251 UART - Conrol
* 14 
* 15 RTC
* 16 
* 17
* 18 FP Digits 0-1
* 19 FP Digits 2-3
* 1A FP Digits 4-5
* 1B FP Digits 6-7
* 1C FP Digits 8-9
* 1D FP Dots 0-7
* 1E FP Blanks 0-7
* 1F FP Dots 8-9, Blanks 8-9

Note to self: 18-1F were the IO Mapper on the H8 board. Some of my code may still output stuff to those ports.
