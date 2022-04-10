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

-- DATE "04/10/2022 14:03:32"

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

ENTITY 	Question5 IS
    PORT (
	oSEG6 : OUT std_logic;
	Q : OUT std_logic_vector(7 DOWNTO 0);
	CLK : IN std_logic;
	CLR : IN std_logic;
	SET : IN std_logic;
	EN : IN std_logic;
	oSEG5 : OUT std_logic;
	oSEG4 : OUT std_logic;
	oSEG3 : OUT std_logic;
	oSEG2 : OUT std_logic;
	oSEG1 : OUT std_logic;
	oSEG0 : OUT std_logic;
	oSEG26 : OUT std_logic;
	oSEG25 : OUT std_logic;
	oSEG24 : OUT std_logic;
	oSEG23 : OUT std_logic;
	oSEG22 : OUT std_logic;
	oSEG21 : OUT std_logic;
	oSEG20 : OUT std_logic
	);
END Question5;

-- Design Ports Information
-- oSEG6	=>  Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[7]	=>  Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[6]	=>  Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[5]	=>  Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[4]	=>  Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[3]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[2]	=>  Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[1]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[0]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG5	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG4	=>  Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG3	=>  Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG2	=>  Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG1	=>  Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG0	=>  Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG26	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG25	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG24	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG23	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG22	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG21	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- oSEG20	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLR	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- EN	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SET	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Question5 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_oSEG6 : std_logic;
SIGNAL ww_Q : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_CLR : std_logic;
SIGNAL ww_SET : std_logic;
SIGNAL ww_EN : std_logic;
SIGNAL ww_oSEG5 : std_logic;
SIGNAL ww_oSEG4 : std_logic;
SIGNAL ww_oSEG3 : std_logic;
SIGNAL ww_oSEG2 : std_logic;
SIGNAL ww_oSEG1 : std_logic;
SIGNAL ww_oSEG0 : std_logic;
SIGNAL ww_oSEG26 : std_logic;
SIGNAL ww_oSEG25 : std_logic;
SIGNAL ww_oSEG24 : std_logic;
SIGNAL ww_oSEG23 : std_logic;
SIGNAL ww_oSEG22 : std_logic;
SIGNAL ww_oSEG21 : std_logic;
SIGNAL ww_oSEG20 : std_logic;
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|REG[4]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \SET~combout\ : std_logic;
SIGNAL \CLR~combout\ : std_logic;
SIGNAL \inst|REG[7]~27_combout\ : std_logic;
SIGNAL \inst|REG[4]~1_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|REG[1]~15_combout\ : std_logic;
SIGNAL \inst|REG[4]~0_combout\ : std_logic;
SIGNAL \inst|REG[4]~0clkctrl_outclk\ : std_logic;
SIGNAL \EN~combout\ : std_logic;
SIGNAL \inst|REG[1]~_emulated_regout\ : std_logic;
SIGNAL \inst|REG[1]~14_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|REG[2]~13_combout\ : std_logic;
SIGNAL \inst|REG[2]~_emulated_regout\ : std_logic;
SIGNAL \inst|REG[2]~12_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|REG[3]~11_combout\ : std_logic;
SIGNAL \inst|REG[3]~_emulated_regout\ : std_logic;
SIGNAL \inst|REG[3]~10_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|REG[5]~5_combout\ : std_logic;
SIGNAL \inst|REG[5]~_emulated_regout\ : std_logic;
SIGNAL \inst|REG[5]~4_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|REG[7]~9_combout\ : std_logic;
SIGNAL \inst|REG[7]~_emulated_regout\ : std_logic;
SIGNAL \inst|REG[7]~8_combout\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|REG[4]~3_combout\ : std_logic;
SIGNAL \inst|REG[4]~_emulated_regout\ : std_logic;
SIGNAL \inst|REG[4]~2_combout\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|REG[6]~7_combout\ : std_logic;
SIGNAL \inst|REG[6]~_emulated_regout\ : std_logic;
SIGNAL \inst|REG[6]~6_combout\ : std_logic;
SIGNAL \inst1|WideOr0~0_combout\ : std_logic;
SIGNAL \inst|REG[0]~17_combout\ : std_logic;
SIGNAL \inst|REG[0]~_emulated_regout\ : std_logic;
SIGNAL \inst|REG[0]~16_combout\ : std_logic;
SIGNAL \inst1|WideOr1~0_combout\ : std_logic;
SIGNAL \inst1|WideOr2~0_combout\ : std_logic;
SIGNAL \inst1|WideOr3~0_combout\ : std_logic;
SIGNAL \inst1|WideOr4~0_combout\ : std_logic;
SIGNAL \inst1|WideOr5~0_combout\ : std_logic;
SIGNAL \inst1|WideOr6~0_combout\ : std_logic;
SIGNAL \inst2|WideOr0~0_combout\ : std_logic;
SIGNAL \inst2|WideOr1~0_combout\ : std_logic;
SIGNAL \inst2|WideOr2~0_combout\ : std_logic;
SIGNAL \inst2|WideOr3~0_combout\ : std_logic;
SIGNAL \inst2|WideOr4~0_combout\ : std_logic;
SIGNAL \inst2|WideOr5~0_combout\ : std_logic;
SIGNAL \inst2|WideOr6~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_WideOr0~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_WideOr0~0_combout\ : std_logic;

