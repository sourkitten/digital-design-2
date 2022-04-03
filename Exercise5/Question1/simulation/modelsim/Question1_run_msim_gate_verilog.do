transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {Question1.vo}

vcom -93 -work work {C:/Users/v4ngbz/Documents/Quartus/DD2/Exercise5/Question1/simulation/modelsim/Adder8_tb.vhd}

vsim -t 1ps -L cycloneii_ver -L gate_work -L work -voptargs="+acc"  Adder8_tb

add wave *
view structure
view signals
run -all
