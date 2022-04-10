onerror {quit -f}
vlib work
vlog -work work Question4.vo
vlog -work work Question4.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Reg8_vlg_vec_tst
vcd file -direction Question4.msim.vcd
vcd add -internal Reg8_vlg_vec_tst/*
vcd add -internal Reg8_vlg_vec_tst/i1/*
add wave /*
run -all