BEGIN

oSEG6 <= ww_oSEG6;
Q <= ww_Q;
ww_CLK <= CLK;
ww_CLR <= CLR;
ww_SET <= SET;
ww_EN <= EN;
oSEG5 <= ww_oSEG5;
oSEG4 <= ww_oSEG4;
oSEG3 <= ww_oSEG3;
oSEG2 <= ww_oSEG2;
oSEG1 <= ww_oSEG1;
oSEG0 <= ww_oSEG0;
oSEG26 <= ww_oSEG26;
oSEG25 <= ww_oSEG25;
oSEG24 <= ww_oSEG24;
oSEG23 <= ww_oSEG23;
oSEG22 <= ww_oSEG22;
oSEG21 <= ww_oSEG21;
oSEG20 <= ww_oSEG20;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\inst|REG[4]~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst|REG[4]~0_combout\);
\inst2|ALT_INV_WideOr0~0_combout\ <= NOT \inst2|WideOr0~0_combout\;
\inst1|ALT_INV_WideOr0~0_combout\ <= NOT \inst1|WideOr0~0_combout\;

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~I\ : cycloneii_io
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
	padio => ww_CLK,
	combout => \CLK~combout\);

-- Location: CLKCTRL_G3
\CLK~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~clkctrl_outclk\);

-- Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SET~I\ : cycloneii_io
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
	padio => ww_SET,
	combout => \SET~combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLR~I\ : cycloneii_io
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
	padio => ww_CLR,
	combout => \CLR~combout\);

-- Location: LCCOMB_X30_Y35_N8
\inst|REG[7]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|REG[7]~27_combout\ = (\SET~combout\ & !\CLR~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SET~combout\,
	datad => \CLR~combout\,
	combout => \inst|REG[7]~27_combout\);

