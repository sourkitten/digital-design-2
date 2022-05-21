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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "05/21/2022 13:38:40"

-- 
-- Device: Altera EP2C35F672C6 Package FBGA672
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEII;
LIBRARY IEEE;
USE CYCLONEII.CYCLONEII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Vector_multiplier_sum_code IS
    PORT (
	rst : IN std_logic;
	clk : IN std_logic;
	lunch : IN std_logic;
	FF : OUT std_logic;
	COUT : OUT std_logic;
	dout : OUT std_logic_vector(15 DOWNTO 0)
	);
END Vector_multiplier_sum_code;

-- Design Ports Information
-- FF	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- COUT	=>  Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[0]	=>  Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[1]	=>  Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[2]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[3]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[4]	=>  Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[5]	=>  Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[6]	=>  Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[7]	=>  Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[8]	=>  Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[9]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[10]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[11]	=>  Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[12]	=>  Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[13]	=>  Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[14]	=>  Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- dout[15]	=>  Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- lunch	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- rst	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Vector_multiplier_sum_code IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_lunch : std_logic;
SIGNAL ww_FF : std_logic;
SIGNAL ww_COUT : std_logic;
SIGNAL ww_dout : std_logic_vector(15 DOWNTO 0);
SIGNAL \b2v_inst8|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst8|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst8|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst4|U_Ad|Sum[3]~7\ : std_logic;
SIGNAL \b2v_inst4|U_Ad|Cout~0_combout\ : std_logic;
SIGNAL \b2v_inst|Add1~1\ : std_logic;
SIGNAL \b2v_inst|Add1~2_combout\ : std_logic;
SIGNAL \b2v_inst|Add1~3\ : std_logic;
SIGNAL \b2v_inst|Add1~4_combout\ : std_logic;
SIGNAL \b2v_inst|Add1~5\ : std_logic;
SIGNAL \b2v_inst|Add1~6_combout\ : std_logic;
SIGNAL \b2v_inst|Add1~7\ : std_logic;
SIGNAL \b2v_inst|Add1~8_combout\ : std_logic;
SIGNAL \b2v_inst4|U_Ctl|count[3]~9\ : std_logic;
SIGNAL \b2v_inst4|U_Ctl|count[4]~10_combout\ : std_logic;
SIGNAL \b2v_inst4|comb~1_combout\ : std_logic;
SIGNAL \b2v_inst4|comb~2_combout\ : std_logic;
SIGNAL \b2v_inst4|comb~3_combout\ : std_logic;
SIGNAL \b2v_inst|Equal0~0_combout\ : std_logic;
SIGNAL \b2v_inst4|R_C|F[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst|count~0_combout\ : std_logic;
SIGNAL \b2v_inst|count~1_combout\ : std_logic;
SIGNAL \b2v_inst4|U_Ctl|count[0]~12_combout\ : std_logic;
SIGNAL \b2v_inst|S_B[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|S_A[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|S_B[2]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|S_A[3]~feeder_combout\ : std_logic;
SIGNAL \clk~combout\ : std_logic;
SIGNAL \clk~clkctrl_outclk\ : std_logic;
SIGNAL \b2v_inst|Add1~0_combout\ : std_logic;
SIGNAL \rst~combout\ : std_logic;
SIGNAL \b2v_inst|count_addr[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~1\ : std_logic;
SIGNAL \b2v_inst|Add0~3\ : std_logic;
SIGNAL \b2v_inst|Add0~4_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~5\ : std_logic;
SIGNAL \b2v_inst|Add0~6_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~7\ : std_logic;
SIGNAL \b2v_inst|Add0~8_combout\ : std_logic;
SIGNAL \b2v_inst|Fin_flag~0_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~2_combout\ : std_logic;
SIGNAL \b2v_inst|Fin_flag~1_combout\ : std_logic;
SIGNAL \b2v_inst|Selector2~0_combout\ : std_logic;
SIGNAL \b2v_inst|state.LD_A~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|state.LD_A~regout\ : std_logic;
SIGNAL \b2v_inst|state.WAITING~0_combout\ : std_logic;
SIGNAL \b2v_inst|state.WAITING~regout\ : std_logic;
SIGNAL \b2v_inst|state.LD_B~regout\ : std_logic;
SIGNAL \b2v_inst|Selector4~0_combout\ : std_logic;
SIGNAL \b2v_inst|state.MULTIPLY~regout\ : std_logic;
SIGNAL \b2v_inst|state.FINISH~0_combout\ : std_logic;
SIGNAL \b2v_inst|state.FINISH~regout\ : std_logic;
SIGNAL \b2v_inst|state.ADD~0_combout\ : std_logic;
SIGNAL \b2v_inst|state.ADD~1_combout\ : std_logic;
SIGNAL \b2v_inst|state.ADD~regout\ : std_logic;
SIGNAL \b2v_inst|Fin_flag~2_combout\ : std_logic;
SIGNAL \b2v_inst|Fin_flag~regout\ : std_logic;
SIGNAL \b2v_inst|Selector7~0_combout\ : std_logic;
SIGNAL \b2v_inst|EN_Reg~regout\ : std_logic;
SIGNAL \b2v_inst2|F[8]~9_combout\ : std_logic;
SIGNAL \b2v_inst4|U_Ctl|state.LOAD~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|Selector8~0_combout\ : std_logic;
SIGNAL \b2v_inst|Mult_Reset~regout\ : std_logic;
SIGNAL \b2v_inst4|U_Ctl|state.LOAD~regout\ : std_logic;
SIGNAL \b2v_inst4|U_Ctl|count[1]~4_combout\ : std_logic;
SIGNAL \b2v_inst4|U_Ctl|count[1]~5\ : std_logic;
SIGNAL \b2v_inst4|U_Ctl|count[2]~6_combout\ : std_logic;
SIGNAL \b2v_inst4|U_Ctl|count[2]~7\ : std_logic;
SIGNAL \b2v_inst4|U_Ctl|count[3]~8_combout\ : std_logic;
SIGNAL \b2v_inst4|U_Ctl|Selector0~0_combout\ : std_logic;
SIGNAL \b2v_inst4|U_Ctl|Selector0~1_combout\ : std_logic;
SIGNAL \b2v_inst4|U_Ctl|state.ADD~regout\ : std_logic;
SIGNAL \b2v_inst4|U_Ctl|state.SHIFT~feeder_combout\ : std_logic;
SIGNAL \b2v_inst4|U_Ctl|state.SHIFT~regout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \b2v_inst|Add0~0_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~9\ : std_logic;
SIGNAL \b2v_inst|Add0~10_combout\ : std_logic;
SIGNAL \b2v_inst|Add0~11\ : std_logic;
SIGNAL \b2v_inst|Add0~12_combout\ : std_logic;
SIGNAL \b2v_inst|Selector9~0_combout\ : std_logic;
SIGNAL \b2v_inst|S_A[1]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|S_A[3]~0_combout\ : std_logic;
SIGNAL \b2v_inst|S_B[3]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst|S_B[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst|S_A[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst4|R_B|F~3_combout\ : std_logic;
SIGNAL \b2v_inst4|U_Ctl|EN_B~combout\ : std_logic;
SIGNAL \b2v_inst4|R_B|F~2_combout\ : std_logic;
SIGNAL \b2v_inst4|R_B|F~1_combout\ : std_logic;
SIGNAL \b2v_inst|S_B[0]~feeder_combout\ : std_logic;
SIGNAL \b2v_inst4|R_B|F~0_combout\ : std_logic;
SIGNAL \b2v_inst4|comb~0_combout\ : std_logic;
SIGNAL \b2v_inst4|U_Ad|Sum[1]~2_combout\ : std_logic;
SIGNAL \b2v_inst4|R_H|F~0_combout\ : std_logic;
SIGNAL \b2v_inst4|U_Ctl|EN_H~combout\ : std_logic;
SIGNAL \b2v_inst4|U_Ad|Sum[0]~0_combout\ : std_logic;
SIGNAL \b2v_inst4|R_H|F~1_combout\ : std_logic;
SIGNAL \b2v_inst4|U_Ad|Sum[0]~1\ : std_logic;
SIGNAL \b2v_inst4|U_Ad|Sum[1]~3\ : std_logic;
SIGNAL \b2v_inst4|U_Ad|Sum[2]~4_combout\ : std_logic;
SIGNAL \b2v_inst4|R_H|F~2_combout\ : std_logic;
SIGNAL \b2v_inst4|U_Ad|Sum[2]~5\ : std_logic;
SIGNAL \b2v_inst4|U_Ad|Sum[3]~6_combout\ : std_logic;
SIGNAL \b2v_inst4|R_H|F~3_combout\ : std_logic;
SIGNAL \b2v_inst2|F[0]~10_combout\ : std_logic;
SIGNAL \AdderSum[1]~3_combout\ : std_logic;
SIGNAL \QCOUT[1]~9_combout\ : std_logic;
SIGNAL \AdderSum[2]~2_combout\ : std_logic;
SIGNAL \QCOUT[2]~10_combout\ : std_logic;
SIGNAL \QCOUT[2]~11_combout\ : std_logic;
SIGNAL \QCOUT[3]~12_combout\ : std_logic;
SIGNAL \QCOUT[4]~13_combout\ : std_logic;
SIGNAL \QCOUT[4]~14_combout\ : std_logic;
SIGNAL \QCOUT[6]~16_combout\ : std_logic;
SIGNAL \QCOUT[6]~17_combout\ : std_logic;
SIGNAL \AdderSum[4]~1_combout\ : std_logic;
SIGNAL \QCOUT[6]~21_combout\ : std_logic;
SIGNAL \QCOUT[6]~15_combout\ : std_logic;
SIGNAL \QCOUT[7]~18_combout\ : std_logic;
SIGNAL \b2v_inst2|F[9]~8_combout\ : std_logic;
SIGNAL \b2v_inst2|F[10]~1_combout\ : std_logic;
SIGNAL \b2v_inst2|F[10]~7_combout\ : std_logic;
SIGNAL \QCOUT[14]~19_combout\ : std_logic;
SIGNAL \b2v_inst2|F[15]~0_combout\ : std_logic;
SIGNAL \b2v_inst2|F[12]~5_combout\ : std_logic;
SIGNAL \b2v_inst2|F[13]~2_combout\ : std_logic;
SIGNAL \b2v_inst2|F[14]~3_combout\ : std_logic;
SIGNAL \b2v_inst2|F[11]~6_combout\ : std_logic;
SIGNAL \QCOUT[14]~8_combout\ : std_logic;
SIGNAL \COUT~0_combout\ : std_logic;
SIGNAL \QCOUT[5]~20_combout\ : std_logic;
SIGNAL \AdderSum[6]~0_combout\ : std_logic;
SIGNAL \b2v_inst2|F[13]~4_combout\ : std_logic;
SIGNAL \b2v_inst8|altsyncram_component|auto_generated|q_a\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst4|R_A|F\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst4|R_C|F\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \b2v_inst|S_B\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst4|R_B|F\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst4|R_L|F\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst|count_addr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \b2v_inst4|U_Ctl|count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \b2v_inst|count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \b2v_inst4|R_H|F\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \b2v_inst2|F\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \b2v_inst|S_A\ : std_logic_vector(3 DOWNTO 0);
SIGNAL AdderSum : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_rst~combout\ : std_logic;
SIGNAL \b2v_inst4|U_Ctl|ALT_INV_state.LOAD~regout\ : std_logic;

BEGIN

ww_rst <= rst;
ww_clk <= clk;
ww_lunch <= lunch;
FF <= ww_FF;
COUT <= ww_COUT;
dout <= ww_dout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\b2v_inst8|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\~GND~combout\ & \~GND~combout\ & \~GND~combout\ & \~GND~combout\);

\b2v_inst8|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\b2v_inst|count_addr\(7) & \b2v_inst|count_addr\(6) & \b2v_inst|count_addr\(5) & \b2v_inst|count_addr\(4) & \b2v_inst|count_addr\(3) & \b2v_inst|count_addr\(2) & 
\b2v_inst|count_addr\(1) & \b2v_inst|count_addr\(0));

\b2v_inst8|altsyncram_component|auto_generated|q_a\(0) <= \b2v_inst8|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\b2v_inst8|altsyncram_component|auto_generated|q_a\(1) <= \b2v_inst8|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\b2v_inst8|altsyncram_component|auto_generated|q_a\(2) <= \b2v_inst8|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\b2v_inst8|altsyncram_component|auto_generated|q_a\(3) <= \b2v_inst8|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);

\clk~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \clk~combout\);
\ALT_INV_rst~combout\ <= NOT \rst~combout\;
\b2v_inst4|U_Ctl|ALT_INV_state.LOAD~regout\ <= NOT \b2v_inst4|U_Ctl|state.LOAD~regout\;

-- Location: LCCOMB_X42_Y21_N6
\b2v_inst4|U_Ad|Sum[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|U_Ad|Sum[3]~6_combout\ = (\b2v_inst4|comb~3_combout\ & ((\b2v_inst4|R_H|F\(3) & (\b2v_inst4|U_Ad|Sum[2]~5\ & VCC)) # (!\b2v_inst4|R_H|F\(3) & (!\b2v_inst4|U_Ad|Sum[2]~5\)))) # (!\b2v_inst4|comb~3_combout\ & ((\b2v_inst4|R_H|F\(3) & 
-- (!\b2v_inst4|U_Ad|Sum[2]~5\)) # (!\b2v_inst4|R_H|F\(3) & ((\b2v_inst4|U_Ad|Sum[2]~5\) # (GND)))))
-- \b2v_inst4|U_Ad|Sum[3]~7\ = CARRY((\b2v_inst4|comb~3_combout\ & (!\b2v_inst4|R_H|F\(3) & !\b2v_inst4|U_Ad|Sum[2]~5\)) # (!\b2v_inst4|comb~3_combout\ & ((!\b2v_inst4|U_Ad|Sum[2]~5\) # (!\b2v_inst4|R_H|F\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|comb~3_combout\,
	datab => \b2v_inst4|R_H|F\(3),
	datad => VCC,
	cin => \b2v_inst4|U_Ad|Sum[2]~5\,
	combout => \b2v_inst4|U_Ad|Sum[3]~6_combout\,
	cout => \b2v_inst4|U_Ad|Sum[3]~7\);

-- Location: LCFF_X41_Y21_N7
\b2v_inst4|U_Ctl|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst4|U_Ctl|count[4]~10_combout\,
	aclr => \b2v_inst|Mult_Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst4|U_Ctl|count\(4));

-- Location: LCCOMB_X42_Y21_N8
\b2v_inst4|U_Ad|Cout~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|U_Ad|Cout~0_combout\ = !\b2v_inst4|U_Ad|Sum[3]~7\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \b2v_inst4|U_Ad|Sum[3]~7\,
	combout => \b2v_inst4|U_Ad|Cout~0_combout\);

-- Location: LCCOMB_X33_Y21_N2
\b2v_inst|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add1~0_combout\ = \b2v_inst|count\(0) $ (VCC)
-- \b2v_inst|Add1~1\ = CARRY(\b2v_inst|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|count\(0),
	datad => VCC,
	combout => \b2v_inst|Add1~0_combout\,
	cout => \b2v_inst|Add1~1\);

-- Location: LCCOMB_X33_Y21_N4
\b2v_inst|Add1~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add1~2_combout\ = (\b2v_inst|count\(1) & (!\b2v_inst|Add1~1\)) # (!\b2v_inst|count\(1) & ((\b2v_inst|Add1~1\) # (GND)))
-- \b2v_inst|Add1~3\ = CARRY((!\b2v_inst|Add1~1\) # (!\b2v_inst|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|count\(1),
	datad => VCC,
	cin => \b2v_inst|Add1~1\,
	combout => \b2v_inst|Add1~2_combout\,
	cout => \b2v_inst|Add1~3\);

-- Location: LCCOMB_X33_Y21_N6
\b2v_inst|Add1~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add1~4_combout\ = (\b2v_inst|count\(2) & (\b2v_inst|Add1~3\ $ (GND))) # (!\b2v_inst|count\(2) & (!\b2v_inst|Add1~3\ & VCC))
-- \b2v_inst|Add1~5\ = CARRY((\b2v_inst|count\(2) & !\b2v_inst|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|count\(2),
	datad => VCC,
	cin => \b2v_inst|Add1~3\,
	combout => \b2v_inst|Add1~4_combout\,
	cout => \b2v_inst|Add1~5\);

-- Location: LCCOMB_X33_Y21_N8
\b2v_inst|Add1~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add1~6_combout\ = (\b2v_inst|count\(3) & (!\b2v_inst|Add1~5\)) # (!\b2v_inst|count\(3) & ((\b2v_inst|Add1~5\) # (GND)))
-- \b2v_inst|Add1~7\ = CARRY((!\b2v_inst|Add1~5\) # (!\b2v_inst|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|count\(3),
	datad => VCC,
	cin => \b2v_inst|Add1~5\,
	combout => \b2v_inst|Add1~6_combout\,
	cout => \b2v_inst|Add1~7\);

-- Location: LCCOMB_X33_Y21_N10
\b2v_inst|Add1~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add1~8_combout\ = \b2v_inst|Add1~7\ $ (!\b2v_inst|count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|count\(4),
	cin => \b2v_inst|Add1~7\,
	combout => \b2v_inst|Add1~8_combout\);

-- Location: M4K_X26_Y21
\b2v_inst8|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"10FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA98765432876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9876543210FEDCBA9",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "RAM256x4.mif",
	init_file_layout => "port_a",
	logical_ram_name => "RAM256x4:b2v_inst8|altsyncram:altsyncram_component|altsyncram_jtc1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 4,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 4,
	port_a_write_enable_clear => "none",
	port_b_address_width => 8,
	port_b_data_width => 4,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => GND,
	clk0 => \clk~clkctrl_outclk\,
	portadatain => \b2v_inst8|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \b2v_inst8|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \b2v_inst8|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X41_Y21_N4
\b2v_inst4|U_Ctl|count[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|U_Ctl|count[3]~8_combout\ = (\b2v_inst4|U_Ctl|count\(3) & (\b2v_inst4|U_Ctl|count[2]~7\ $ (GND))) # (!\b2v_inst4|U_Ctl|count\(3) & (!\b2v_inst4|U_Ctl|count[2]~7\ & VCC))
-- \b2v_inst4|U_Ctl|count[3]~9\ = CARRY((\b2v_inst4|U_Ctl|count\(3) & !\b2v_inst4|U_Ctl|count[2]~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst4|U_Ctl|count\(3),
	datad => VCC,
	cin => \b2v_inst4|U_Ctl|count[2]~7\,
	combout => \b2v_inst4|U_Ctl|count[3]~8_combout\,
	cout => \b2v_inst4|U_Ctl|count[3]~9\);

-- Location: LCCOMB_X41_Y21_N6
\b2v_inst4|U_Ctl|count[4]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|U_Ctl|count[4]~10_combout\ = \b2v_inst4|U_Ctl|count[3]~9\ $ (\b2v_inst4|U_Ctl|count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst4|U_Ctl|count\(4),
	cin => \b2v_inst4|U_Ctl|count[3]~9\,
	combout => \b2v_inst4|U_Ctl|count[4]~10_combout\);

-- Location: LCCOMB_X36_Y21_N0
\b2v_inst4|comb~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|comb~1_combout\ = (\b2v_inst4|R_A|F\(0) & \b2v_inst4|R_B|F\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst4|R_A|F\(0),
	datad => \b2v_inst4|R_B|F\(0),
	combout => \b2v_inst4|comb~1_combout\);

-- Location: LCFF_X36_Y21_N19
\b2v_inst4|R_A|F[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst|S_A\(2),
	aclr => \b2v_inst|Mult_Reset~regout\,
	sload => VCC,
	ena => \b2v_inst4|U_Ctl|ALT_INV_state.LOAD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst4|R_A|F\(2));

-- Location: LCCOMB_X36_Y21_N18
\b2v_inst4|comb~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|comb~2_combout\ = (\b2v_inst4|R_A|F\(2) & \b2v_inst4|R_B|F\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst4|R_A|F\(2),
	datad => \b2v_inst4|R_B|F\(0),
	combout => \b2v_inst4|comb~2_combout\);

-- Location: LCFF_X41_Y21_N15
\b2v_inst4|R_C|F[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst4|R_C|F[0]~0_combout\,
	aclr => \b2v_inst|Mult_Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst4|R_C|F\(0));

-- Location: LCFF_X36_Y21_N13
\b2v_inst4|R_A|F[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst|S_A\(3),
	aclr => \b2v_inst|Mult_Reset~regout\,
	sload => VCC,
	ena => \b2v_inst4|U_Ctl|ALT_INV_state.LOAD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst4|R_A|F\(3));

-- Location: LCCOMB_X36_Y21_N12
\b2v_inst4|comb~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|comb~3_combout\ = (\b2v_inst4|R_A|F\(3) & \b2v_inst4|R_B|F\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst4|R_A|F\(3),
	datad => \b2v_inst4|R_B|F\(0),
	combout => \b2v_inst4|comb~3_combout\);

-- Location: LCFF_X33_Y21_N29
\b2v_inst|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|count~0_combout\,
	aclr => \rst~combout\,
	ena => \b2v_inst|state.MULTIPLY~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|count\(3));

-- Location: LCFF_X33_Y21_N11
\b2v_inst|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|Add1~8_combout\,
	aclr => \rst~combout\,
	ena => \b2v_inst|state.MULTIPLY~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|count\(4));

-- Location: LCFF_X33_Y21_N7
\b2v_inst|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|Add1~4_combout\,
	aclr => \rst~combout\,
	ena => \b2v_inst|state.MULTIPLY~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|count\(2));

-- Location: LCFF_X33_Y21_N19
\b2v_inst|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|count~1_combout\,
	aclr => \rst~combout\,
	ena => \b2v_inst|state.MULTIPLY~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|count\(1));

-- Location: LCCOMB_X33_Y21_N24
\b2v_inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Equal0~0_combout\ = (!\b2v_inst|count\(4) & (!\b2v_inst|count\(1) & (!\b2v_inst|count\(2) & \b2v_inst|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|count\(4),
	datab => \b2v_inst|count\(1),
	datac => \b2v_inst|count\(2),
	datad => \b2v_inst|count\(3),
	combout => \b2v_inst|Equal0~0_combout\);

-- Location: LCFF_X41_Y21_N11
\b2v_inst4|U_Ctl|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst4|U_Ctl|count[0]~12_combout\,
	aclr => \b2v_inst|Mult_Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst4|U_Ctl|count\(0));

-- Location: LCFF_X35_Y21_N7
\b2v_inst|S_A[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|S_A[2]~feeder_combout\,
	ena => \b2v_inst|S_A[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|S_A\(2));

-- Location: LCCOMB_X41_Y21_N14
\b2v_inst4|R_C|F[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|R_C|F[0]~0_combout\ = (\b2v_inst4|U_Ctl|state.ADD~regout\ & (\b2v_inst4|U_Ad|Cout~0_combout\)) # (!\b2v_inst4|U_Ctl|state.ADD~regout\ & ((\b2v_inst4|R_C|F\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst4|U_Ad|Cout~0_combout\,
	datac => \b2v_inst4|R_C|F\(0),
	datad => \b2v_inst4|U_Ctl|state.ADD~regout\,
	combout => \b2v_inst4|R_C|F[0]~0_combout\);

-- Location: LCFF_X35_Y21_N5
\b2v_inst|S_A[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|S_A[3]~feeder_combout\,
	ena => \b2v_inst|S_A[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|S_A\(3));

-- Location: LCCOMB_X33_Y21_N28
\b2v_inst|count~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|count~0_combout\ = (\b2v_inst|Add1~6_combout\ & ((!\b2v_inst|count\(0)) # (!\b2v_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Equal0~0_combout\,
	datac => \b2v_inst|Add1~6_combout\,
	datad => \b2v_inst|count\(0),
	combout => \b2v_inst|count~0_combout\);

-- Location: LCCOMB_X33_Y21_N18
\b2v_inst|count~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|count~1_combout\ = (\b2v_inst|Add1~2_combout\ & ((!\b2v_inst|count\(0)) # (!\b2v_inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Equal0~0_combout\,
	datac => \b2v_inst|Add1~2_combout\,
	datad => \b2v_inst|count\(0),
	combout => \b2v_inst|count~1_combout\);

-- Location: LCFF_X35_Y21_N15
\b2v_inst|S_B[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|S_B[1]~feeder_combout\,
	ena => \b2v_inst|S_B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|S_B\(1));

-- Location: LCFF_X35_Y21_N13
\b2v_inst|S_B[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|S_B[2]~feeder_combout\,
	ena => \b2v_inst|S_B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|S_B\(2));

-- Location: LCCOMB_X41_Y21_N10
\b2v_inst4|U_Ctl|count[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|U_Ctl|count[0]~12_combout\ = !\b2v_inst4|U_Ctl|count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst4|U_Ctl|count\(0),
	combout => \b2v_inst4|U_Ctl|count[0]~12_combout\);

-- Location: LCCOMB_X35_Y21_N14
\b2v_inst|S_B[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|S_B[1]~feeder_combout\ = \b2v_inst8|altsyncram_component|auto_generated|q_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst8|altsyncram_component|auto_generated|q_a\(1),
	combout => \b2v_inst|S_B[1]~feeder_combout\);

-- Location: LCCOMB_X35_Y21_N6
\b2v_inst|S_A[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|S_A[2]~feeder_combout\ = \b2v_inst8|altsyncram_component|auto_generated|q_a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst8|altsyncram_component|auto_generated|q_a\(2),
	combout => \b2v_inst|S_A[2]~feeder_combout\);

-- Location: LCCOMB_X35_Y21_N12
\b2v_inst|S_B[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|S_B[2]~feeder_combout\ = \b2v_inst8|altsyncram_component|auto_generated|q_a\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst8|altsyncram_component|auto_generated|q_a\(2),
	combout => \b2v_inst|S_B[2]~feeder_combout\);

-- Location: LCCOMB_X35_Y21_N4
\b2v_inst|S_A[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|S_A[3]~feeder_combout\ = \b2v_inst8|altsyncram_component|auto_generated|q_a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst8|altsyncram_component|auto_generated|q_a\(3),
	combout => \b2v_inst|S_A[3]~feeder_combout\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\clk~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_clk,
	combout => \clk~combout\);

-- Location: CLKCTRL_G3
\clk~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~clkctrl_outclk\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\rst~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_rst,
	combout => \rst~combout\);

-- Location: LCCOMB_X27_Y21_N2
\b2v_inst|count_addr[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|count_addr[0]~0_combout\ = !\b2v_inst|count_addr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|count_addr\(0),
	combout => \b2v_inst|count_addr[0]~0_combout\);

-- Location: LCFF_X27_Y21_N3
\b2v_inst|count_addr[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|count_addr[0]~0_combout\,
	aclr => \rst~combout\,
	ena => \b2v_inst|state.LD_B~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|count_addr\(0));

-- Location: LCCOMB_X27_Y21_N10
\b2v_inst|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~0_combout\ = (\b2v_inst|count_addr\(1) & (\b2v_inst|count_addr\(0) $ (VCC))) # (!\b2v_inst|count_addr\(1) & (\b2v_inst|count_addr\(0) & VCC))
-- \b2v_inst|Add0~1\ = CARRY((\b2v_inst|count_addr\(1) & \b2v_inst|count_addr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|count_addr\(1),
	datab => \b2v_inst|count_addr\(0),
	datad => VCC,
	combout => \b2v_inst|Add0~0_combout\,
	cout => \b2v_inst|Add0~1\);

-- Location: LCCOMB_X27_Y21_N12
\b2v_inst|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~2_combout\ = (\b2v_inst|count_addr\(2) & (!\b2v_inst|Add0~1\)) # (!\b2v_inst|count_addr\(2) & ((\b2v_inst|Add0~1\) # (GND)))
-- \b2v_inst|Add0~3\ = CARRY((!\b2v_inst|Add0~1\) # (!\b2v_inst|count_addr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|count_addr\(2),
	datad => VCC,
	cin => \b2v_inst|Add0~1\,
	combout => \b2v_inst|Add0~2_combout\,
	cout => \b2v_inst|Add0~3\);

-- Location: LCCOMB_X27_Y21_N14
\b2v_inst|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~4_combout\ = (\b2v_inst|count_addr\(3) & (\b2v_inst|Add0~3\ $ (GND))) # (!\b2v_inst|count_addr\(3) & (!\b2v_inst|Add0~3\ & VCC))
-- \b2v_inst|Add0~5\ = CARRY((\b2v_inst|count_addr\(3) & !\b2v_inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|count_addr\(3),
	datad => VCC,
	cin => \b2v_inst|Add0~3\,
	combout => \b2v_inst|Add0~4_combout\,
	cout => \b2v_inst|Add0~5\);

-- Location: LCFF_X27_Y21_N15
\b2v_inst|count_addr[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|Add0~4_combout\,
	aclr => \rst~combout\,
	ena => \b2v_inst|state.LD_B~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|count_addr\(3));

-- Location: LCCOMB_X27_Y21_N16
\b2v_inst|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~6_combout\ = (\b2v_inst|count_addr\(4) & (!\b2v_inst|Add0~5\)) # (!\b2v_inst|count_addr\(4) & ((\b2v_inst|Add0~5\) # (GND)))
-- \b2v_inst|Add0~7\ = CARRY((!\b2v_inst|Add0~5\) # (!\b2v_inst|count_addr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|count_addr\(4),
	datad => VCC,
	cin => \b2v_inst|Add0~5\,
	combout => \b2v_inst|Add0~6_combout\,
	cout => \b2v_inst|Add0~7\);

-- Location: LCFF_X27_Y21_N17
\b2v_inst|count_addr[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|Add0~6_combout\,
	aclr => \rst~combout\,
	ena => \b2v_inst|state.LD_B~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|count_addr\(4));

-- Location: LCCOMB_X27_Y21_N18
\b2v_inst|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~8_combout\ = (\b2v_inst|count_addr\(5) & (\b2v_inst|Add0~7\ $ (GND))) # (!\b2v_inst|count_addr\(5) & (!\b2v_inst|Add0~7\ & VCC))
-- \b2v_inst|Add0~9\ = CARRY((\b2v_inst|count_addr\(5) & !\b2v_inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|count_addr\(5),
	datad => VCC,
	cin => \b2v_inst|Add0~7\,
	combout => \b2v_inst|Add0~8_combout\,
	cout => \b2v_inst|Add0~9\);

-- Location: LCFF_X27_Y21_N19
\b2v_inst|count_addr[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|Add0~8_combout\,
	aclr => \rst~combout\,
	ena => \b2v_inst|state.LD_B~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|count_addr\(5));

-- Location: LCCOMB_X27_Y21_N24
\b2v_inst|Fin_flag~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Fin_flag~0_combout\ = (!\b2v_inst|count_addr\(6) & (!\b2v_inst|count_addr\(3) & (!\b2v_inst|count_addr\(4) & !\b2v_inst|count_addr\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|count_addr\(6),
	datab => \b2v_inst|count_addr\(3),
	datac => \b2v_inst|count_addr\(4),
	datad => \b2v_inst|count_addr\(5),
	combout => \b2v_inst|Fin_flag~0_combout\);

-- Location: LCFF_X27_Y21_N13
\b2v_inst|count_addr[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|Add0~2_combout\,
	aclr => \rst~combout\,
	ena => \b2v_inst|state.LD_B~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|count_addr\(2));

-- Location: LCCOMB_X27_Y21_N28
\b2v_inst|Fin_flag~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Fin_flag~1_combout\ = (!\b2v_inst|count_addr\(1) & (!\b2v_inst|count_addr\(0) & (\b2v_inst|Fin_flag~0_combout\ & !\b2v_inst|count_addr\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|count_addr\(1),
	datab => \b2v_inst|count_addr\(0),
	datac => \b2v_inst|Fin_flag~0_combout\,
	datad => \b2v_inst|count_addr\(2),
	combout => \b2v_inst|Fin_flag~1_combout\);

-- Location: LCCOMB_X33_Y21_N26
\b2v_inst|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector2~0_combout\ = (\b2v_inst|Fin_flag~1_combout\) # (!\b2v_inst|state.ADD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst|Fin_flag~1_combout\,
	datad => \b2v_inst|state.ADD~regout\,
	combout => \b2v_inst|Selector2~0_combout\);

-- Location: LCCOMB_X34_Y21_N22
\b2v_inst|state.LD_A~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|state.LD_A~feeder_combout\ = \b2v_inst|Selector2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|Selector2~0_combout\,
	combout => \b2v_inst|state.LD_A~feeder_combout\);

-- Location: LCFF_X34_Y21_N23
\b2v_inst|state.LD_A\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|state.LD_A~feeder_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|state.LD_A~regout\);

-- Location: LCCOMB_X34_Y21_N24
\b2v_inst|state.WAITING~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|state.WAITING~0_combout\ = !\b2v_inst|state.LD_A~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|state.LD_A~regout\,
	combout => \b2v_inst|state.WAITING~0_combout\);

-- Location: LCFF_X34_Y21_N25
\b2v_inst|state.WAITING\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|state.WAITING~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|state.WAITING~regout\);

-- Location: LCFF_X34_Y21_N17
\b2v_inst|state.LD_B\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst|state.WAITING~regout\,
	aclr => \rst~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|state.LD_B~regout\);

-- Location: LCCOMB_X33_Y21_N22
\b2v_inst|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector4~0_combout\ = (\b2v_inst|state.LD_B~regout\) # ((\b2v_inst|state.MULTIPLY~regout\ & ((!\b2v_inst|count\(0)) # (!\b2v_inst|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Equal0~0_combout\,
	datab => \b2v_inst|count\(0),
	datac => \b2v_inst|state.MULTIPLY~regout\,
	datad => \b2v_inst|state.LD_B~regout\,
	combout => \b2v_inst|Selector4~0_combout\);

-- Location: LCFF_X33_Y21_N23
\b2v_inst|state.MULTIPLY\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|Selector4~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|state.MULTIPLY~regout\);

-- Location: LCFF_X33_Y21_N3
\b2v_inst|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|Add1~0_combout\,
	aclr => \rst~combout\,
	ena => \b2v_inst|state.MULTIPLY~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|count\(0));

-- Location: LCCOMB_X33_Y21_N0
\b2v_inst|state.FINISH~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|state.FINISH~0_combout\ = (\b2v_inst|state.ADD~regout\ & (\b2v_inst|Fin_flag~1_combout\)) # (!\b2v_inst|state.ADD~regout\ & ((\b2v_inst|state.FINISH~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Fin_flag~1_combout\,
	datac => \b2v_inst|state.FINISH~regout\,
	datad => \b2v_inst|state.ADD~regout\,
	combout => \b2v_inst|state.FINISH~0_combout\);

-- Location: LCFF_X33_Y21_N1
\b2v_inst|state.FINISH\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|state.FINISH~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|state.FINISH~regout\);

-- Location: LCCOMB_X33_Y21_N14
\b2v_inst|state.ADD~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|state.ADD~0_combout\ = (\b2v_inst|state.ADD~regout\ & ((\b2v_inst|state.FINISH~regout\) # (\b2v_inst|state.MULTIPLY~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|state.ADD~regout\,
	datab => \b2v_inst|state.FINISH~regout\,
	datad => \b2v_inst|state.MULTIPLY~regout\,
	combout => \b2v_inst|state.ADD~0_combout\);

-- Location: LCCOMB_X33_Y21_N12
\b2v_inst|state.ADD~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|state.ADD~1_combout\ = (\b2v_inst|state.ADD~0_combout\) # ((\b2v_inst|Equal0~0_combout\ & (\b2v_inst|count\(0) & \b2v_inst|state.MULTIPLY~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Equal0~0_combout\,
	datab => \b2v_inst|count\(0),
	datac => \b2v_inst|state.ADD~0_combout\,
	datad => \b2v_inst|state.MULTIPLY~regout\,
	combout => \b2v_inst|state.ADD~1_combout\);

-- Location: LCFF_X33_Y21_N13
\b2v_inst|state.ADD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|state.ADD~1_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|state.ADD~regout\);

