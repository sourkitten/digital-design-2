transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {Question5.vo}

vcom -93 -work work {C:/Users/v4ngbz/Documents/Quartus/DD2/Exercise5/Question5/simulation/modelsim/Counter8_tb.vhdl}

vsim -t 1ps +transport_int_delays +transport_path_delays -L cycloneii_ver -L gate_work -L work -voptargs="+acc"  Counter8_tb

add wave *
view structure
view signals
run -all
