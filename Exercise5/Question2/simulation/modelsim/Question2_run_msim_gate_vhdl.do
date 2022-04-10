transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Question2.vho}

vcom -93 -work work {C:/Users/v4ngbz/Documents/Quartus/DD2/Exercise5/Question2/simulation/modelsim/Adder8_tb.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /DUT=Question2_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  Adder8_tb

add wave *
view structure
view signals
run -all
