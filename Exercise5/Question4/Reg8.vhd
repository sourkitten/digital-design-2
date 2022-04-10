library IEEE;
use IEEE.std_logic_1164.all;

entity Reg8 is																
	port ( 	DATA			  : in  std_logic_vector(7 downto 0);
				CLK, CLR, SET : in  std_logic;
				Q             : out std_logic_vector(7 downto 0));
end Reg8;

architecture RTL of Reg8 is
	signal REG : std_logic_vector(7 downto 0);
begin
	seq0	:	process (CLK, CLR, SET)
	begin
		if	(CLR='1') then
			REG <= (REG'range=>'0');
		elsif	(SET='1') then
			REG <= (REG'range=>'1');
		elsif (CLK'event and CLK = '1') then
			REG<=DATA;	
		end if;
	end process;
	Q <= REG;
end RTL;