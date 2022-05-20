library IEEE;
use IEEE.std_logic_1164.all;

entity Sorter is
	port (
		-- Input ports
		CLK		: in  STD_LOGIC;
		Reset		: in  STD_LOGIC;
		Launch	: in  STD_LOGIC;
		START   : 	in		std_logic_vector (7 downto	0);
		FINISH  : 	in		std_logic_vector (7 downto	0);
		-- Output ports
		Data		: out STD_LOGIC_VECTOR (7 downto 0);
		Complete	: out STD_LOGIC
	);
end Sorter;


architecture RTL of Sorter is

	component BubbleSort

		port (
				clk,	launch,	reset :	in	std_logic;
				DataIn  : 	in		std_logic_vector (7 downto	0);
				START   : 	in		std_logic_vector (7 downto	0);
				FINISH  : 	in		std_logic_vector (7 downto	0);
				Address :	out	std_logic_vector (7 downto	0);
				DataOut :	out	std_logic_vector (7 downto	0);
				Complete, WR :	out std_logic
				);

	end component;

	component RAM265x8

		port (
		address		: IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
		clock			: IN  STD_LOGIC;
		data			: IN  STD_LOGIC_VECTOR (7 DOWNTO 0);
		wren			: IN  STD_LOGIC;
		q				: OUT STD_LOGIC_VECTOR (7 DOWNTO 0)
		);

	end component;

signal dataBtoR : STD_LOGIC_VECTOR (7 downto 0);
signal dataRtoB : STD_LOGIC_VECTOR (7 downto 0);
signal addr		 : STD_LOGIC_VECTOR (7 downto 0);
signal WriteEn	 : STD_LOGIC;
	
begin

Data <= dataRtoB;

	BS : BubbleSort port map ( clk => CLK, launch => Launch, reset => Reset, DataIn => dataRtoB, START => START,
										FINISH => FINISH, Address => addr, DataOut => dataBtoR,
										Complete => Complete, WR => WriteEn );

	RAM : RAM265x8	 port map ( address => addr, clock => CLK, data => dataBtoR, wren => WriteEn, q => dataRtoB);
	

	
end RTL;