-- Location: LCCOMB_X28_Y35_N16
\inst|REG[4]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|REG[4]~1_combout\ = (!\CLR~combout\ & ((\inst|REG[7]~27_combout\) # (\inst|REG[4]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG[7]~27_combout\,
	datac => \inst|REG[4]~1_combout\,
	datad => \CLR~combout\,
	combout => \inst|REG[4]~1_combout\);

-- Location: LCCOMB_X29_Y35_N14
\inst|Add0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = (\inst|REG[0]~16_combout\ & (\inst|REG[1]~14_combout\ $ (VCC))) # (!\inst|REG[0]~16_combout\ & (\inst|REG[1]~14_combout\ & VCC))
-- \inst|Add0~1\ = CARRY((\inst|REG[0]~16_combout\ & \inst|REG[1]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG[0]~16_combout\,
	datab => \inst|REG[1]~14_combout\,
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X28_Y35_N12
\inst|REG[1]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|REG[1]~15_combout\ = \inst|REG[4]~1_combout\ $ (\inst|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG[4]~1_combout\,
	datac => \inst|Add0~0_combout\,
	combout => \inst|REG[1]~15_combout\);

-- Location: LCCOMB_X31_Y35_N0
\inst|REG[4]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|REG[4]~0_combout\ = (\inst|REG[7]~27_combout\) # (\CLR~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG[7]~27_combout\,
	datad => \CLR~combout\,
	combout => \inst|REG[4]~0_combout\);

-- Location: CLKCTRL_G10
\inst|REG[4]~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|REG[4]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|REG[4]~0clkctrl_outclk\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\EN~I\ : cycloneii_io
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
	padio => ww_EN,
	combout => \EN~combout\);

-- Location: LCFF_X28_Y35_N13
\inst|REG[1]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|REG[1]~15_combout\,
	aclr => \inst|REG[4]~0clkctrl_outclk\,
	ena => \EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|REG[1]~_emulated_regout\);

-- Location: LCCOMB_X28_Y35_N6
\inst|REG[1]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|REG[1]~14_combout\ = (!\CLR~combout\ & ((\inst|REG[7]~27_combout\) # (\inst|REG[4]~1_combout\ $ (\inst|REG[1]~_emulated_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG[4]~1_combout\,
	datab => \CLR~combout\,
	datac => \inst|REG[7]~27_combout\,
	datad => \inst|REG[1]~_emulated_regout\,
	combout => \inst|REG[1]~14_combout\);

-- Location: LCCOMB_X29_Y35_N16
\inst|Add0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|REG[2]~12_combout\ & (!\inst|Add0~1\)) # (!\inst|REG[2]~12_combout\ & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|REG[2]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG[2]~12_combout\,
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X29_Y35_N0
\inst|REG[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|REG[2]~13_combout\ = \inst|Add0~2_combout\ $ (\inst|REG[4]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~2_combout\,
	datad => \inst|REG[4]~1_combout\,
	combout => \inst|REG[2]~13_combout\);

-- Location: LCFF_X29_Y35_N1
\inst|REG[2]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|REG[2]~13_combout\,
	aclr => \inst|REG[4]~0clkctrl_outclk\,
	ena => \EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|REG[2]~_emulated_regout\);

-- Location: LCCOMB_X29_Y35_N30
\inst|REG[2]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|REG[2]~12_combout\ = (!\CLR~combout\ & ((\inst|REG[7]~27_combout\) # (\inst|REG[4]~1_combout\ $ (\inst|REG[2]~_emulated_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG[7]~27_combout\,
	datab => \CLR~combout\,
	datac => \inst|REG[4]~1_combout\,
	datad => \inst|REG[2]~_emulated_regout\,
	combout => \inst|REG[2]~12_combout\);

-- Location: LCCOMB_X29_Y35_N18
\inst|Add0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|REG[3]~10_combout\ & (\inst|Add0~3\ $ (GND))) # (!\inst|REG[3]~10_combout\ & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|REG[3]~10_combout\ & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG[3]~10_combout\,
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X28_Y35_N28
\inst|REG[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|REG[3]~11_combout\ = \inst|REG[4]~1_combout\ $ (\inst|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG[4]~1_combout\,
	datad => \inst|Add0~4_combout\,
	combout => \inst|REG[3]~11_combout\);

-- Location: LCFF_X28_Y35_N29
\inst|REG[3]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|REG[3]~11_combout\,
	aclr => \inst|REG[4]~0clkctrl_outclk\,
	ena => \EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|REG[3]~_emulated_regout\);