-- Location: LCCOMB_X33_Y21_N16
\b2v_inst|Fin_flag~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Fin_flag~2_combout\ = (\b2v_inst|Fin_flag~regout\) # ((\b2v_inst|Fin_flag~1_combout\ & \b2v_inst|state.ADD~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|Fin_flag~1_combout\,
	datac => \b2v_inst|Fin_flag~regout\,
	datad => \b2v_inst|state.ADD~regout\,
	combout => \b2v_inst|Fin_flag~2_combout\);

-- Location: LCFF_X33_Y21_N17
\b2v_inst|Fin_flag\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|Fin_flag~2_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|Fin_flag~regout\);

-- Location: LCCOMB_X34_Y21_N12
\b2v_inst|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector7~0_combout\ = (\b2v_inst|state.ADD~regout\) # ((\b2v_inst|EN_Reg~regout\ & \b2v_inst|state.LD_A~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|state.ADD~regout\,
	datac => \b2v_inst|EN_Reg~regout\,
	datad => \b2v_inst|state.LD_A~regout\,
	combout => \b2v_inst|Selector7~0_combout\);

-- Location: LCFF_X34_Y21_N13
\b2v_inst|EN_Reg\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|Selector7~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|EN_Reg~regout\);

-- Location: LCCOMB_X44_Y21_N2
\b2v_inst2|F[8]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|F[8]~9_combout\ = \b2v_inst2|F\(8) $ (((\QCOUT[7]~18_combout\ & \b2v_inst|EN_Reg~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \QCOUT[7]~18_combout\,
	datab => \b2v_inst|EN_Reg~regout\,
	datac => \b2v_inst2|F\(8),
	combout => \b2v_inst2|F[8]~9_combout\);

-- Location: LCFF_X44_Y21_N3
\b2v_inst2|F[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst2|F[8]~9_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|F\(8));

-- Location: LCCOMB_X41_Y21_N24
\b2v_inst4|U_Ctl|state.LOAD~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|U_Ctl|state.LOAD~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \b2v_inst4|U_Ctl|state.LOAD~feeder_combout\);

-- Location: LCCOMB_X34_Y21_N18
\b2v_inst|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector8~0_combout\ = ((!\b2v_inst|state.LD_B~regout\ & \b2v_inst|Mult_Reset~regout\)) # (!\b2v_inst|state.LD_A~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|state.LD_B~regout\,
	datab => \b2v_inst|state.LD_A~regout\,
	datac => \b2v_inst|Mult_Reset~regout\,
	combout => \b2v_inst|Selector8~0_combout\);

