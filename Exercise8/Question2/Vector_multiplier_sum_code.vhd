-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
-- CREATED		"Thu May 19 12:29:55 2022"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY Vector_multiplier_sum_code IS 
	PORT
	(
		rst 	:  IN  STD_LOGIC;
		clk 	:  IN  STD_LOGIC;
		lunch :  IN  STD_LOGIC;
		FF 	:  OUT  STD_LOGIC;
		COUT	:  OUT  STD_LOGIC;
		dout	:  OUT  STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END Vector_multiplier_sum_code;

ARCHITECTURE bdf_type OF Vector_multiplier_sum_code IS 

COMPONENT maincontrolunit
GENERIC (addr : INTEGER;
			n : INTEGER;
			rom : INTEGER
			);
	PORT(rst : IN STD_LOGIC;
		 clk : IN STD_LOGIC;
		 q : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Lnch : IN STD_LOGIC;
		 EN_Reg : OUT STD_LOGIC;
		 Fin_flag : OUT STD_LOGIC;
		 Address : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
		 D_A : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 D_B : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT adder
GENERIC (n : INTEGER
			);
	PORT(A : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 B : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 Cout : OUT STD_LOGIC;
		 Sum : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT reg
GENERIC (n : INTEGER
			);
	PORT(SI : IN STD_LOGIC;
		 CLK : IN STD_LOGIC;
		 RST : IN STD_LOGIC;
		 SLOAD : IN STD_LOGIC;
		 ENABLE : IN STD_LOGIC;
		 D_IN : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		 SO : OUT STD_LOGIC;
		 D_OUT : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
	);
END COMPONENT;

COMPONENT multiplier
	PORT(AIN : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 BIN : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 High : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Low : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

COMPONENT ram256x4
	PORT(clock : IN STD_LOGIC;
		 wren : IN STD_LOGIC;
		 address : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
		 data : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 q : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;

SIGNAL	A :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_0 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_1 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_5 :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC_VECTOR(7 DOWNTO 0);


BEGIN 
dout <= SYNTHESIZED_WIRE_1;
SYNTHESIZED_WIRE_11 <= '0';
SYNTHESIZED_WIRE_9 <= '0';



b2v_inst : maincontrolunit
GENERIC MAP(addr => 8,
			n => 4,
			rom => 256
			)
PORT MAP(rst => rst,
		 clk => clk,
		 q => SYNTHESIZED_WIRE_0,
		 Lnch => lunch,
		 EN_Reg => SYNTHESIZED_WIRE_4,
		 Fin_flag => FF,
		 Address => SYNTHESIZED_WIRE_10,
		 D_A => SYNTHESIZED_WIRE_7,
		 D_B => SYNTHESIZED_WIRE_8);


b2v_inst1 : adder
GENERIC MAP(n => 16
			)
PORT MAP(A => A,
		 B => SYNTHESIZED_WIRE_1,
		 Cout => COUT,
		 Sum => SYNTHESIZED_WIRE_5);


b2v_inst2 : reg
GENERIC MAP(n => 16
			)
PORT MAP(SI => SYNTHESIZED_WIRE_11,
		 CLK => clk,
		 RST => rst,
		 SLOAD => SYNTHESIZED_WIRE_11,
		 ENABLE => SYNTHESIZED_WIRE_4,
		 D_IN => SYNTHESIZED_WIRE_5,
		 D_OUT => SYNTHESIZED_WIRE_1);


b2v_inst4 : multiplier
PORT MAP(AIN => SYNTHESIZED_WIRE_7,
		 BIN => SYNTHESIZED_WIRE_8,
		 High => A(7 DOWNTO 4),
		 Low => A(3 DOWNTO 0));


b2v_inst8 : ram256x4
PORT MAP(clock => clk,
		 wren => SYNTHESIZED_WIRE_9,
		 address => SYNTHESIZED_WIRE_10,
		 data => "0000", -- added because empty input port caused error, yey
		 q => SYNTHESIZED_WIRE_0);


A(15 DOWNTO 8) <= "00000000";
END bdf_type;