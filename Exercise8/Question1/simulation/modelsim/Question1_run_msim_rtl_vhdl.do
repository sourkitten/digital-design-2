transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/Users/v4ngbz/Documents/Quartus/DD2/Exercise8/Question1/Vector_multiplier_sum_code.vhd}
vcom -2008 -work work {C:/Users/v4ngbz/Documents/Quartus/DD2/Exercise8/Question1/RAM256x4.vhd}
vcom -2008 -work work {C:/Users/v4ngbz/Documents/Quartus/DD2/Exercise8/Question1/Reg.vhd}
vcom -2008 -work work {C:/Users/v4ngbz/Documents/Quartus/DD2/Exercise8/Question1/Multiplier.vhd}
vcom -2008 -work work {C:/Users/v4ngbz/Documents/Quartus/DD2/Exercise8/Question1/Declare.vhd}
vcom -2008 -work work {C:/Users/v4ngbz/Documents/Quartus/DD2/Exercise8/Question1/Adder.vhd}
vcom -2008 -work work {C:/Users/v4ngbz/Documents/Quartus/DD2/Exercise8/Question1/MainControlUnit.vhd}
vcom -2008 -work work {C:/Users/v4ngbz/Documents/Quartus/DD2/Exercise8/Question1/CtrlLogic.vhd}

vcom -2008 -work work {C:/Users/v4ngbz/Documents/Quartus/DD2/Exercise8/Question1/simulation/modelsim/VMS_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  VMS_tb

add wave *
view structure
view signals
run -all
