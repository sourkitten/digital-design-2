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
		 Mult_Reset : OUT STD_LOGIC;
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
GENERIC (n : INTEGER
			);
	PORT(Rst : IN STD_LOGIC;
		 CLK : IN STD_LOGIC;
		 AIN : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 BIN : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		 High : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 Low : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 OUTA : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 OUTB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		 OUTC : OUT STD_LOGIC_VECTOR(0 TO 0)
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
SIGNAL	SIGB :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_11 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_4 :  STD_LOGIC;
SIGNAL	AdderSum :  STD_LOGIC_VECTOR(15 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_6 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_7 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_8 :  STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL	SYNTHESIZED_WIRE_9 :  STD_LOGIC;
SIGNAL	SYNTHESIZED_WIRE_10 :  STD_LOGIC_VECTOR(7 DOWNTO 0);


SIGNAL	QCOUT : STD_LOGIC_VECTOR(14 downto 0);


BEGIN 
dout <= SIGB;
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
		 Mult_Reset => SYNTHESIZED_WIRE_6,
		 EN_Reg => SYNTHESIZED_WIRE_4,
		 Fin_flag => FF,
		 Address => SYNTHESIZED_WIRE_10,
		 D_A => SYNTHESIZED_WIRE_7,
		 D_B => SYNTHESIZED_WIRE_8);


--b2v_inst1 : adder
--GENERIC MAP(n => 16
--			)
--PORT MAP(A => A,
--		 B => SIGB,
--		 Cout => COUT,
--		 Sum => AdderSum);


b2v_inst2 : reg
GENERIC MAP(n => 16
			)
PORT MAP(SI => SYNTHESIZED_WIRE_11,
		 CLK => clk,
		 RST => rst,
		 SLOAD => SYNTHESIZED_WIRE_11,
		 ENABLE => SYNTHESIZED_WIRE_4,
		 D_IN => AdderSum,
		 D_OUT => SIGB);


b2v_inst4 : multiplier
GENERIC MAP(n => 4
			)
PORT MAP(Rst => SYNTHESIZED_WIRE_6,
		 CLK => clk,
		 AIN => SYNTHESIZED_WIRE_7,
		 BIN => SYNTHESIZED_WIRE_8,
		 High => A(7 DOWNTO 4),
		 Low => A(3 DOWNTO 0));





b2v_inst8 : ram256x4
PORT MAP(clock => clk,
		 wren => SYNTHESIZED_WIRE_9,
		 address => SYNTHESIZED_WIRE_10,
		 data => "0000", -- added because empty input port caused error, yey
		 q => SYNTHESIZED_WIRE_0);

		 
--A: A
--B: SIGB
--Q: AdderSum
--addr: process(clk)
--begin
--if (clk'event and clk='1') then
	--HA: Q(0). Q(0) = A(0) XOR B(0) | QCOUT(0) = A(0) AND B(0)
	AdderSum(0) <= A(0)XOR SIGB(0);
	QCOUT(0) <= A(0) AND SIGB(0);

	--FA: Q(1). Q(1) = A(1) XOR B(1) XOR QCOUT(0) | QCOUT(1) = (A(1) AND B(1)) | (A(1) AND QCOUT(0)) | (B(1) AND QCOUT(0))
	AdderSum(1) <= A(1) XOR SIGB(1) XOR QCOUT(0);
	QCOUT(1) <= (A(1) AND SIGB(1)) OR (A(1) AND QCOUT(0)) OR (SIGB(1) AND QCOUT(0));

	--FA: Q(2). Q(2) = A(2) XOR B(2) XOR QCOUT(1) | QCOUT(2) = (A(2) AND B(2)) | (A(2) AND QCOUT(1)) | (B(2) AND QCOUT(1))
	AdderSum(2) <= A(2) XOR SIGB(2) XOR QCOUT(1);
	QCOUT(2) <= (A(2) AND SIGB(2)) OR (A(2) AND QCOUT(1)) OR (SIGB(2) AND QCOUT(1));

	--FA: Q(3). Q(3) = A(3) XOR B(3) XOR QCOUT(2) | QCOUT(3) = (A(3) AND B(3)) | (A(3) AND QCOUT(2)) | (B(3) AND QCOUT(2))
	AdderSum(3) <= A(3) XOR SIGB(3) XOR QCOUT(2);
	QCOUT(3) <= (A(3) AND SIGB(3)) OR (A(3) AND QCOUT(2)) OR (SIGB(3) AND QCOUT(2));

	--FA: Q(4). Q(4) = A(4) XOR B(4) XOR QCOUT(3) | QCOUT(4) = (A(4) AND B(4)) | (A(4) AND QCOUT(3)) | (B(4) AND QCOUT(3))
	AdderSum(4) <= A(4) XOR SIGB(4) XOR QCOUT(3);
	QCOUT(4) <= (A(4) AND SIGB(4)) OR (A(4) AND QCOUT(3)) OR (SIGB(4) AND QCOUT(3));

	--FA: Q(5). Q(5) = A(5) XOR B(5) XOR QCOUT(4) | QCOUT(5) = (A(5) AND B(5)) | (A(5) AND QCOUT(4)) | (B(5) AND QCOUT(4))
	AdderSum(5) <= A(5) XOR SIGB(5) XOR QCOUT(4);
	QCOUT(5) <= (A(5) AND SIGB(5)) OR (A(5) AND QCOUT(4)) OR (SIGB(5) AND QCOUT(4));

	--FA: Q(6). Q(6) = A(6) XOR B(6) XOR QCOUT(5) | QCOUT(6) = (A(6) AND B(6)) | (A(6) AND QCOUT(5)) | (B(6) AND QCOUT(5))
	AdderSum(6) <= A(6) XOR SIGB(6) XOR QCOUT(5);
	QCOUT(6) <= (A(6) AND SIGB(6)) OR (A(6) AND QCOUT(5)) OR (SIGB(6) AND QCOUT(5));

	--FA: Q(7). Q(7) = A(7) XOR B(7) XOR QCOUT(6) | QCOUT(7) = (A(7) AND B(7)) | (A(7) AND QCOUT(6)) | (B(7) AND QCOUT(6))
	AdderSum(7) <= A(7) XOR SIGB(7) XOR QCOUT(6);
	QCOUT(7) <= (A(7) AND SIGB(7)) OR (A(7) AND QCOUT(6)) OR (SIGB(7) AND QCOUT(6));

	--HA: Q(8). A(8) XOR QCOUT(7) x| QCOUT(8) = A(8) AND B(8)
	AdderSum(8) <= (SIGB(8) XOR QCOUT(7));
	QCOUT(8) <= SIGB(8) AND QCOUT(7);

	--HA: Q(9). A(9) XOR QCOUT(8) | QCOUT(9) = A(9) AND QCOUT(8)
	AdderSum(9) <= (SIGB(9) XOR QCOUT(8));
	QCOUT(9) <= SIGB(9) AND QCOUT(8);

	--HA: Q(10). A(10) XOR QCOUT(9) | QCOUT(10) = A(10) AND QCOUT(9)
	AdderSum(10) <= (SIGB(10) XOR QCOUT(9));
	QCOUT(10) <= SIGB(10) AND QCOUT(9);

	--HA: Q(11). A(11) XOR QCOUT(10) | QCOUT(11) = A(11) AND QCOUT(10)
	AdderSum(11) <= (SIGB(11) XOR QCOUT(10));
	QCOUT(11) <= SIGB(11) AND QCOUT(10);

	--HA: Q(12). A(12) XOR QCOUT(11) | QCOUT(12) = A(12) AND QCOUT(11)
	AdderSum(12) <= (SIGB(12) XOR QCOUT(11));
	QCOUT(12) <= SIGB(12) AND QCOUT(11);

	--HA: Q(13). A(13) XOR QCOUT(12) | QCOUT(13) = A(13) AND QCOUT(12)
	AdderSum(13) <= (SIGB(13) XOR QCOUT(12));
	QCOUT(13) <= SIGB(13) AND QCOUT(12);

	--HA: Q(14). A(14) XOR QCOUT(13) | QCOUT(14) = A(14) AND QCOUT(13)
	AdderSum(14) <= (SIGB(14) XOR QCOUT(13));
	QCOUT(14) <= SIGB(14) AND QCOUT(13);

	--HA: Q(15). A(15) XOR QCOUT(14) | COUT = A(15) AND QCOUT(14)
	AdderSum(15) <= (SIGB(15) XOR QCOUT(14));
	COUT <= SIGB(15) AND QCOUT(14);
--end if;
--end process;

END bdf_type;