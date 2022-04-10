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

-- DATE "04/10/2022 13:51:07"

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

ENTITY 	Reg8 IS
    PORT (
	DATA : IN std_logic_vector(7 DOWNTO 0);
	CLK : IN std_logic;
	CLR : IN std_logic;
	SET : IN std_logic;
	Q : OUT std_logic_vector(7 DOWNTO 0)
	);
END Reg8;

-- Design Ports Information
-- Q[0]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[1]	=>  Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[2]	=>  Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[3]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[4]	=>  Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[5]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[6]	=>  Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Q[7]	=>  Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLR	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA[0]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SET	=>  Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA[1]	=>  Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA[2]	=>  Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA[3]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA[4]	=>  Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA[5]	=>  Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA[6]	=>  Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- DATA[7]	=>  Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Reg8 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_DATA : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_CLR : std_logic;
SIGNAL ww_SET : std_logic;
SIGNAL ww_Q : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \REG[0]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \SET~combout\ : std_logic;
SIGNAL \CLR~combout\ : std_logic;
SIGNAL \REG[7]~19_combout\ : std_logic;
SIGNAL \REG[0]~1_combout\ : std_logic;
SIGNAL \REG[0]~3_combout\ : std_logic;
SIGNAL \REG[0]~0_combout\ : std_logic;
SIGNAL \REG[0]~0clkctrl_outclk\ : std_logic;
SIGNAL \REG[0]~_emulated_regout\ : std_logic;
SIGNAL \REG[0]~2_combout\ : std_logic;
SIGNAL \REG[1]~5_combout\ : std_logic;
SIGNAL \REG[1]~_emulated_regout\ : std_logic;
SIGNAL \REG[1]~4_combout\ : std_logic;
SIGNAL \REG[2]~7_combout\ : std_logic;
SIGNAL \REG[2]~_emulated_regout\ : std_logic;
SIGNAL \REG[2]~6_combout\ : std_logic;
SIGNAL \REG[3]~9_combout\ : std_logic;
SIGNAL \REG[3]~_emulated_regout\ : std_logic;
SIGNAL \REG[3]~8_combout\ : std_logic;
SIGNAL \REG[4]~11_combout\ : std_logic;
SIGNAL \REG[4]~_emulated_regout\ : std_logic;
SIGNAL \REG[4]~10_combout\ : std_logic;
SIGNAL \REG[5]~13_combout\ : std_logic;
SIGNAL \REG[5]~_emulated_regout\ : std_logic;
SIGNAL \REG[5]~12_combout\ : std_logic;
SIGNAL \REG[6]~15_combout\ : std_logic;
SIGNAL \REG[6]~_emulated_regout\ : std_logic;
SIGNAL \REG[6]~14_combout\ : std_logic;
SIGNAL \REG[7]~17_combout\ : std_logic;
SIGNAL \REG[7]~_emulated_regout\ : std_logic;
SIGNAL \REG[7]~16_combout\ : std_logic;
SIGNAL \DATA~combout\ : std_logic_vector(7 DOWNTO 0);

BEGIN

ww_DATA <= DATA;
ww_CLK <= CLK;
ww_CLR <= CLR;
ww_SET <= SET;
Q <= ww_Q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\REG[0]~0clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \REG[0]~0_combout\);

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

-- Location: PIN_K7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X1_Y28_N12
\REG[7]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG[7]~19_combout\ = (\SET~combout\ & !\CLR~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SET~combout\,
	datad => \CLR~combout\,
	combout => \REG[7]~19_combout\);

-- Location: LCCOMB_X1_Y28_N30
\REG[0]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG[0]~1_combout\ = (!\CLR~combout\ & ((\REG[7]~19_combout\) # (\REG[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR~combout\,
	datac => \REG[7]~19_combout\,
	datad => \REG[0]~1_combout\,
	combout => \REG[0]~1_combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA[0]~I\ : cycloneii_io
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
	padio => ww_DATA(0),
	combout => \DATA~combout\(0));

-- Location: LCCOMB_X1_Y28_N24
\REG[0]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG[0]~3_combout\ = \REG[0]~1_combout\ $ (\DATA~combout\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG[0]~1_combout\,
	datad => \DATA~combout\(0),
	combout => \REG[0]~3_combout\);

-- Location: LCCOMB_X1_Y28_N26
\REG[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG[0]~0_combout\ = (\REG[7]~19_combout\) # (\CLR~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG[7]~19_combout\,
	datad => \CLR~combout\,
	combout => \REG[0]~0_combout\);

-- Location: CLKCTRL_G2
\REG[0]~0clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \REG[0]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \REG[0]~0clkctrl_outclk\);