-- Location: LCCOMB_X28_Y35_N18
\inst|REG[3]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|REG[3]~10_combout\ = (!\CLR~combout\ & ((\inst|REG[7]~27_combout\) # (\inst|REG[4]~1_combout\ $ (\inst|REG[3]~_emulated_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG[4]~1_combout\,
	datab => \CLR~combout\,
	datac => \inst|REG[7]~27_combout\,
	datad => \inst|REG[3]~_emulated_regout\,
	combout => \inst|REG[3]~10_combout\);

-- Location: LCCOMB_X29_Y35_N20
\inst|Add0~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|REG[4]~2_combout\ & (!\inst|Add0~5\)) # (!\inst|REG[4]~2_combout\ & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|REG[4]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG[4]~2_combout\,
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X29_Y35_N22
\inst|Add0~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|REG[5]~4_combout\ & (\inst|Add0~7\ $ (GND))) # (!\inst|REG[5]~4_combout\ & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|REG[5]~4_combout\ & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG[5]~4_combout\,
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X29_Y35_N12
\inst|REG[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|REG[5]~5_combout\ = \inst|REG[4]~1_combout\ $ (\inst|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG[4]~1_combout\,
	datad => \inst|Add0~8_combout\,
	combout => \inst|REG[5]~5_combout\);

-- Location: LCFF_X29_Y35_N13
\inst|REG[5]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|REG[5]~5_combout\,
	aclr => \inst|REG[4]~0clkctrl_outclk\,
	ena => \EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|REG[5]~_emulated_regout\);

-- Location: LCCOMB_X29_Y35_N2
\inst|REG[5]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|REG[5]~4_combout\ = (!\CLR~combout\ & ((\inst|REG[7]~27_combout\) # (\inst|REG[4]~1_combout\ $ (\inst|REG[5]~_emulated_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG[7]~27_combout\,
	datab => \CLR~combout\,
	datac => \inst|REG[4]~1_combout\,
	datad => \inst|REG[5]~_emulated_regout\,
	combout => \inst|REG[5]~4_combout\);

-- Location: LCCOMB_X29_Y35_N24
\inst|Add0~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|REG[6]~6_combout\ & (!\inst|Add0~9\)) # (!\inst|REG[6]~6_combout\ & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|REG[6]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG[6]~6_combout\,
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X29_Y35_N26
\inst|Add0~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = \inst|Add0~11\ $ (!\inst|REG[7]~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|REG[7]~8_combout\,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\);

-- Location: LCCOMB_X29_Y35_N8
\inst|REG[7]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|REG[7]~9_combout\ = \inst|REG[4]~1_combout\ $ (\inst|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|REG[4]~1_combout\,
	datad => \inst|Add0~12_combout\,
	combout => \inst|REG[7]~9_combout\);

-- Location: LCFF_X29_Y35_N9
\inst|REG[7]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|REG[7]~9_combout\,
	aclr => \inst|REG[4]~0clkctrl_outclk\,
	ena => \EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|REG[7]~_emulated_regout\);