-- Location: LCFF_X34_Y21_N19
\b2v_inst|Mult_Reset\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|Selector8~0_combout\,
	ena => \ALT_INV_rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|Mult_Reset~regout\);

-- Location: LCFF_X41_Y21_N25
\b2v_inst4|U_Ctl|state.LOAD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst4|U_Ctl|state.LOAD~feeder_combout\,
	aclr => \b2v_inst|Mult_Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst4|U_Ctl|state.LOAD~regout\);

-- Location: LCCOMB_X41_Y21_N0
\b2v_inst4|U_Ctl|count[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|U_Ctl|count[1]~4_combout\ = (\b2v_inst4|U_Ctl|count\(0) & (\b2v_inst4|U_Ctl|count\(1) $ (VCC))) # (!\b2v_inst4|U_Ctl|count\(0) & (\b2v_inst4|U_Ctl|count\(1) & VCC))
-- \b2v_inst4|U_Ctl|count[1]~5\ = CARRY((\b2v_inst4|U_Ctl|count\(0) & \b2v_inst4|U_Ctl|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|U_Ctl|count\(0),
	datab => \b2v_inst4|U_Ctl|count\(1),
	datad => VCC,
	combout => \b2v_inst4|U_Ctl|count[1]~4_combout\,
	cout => \b2v_inst4|U_Ctl|count[1]~5\);

-- Location: LCFF_X41_Y21_N1
\b2v_inst4|U_Ctl|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst4|U_Ctl|count[1]~4_combout\,
	aclr => \b2v_inst|Mult_Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst4|U_Ctl|count\(1));

-- Location: LCCOMB_X41_Y21_N2
\b2v_inst4|U_Ctl|count[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|U_Ctl|count[2]~6_combout\ = (\b2v_inst4|U_Ctl|count\(2) & (!\b2v_inst4|U_Ctl|count[1]~5\)) # (!\b2v_inst4|U_Ctl|count\(2) & ((\b2v_inst4|U_Ctl|count[1]~5\) # (GND)))
-- \b2v_inst4|U_Ctl|count[2]~7\ = CARRY((!\b2v_inst4|U_Ctl|count[1]~5\) # (!\b2v_inst4|U_Ctl|count\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst4|U_Ctl|count\(2),
	datad => VCC,
	cin => \b2v_inst4|U_Ctl|count[1]~5\,
	combout => \b2v_inst4|U_Ctl|count[2]~6_combout\,
	cout => \b2v_inst4|U_Ctl|count[2]~7\);

-- Location: LCFF_X41_Y21_N3
\b2v_inst4|U_Ctl|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst4|U_Ctl|count[2]~6_combout\,
	aclr => \b2v_inst|Mult_Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst4|U_Ctl|count\(2));

-- Location: LCFF_X41_Y21_N5
\b2v_inst4|U_Ctl|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst4|U_Ctl|count[3]~8_combout\,
	aclr => \b2v_inst|Mult_Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst4|U_Ctl|count\(3));

