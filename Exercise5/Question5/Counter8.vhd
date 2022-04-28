library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.std_logic_unsigned.all;

entity Counter8 is																
	port ( 	CLK, CLR, SET, EN : in  std_logic;
				Q						: out std_logic_vector(7 downto 0));
end Counter8;

architecture RTL of Counter8 is
	signal REG : std_logic_vector(7 downto 0);
begin
	seq0	:	process (CLK, CLR, SET)
	begin
		if	(CLR='0') then
			REG <= (REG'range=>'0');
		elsif	(SET='0') then
			REG <= (REG'range=>'1');
		elsif (CLK'event and CLK = '1') then
			if (EN = '1') then
				REG <= REG + "00000001";	
			end if;
		end if;
	end process;
	Q <= REG;
end RTL;