# mini-risc
![riscv](https://img.shields.io/github/languages/top/gscgomes/mini_risc?color=green&label=VHDL)![Itype](https://img.shields.io/badge/ISA-RISCV-violet)

A 32-bit processor inspired on RISCV done as a university project.
- **Course**: Computer Architecture and Organization Lab
- **Professor**: Ricardo de Oliveira Duarte
- **Students**: Felipe Freitas, Guilherme Gomes e Melissa Monni
- **Federal University of Minas Gerais (UFMG)**

## Overview
![Datapath overview](https://raw.githubusercontent.com/GSCGomes/mini_risc/79be18d2e5fdb9f04f5e34b65e91d70fb2a7bb35/documentation/datapath.drawio.png)

## Processor details

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

## Simulation

The design was tested by simulating using some test programs (see [testcases](testcases)) and using specific testbenches used for each component and for the whole integrated design:
- [ALU testbench](source/tb_alu.vhd)
- [Controller testbench](source/tb_control.vhd)
- [Single register testbench](source/tb_register.vhd)
- [Processor testbench](source/tb_mini_risc.vhd)
- [Microcontroller testbench using interruptions](source/tb_micro_controlador.vhd)
