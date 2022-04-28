transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/v4ngbz/Documents/Quartus/DD2/Exercise5/Question5/Counter8.vhd}

vcom -93 -work work {C:/Users/v4ngbz/Documents/Quartus/DD2/Exercise5/Question5/simulation/modelsim/Counter8_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  Counter8_tb

add wave *
view structure
view signals
run -all
