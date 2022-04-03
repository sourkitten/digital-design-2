view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl -range 7 0 /adder8/A 
wave create -pattern none -portmode in -language vhdl -range 7 0 /adder8/B 
wave create -pattern none -portmode in -language vhdl /adder8/Cin 
wave create -pattern none -portmode out -language vhdl -range 7 0 /adder8/Y 
wave create -pattern none -portmode out -language vhdl /adder8/Cout 
wave modify -driver freeze -pattern constant -value 00000011 -range 7 0 -starttime 0ns -endtime 20ns Edit:/adder8/A 
wave modify -driver freeze -pattern constant -value 00001111 -range 7 0 -starttime 20ns -endtime 40ns Edit:/adder8/A 
wave modify -driver freeze -pattern constant -value 00100000 -range 7 0 -starttime 40ns -endtime 60ns Edit:/adder8/A 
wave modify -driver freeze -pattern constant -value 01000000 -range 7 0 -starttime 60ns -endtime 80ns Edit:/adder8/A 
wave modify -driver freeze -pattern constant -value 10000000 -range 7 0 -starttime 60ns -endtime 80ns Edit:/adder8/A 
wave modify -driver freeze -pattern constant -value 10100000 -range 7 0 -starttime 60ns -endtime 80ns Edit:/adder8/B 
wave modify -driver freeze -pattern constant -value 00101011 -range 7 0 -starttime 40ns -endtime 60ns Edit:/adder8/B 
wave modify -driver freeze -pattern constant -value 00010100 -range 7 0 -starttime 20ns -endtime 40ns Edit:/adder8/B 
wave modify -driver freeze -pattern constant -value 00000101 -range 7 0 -starttime 00ns -endtime 20ns Edit:/adder8/B 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 80ns Edit:/adder8/Cin 
wave modify -driver freeze -pattern constant -value 1 -starttime 20ns -endtime 40ns Edit:/adder8/Cin 
wave modify -driver freeze -pattern constant -value 1 -starttime 60ns -endtime 80ns Edit:/adder8/Cin 
{wave export -file Adder8_tb -starttime 0 -endtime 80 -format vhdl -designunit adder8} 
WaveCollapseAll -1
wave clipboard restore
