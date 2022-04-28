transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+c:/users/v4ngbz/documents/quartus/libraries/corelibrary {c:/users/v4ngbz/documents/quartus/libraries/corelibrary/seg7_lut.v}
vcom -93 -work work {C:/Users/v4ngbz/Documents/Quartus/DD2/Exercise5/Question5/Counter8.vhd}

vcom -93 -work work {C:/Users/v4ngbz/Documents/Quartus/DD2/Exercise5/Question5/simulation/modelsim/Counter8_tb.vhdl}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  Counter8_tb

add wave *
view structure
view signals
run -all