-- Location: LCCOMB_X41_Y21_N12
\b2v_inst4|U_Ctl|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|U_Ctl|Selector0~0_combout\ = (\b2v_inst4|U_Ctl|count\(0)) # ((\b2v_inst4|U_Ctl|count\(2)) # ((\b2v_inst4|U_Ctl|count\(1)) # (!\b2v_inst4|U_Ctl|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|U_Ctl|count\(0),
	datab => \b2v_inst4|U_Ctl|count\(2),
	datac => \b2v_inst4|U_Ctl|count\(3),
	datad => \b2v_inst4|U_Ctl|count\(1),
	combout => \b2v_inst4|U_Ctl|Selector0~0_combout\);

-- Location: LCCOMB_X41_Y21_N18
\b2v_inst4|U_Ctl|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|U_Ctl|Selector0~1_combout\ = ((\b2v_inst4|U_Ctl|state.SHIFT~regout\ & ((\b2v_inst4|U_Ctl|count\(4)) # (\b2v_inst4|U_Ctl|Selector0~0_combout\)))) # (!\b2v_inst4|U_Ctl|state.LOAD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|U_Ctl|count\(4),
	datab => \b2v_inst4|U_Ctl|state.SHIFT~regout\,
	datac => \b2v_inst4|U_Ctl|state.LOAD~regout\,
	datad => \b2v_inst4|U_Ctl|Selector0~0_combout\,
	combout => \b2v_inst4|U_Ctl|Selector0~1_combout\);

-- Location: LCFF_X41_Y21_N19
\b2v_inst4|U_Ctl|state.ADD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst4|U_Ctl|Selector0~1_combout\,
	aclr => \b2v_inst|Mult_Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst4|U_Ctl|state.ADD~regout\);

-- Location: LCCOMB_X41_Y21_N28
\b2v_inst4|U_Ctl|state.SHIFT~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|U_Ctl|state.SHIFT~feeder_combout\ = \b2v_inst4|U_Ctl|state.ADD~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst4|U_Ctl|state.ADD~regout\,
	combout => \b2v_inst4|U_Ctl|state.SHIFT~feeder_combout\);

