transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/guilh/Projects/mini_risc/source/components/registrador.vhd}

vcom -93 -work work {C:/Users/guilh/Projects/mini_risc/source/tb_register.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneive -L rtl_work -L work -voptargs="+acc"  tb_register

add wave *
view structure
view signals
run -all
