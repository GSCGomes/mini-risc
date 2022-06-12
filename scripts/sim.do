# set tb_name tb_alu
set tb_name tb_mini_risc

vcom -93 -work work "C:/Users/guilh/Projects/mini_risc/source/${tb_name}.vhd"

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  $tb_name

log * -r

add wave *
view structure
view signals
run 5000 ns
