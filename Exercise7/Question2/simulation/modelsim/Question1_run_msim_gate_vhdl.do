transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vcom -93 -work work {Question1.vho}

vcom -93 -work work {C:/Users/v4ngbz/Documents/Quartus/DD2/Exercise7/Question2/simulation/modelsim/Sorter_tb.vhd}

vsim -t 1ps +transport_int_delays +transport_path_delays -sdftyp /DUT=Question1_vhd.sdo -L cycloneii -L gate_work -L work -voptargs="+acc"  Sorter_tb

add wave *
view structure
view signals
run -all
