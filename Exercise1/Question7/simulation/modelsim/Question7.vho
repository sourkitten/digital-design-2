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

-- DATE "03/10/2022 22:02:23"

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

ENTITY 	Question7 IS
    PORT (
	Q0 : OUT std_logic;
	CLRN : IN std_logic;
	CLK : IN std_logic;
	S1 : IN std_logic;
	S0 : IN std_logic;
	SI : IN std_logic;
	I0 : IN std_logic;
	SET : IN std_logic;
	Q1 : OUT std_logic;
	Q2 : OUT std_logic;
	Q3 : OUT std_logic;
	I3 : IN std_logic;
	I2 : IN std_logic;
	I1 : IN std_logic
	);
END Question7;

-- Design Ports Information
-- Q0	=>  Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q1	=>  Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q2	=>  Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q3	=>  Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- SET	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLRN	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- S0	=>  Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SI	=>  Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- I0	=>  Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- S1	=>  Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- I1	=>  Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- I2	=>  Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- I3	=>  Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Question7 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL ww_CLRN : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_S1 : std_logic;
SIGNAL ww_S0 : std_logic;
SIGNAL ww_SI : std_logic;
SIGNAL ww_I0 : std_logic;
SIGNAL ww_SET : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL ww_Q3 : std_logic;
SIGNAL ww_I3 : std_logic;
SIGNAL ww_I2 : std_logic;
SIGNAL ww_I1 : std_logic;
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \DQ0~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \S1~combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \CLRN~combout\ : std_logic;
SIGNAL \SET~combout\ : std_logic;
SIGNAL \DQ0~1_combout\ : std_logic;
SIGNAL \SI~combout\ : std_logic;
SIGNAL \S0~combout\ : std_logic;
SIGNAL \I0~combout\ : std_logic;
SIGNAL \inst7|inst6~1_combout\ : std_logic;
SIGNAL \inst7|inst6~0_combout\ : std_logic;
SIGNAL \DQ0~3_combout\ : std_logic;
SIGNAL \DQ0~0_combout\ : std_logic;
SIGNAL \DQ0~0clkctrl_outclk\ : std_logic;
SIGNAL \DQ0~_emulated_regout\ : std_logic;
SIGNAL \DQ0~2_combout\ : std_logic;
SIGNAL \I2~combout\ : std_logic;
SIGNAL \inst4|inst6~0_combout\ : std_logic;
SIGNAL \I3~combout\ : std_logic;
SIGNAL \inst5|inst6~0_combout\ : std_logic;
SIGNAL \inst5|inst6~1_combout\ : std_logic;
SIGNAL \DQ3~1_combout\ : std_logic;
SIGNAL \DQ3~_emulated_regout\ : std_logic;
SIGNAL \DQ3~0_combout\ : std_logic;
SIGNAL \inst4|inst6~1_combout\ : std_logic;
SIGNAL \DQ2~1_combout\ : std_logic;
SIGNAL \DQ2~_emulated_regout\ : std_logic;
SIGNAL \DQ2~0_combout\ : std_logic;
SIGNAL \I1~combout\ : std_logic;
SIGNAL \inst6|inst6~0_combout\ : std_logic;
SIGNAL \inst6|inst6~1_combout\ : std_logic;
SIGNAL \DQ1~1_combout\ : std_logic;
SIGNAL \DQ1~_emulated_regout\ : std_logic;
SIGNAL \DQ1~0_combout\ : std_logic;

BEGIN

Q0 <= ww_Q0;
ww_CLRN <= CLRN;
ww_CLK <= CLK;
ww_S1 <= S1;
ww_S0 <= S0;
ww_SI <= SI;
ww_I0 <= I0;
ww_SET <= SET;
Q1 <= ww_Q1;
Q2 <= ww_Q2;
Q3 <= ww_Q3;
ww_I3 <= I3;
ww_I2 <= I2;
ww_I1 <= I1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\DQ0~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \DQ0~0_combout\);

-- Location: PIN_J8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\S1~I\ : cycloneii_io
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
	padio => ww_S1,
	combout => \S1~combout\);

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

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLRN~I\ : cycloneii_io
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
	padio => ww_CLRN,
	combout => \CLRN~combout\);

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y32_N22
\DQ0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DQ0~1_combout\ = (\CLRN~combout\ & ((\DQ0~1_combout\) # (!\SET~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLRN~combout\,
	datac => \SET~combout\,
	datad => \DQ0~1_combout\,
	combout => \DQ0~1_combout\);

-- Location: PIN_J7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SI~I\ : cycloneii_io
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
	padio => ww_SI,
	combout => \SI~combout\);