-- Location: LCFF_X41_Y21_N29
\b2v_inst4|U_Ctl|state.SHIFT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst4|U_Ctl|state.SHIFT~feeder_combout\,
	aclr => \b2v_inst|Mult_Reset~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst4|U_Ctl|state.SHIFT~regout\);

-- Location: LCCOMB_X25_Y21_N0
\~GND\ : cycloneii_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCFF_X27_Y21_N11
\b2v_inst|count_addr[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|Add0~0_combout\,
	aclr => \rst~combout\,
	ena => \b2v_inst|state.LD_B~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|count_addr\(1));

-- Location: LCCOMB_X27_Y21_N20
\b2v_inst|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~10_combout\ = (\b2v_inst|count_addr\(6) & (!\b2v_inst|Add0~9\)) # (!\b2v_inst|count_addr\(6) & ((\b2v_inst|Add0~9\) # (GND)))
-- \b2v_inst|Add0~11\ = CARRY((!\b2v_inst|Add0~9\) # (!\b2v_inst|count_addr\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|count_addr\(6),
	datad => VCC,
	cin => \b2v_inst|Add0~9\,
	combout => \b2v_inst|Add0~10_combout\,
	cout => \b2v_inst|Add0~11\);

-- Location: LCFF_X27_Y21_N21
\b2v_inst|count_addr[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|Add0~10_combout\,
	aclr => \rst~combout\,
	ena => \b2v_inst|state.LD_B~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|count_addr\(6));

-- Location: LCCOMB_X27_Y21_N22
\b2v_inst|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Add0~12_combout\ = \b2v_inst|Add0~11\ $ (!\b2v_inst|count_addr\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst|count_addr\(7),
	cin => \b2v_inst|Add0~11\,
	combout => \b2v_inst|Add0~12_combout\);

-- Location: LCCOMB_X27_Y21_N26
\b2v_inst|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|Selector9~0_combout\ = (\b2v_inst|state.LD_B~regout\ & (\b2v_inst|Add0~12_combout\)) # (!\b2v_inst|state.LD_B~regout\ & ((\b2v_inst|count_addr\(7) $ (!\b2v_inst|state.LD_A~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|state.LD_B~regout\,
	datab => \b2v_inst|Add0~12_combout\,
	datac => \b2v_inst|count_addr\(7),
	datad => \b2v_inst|state.LD_A~regout\,
	combout => \b2v_inst|Selector9~0_combout\);

-- Location: LCFF_X27_Y21_N27
\b2v_inst|count_addr[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|Selector9~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|count_addr\(7));

-- Location: LCCOMB_X35_Y21_N30
\b2v_inst|S_A[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|S_A[1]~feeder_combout\ = \b2v_inst8|altsyncram_component|auto_generated|q_a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst8|altsyncram_component|auto_generated|q_a\(1),
	combout => \b2v_inst|S_A[1]~feeder_combout\);

-- Location: LCCOMB_X34_Y21_N0
\b2v_inst|S_A[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|S_A[3]~0_combout\ = (!\rst~combout\ & !\b2v_inst|state.LD_A~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rst~combout\,
	datad => \b2v_inst|state.LD_A~regout\,
	combout => \b2v_inst|S_A[3]~0_combout\);

-- Location: LCFF_X35_Y21_N31
\b2v_inst|S_A[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|S_A[1]~feeder_combout\,
	ena => \b2v_inst|S_A[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|S_A\(1));

-- Location: LCFF_X36_Y21_N3
\b2v_inst4|R_A|F[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst|S_A\(1),
	aclr => \b2v_inst|Mult_Reset~regout\,
	sload => VCC,
	ena => \b2v_inst4|U_Ctl|ALT_INV_state.LOAD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst4|R_A|F\(1));

-- Location: LCCOMB_X35_Y21_N22
\b2v_inst|S_B[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|S_B[3]~feeder_combout\ = \b2v_inst8|altsyncram_component|auto_generated|q_a\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst8|altsyncram_component|auto_generated|q_a\(3),
	combout => \b2v_inst|S_B[3]~feeder_combout\);

-- Location: LCCOMB_X34_Y21_N30
\b2v_inst|S_B[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|S_B[0]~0_combout\ = (\b2v_inst|state.LD_B~regout\ & !\rst~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|state.LD_B~regout\,
	datac => \rst~combout\,
	combout => \b2v_inst|S_B[0]~0_combout\);

-- Location: LCFF_X35_Y21_N23
\b2v_inst|S_B[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|S_B[3]~feeder_combout\,
	ena => \b2v_inst|S_B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|S_B\(3));

-- Location: LCCOMB_X35_Y21_N0
\b2v_inst|S_A[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|S_A[0]~feeder_combout\ = \b2v_inst8|altsyncram_component|auto_generated|q_a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst8|altsyncram_component|auto_generated|q_a\(0),
	combout => \b2v_inst|S_A[0]~feeder_combout\);

-- Location: LCFF_X35_Y21_N1
\b2v_inst|S_A[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|S_A[0]~feeder_combout\,
	ena => \b2v_inst|S_A[3]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|S_A\(0));

-- Location: LCFF_X36_Y21_N1
\b2v_inst4|R_A|F[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst|S_A\(0),
	aclr => \b2v_inst|Mult_Reset~regout\,
	sload => VCC,
	ena => \b2v_inst4|U_Ctl|ALT_INV_state.LOAD~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst4|R_A|F\(0));

-- Location: LCCOMB_X36_Y21_N4
\b2v_inst4|R_B|F~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|R_B|F~3_combout\ = (\b2v_inst4|U_Ctl|state.SHIFT~regout\ & ((\b2v_inst4|R_A|F\(0)))) # (!\b2v_inst4|U_Ctl|state.SHIFT~regout\ & (\b2v_inst|S_B\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst|S_B\(3),
	datac => \b2v_inst4|U_Ctl|state.SHIFT~regout\,
	datad => \b2v_inst4|R_A|F\(0),
	combout => \b2v_inst4|R_B|F~3_combout\);

-- Location: LCCOMB_X36_Y21_N20
\b2v_inst4|U_Ctl|EN_B\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|U_Ctl|EN_B~combout\ = (\b2v_inst4|U_Ctl|state.SHIFT~regout\) # (!\b2v_inst4|U_Ctl|state.LOAD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst4|U_Ctl|state.SHIFT~regout\,
	datad => \b2v_inst4|U_Ctl|state.LOAD~regout\,
	combout => \b2v_inst4|U_Ctl|EN_B~combout\);

-- Location: LCFF_X36_Y21_N5
\b2v_inst4|R_B|F[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst4|R_B|F~3_combout\,
	aclr => \b2v_inst|Mult_Reset~regout\,
	ena => \b2v_inst4|U_Ctl|EN_B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst4|R_B|F\(3));

-- Location: LCCOMB_X36_Y21_N22
\b2v_inst4|R_B|F~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|R_B|F~2_combout\ = (\b2v_inst4|U_Ctl|state.SHIFT~regout\ & ((\b2v_inst4|R_B|F\(3)))) # (!\b2v_inst4|U_Ctl|state.SHIFT~regout\ & (\b2v_inst|S_B\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|S_B\(2),
	datab => \b2v_inst4|R_B|F\(3),
	datac => \b2v_inst4|U_Ctl|state.SHIFT~regout\,
	combout => \b2v_inst4|R_B|F~2_combout\);

-- Location: LCFF_X36_Y21_N23
\b2v_inst4|R_B|F[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst4|R_B|F~2_combout\,
	aclr => \b2v_inst|Mult_Reset~regout\,
	ena => \b2v_inst4|U_Ctl|EN_B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst4|R_B|F\(2));

-- Location: LCCOMB_X36_Y21_N26
\b2v_inst4|R_B|F~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|R_B|F~1_combout\ = (\b2v_inst4|U_Ctl|state.SHIFT~regout\ & ((\b2v_inst4|R_B|F\(2)))) # (!\b2v_inst4|U_Ctl|state.SHIFT~regout\ & (\b2v_inst|S_B\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst|S_B\(1),
	datab => \b2v_inst4|R_B|F\(2),
	datac => \b2v_inst4|U_Ctl|state.SHIFT~regout\,
	combout => \b2v_inst4|R_B|F~1_combout\);

