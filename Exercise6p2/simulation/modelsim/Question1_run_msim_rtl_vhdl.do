transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/Users/v4ngbz/Documents/Quartus/DD2/Exercise6p2/Declare.vhd}
vcom -2008 -work work {C:/Users/v4ngbz/Documents/Quartus/DD2/Exercise6p2/Reg.vhd}
vcom -2008 -work work {C:/Users/v4ngbz/Documents/Quartus/DD2/Exercise6p2/Adder.vhd}
vcom -2008 -work work {C:/Users/v4ngbz/Documents/Quartus/DD2/Exercise6p2/Multiplier.vhd}
vcom -2008 -work work {C:/Users/v4ngbz/Documents/Quartus/DD2/Exercise6p2/CtrlLogic.vhd}

vcom -2008 -work work {C:/Users/v4ngbz/Documents/Quartus/DD2/Exercise6p2/simulation/modelsim/Multiplier_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  Multiplier_tb

add wave *
view structure
view signals
run -all