-- Location: LCCOMB_X28_Y35_N14
\inst|REG[7]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|REG[7]~8_combout\ = (!\CLR~combout\ & ((\inst|REG[7]~27_combout\) # (\inst|REG[4]~1_combout\ $ (\inst|REG[7]~_emulated_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG[4]~1_combout\,
	datab => \inst|REG[7]~27_combout\,
	datac => \inst|REG[7]~_emulated_regout\,
	datad => \CLR~combout\,
	combout => \inst|REG[7]~8_combout\);

-- Location: LCCOMB_X29_Y35_N28
\inst|REG[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|REG[4]~3_combout\ = \inst|Add0~6_combout\ $ (\inst|REG[4]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~6_combout\,
	datad => \inst|REG[4]~1_combout\,
	combout => \inst|REG[4]~3_combout\);

-- Location: LCFF_X29_Y35_N29
\inst|REG[4]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|REG[4]~3_combout\,
	aclr => \inst|REG[4]~0clkctrl_outclk\,
	ena => \EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|REG[4]~_emulated_regout\);

-- Location: LCCOMB_X29_Y35_N10
\inst|REG[4]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|REG[4]~2_combout\ = (!\CLR~combout\ & ((\inst|REG[7]~27_combout\) # (\inst|REG[4]~1_combout\ $ (\inst|REG[4]~_emulated_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG[7]~27_combout\,
	datab => \CLR~combout\,
	datac => \inst|REG[4]~1_combout\,
	datad => \inst|REG[4]~_emulated_regout\,
	combout => \inst|REG[4]~2_combout\);

-- Location: LCCOMB_X29_Y35_N4
\inst|REG[6]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|REG[6]~7_combout\ = \inst|Add0~10_combout\ $ (\inst|REG[4]~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~10_combout\,
	datad => \inst|REG[4]~1_combout\,
	combout => \inst|REG[6]~7_combout\);

-- Location: LCFF_X29_Y35_N5
\inst|REG[6]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|REG[6]~7_combout\,
	aclr => \inst|REG[4]~0clkctrl_outclk\,
	ena => \EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|REG[6]~_emulated_regout\);

-- Location: LCCOMB_X29_Y35_N6
\inst|REG[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|REG[6]~6_combout\ = (!\CLR~combout\ & ((\inst|REG[7]~27_combout\) # (\inst|REG[6]~_emulated_regout\ $ (\inst|REG[4]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG[7]~27_combout\,
	datab => \CLR~combout\,
	datac => \inst|REG[6]~_emulated_regout\,
	datad => \inst|REG[4]~1_combout\,
	combout => \inst|REG[6]~6_combout\);

-- Location: LCCOMB_X36_Y35_N0
\inst1|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|WideOr0~0_combout\ = (\inst|REG[4]~2_combout\ & ((\inst|REG[7]~8_combout\) # (\inst|REG[5]~4_combout\ $ (\inst|REG[6]~6_combout\)))) # (!\inst|REG[4]~2_combout\ & ((\inst|REG[5]~4_combout\) # (\inst|REG[7]~8_combout\ $ (\inst|REG[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG[7]~8_combout\,
	datab => \inst|REG[5]~4_combout\,
	datac => \inst|REG[4]~2_combout\,
	datad => \inst|REG[6]~6_combout\,
	combout => \inst1|WideOr0~0_combout\);

-- Location: LCCOMB_X28_Y35_N0
\inst|REG[0]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|REG[0]~17_combout\ = \inst|REG[4]~1_combout\ $ (!\inst|REG[0]~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|REG[4]~1_combout\,
	datad => \inst|REG[0]~16_combout\,
	combout => \inst|REG[0]~17_combout\);

-- Location: LCFF_X28_Y35_N1
\inst|REG[0]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \inst|REG[0]~17_combout\,
	aclr => \inst|REG[4]~0clkctrl_outclk\,
	ena => \EN~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|REG[0]~_emulated_regout\);

-- Location: LCCOMB_X28_Y35_N30
\inst|REG[0]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|REG[0]~16_combout\ = (!\CLR~combout\ & ((\inst|REG[7]~27_combout\) # (\inst|REG[4]~1_combout\ $ (\inst|REG[0]~_emulated_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG[4]~1_combout\,
	datab => \CLR~combout\,
	datac => \inst|REG[7]~27_combout\,
	datad => \inst|REG[0]~_emulated_regout\,
	combout => \inst|REG[0]~16_combout\);

-- Location: LCCOMB_X36_Y35_N2
\inst1|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|WideOr1~0_combout\ = (\inst|REG[5]~4_combout\ & (!\inst|REG[7]~8_combout\ & ((\inst|REG[4]~2_combout\) # (!\inst|REG[6]~6_combout\)))) # (!\inst|REG[5]~4_combout\ & (\inst|REG[4]~2_combout\ & (\inst|REG[7]~8_combout\ $ (!\inst|REG[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG[7]~8_combout\,
	datab => \inst|REG[5]~4_combout\,
	datac => \inst|REG[4]~2_combout\,
	datad => \inst|REG[6]~6_combout\,
	combout => \inst1|WideOr1~0_combout\);

-- Location: LCCOMB_X36_Y35_N16
\inst1|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|WideOr2~0_combout\ = (\inst|REG[5]~4_combout\ & (!\inst|REG[7]~8_combout\ & (\inst|REG[4]~2_combout\))) # (!\inst|REG[5]~4_combout\ & ((\inst|REG[6]~6_combout\ & (!\inst|REG[7]~8_combout\)) # (!\inst|REG[6]~6_combout\ & 
-- ((\inst|REG[4]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG[7]~8_combout\,
	datab => \inst|REG[5]~4_combout\,
	datac => \inst|REG[4]~2_combout\,
	datad => \inst|REG[6]~6_combout\,
	combout => \inst1|WideOr2~0_combout\);

-- Location: LCCOMB_X36_Y35_N22
\inst1|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|WideOr3~0_combout\ = (\inst|REG[4]~2_combout\ & ((\inst|REG[5]~4_combout\ $ (!\inst|REG[6]~6_combout\)))) # (!\inst|REG[4]~2_combout\ & ((\inst|REG[7]~8_combout\ & (\inst|REG[5]~4_combout\ & !\inst|REG[6]~6_combout\)) # (!\inst|REG[7]~8_combout\ & 
-- (!\inst|REG[5]~4_combout\ & \inst|REG[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG[7]~8_combout\,
	datab => \inst|REG[5]~4_combout\,
	datac => \inst|REG[4]~2_combout\,
	datad => \inst|REG[6]~6_combout\,
	combout => \inst1|WideOr3~0_combout\);

-- Location: LCCOMB_X36_Y35_N12
\inst1|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|WideOr4~0_combout\ = (\inst|REG[7]~8_combout\ & (\inst|REG[6]~6_combout\ & ((\inst|REG[5]~4_combout\) # (!\inst|REG[4]~2_combout\)))) # (!\inst|REG[7]~8_combout\ & (\inst|REG[5]~4_combout\ & (!\inst|REG[4]~2_combout\ & !\inst|REG[6]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG[7]~8_combout\,
	datab => \inst|REG[5]~4_combout\,
	datac => \inst|REG[4]~2_combout\,
	datad => \inst|REG[6]~6_combout\,
	combout => \inst1|WideOr4~0_combout\);

-- Location: LCCOMB_X36_Y35_N10
\inst1|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|WideOr5~0_combout\ = (\inst|REG[7]~8_combout\ & ((\inst|REG[4]~2_combout\ & (\inst|REG[5]~4_combout\)) # (!\inst|REG[4]~2_combout\ & ((\inst|REG[6]~6_combout\))))) # (!\inst|REG[7]~8_combout\ & (\inst|REG[6]~6_combout\ & (\inst|REG[5]~4_combout\ $ 
-- (\inst|REG[4]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG[7]~8_combout\,
	datab => \inst|REG[5]~4_combout\,
	datac => \inst|REG[4]~2_combout\,
	datad => \inst|REG[6]~6_combout\,
	combout => \inst1|WideOr5~0_combout\);

-- Location: LCCOMB_X36_Y35_N20
\inst1|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|WideOr6~0_combout\ = (\inst|REG[7]~8_combout\ & (\inst|REG[4]~2_combout\ & (\inst|REG[5]~4_combout\ $ (\inst|REG[6]~6_combout\)))) # (!\inst|REG[7]~8_combout\ & (!\inst|REG[5]~4_combout\ & (\inst|REG[4]~2_combout\ $ (\inst|REG[6]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG[7]~8_combout\,
	datab => \inst|REG[5]~4_combout\,
	datac => \inst|REG[4]~2_combout\,
	datad => \inst|REG[6]~6_combout\,
	combout => \inst1|WideOr6~0_combout\);

-- Location: LCCOMB_X28_Y35_N20
\inst2|WideOr0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr0~0_combout\ = (\inst|REG[0]~16_combout\ & ((\inst|REG[3]~10_combout\) # (\inst|REG[1]~14_combout\ $ (\inst|REG[2]~12_combout\)))) # (!\inst|REG[0]~16_combout\ & ((\inst|REG[1]~14_combout\) # (\inst|REG[2]~12_combout\ $ 
-- (\inst|REG[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG[1]~14_combout\,
	datab => \inst|REG[0]~16_combout\,
	datac => \inst|REG[2]~12_combout\,
	datad => \inst|REG[3]~10_combout\,
	combout => \inst2|WideOr0~0_combout\);

-- Location: LCCOMB_X28_Y35_N26
\inst2|WideOr1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr1~0_combout\ = (\inst|REG[1]~14_combout\ & (!\inst|REG[3]~10_combout\ & ((\inst|REG[0]~16_combout\) # (!\inst|REG[2]~12_combout\)))) # (!\inst|REG[1]~14_combout\ & (\inst|REG[0]~16_combout\ & (\inst|REG[2]~12_combout\ $ 
-- (!\inst|REG[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG[1]~14_combout\,
	datab => \inst|REG[0]~16_combout\,
	datac => \inst|REG[2]~12_combout\,
	datad => \inst|REG[3]~10_combout\,
	combout => \inst2|WideOr1~0_combout\);

-- Location: LCCOMB_X28_Y35_N24
\inst2|WideOr2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr2~0_combout\ = (\inst|REG[1]~14_combout\ & (\inst|REG[0]~16_combout\ & ((!\inst|REG[3]~10_combout\)))) # (!\inst|REG[1]~14_combout\ & ((\inst|REG[2]~12_combout\ & ((!\inst|REG[3]~10_combout\))) # (!\inst|REG[2]~12_combout\ & 
-- (\inst|REG[0]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG[1]~14_combout\,
	datab => \inst|REG[0]~16_combout\,
	datac => \inst|REG[2]~12_combout\,
	datad => \inst|REG[3]~10_combout\,
	combout => \inst2|WideOr2~0_combout\);

-- Location: LCCOMB_X28_Y35_N22
\inst2|WideOr3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr3~0_combout\ = (\inst|REG[0]~16_combout\ & (\inst|REG[1]~14_combout\ $ ((!\inst|REG[2]~12_combout\)))) # (!\inst|REG[0]~16_combout\ & ((\inst|REG[1]~14_combout\ & (!\inst|REG[2]~12_combout\ & \inst|REG[3]~10_combout\)) # 
-- (!\inst|REG[1]~14_combout\ & (\inst|REG[2]~12_combout\ & !\inst|REG[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG[1]~14_combout\,
	datab => \inst|REG[0]~16_combout\,
	datac => \inst|REG[2]~12_combout\,
	datad => \inst|REG[3]~10_combout\,
	combout => \inst2|WideOr3~0_combout\);

-- Location: LCCOMB_X28_Y35_N8
\inst2|WideOr4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr4~0_combout\ = (\inst|REG[2]~12_combout\ & (\inst|REG[3]~10_combout\ & ((\inst|REG[1]~14_combout\) # (!\inst|REG[0]~16_combout\)))) # (!\inst|REG[2]~12_combout\ & (\inst|REG[1]~14_combout\ & (!\inst|REG[0]~16_combout\ & 
-- !\inst|REG[3]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG[1]~14_combout\,
	datab => \inst|REG[0]~16_combout\,
	datac => \inst|REG[2]~12_combout\,
	datad => \inst|REG[3]~10_combout\,
	combout => \inst2|WideOr4~0_combout\);

-- Location: LCCOMB_X28_Y35_N10
\inst2|WideOr5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr5~0_combout\ = (\inst|REG[1]~14_combout\ & ((\inst|REG[0]~16_combout\ & ((\inst|REG[3]~10_combout\))) # (!\inst|REG[0]~16_combout\ & (\inst|REG[2]~12_combout\)))) # (!\inst|REG[1]~14_combout\ & (\inst|REG[2]~12_combout\ & 
-- (\inst|REG[0]~16_combout\ $ (\inst|REG[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG[1]~14_combout\,
	datab => \inst|REG[0]~16_combout\,
	datac => \inst|REG[2]~12_combout\,
	datad => \inst|REG[3]~10_combout\,
	combout => \inst2|WideOr5~0_combout\);

-- Location: LCCOMB_X28_Y35_N4
\inst2|WideOr6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|WideOr6~0_combout\ = (\inst|REG[2]~12_combout\ & (!\inst|REG[1]~14_combout\ & (\inst|REG[0]~16_combout\ $ (!\inst|REG[3]~10_combout\)))) # (!\inst|REG[2]~12_combout\ & (\inst|REG[0]~16_combout\ & (\inst|REG[1]~14_combout\ $ 
-- (!\inst|REG[3]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|REG[1]~14_combout\,
	datab => \inst|REG[0]~16_combout\,
	datac => \inst|REG[2]~12_combout\,
	datad => \inst|REG[3]~10_combout\,
	combout => \inst2|WideOr6~0_combout\);

-- Location: PIN_C15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG6~I\ : cycloneii_io
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
	datain => \inst1|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG6);

-- Location: PIN_D14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[7]~I\ : cycloneii_io
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
	datain => \inst|REG[7]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(7));

-- Location: PIN_F14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[6]~I\ : cycloneii_io
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
	datain => \inst|REG[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(6));

-- Location: PIN_B14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[5]~I\ : cycloneii_io
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
	datain => \inst|REG[5]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(5));

-- Location: PIN_A14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[4]~I\ : cycloneii_io
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
	datain => \inst|REG[4]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(4));

-- Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[3]~I\ : cycloneii_io
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
	datain => \inst|REG[3]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(3));

-- Location: PIN_B12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[2]~I\ : cycloneii_io
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
	datain => \inst|REG[2]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(2));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[1]~I\ : cycloneii_io
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
	datain => \inst|REG[1]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(1));

-- Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q[0]~I\ : cycloneii_io
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
	datain => \inst|REG[0]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(0));

-- Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG5~I\ : cycloneii_io
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
	datain => \inst1|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG5);

-- Location: PIN_F13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG4~I\ : cycloneii_io
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
	datain => \inst1|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG4);

-- Location: PIN_C16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG3~I\ : cycloneii_io
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
	datain => \inst1|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG3);

-- Location: PIN_B16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG2~I\ : cycloneii_io
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
	datain => \inst1|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG2);

-- Location: PIN_B15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG1~I\ : cycloneii_io
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
	datain => \inst1|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG1);

-- Location: PIN_G14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG0~I\ : cycloneii_io
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
	datain => \inst1|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG0);

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG26~I\ : cycloneii_io
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
	datain => \inst2|ALT_INV_WideOr0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG26);

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG25~I\ : cycloneii_io
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
	datain => \inst2|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG25);

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG24~I\ : cycloneii_io
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
	datain => \inst2|WideOr2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG24);

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG23~I\ : cycloneii_io
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
	datain => \inst2|WideOr3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG23);

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG22~I\ : cycloneii_io
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
	datain => \inst2|WideOr4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG22);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG21~I\ : cycloneii_io
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
	datain => \inst2|WideOr5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG21);

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\oSEG20~I\ : cycloneii_io
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
	datain => \inst2|WideOr6~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_oSEG20);
END structure;


