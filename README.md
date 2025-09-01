# pic18-bach
Ever wanted to hear a PICDEM2+ board play CPE Bach's Solfeggietto in C Minor?

## Overview
This program demonstrates how the PIC18F452's timer and PWM output can be used to create melodies that stay surprisingly in tune over more than three octaves! This is done by changing TMR2's period register while at the same time updating CCPR1L to produce a roughly 50% duty cycle square wave no matter the note's pitch.

This program also shows how to use the table registers to efficiently read out large blocks of program memory.

The LEDs also flash while the tune plays, because why not.

## Running the Program
The code builds on Microchip's XC8 assembler (pic-as 3.0 in my case). This program was tested on a first-generation PICDEM2+ dev board fitted with a PIC18F452 and should work right away. If you don't have this board, the minimal hardware setup is:
* External oscillator at 4 MHz (or crystal if you want to tweak the config bits)
    * Bonus points: Hook up an adjustable frequency source like a function generator and see how frequency affects the pitch/tempo of the melody
* Piezo buzzer on RC2 (Pin 17 on the 40-pin DIP 18F452)
* LEDs on RB3-RB0 (if you want extra flashiness)

Simply add `main.s` to a new MPLAB X IDE project and configure for your specific device and programmer settings. 

## Credits
* Solfeggietto composed by CPE Bach
* Transcribed from sheet music in Anthologie Classique no. 54 via imslp.org (https://imslp.org/wiki/File:PMLP06627-Bach_CPE_Solfeggio_220.pdf)
* Original template code derived from PICDEM2+ demo code by Microchip Technology Inc. 2002
