# mini-risc
![riscv](https://img.shields.io/github/languages/top/gscgomes/mini_risc?color=green&label=VHDL)![Itype](https://img.shields.io/badge/ISA-RISCV-violet)

A 32-bit processor inspired on RISCV done as a university project.
- **Course**: Computer Architecture and Organization Lab
- **Professor**: Ricardo de Oliveira Duarte
- **Students**: Felipe Freitas, Guilherme Gomes e Melissa Monni
- **Federal University of Minas Gerais (UFMG)**

## Overview
![Datapath overview](https://raw.githubusercontent.com/GSCGomes/mini_risc/5b894a9f3df50278874b255bd77a849bcce395b7/documentation/datapath.drawio.png)

## Processor details

- Detailed information can be seen in the ![mini_risc reference card](https://github.com/GSCGomes/mini_risc/blob/5b894a9f3df50278874b255bd77a849bcce395b7/documentation/mini-risc%20reference%20sheet.pdf)
- Implemented in VHDL using Quartus for synthesis and ModelSim-Altera for simulation. Tested in the Altera DE10 FPGA development kit.
- 3-stage pipeline: Instruction Fetch (IF), Decode and Execution (DX), Memory Access and Register Writeback (MW) (see [pipeline description](documentation/pipeline-description.md))
- 28 instructions available (see instruction map)
- 4 kB Data memory (see [memory map](documentation/memory_map.pdf))
- 32-bit instruction, 32-bit data word size
- Little endian

## Peripherals

The processor was wrapped inside a microcontroller and attached to some peripherals for better IO and general functionalities. The implemented peripherals are:
- GPIO
- TIMER0
- TIMER1

## Simulations

The design was tested by simulating using some test programs (see [testcases](testcases)) and using specific testbenches used for each component and for the whole integrated design:
- [ALU testbench](source/tb_alu.vhd)
- [Controller testbench](source/tb_control.vhd)
- [Single register testbench](source/tb_register.vhd)
- [Processor testbench](source/tb_mini_risc.vhd)
- [Microcontroller testbench using interruptions](source/tb_micro_controlador.vhd)

Many simulations were performed. We chose to go deeper into only one of them in this description, the 4-bit counter.

### Simulation and testing example -  4-bit counter

One of the performed simulations was of a infinite 4-bit counter program (see [counter program](testcases/counter.md)). The goal was to count from 0 to 15 and restart at 0 while displaying all values in a 7 segment display made available on the DE10 board.

This is the waveform achieved:
![Counter waveform](https://raw.githubusercontent.com/GSCGomes/mini_risc/021ea58d4fc2d5f4f42f6403e6dd0119d61188de/testcases/counter_wave.png)

And this is the result visualized in the FPGA board:  
![Counter on FPGA](testcases/counter_fpga.gif)