-- Location: PIN_G6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\S0~I\ : cycloneii_io
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
	padio => ww_S0,
	combout => \S0~combout\);

-- Location: PIN_D2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\I0~I\ : cycloneii_io
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
	padio => ww_I0,
	combout => \I0~combout\);

-- Location: LCCOMB_X1_Y32_N18
\inst7|inst6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst6~1_combout\ = (\S0~combout\ & (\SI~combout\)) # (!\S0~combout\ & ((\I0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SI~combout\,
	datac => \S0~combout\,
	datad => \I0~combout\,
	combout => \inst7|inst6~1_combout\);

-- Location: LCCOMB_X1_Y32_N4
\inst7|inst6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|inst6~0_combout\ = (!\DQ0~2_combout\) # (!\S0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \S0~combout\,
	datad => \DQ0~2_combout\,
	combout => \inst7|inst6~0_combout\);

-- Location: LCCOMB_X1_Y32_N0
\DQ0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \DQ0~3_combout\ = \DQ0~1_combout\ $ (((\S1~combout\ & ((\inst7|inst6~0_combout\))) # (!\S1~combout\ & (\inst7|inst6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~combout\,
	datab => \inst7|inst6~1_combout\,
	datac => \inst7|inst6~0_combout\,
	datad => \DQ0~1_combout\,
	combout => \DQ0~3_combout\);

-- Location: LCCOMB_X31_Y35_N0
\DQ0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DQ0~0_combout\ = (!\CLRN~combout\) # (!\SET~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SET~combout\,
	datad => \CLRN~combout\,
	combout => \DQ0~0_combout\);

-- Location: CLKCTRL_G11
\DQ0~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \DQ0~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \DQ0~0clkctrl_outclk\);

-- Location: LCFF_X1_Y32_N1
\DQ0~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \DQ0~3_combout\,
	aclr => \DQ0~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DQ0~_emulated_regout\);

-- Location: LCCOMB_X1_Y32_N26
\DQ0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \DQ0~2_combout\ = (\CLRN~combout\ & ((\DQ0~1_combout\ $ (\DQ0~_emulated_regout\)) # (!\SET~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLRN~combout\,
	datab => \DQ0~1_combout\,
	datac => \SET~combout\,
	datad => \DQ0~_emulated_regout\,
	combout => \DQ0~2_combout\);

-- Location: PIN_C3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\I2~I\ : cycloneii_io
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
	padio => ww_I2,
	combout => \I2~combout\);

-- Location: LCCOMB_X1_Y33_N16
\inst4|inst6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|inst6~0_combout\ = (\I2~combout\) # (\S0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \I2~combout\,
	datad => \S0~combout\,
	combout => \inst4|inst6~0_combout\);

-- Location: PIN_F3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\I3~I\ : cycloneii_io
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
	padio => ww_I3,
	combout => \I3~combout\);

-- Location: LCCOMB_X1_Y32_N6
\inst5|inst6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|inst6~0_combout\ = (\S1~combout\ & (((\S0~combout\)))) # (!\S1~combout\ & ((\S0~combout\ & ((\DQ2~0_combout\))) # (!\S0~combout\ & (\I3~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~combout\,
	datab => \I3~combout\,
	datac => \S0~combout\,
	datad => \DQ2~0_combout\,
	combout => \inst5|inst6~0_combout\);

-- Location: LCCOMB_X1_Y32_N12
\inst5|inst6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|inst6~1_combout\ = (\S1~combout\ & ((\inst5|inst6~0_combout\ & ((!\DQ3~0_combout\))) # (!\inst5|inst6~0_combout\ & (\SI~combout\)))) # (!\S1~combout\ & (((\inst5|inst6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~combout\,
	datab => \SI~combout\,
	datac => \DQ3~0_combout\,
	datad => \inst5|inst6~0_combout\,
	combout => \inst5|inst6~1_combout\);

-- Location: LCCOMB_X1_Y32_N24
\DQ3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DQ3~1_combout\ = \DQ0~1_combout\ $ (\inst5|inst6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DQ0~1_combout\,
	datad => \inst5|inst6~1_combout\,
	combout => \DQ3~1_combout\);

-- Location: LCFF_X1_Y32_N25
\DQ3~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \DQ3~1_combout\,
	aclr => \DQ0~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DQ3~_emulated_regout\);

