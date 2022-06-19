# Pipeline description

## Stages

Our pipeline will be made out of three stages only:

1. **Instruction Fetch (IF)**: Update PC register and fetch the next instruction
2. **Instruction Decode and Execution (DX)**: Decode instruction (passing RS1, RS2 and RD to the hazard detection unit) and pass forward the register data to the ALU for execution.
3. **Memory Read/Write and Writeback (MW)**: Use the memory for reading or writing and writeback to register bank.

## Registers
There will be 2 pipeline registers named after the stages they divide: **IF-DX** and **DX-MW**. The control signals will be generated during the first stage (IF) and they will be passed on through the IF-DX register, then the relevant control signals will go on through the DX-MW register.

## Hazard handling

Initially, all hazards will be handled using stalls (disabling the pipeline registers that should stall until the current instruction is finished).
Eventually, we will implement forwarding to improve performance when possible.