-- Location: LCFF_X1_Y28_N25
\REG[0]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \REG[0]~3_combout\,
	aclr => \REG[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG[0]~_emulated_regout\);

-- Location: LCCOMB_X1_Y28_N18
\REG[0]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG[0]~2_combout\ = (!\CLR~combout\ & ((\REG[7]~19_combout\) # (\REG[0]~1_combout\ $ (\REG[0]~_emulated_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG[7]~19_combout\,
	datab => \REG[0]~1_combout\,
	datac => \REG[0]~_emulated_regout\,
	datad => \CLR~combout\,
	combout => \REG[0]~2_combout\);

-- Location: PIN_J6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA[1]~I\ : cycloneii_io
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
	padio => ww_DATA(1),
	combout => \DATA~combout\(1));

-- Location: LCCOMB_X1_Y28_N28
\REG[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG[1]~5_combout\ = \REG[0]~1_combout\ $ (\DATA~combout\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG[0]~1_combout\,
	datac => \DATA~combout\(1),
	combout => \REG[1]~5_combout\);

-- Location: LCFF_X1_Y28_N29
\REG[1]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \REG[1]~5_combout\,
	aclr => \REG[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG[1]~_emulated_regout\);

-- Location: LCCOMB_X1_Y28_N14
\REG[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG[1]~4_combout\ = (!\CLR~combout\ & ((\REG[7]~19_combout\) # (\REG[1]~_emulated_regout\ $ (\REG[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG[7]~19_combout\,
	datab => \REG[1]~_emulated_regout\,
	datac => \REG[0]~1_combout\,
	datad => \CLR~combout\,
	combout => \REG[1]~4_combout\);

-- Location: PIN_G2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA[2]~I\ : cycloneii_io
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
	padio => ww_DATA(2),
	combout => \DATA~combout\(2));

-- Location: LCCOMB_X1_Y28_N0
\REG[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG[2]~7_combout\ = \REG[0]~1_combout\ $ (\DATA~combout\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG[0]~1_combout\,
	datad => \DATA~combout\(2),
	combout => \REG[2]~7_combout\);

-- Location: LCFF_X1_Y28_N1
\REG[2]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \REG[2]~7_combout\,
	aclr => \REG[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG[2]~_emulated_regout\);

-- Location: LCCOMB_X1_Y28_N10
\REG[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG[2]~6_combout\ = (!\CLR~combout\ & ((\REG[7]~19_combout\) # (\REG[2]~_emulated_regout\ $ (\REG[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG[7]~19_combout\,
	datab => \REG[2]~_emulated_regout\,
	datac => \REG[0]~1_combout\,
	datad => \CLR~combout\,
	combout => \REG[2]~6_combout\);

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA[3]~I\ : cycloneii_io
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
	padio => ww_DATA(3),
	combout => \DATA~combout\(3));

-- Location: LCCOMB_X1_Y28_N20
\REG[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG[3]~9_combout\ = \REG[0]~1_combout\ $ (\DATA~combout\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG[0]~1_combout\,
	datad => \DATA~combout\(3),
	combout => \REG[3]~9_combout\);

-- Location: LCFF_X1_Y28_N21
\REG[3]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \REG[3]~9_combout\,
	aclr => \REG[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG[3]~_emulated_regout\);

-- Location: LCCOMB_X1_Y28_N22
\REG[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG[3]~8_combout\ = (!\CLR~combout\ & ((\REG[7]~19_combout\) # (\REG[0]~1_combout\ $ (\REG[3]~_emulated_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG[7]~19_combout\,
	datab => \REG[0]~1_combout\,
	datac => \REG[3]~_emulated_regout\,
	datad => \CLR~combout\,
	combout => \REG[3]~8_combout\);

-- Location: PIN_K5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA[4]~I\ : cycloneii_io
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
	padio => ww_DATA(4),
	combout => \DATA~combout\(4));

-- Location: LCCOMB_X1_Y30_N16
\REG[4]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG[4]~11_combout\ = \REG[0]~1_combout\ $ (\DATA~combout\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG[0]~1_combout\,
	datad => \DATA~combout\(4),
	combout => \REG[4]~11_combout\);

-- Location: LCFF_X1_Y30_N17
\REG[4]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \REG[4]~11_combout\,
	aclr => \REG[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG[4]~_emulated_regout\);

-- Location: LCCOMB_X1_Y28_N8
\REG[4]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG[4]~10_combout\ = (!\CLR~combout\ & ((\REG[7]~19_combout\) # (\REG[0]~1_combout\ $ (\REG[4]~_emulated_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG[7]~19_combout\,
	datab => \REG[0]~1_combout\,
	datac => \REG[4]~_emulated_regout\,
	datad => \CLR~combout\,
	combout => \REG[4]~10_combout\);

-- Location: PIN_K6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA[5]~I\ : cycloneii_io
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
	padio => ww_DATA(5),
	combout => \DATA~combout\(5));

-- Location: LCCOMB_X1_Y30_N18
\REG[5]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG[5]~13_combout\ = \REG[0]~1_combout\ $ (\DATA~combout\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG[0]~1_combout\,
	datad => \DATA~combout\(5),
	combout => \REG[5]~13_combout\);

-- Location: LCFF_X1_Y30_N19
\REG[5]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \REG[5]~13_combout\,
	aclr => \REG[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG[5]~_emulated_regout\);

-- Location: LCCOMB_X1_Y28_N2
\REG[5]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG[5]~12_combout\ = (!\CLR~combout\ & ((\REG[7]~19_combout\) # (\REG[0]~1_combout\ $ (\REG[5]~_emulated_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG[7]~19_combout\,
	datab => \REG[0]~1_combout\,
	datac => \REG[5]~_emulated_regout\,
	datad => \CLR~combout\,
	combout => \REG[5]~12_combout\);

-- Location: PIN_G1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA[6]~I\ : cycloneii_io
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
	padio => ww_DATA(6),
	combout => \DATA~combout\(6));

-- Location: LCCOMB_X1_Y28_N4
\REG[6]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG[6]~15_combout\ = \REG[0]~1_combout\ $ (\DATA~combout\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REG[0]~1_combout\,
	datad => \DATA~combout\(6),
	combout => \REG[6]~15_combout\);

-- Location: LCFF_X1_Y28_N5
\REG[6]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \REG[6]~15_combout\,
	aclr => \REG[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG[6]~_emulated_regout\);

-- Location: LCCOMB_X1_Y28_N6
\REG[6]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG[6]~14_combout\ = (!\CLR~combout\ & ((\REG[7]~19_combout\) # (\REG[6]~_emulated_regout\ $ (\REG[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG[7]~19_combout\,
	datab => \REG[6]~_emulated_regout\,
	datac => \REG[0]~1_combout\,
	datad => \CLR~combout\,
	combout => \REG[6]~14_combout\);

-- Location: PIN_G4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\DATA[7]~I\ : cycloneii_io
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
	padio => ww_DATA(7),
	combout => \DATA~combout\(7));

-- Location: LCCOMB_X1_Y30_N12
\REG[7]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG[7]~17_combout\ = \REG[0]~1_combout\ $ (\DATA~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG[0]~1_combout\,
	datad => \DATA~combout\(7),
	combout => \REG[7]~17_combout\);

-- Location: LCFF_X1_Y30_N13
\REG[7]~_emulated\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \REG[7]~17_combout\,
	aclr => \REG[0]~0clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \REG[7]~_emulated_regout\);

-- Location: LCCOMB_X1_Y28_N16
\REG[7]~16\ : cycloneii_lcell_comb
-- Equation(s):
-- \REG[7]~16_combout\ = (!\CLR~combout\ & ((\REG[7]~19_combout\) # (\REG[0]~1_combout\ $ (\REG[7]~_emulated_regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REG[7]~19_combout\,
	datab => \REG[0]~1_combout\,
	datac => \REG[7]~_emulated_regout\,
	datad => \CLR~combout\,
	combout => \REG[7]~16_combout\);

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \REG[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(0));

-- Location: PIN_F1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \REG[1]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(1));

-- Location: PIN_G3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \REG[2]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(2));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \REG[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(3));

-- Location: PIN_E2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \REG[4]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(4));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \REG[5]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(5));

-- Location: PIN_K8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \REG[6]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(6));

-- Location: PIN_F2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \REG[7]~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Q(7));
END structure;


