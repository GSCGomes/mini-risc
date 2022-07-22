#!/bin/bash

rm -rf *vcd
ghdl --clean


# ghdl -a tb_alu.vhd


# ghdl -a tb_control.vhd
# ghdl -a tb_mini_risc.vhd
# ghdl -a tb_register.vhd
# ghdl --ieee=synopsys



ghdl -a  --ieee=synopsys ./components/banco_registradores.vhd
ghdl -a  --ieee=synopsys ./components/deslocador.vhd
ghdl -a  --ieee=synopsys ./components/divisor_clock.vhd
ghdl -a  --ieee=synopsys ./components/extensor.vhd
ghdl -a  --ieee=synopsys ./components/gpio.vhd
ghdl -a  --ieee=synopsys ./components/memd.vhd
ghdl -a  --ieee=synopsys ./components/memi.vhd
ghdl -a  --ieee=synopsys ./components/memp.vhd
ghdl -a  --ieee=synopsys ./components/multiplicador.vhd
ghdl -a  --ieee=synopsys ./components/mux21.vhd
ghdl -a  --ieee=synopsys ./components/mux41.vhd
ghdl -a  --ieee=synopsys ./components/pc.vhd
ghdl -a  --ieee=synopsys ./components/processador_ciclo_unico.vhd
ghdl -a  --ieee=synopsys ./components/registrador.vhd
ghdl -a  --ieee=synopsys ./components/registrador1b.vhd
ghdl -a  --ieee=synopsys ./components/seven_seg_decoder.vhd
ghdl -a  --ieee=synopsys ./components/somador.vhd
ghdl -a  --ieee=synopsys ./components/timer.vhd
ghdl -a  --ieee=synopsys ./components/ula.vhd
ghdl -a  --ieee=synopsys mini_risc.vhd 
 
ghdl -a  --ieee=synopsys micro_controlador.vhd



ghdl -a  --ieee=synopsys ./components/unidade_de_controle_ciclo_unico.vhd
ghdl -a  --ieee=synopsys ./components/unidade_de_controle_interrupcoes.vhd
ghdl -a  --ieee=synopsys ./components/via_de_dados_ciclo_unico.vhd

ghdl -a  --ieee=synopsys tb_micro_controlador.vhd

ghdl -e --ieee=synopsys tb_micro_controlador
ghdl -r --ieee=synopsys tb_micro_controlador --vcd=tb_micro_controlador.vcd --stop-time=1us

# # # ghdl -e tb_alu
# # # ghdl -r tb_alu --vcd=tb_alu.vcd --stop-time=1us


# # # # Wave view

# gtkwave -f tb_micro_controlador.vcd