transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -2008 -work work {C:/Users/v4ngbz/Documents/Quartus/DD2/Exercise7/Question1/RAM32x8.vhd}
vcom -2008 -work work {C:/Users/v4ngbz/Documents/Quartus/DD2/Exercise7/Question1/BubbleSort.vhd}
vcom -2008 -work work {C:/Users/v4ngbz/Documents/Quartus/DD2/Exercise7/Question1/lpm_counter0.vhd}
vcom -2008 -work work {c:/users/v4ngbz/documents/quartus/libraries/corelibrary/lcd_display.vhd}
vcom -2008 -work work {c:/users/v4ngbz/documents/quartus/libraries/corelibrary/lpm_rom0.vhd}

vcom -2008 -work work {C:/Users/v4ngbz/Documents/Quartus/DD2/Exercise7/Question1/simulation/modelsim/Sorter_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  Sorter_tb

add wave *
view structure
view signals
run -all