-- Location: LCFF_X36_Y21_N27
\b2v_inst4|R_B|F[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst4|R_B|F~1_combout\,
	aclr => \b2v_inst|Mult_Reset~regout\,
	ena => \b2v_inst4|U_Ctl|EN_B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst4|R_B|F\(1));

-- Location: LCCOMB_X35_Y21_N20
\b2v_inst|S_B[0]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst|S_B[0]~feeder_combout\ = \b2v_inst8|altsyncram_component|auto_generated|q_a\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \b2v_inst8|altsyncram_component|auto_generated|q_a\(0),
	combout => \b2v_inst|S_B[0]~feeder_combout\);

-- Location: LCFF_X35_Y21_N21
\b2v_inst|S_B[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst|S_B[0]~feeder_combout\,
	ena => \b2v_inst|S_B[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst|S_B\(0));

-- Location: LCCOMB_X36_Y21_N28
\b2v_inst4|R_B|F~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|R_B|F~0_combout\ = (\b2v_inst4|U_Ctl|state.SHIFT~regout\ & (\b2v_inst4|R_B|F\(1))) # (!\b2v_inst4|U_Ctl|state.SHIFT~regout\ & ((\b2v_inst|S_B\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|U_Ctl|state.SHIFT~regout\,
	datab => \b2v_inst4|R_B|F\(1),
	datac => \b2v_inst|S_B\(0),
	combout => \b2v_inst4|R_B|F~0_combout\);

-- Location: LCFF_X36_Y21_N29
\b2v_inst4|R_B|F[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst4|R_B|F~0_combout\,
	aclr => \b2v_inst|Mult_Reset~regout\,
	ena => \b2v_inst4|U_Ctl|EN_B~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst4|R_B|F\(0));

-- Location: LCCOMB_X36_Y21_N2
\b2v_inst4|comb~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|comb~0_combout\ = (\b2v_inst4|R_A|F\(1) & \b2v_inst4|R_B|F\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst4|R_A|F\(1),
	datad => \b2v_inst4|R_B|F\(0),
	combout => \b2v_inst4|comb~0_combout\);

-- Location: LCCOMB_X42_Y21_N2
\b2v_inst4|U_Ad|Sum[1]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|U_Ad|Sum[1]~2_combout\ = (\b2v_inst4|R_H|F\(1) & ((\b2v_inst4|comb~0_combout\ & (\b2v_inst4|U_Ad|Sum[0]~1\ & VCC)) # (!\b2v_inst4|comb~0_combout\ & (!\b2v_inst4|U_Ad|Sum[0]~1\)))) # (!\b2v_inst4|R_H|F\(1) & ((\b2v_inst4|comb~0_combout\ & 
-- (!\b2v_inst4|U_Ad|Sum[0]~1\)) # (!\b2v_inst4|comb~0_combout\ & ((\b2v_inst4|U_Ad|Sum[0]~1\) # (GND)))))
-- \b2v_inst4|U_Ad|Sum[1]~3\ = CARRY((\b2v_inst4|R_H|F\(1) & (!\b2v_inst4|comb~0_combout\ & !\b2v_inst4|U_Ad|Sum[0]~1\)) # (!\b2v_inst4|R_H|F\(1) & ((!\b2v_inst4|U_Ad|Sum[0]~1\) # (!\b2v_inst4|comb~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|R_H|F\(1),
	datab => \b2v_inst4|comb~0_combout\,
	datad => VCC,
	cin => \b2v_inst4|U_Ad|Sum[0]~1\,
	combout => \b2v_inst4|U_Ad|Sum[1]~2_combout\,
	cout => \b2v_inst4|U_Ad|Sum[1]~3\);

-- Location: LCCOMB_X42_Y21_N16
\b2v_inst4|R_H|F~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|R_H|F~0_combout\ = (\b2v_inst4|U_Ctl|state.SHIFT~regout\ & (\b2v_inst4|R_H|F\(2))) # (!\b2v_inst4|U_Ctl|state.SHIFT~regout\ & ((\b2v_inst4|U_Ad|Sum[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst4|U_Ctl|state.SHIFT~regout\,
	datac => \b2v_inst4|R_H|F\(2),
	datad => \b2v_inst4|U_Ad|Sum[1]~2_combout\,
	combout => \b2v_inst4|R_H|F~0_combout\);

-- Location: LCCOMB_X41_Y21_N16
\b2v_inst4|U_Ctl|EN_H\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|U_Ctl|EN_H~combout\ = (\b2v_inst4|U_Ctl|state.ADD~regout\) # (\b2v_inst4|U_Ctl|state.SHIFT~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst4|U_Ctl|state.ADD~regout\,
	datad => \b2v_inst4|U_Ctl|state.SHIFT~regout\,
	combout => \b2v_inst4|U_Ctl|EN_H~combout\);

-- Location: LCFF_X42_Y21_N17
\b2v_inst4|R_H|F[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst4|R_H|F~0_combout\,
	aclr => \b2v_inst|Mult_Reset~regout\,
	ena => \b2v_inst4|U_Ctl|EN_H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst4|R_H|F\(1));

