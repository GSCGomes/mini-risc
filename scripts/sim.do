vcom -93 -work work {C:/Users/guilh/Projects/mini_risc/source/tb_mini_risc.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  tb_mini_risc

log * -r

add wave *
view structure
view signals
run 10000 ns
