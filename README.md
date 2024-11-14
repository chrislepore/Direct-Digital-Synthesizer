# Enhanced Direct Digital Synthesis (DDS) System

This project involved designing an enhanced DDS system capable of generating variable-frequency waveforms. Using a DE10-Lite FPGA and Quartus Prime software, the DDS produces frequencies from 0 to 1 MHz in 1 kHz increments. This DDS system outputs various waveform types, including sine, triangle, sawtooth, and square waves, and displays frequency settings on seven-segment displays.

## Project Overview

- **Device**: DE10-Lite FPGA
- **Software**: Quartus Prime Lite Edition, SignalTap Logic Analyzer
- **Programming Language**: Verilog HDL
- **Waveforms Generated**: Sine, Triangle, Sawtooth, Square
- **Frequency Range**: 0 - 1 MHz, adjustable in 1 kHz increments

## Features

- **Custom Logic and IP Cores**: Utilized custom logic alongside Quartus IP cores to generate modular waveforms.
- **Reduced LE Usage**: Optimized seven-segment display logic, reducing Logic Element (LE) usage by 65%.
- **Waveform Verification**: Verified waveform accuracy and performance using the SignalTap Logic Analyzer and Keysight oscilloscope.

## System Design

### 1. Schematic Diagram
The top-level schematic for the DDS system design outlines the main components, including the phase accumulator, tuning word set, waveform generator, and display logic.

![DDS System Schematic](https://raw.githubusercontent.com/chrislepore/Direct-Digital-Synthesizer/refs/heads/main/Images/Schematic.PNG)

### 2. Phase Accumulator
The phase accumulator increments a 28-bit count by a tuning word. This count determines the 10-bit output to a DAC and produces waveform data.

### 3. Frequency Control
The tuning word (M) is adjusted based on user input (SW9-SW0), enabling frequency adjustments in 1 kHz increments. Each frequency is displayed on seven-segment displays.

### 4. Waveform Generation
Using a 2-bit input, the output waveform can be selected as a sine, triangle, or sawtooth waveform. Square waves are generated from the accumulator’s MSB.

### 5. Signal Verification
Using SignalTap and a Keysight oscilloscope, the waveforms were captured and verified for frequency accuracy.

#### Images of Waveforms:
- **Sawtooth Waveform**
  ![Sawtooth Waveform](https://raw.githubusercontent.com/chrislepore/Direct-Digital-Synthesizer/refs/heads/main/Images/Sawtooth%20Waveform.PNG)

- **Sine Waveform**
  ![Sine Waveform](https://raw.githubusercontent.com/chrislepore/Direct-Digital-Synthesizer/refs/heads/main/Images/Sine%20Waveform.PNG)

- **Triangle Waveform**
  ![Triangle Waveform](https://raw.githubusercontent.com/chrislepore/Direct-Digital-Synthesizer/refs/heads/main/Images/Triangle%20Waveform.PNG)

## How to Use

1. **Compile the Design**: Open the project in Quartus Prime, compile, and program the DE10-Lite FPGA.
2. **Set Frequency**: Adjust switches (SW9-SW0) to set the desired frequency. Press KEY0 to update.
3. **Reset**: Press KEY1 to reset the DDS output to zero.
4. **Monitor Output**: Use a DAC connected to the FPGA’s output pins to view the waveform.

## Results

This design successfully demonstrated waveform generation with minimal LE usage and high accuracy. The seven-segment displays accurately reflected frequency settings, and all waveforms were verified for shape and stability.

## Conclusion

This project provided hands-on experience with FPGA-based DDS, SignalTap Logic Analyzer, and Verilog. The design achieved high LE efficiency and stable frequency control across all waveform outputs.