-- Location: LCCOMB_X42_Y21_N0
\b2v_inst4|U_Ad|Sum[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|U_Ad|Sum[0]~0_combout\ = (\b2v_inst4|comb~1_combout\ & (\b2v_inst4|R_H|F\(0) $ (VCC))) # (!\b2v_inst4|comb~1_combout\ & (\b2v_inst4|R_H|F\(0) & VCC))
-- \b2v_inst4|U_Ad|Sum[0]~1\ = CARRY((\b2v_inst4|comb~1_combout\ & \b2v_inst4|R_H|F\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|comb~1_combout\,
	datab => \b2v_inst4|R_H|F\(0),
	datad => VCC,
	combout => \b2v_inst4|U_Ad|Sum[0]~0_combout\,
	cout => \b2v_inst4|U_Ad|Sum[0]~1\);

-- Location: LCCOMB_X42_Y21_N30
\b2v_inst4|R_H|F~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|R_H|F~1_combout\ = (\b2v_inst4|U_Ctl|state.SHIFT~regout\ & (\b2v_inst4|R_H|F\(1))) # (!\b2v_inst4|U_Ctl|state.SHIFT~regout\ & ((\b2v_inst4|U_Ad|Sum[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst4|U_Ctl|state.SHIFT~regout\,
	datac => \b2v_inst4|R_H|F\(1),
	datad => \b2v_inst4|U_Ad|Sum[0]~0_combout\,
	combout => \b2v_inst4|R_H|F~1_combout\);

-- Location: LCFF_X42_Y21_N31
\b2v_inst4|R_H|F[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst4|R_H|F~1_combout\,
	aclr => \b2v_inst|Mult_Reset~regout\,
	ena => \b2v_inst4|U_Ctl|EN_H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst4|R_H|F\(0));

-- Location: LCCOMB_X42_Y21_N4
\b2v_inst4|U_Ad|Sum[2]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|U_Ad|Sum[2]~4_combout\ = ((\b2v_inst4|comb~2_combout\ $ (\b2v_inst4|R_H|F\(2) $ (!\b2v_inst4|U_Ad|Sum[1]~3\)))) # (GND)
-- \b2v_inst4|U_Ad|Sum[2]~5\ = CARRY((\b2v_inst4|comb~2_combout\ & ((\b2v_inst4|R_H|F\(2)) # (!\b2v_inst4|U_Ad|Sum[1]~3\))) # (!\b2v_inst4|comb~2_combout\ & (\b2v_inst4|R_H|F\(2) & !\b2v_inst4|U_Ad|Sum[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|comb~2_combout\,
	datab => \b2v_inst4|R_H|F\(2),
	datad => VCC,
	cin => \b2v_inst4|U_Ad|Sum[1]~3\,
	combout => \b2v_inst4|U_Ad|Sum[2]~4_combout\,
	cout => \b2v_inst4|U_Ad|Sum[2]~5\);

-- Location: LCCOMB_X42_Y21_N18
\b2v_inst4|R_H|F~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|R_H|F~2_combout\ = (\b2v_inst4|U_Ctl|state.SHIFT~regout\ & ((\b2v_inst4|R_H|F\(3)))) # (!\b2v_inst4|U_Ctl|state.SHIFT~regout\ & (\b2v_inst4|U_Ad|Sum[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst4|U_Ctl|state.SHIFT~regout\,
	datac => \b2v_inst4|U_Ad|Sum[2]~4_combout\,
	datad => \b2v_inst4|R_H|F\(3),
	combout => \b2v_inst4|R_H|F~2_combout\);

-- Location: LCFF_X42_Y21_N19
\b2v_inst4|R_H|F[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst4|R_H|F~2_combout\,
	aclr => \b2v_inst|Mult_Reset~regout\,
	ena => \b2v_inst4|U_Ctl|EN_H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst4|R_H|F\(2));

-- Location: LCCOMB_X42_Y21_N22
\b2v_inst4|R_H|F~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst4|R_H|F~3_combout\ = (\b2v_inst4|U_Ctl|state.SHIFT~regout\ & (\b2v_inst4|R_C|F\(0))) # (!\b2v_inst4|U_Ctl|state.SHIFT~regout\ & ((\b2v_inst4|U_Ad|Sum[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|R_C|F\(0),
	datab => \b2v_inst4|U_Ctl|state.SHIFT~regout\,
	datad => \b2v_inst4|U_Ad|Sum[3]~6_combout\,
	combout => \b2v_inst4|R_H|F~3_combout\);

-- Location: LCFF_X42_Y21_N23
\b2v_inst4|R_H|F[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst4|R_H|F~3_combout\,
	aclr => \b2v_inst|Mult_Reset~regout\,
	ena => \b2v_inst4|U_Ctl|EN_H~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst4|R_H|F\(3));

-- Location: LCCOMB_X43_Y21_N14
\b2v_inst2|F[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|F[0]~10_combout\ = \b2v_inst2|F\(0) $ (((\b2v_inst4|R_L|F\(0) & \b2v_inst|EN_Reg~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|R_L|F\(0),
	datab => \b2v_inst|EN_Reg~regout\,
	datac => \b2v_inst2|F\(0),
	combout => \b2v_inst2|F[0]~10_combout\);

-- Location: LCFF_X43_Y21_N15
\b2v_inst2|F[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst2|F[0]~10_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|F\(0));

-- Location: LCFF_X43_Y21_N3
\b2v_inst4|R_L|F[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst4|R_H|F\(0),
	aclr => \b2v_inst|Mult_Reset~regout\,
	sload => VCC,
	ena => \b2v_inst4|U_Ctl|state.SHIFT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst4|R_L|F\(3));

-- Location: LCFF_X43_Y21_N27
\b2v_inst4|R_L|F[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst4|R_L|F\(3),
	aclr => \b2v_inst|Mult_Reset~regout\,
	sload => VCC,
	ena => \b2v_inst4|U_Ctl|state.SHIFT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst4|R_L|F\(2));

-- Location: LCFF_X43_Y21_N1
\b2v_inst4|R_L|F[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst4|R_L|F\(2),
	aclr => \b2v_inst|Mult_Reset~regout\,
	sload => VCC,
	ena => \b2v_inst4|U_Ctl|state.SHIFT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst4|R_L|F\(1));

-- Location: LCFF_X43_Y21_N17
\b2v_inst4|R_L|F[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	sdata => \b2v_inst4|R_L|F\(1),
	aclr => \b2v_inst|Mult_Reset~regout\,
	sload => VCC,
	ena => \b2v_inst4|U_Ctl|state.SHIFT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst4|R_L|F\(0));

-- Location: LCCOMB_X44_Y21_N18
\AdderSum[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \AdderSum[1]~3_combout\ = \b2v_inst2|F\(1) $ (\b2v_inst4|R_L|F\(1) $ (((\b2v_inst2|F\(0) & \b2v_inst4|R_L|F\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|F\(0),
	datab => \b2v_inst4|R_L|F\(0),
	datac => \b2v_inst2|F\(1),
	datad => \b2v_inst4|R_L|F\(1),
	combout => \AdderSum[1]~3_combout\);

-- Location: LCFF_X44_Y21_N19
\b2v_inst2|F[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \AdderSum[1]~3_combout\,
	aclr => \rst~combout\,
	ena => \b2v_inst|EN_Reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|F\(1));

-- Location: LCCOMB_X43_Y21_N0
\QCOUT[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \QCOUT[1]~9_combout\ = (\b2v_inst4|R_L|F\(1) & ((\b2v_inst2|F\(1)) # ((\b2v_inst4|R_L|F\(0) & \b2v_inst2|F\(0))))) # (!\b2v_inst4|R_L|F\(1) & (\b2v_inst4|R_L|F\(0) & (\b2v_inst2|F\(0) & \b2v_inst2|F\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|R_L|F\(0),
	datab => \b2v_inst2|F\(0),
	datac => \b2v_inst4|R_L|F\(1),
	datad => \b2v_inst2|F\(1),
	combout => \QCOUT[1]~9_combout\);

-- Location: LCCOMB_X44_Y21_N28
\AdderSum[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \AdderSum[2]~2_combout\ = \QCOUT[1]~9_combout\ $ (\b2v_inst2|F\(2) $ (\b2v_inst4|R_L|F\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \QCOUT[1]~9_combout\,
	datac => \b2v_inst2|F\(2),
	datad => \b2v_inst4|R_L|F\(2),
	combout => \AdderSum[2]~2_combout\);

-- Location: LCFF_X44_Y21_N29
\b2v_inst2|F[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \AdderSum[2]~2_combout\,
	aclr => \rst~combout\,
	ena => \b2v_inst|EN_Reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|F\(2));

-- Location: LCCOMB_X43_Y21_N18
\QCOUT[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \QCOUT[2]~10_combout\ = (\b2v_inst2|F\(2) & \QCOUT[1]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|F\(2),
	datad => \QCOUT[1]~9_combout\,
	combout => \QCOUT[2]~10_combout\);

-- Location: LCCOMB_X43_Y21_N26
\QCOUT[2]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \QCOUT[2]~11_combout\ = (\b2v_inst4|R_L|F\(2) & ((\b2v_inst2|F\(2)) # (\QCOUT[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|F\(2),
	datac => \b2v_inst4|R_L|F\(2),
	datad => \QCOUT[1]~9_combout\,
	combout => \QCOUT[2]~11_combout\);

-- Location: LCCOMB_X43_Y21_N2
\QCOUT[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \QCOUT[3]~12_combout\ = (\b2v_inst2|F\(3) & ((\QCOUT[2]~10_combout\) # ((\b2v_inst4|R_L|F\(3)) # (\QCOUT[2]~11_combout\)))) # (!\b2v_inst2|F\(3) & (\b2v_inst4|R_L|F\(3) & ((\QCOUT[2]~10_combout\) # (\QCOUT[2]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|F\(3),
	datab => \QCOUT[2]~10_combout\,
	datac => \b2v_inst4|R_L|F\(3),
	datad => \QCOUT[2]~11_combout\,
	combout => \QCOUT[3]~12_combout\);

-- Location: LCCOMB_X43_Y21_N24
\QCOUT[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \QCOUT[4]~13_combout\ = (\b2v_inst2|F\(4) & \QCOUT[3]~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|F\(4),
	datad => \QCOUT[3]~12_combout\,
	combout => \QCOUT[4]~13_combout\);

-- Location: LCCOMB_X43_Y21_N22
\QCOUT[4]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \QCOUT[4]~14_combout\ = (\b2v_inst4|R_H|F\(0) & ((\b2v_inst2|F\(4)) # (\QCOUT[3]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|F\(4),
	datac => \b2v_inst4|R_H|F\(0),
	datad => \QCOUT[3]~12_combout\,
	combout => \QCOUT[4]~14_combout\);

-- Location: LCCOMB_X43_Y21_N28
\QCOUT[6]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \QCOUT[6]~16_combout\ = (\b2v_inst2|F\(5) & ((\b2v_inst4|R_H|F\(1)) # ((\QCOUT[4]~13_combout\) # (\QCOUT[4]~14_combout\)))) # (!\b2v_inst2|F\(5) & (\b2v_inst4|R_H|F\(1) & ((\QCOUT[4]~13_combout\) # (\QCOUT[4]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|F\(5),
	datab => \b2v_inst4|R_H|F\(1),
	datac => \QCOUT[4]~13_combout\,
	datad => \QCOUT[4]~14_combout\,
	combout => \QCOUT[6]~16_combout\);

-- Location: LCCOMB_X43_Y21_N6
\QCOUT[6]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \QCOUT[6]~17_combout\ = (\b2v_inst4|R_H|F\(2) & ((\b2v_inst2|F\(6)) # (\QCOUT[6]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|F\(6),
	datab => \b2v_inst4|R_H|F\(2),
	datad => \QCOUT[6]~16_combout\,
	combout => \QCOUT[6]~17_combout\);

-- Location: LCCOMB_X42_Y21_N24
\AdderSum[7]\ : cycloneii_lcell_comb
-- Equation(s):
-- AdderSum(7) = \b2v_inst4|R_H|F\(3) $ (\b2v_inst2|F\(7) $ (((\QCOUT[6]~15_combout\) # (\QCOUT[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \QCOUT[6]~15_combout\,
	datab => \b2v_inst4|R_H|F\(3),
	datac => \b2v_inst2|F\(7),
	datad => \QCOUT[6]~17_combout\,
	combout => AdderSum(7));

-- Location: LCFF_X42_Y21_N25
\b2v_inst2|F[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => AdderSum(7),
	aclr => \rst~combout\,
	ena => \b2v_inst|EN_Reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|F\(7));

-- Location: LCCOMB_X42_Y21_N14
\AdderSum[5]\ : cycloneii_lcell_comb
-- Equation(s):
-- AdderSum(5) = \b2v_inst4|R_H|F\(1) $ (\b2v_inst2|F\(5) $ (((\QCOUT[4]~14_combout\) # (\QCOUT[4]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|R_H|F\(1),
	datab => \QCOUT[4]~14_combout\,
	datac => \b2v_inst2|F\(5),
	datad => \QCOUT[4]~13_combout\,
	combout => AdderSum(5));

-- Location: LCFF_X42_Y21_N15
\b2v_inst2|F[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => AdderSum(5),
	aclr => \rst~combout\,
	ena => \b2v_inst|EN_Reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|F\(5));

-- Location: LCCOMB_X42_Y21_N12
\AdderSum[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \AdderSum[4]~1_combout\ = \b2v_inst4|R_H|F\(0) $ (\b2v_inst2|F\(4) $ (\QCOUT[3]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst4|R_H|F\(0),
	datac => \b2v_inst2|F\(4),
	datad => \QCOUT[3]~12_combout\,
	combout => \AdderSum[4]~1_combout\);

-- Location: LCFF_X42_Y21_N13
\b2v_inst2|F[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \AdderSum[4]~1_combout\,
	aclr => \rst~combout\,
	ena => \b2v_inst|EN_Reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|F\(4));

-- Location: LCCOMB_X42_Y21_N26
\QCOUT[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \QCOUT[6]~21_combout\ = (\b2v_inst4|R_H|F\(0) & ((\b2v_inst2|F\(4)) # (\QCOUT[3]~12_combout\))) # (!\b2v_inst4|R_H|F\(0) & (\b2v_inst2|F\(4) & \QCOUT[3]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst4|R_H|F\(0),
	datac => \b2v_inst2|F\(4),
	datad => \QCOUT[3]~12_combout\,
	combout => \QCOUT[6]~21_combout\);

-- Location: LCCOMB_X42_Y21_N20
\QCOUT[6]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \QCOUT[6]~15_combout\ = (\b2v_inst2|F\(6) & ((\b2v_inst2|F\(5) & ((\b2v_inst4|R_H|F\(1)) # (\QCOUT[6]~21_combout\))) # (!\b2v_inst2|F\(5) & (\b2v_inst4|R_H|F\(1) & \QCOUT[6]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|F\(6),
	datab => \b2v_inst2|F\(5),
	datac => \b2v_inst4|R_H|F\(1),
	datad => \QCOUT[6]~21_combout\,
	combout => \QCOUT[6]~15_combout\);

-- Location: LCCOMB_X43_Y21_N30
\QCOUT[7]~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \QCOUT[7]~18_combout\ = (\b2v_inst4|R_H|F\(3) & ((\b2v_inst2|F\(7)) # ((\QCOUT[6]~15_combout\) # (\QCOUT[6]~17_combout\)))) # (!\b2v_inst4|R_H|F\(3) & (\b2v_inst2|F\(7) & ((\QCOUT[6]~15_combout\) # (\QCOUT[6]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|R_H|F\(3),
	datab => \b2v_inst2|F\(7),
	datac => \QCOUT[6]~15_combout\,
	datad => \QCOUT[6]~17_combout\,
	combout => \QCOUT[7]~18_combout\);

-- Location: LCCOMB_X44_Y21_N20
\b2v_inst2|F[9]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|F[9]~8_combout\ = \b2v_inst2|F\(9) $ (((\QCOUT[7]~18_combout\ & (\b2v_inst|EN_Reg~regout\ & \b2v_inst2|F\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \QCOUT[7]~18_combout\,
	datab => \b2v_inst|EN_Reg~regout\,
	datac => \b2v_inst2|F\(9),
	datad => \b2v_inst2|F\(8),
	combout => \b2v_inst2|F[9]~8_combout\);

-- Location: LCFF_X44_Y21_N21
\b2v_inst2|F[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst2|F[9]~8_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|F\(9));

-- Location: LCCOMB_X43_Y21_N10
\b2v_inst2|F[10]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|F[10]~1_combout\ = (\b2v_inst2|F\(8) & (\b2v_inst2|F\(9) & (\b2v_inst|EN_Reg~regout\ & \QCOUT[7]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|F\(8),
	datab => \b2v_inst2|F\(9),
	datac => \b2v_inst|EN_Reg~regout\,
	datad => \QCOUT[7]~18_combout\,
	combout => \b2v_inst2|F[10]~1_combout\);

-- Location: LCCOMB_X44_Y21_N26
\b2v_inst2|F[10]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|F[10]~7_combout\ = \b2v_inst2|F\(10) $ (\b2v_inst2|F[10]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|F\(10),
	datad => \b2v_inst2|F[10]~1_combout\,
	combout => \b2v_inst2|F[10]~7_combout\);

-- Location: LCFF_X44_Y21_N27
\b2v_inst2|F[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst2|F[10]~7_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|F\(10));

-- Location: LCCOMB_X44_Y21_N22
\QCOUT[14]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \QCOUT[14]~19_combout\ = (\b2v_inst2|F\(9) & (\b2v_inst2|F\(8) & (\QCOUT[7]~18_combout\ & \b2v_inst2|F\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|F\(9),
	datab => \b2v_inst2|F\(8),
	datac => \QCOUT[7]~18_combout\,
	datad => \b2v_inst2|F\(10),
	combout => \QCOUT[14]~19_combout\);

-- Location: LCCOMB_X44_Y21_N12
\b2v_inst2|F[15]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|F[15]~0_combout\ = \b2v_inst2|F\(15) $ (((\QCOUT[14]~8_combout\ & (\b2v_inst|EN_Reg~regout\ & \QCOUT[14]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \QCOUT[14]~8_combout\,
	datab => \b2v_inst|EN_Reg~regout\,
	datac => \b2v_inst2|F\(15),
	datad => \QCOUT[14]~19_combout\,
	combout => \b2v_inst2|F[15]~0_combout\);

-- Location: LCFF_X44_Y21_N13
\b2v_inst2|F[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst2|F[15]~0_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|F\(15));

-- Location: LCCOMB_X44_Y21_N10
\b2v_inst2|F[12]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|F[12]~5_combout\ = \b2v_inst2|F\(12) $ (((\b2v_inst2|F\(11) & (\b2v_inst2|F\(10) & \b2v_inst2|F[10]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|F\(11),
	datab => \b2v_inst2|F\(10),
	datac => \b2v_inst2|F\(12),
	datad => \b2v_inst2|F[10]~1_combout\,
	combout => \b2v_inst2|F[12]~5_combout\);

-- Location: LCFF_X44_Y21_N11
\b2v_inst2|F[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst2|F[12]~5_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|F\(12));

-- Location: LCCOMB_X43_Y21_N12
\b2v_inst2|F[13]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|F[13]~2_combout\ = (\b2v_inst2|F\(11) & (\b2v_inst2|F\(12) & (\b2v_inst2|F\(10) & \b2v_inst2|F[10]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|F\(11),
	datab => \b2v_inst2|F\(12),
	datac => \b2v_inst2|F\(10),
	datad => \b2v_inst2|F[10]~1_combout\,
	combout => \b2v_inst2|F[13]~2_combout\);

-- Location: LCCOMB_X43_Y21_N4
\b2v_inst2|F[14]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|F[14]~3_combout\ = \b2v_inst2|F\(14) $ (((\b2v_inst2|F\(13) & \b2v_inst2|F[13]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|F\(13),
	datac => \b2v_inst2|F\(14),
	datad => \b2v_inst2|F[13]~2_combout\,
	combout => \b2v_inst2|F[14]~3_combout\);

-- Location: LCFF_X43_Y21_N5
\b2v_inst2|F[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst2|F[14]~3_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|F\(14));

-- Location: LCCOMB_X44_Y21_N4
\b2v_inst2|F[11]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|F[11]~6_combout\ = \b2v_inst2|F\(11) $ (((\b2v_inst2|F\(10) & \b2v_inst2|F[10]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst2|F\(10),
	datac => \b2v_inst2|F\(11),
	datad => \b2v_inst2|F[10]~1_combout\,
	combout => \b2v_inst2|F[11]~6_combout\);

-- Location: LCFF_X44_Y21_N5
\b2v_inst2|F[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst2|F[11]~6_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|F\(11));

-- Location: LCCOMB_X43_Y21_N8
\QCOUT[14]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \QCOUT[14]~8_combout\ = (\b2v_inst2|F\(13) & (\b2v_inst2|F\(14) & (\b2v_inst2|F\(12) & \b2v_inst2|F\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|F\(13),
	datab => \b2v_inst2|F\(14),
	datac => \b2v_inst2|F\(12),
	datad => \b2v_inst2|F\(11),
	combout => \QCOUT[14]~8_combout\);

-- Location: LCCOMB_X44_Y21_N16
\COUT~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \COUT~0_combout\ = (\b2v_inst2|F\(15) & (\QCOUT[14]~19_combout\ & \QCOUT[14]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst2|F\(15),
	datab => \QCOUT[14]~19_combout\,
	datad => \QCOUT[14]~8_combout\,
	combout => \COUT~0_combout\);

-- Location: LCCOMB_X44_Y21_N24
\AdderSum[3]\ : cycloneii_lcell_comb
-- Equation(s):
-- AdderSum(3) = \b2v_inst2|F\(3) $ (\b2v_inst4|R_L|F\(3) $ (((\QCOUT[2]~11_combout\) # (\QCOUT[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \QCOUT[2]~11_combout\,
	datab => \QCOUT[2]~10_combout\,
	datac => \b2v_inst2|F\(3),
	datad => \b2v_inst4|R_L|F\(3),
	combout => AdderSum(3));

-- Location: LCFF_X44_Y21_N25
\b2v_inst2|F[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => AdderSum(3),
	aclr => \rst~combout\,
	ena => \b2v_inst|EN_Reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|F\(3));

-- Location: LCCOMB_X42_Y21_N28
\QCOUT[5]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \QCOUT[5]~20_combout\ = (\b2v_inst4|R_H|F\(1) & ((\QCOUT[4]~14_combout\) # ((\b2v_inst2|F\(5)) # (\QCOUT[4]~13_combout\)))) # (!\b2v_inst4|R_H|F\(1) & (\b2v_inst2|F\(5) & ((\QCOUT[4]~14_combout\) # (\QCOUT[4]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \b2v_inst4|R_H|F\(1),
	datab => \QCOUT[4]~14_combout\,
	datac => \b2v_inst2|F\(5),
	datad => \QCOUT[4]~13_combout\,
	combout => \QCOUT[5]~20_combout\);

-- Location: LCCOMB_X42_Y21_N10
\AdderSum[6]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \AdderSum[6]~0_combout\ = \b2v_inst4|R_H|F\(2) $ (\b2v_inst2|F\(6) $ (\QCOUT[5]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \b2v_inst4|R_H|F\(2),
	datac => \b2v_inst2|F\(6),
	datad => \QCOUT[5]~20_combout\,
	combout => \AdderSum[6]~0_combout\);

-- Location: LCFF_X42_Y21_N11
\b2v_inst2|F[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \AdderSum[6]~0_combout\,
	aclr => \rst~combout\,
	ena => \b2v_inst|EN_Reg~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|F\(6));

-- Location: LCCOMB_X43_Y21_N20
\b2v_inst2|F[13]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \b2v_inst2|F[13]~4_combout\ = \b2v_inst2|F\(13) $ (\b2v_inst2|F[13]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \b2v_inst2|F\(13),
	datad => \b2v_inst2|F[13]~2_combout\,
	combout => \b2v_inst2|F[13]~4_combout\);

-- Location: LCFF_X43_Y21_N21
\b2v_inst2|F[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \clk~clkctrl_outclk\,
	datain => \b2v_inst2|F[13]~4_combout\,
	aclr => \rst~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \b2v_inst2|F\(13));

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\FF~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst|Fin_flag~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_FF);

-- Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\COUT~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \COUT~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_COUT);

-- Location: PIN_D17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[0]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst2|F\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(0));

-- Location: PIN_F16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[1]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst2|F\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(1));

-- Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[2]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst2|F\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(2));

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[3]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst2|F\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(3));

-- Location: PIN_D16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[4]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst2|F\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(4));

-- Location: PIN_E15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[5]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst2|F\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(5));

-- Location: PIN_H15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[6]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst2|F\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(6));

-- Location: PIN_H16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[7]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst2|F\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(7));

-- Location: PIN_F15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[8]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst2|F\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(8));

-- Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[9]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst2|F\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(9));

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[10]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst2|F\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(10));

-- Location: PIN_A17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[11]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst2|F\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(11));

-- Location: PIN_G15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[12]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst2|F\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(12));

-- Location: PIN_D15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[13]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst2|F\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(13));

-- Location: PIN_B17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[14]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst2|F\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(14));

-- Location: PIN_G16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\dout[15]~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "output",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \b2v_inst2|F\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_dout(15));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\lunch~I\ : cycloneii_io
-- pragma translate_off
GENERIC MAP (
	input_async_reset => "none",
	input_power_up => "low",
	input_register_mode => "none",
	input_sync_reset => "none",
	oe_async_reset => "none",
	oe_power_up => "low",
	oe_register_mode => "none",
	oe_sync_reset => "none",
	operation_mode => "input",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => GND,
	padio => ww_lunch);
END structure;


