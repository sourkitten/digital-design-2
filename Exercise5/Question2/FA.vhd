library IEEE;
use IEEE.std_logic_1164.all;

entity FA is
	port ( A, B, Cin : in  std_logic;
			 S, Cout   : out std_logic);
end FA;

architecture RTL of FA is
begin
	S    <= A XOR B XOR Cin;
	Cout <= ((A XOR B) AND Cin) OR (A AND B);
end RTL;