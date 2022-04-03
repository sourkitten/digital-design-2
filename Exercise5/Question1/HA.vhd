library IEEE;
use IEEE.std_logic_1164.all;

entity HA is
	port ( A, B : in  std_logic;
			 S, C : out std_logic);
end HA;

architecture RTL of HA is
begin
	S <= A XOR B;
	C <= A AND B;
end RTL;