-- Location: LCCOMB_X1_Y32_N14
\DQ3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DQ3~0_combout\ = (\CLRN~combout\ & ((\DQ3~_emulated_regout\ $ (\DQ0~1_combout\)) # (!\SET~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SET~combout\,
	datab => \CLRN~combout\,
	datac => \DQ3~_emulated_regout\,
	datad => \DQ0~1_combout\,
	combout => \DQ3~0_combout\);

-- Location: LCCOMB_X1_Y32_N8
\inst4|inst6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|inst6~1_combout\ = (\S0~combout\ & ((!\DQ2~0_combout\))) # (!\S0~combout\ & (\DQ3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \S0~combout\,
	datac => \DQ3~0_combout\,
	datad => \DQ2~0_combout\,
	combout => \inst4|inst6~1_combout\);

-- Location: LCCOMB_X1_Y32_N28
\DQ2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DQ2~1_combout\ = \DQ0~1_combout\ $ (((\S1~combout\ & ((\inst4|inst6~1_combout\))) # (!\S1~combout\ & (\inst4|inst6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~combout\,
	datab => \inst4|inst6~0_combout\,
	datac => \inst4|inst6~1_combout\,
	datad => \DQ0~1_combout\,
	combout => \DQ2~1_combout\);

-- Location: LCFF_X1_Y32_N29
\DQ2~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \DQ2~1_combout\,
	aclr => \DQ0~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DQ2~_emulated_regout\);

-- Location: LCCOMB_X1_Y32_N2
\DQ2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DQ2~0_combout\ = (\CLRN~combout\ & ((\DQ0~1_combout\ $ (\DQ2~_emulated_regout\)) # (!\SET~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLRN~combout\,
	datab => \DQ0~1_combout\,
	datac => \SET~combout\,
	datad => \DQ2~_emulated_regout\,
	combout => \DQ2~0_combout\);

-- Location: PIN_D1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\I1~I\ : cycloneii_io
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
	padio => ww_I1,
	combout => \I1~combout\);

-- Location: LCCOMB_X1_Y32_N20
\inst6|inst6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6~0_combout\ = (\S1~combout\ & (((\S0~combout\)))) # (!\S1~combout\ & ((\S0~combout\ & ((\DQ0~2_combout\))) # (!\S0~combout\ & (\I1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~combout\,
	datab => \I1~combout\,
	datac => \S0~combout\,
	datad => \DQ0~2_combout\,
	combout => \inst6|inst6~0_combout\);

-- Location: LCCOMB_X1_Y32_N30
\inst6|inst6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst6|inst6~1_combout\ = (\S1~combout\ & ((\inst6|inst6~0_combout\ & ((!\DQ1~0_combout\))) # (!\inst6|inst6~0_combout\ & (\DQ2~0_combout\)))) # (!\S1~combout\ & (((\inst6|inst6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S1~combout\,
	datab => \DQ2~0_combout\,
	datac => \inst6|inst6~0_combout\,
	datad => \DQ1~0_combout\,
	combout => \inst6|inst6~1_combout\);

-- Location: LCCOMB_X1_Y32_N16
\DQ1~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \DQ1~1_combout\ = \DQ0~1_combout\ $ (\inst6|inst6~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DQ0~1_combout\,
	datad => \inst6|inst6~1_combout\,
	combout => \DQ1~1_combout\);

-- Location: LCFF_X1_Y32_N17
\DQ1~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \DQ1~1_combout\,
	aclr => \DQ0~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \DQ1~_emulated_regout\);

-- Location: LCCOMB_X1_Y32_N10
\DQ1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \DQ1~0_combout\ = (\CLRN~combout\ & ((\DQ1~_emulated_regout\ $ (\DQ0~1_combout\)) # (!\SET~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SET~combout\,
	datab => \CLRN~combout\,
	datac => \DQ1~_emulated_regout\,
	datad => \DQ0~1_combout\,
	combout => \DQ1~0_combout\);

-- Location: PIN_G5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q0~I\ : cycloneii_io
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
	datain => \DQ0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q0);

-- Location: PIN_F7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q1~I\ : cycloneii_io
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
	datain => \DQ1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q1);

-- Location: PIN_H6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q2~I\ : cycloneii_io
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
	datain => \DQ2~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q2);

-- Location: PIN_F4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Q3~I\ : cycloneii_io
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
	datain => \DQ3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q3);
END structure;


