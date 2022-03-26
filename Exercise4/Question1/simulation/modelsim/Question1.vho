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

-- DATE "03/26/2022 13:14:28"

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

ENTITY 	Datapath IS
    PORT (
	Z : OUT std_logic;
	reset : IN std_logic;
	SF : IN std_logic;
	CLK : IN std_logic;
	Sub : IN std_logic;
	SelB : IN std_logic;
	LSB : IN std_logic;
	ENB : IN std_logic;
	Y : IN std_logic_vector(7 DOWNTO 0);
	SelA : IN std_logic;
	LSA : IN std_logic;
	ENA : IN std_logic;
	X : IN std_logic_vector(7 DOWNTO 0);
	Sum : OUT std_logic_vector(7 DOWNTO 0)
	);
END Datapath;

-- Design Ports Information
-- Z	=>  Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sum[7]	=>  Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sum[6]	=>  Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sum[5]	=>  Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sum[4]	=>  Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sum[3]	=>  Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sum[2]	=>  Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sum[1]	=>  Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sum[0]	=>  Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Sub	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[6]	=>  Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SelA	=>  Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[5]	=>  Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LSA	=>  Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENA	=>  Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y[6]	=>  Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SelB	=>  Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y[5]	=>  Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- LSB	=>  Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- ENB	=>  Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[4]	=>  Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y[4]	=>  Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[3]	=>  Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y[3]	=>  Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[2]	=>  Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y[2]	=>  Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[1]	=>  Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y[1]	=>  Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[0]	=>  Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y[0]	=>  Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Y[7]	=>  Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- X[7]	=>  Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- SF	=>  Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Datapath IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Z : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_SF : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Sub : std_logic;
SIGNAL ww_SelB : std_logic;
SIGNAL ww_LSB : std_logic;
SIGNAL ww_ENB : std_logic;
SIGNAL ww_Y : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_SelA : std_logic;
SIGNAL ww_LSA : std_logic;
SIGNAL ww_ENA : std_logic;
SIGNAL ww_X : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Sum : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \RegY|ff8|dffs[6]~1_combout\ : std_logic;
SIGNAL \RegY|ff8|dffs[5]~2_combout\ : std_logic;
SIGNAL \RegY|ff8|dffs[4]~3_combout\ : std_logic;
SIGNAL \RegY|ff8|dffs[7]~0_combout\ : std_logic;
SIGNAL \RegY|ff8|dffs[7]~7_combout\ : std_logic;
SIGNAL \RegY|ff8|dffs[7]~feeder_combout\ : std_logic;
SIGNAL \reset~combout\ : std_logic;
SIGNAL \SF~combout\ : std_logic;
SIGNAL \zflag|inst4~combout\ : std_logic;
SIGNAL \RegX|ff8|dffs[6]~1_combout\ : std_logic;
SIGNAL \Sub~combout\ : std_logic;
SIGNAL \RegX|ff8|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \RegX|ff8|dffs[3]~feeder_combout\ : std_logic;
SIGNAL \RegX|ff8|dffs[2]~feeder_combout\ : std_logic;
SIGNAL \RegX|ff8|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \SelA~combout\ : std_logic;
SIGNAL \LSA~combout\ : std_logic;
SIGNAL \RegX|lsmux|mux0|7~combout\ : std_logic;
SIGNAL \reset~clkctrl_outclk\ : std_logic;
SIGNAL \ENA~combout\ : std_logic;
SIGNAL \XYSum|inst|inst1~0_combout\ : std_logic;
SIGNAL \LSB~combout\ : std_logic;
SIGNAL \RegY|lsmux|mux0|7~combout\ : std_logic;
SIGNAL \ENB~combout\ : std_logic;
SIGNAL \RegX|mux8|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \SelB~combout\ : std_logic;
SIGNAL \RegY|ff8|dffs[1]~6_combout\ : std_logic;
SIGNAL \RegY|ff8|dffs[1]~feeder_combout\ : std_logic;
SIGNAL \RegY|mux8|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \XYSum|inst|inst6~0_combout\ : std_logic;
SIGNAL \XYSum|inst2|inst1~combout\ : std_logic;
SIGNAL \RegX|ff8|dffs[1]~6_combout\ : std_logic;
SIGNAL \XYSum|inst2|inst6~0_combout\ : std_logic;
SIGNAL \RegY|ff8|dffs[2]~5_combout\ : std_logic;
SIGNAL \XYSum|inst3|inst1~0_combout\ : std_logic;
SIGNAL \RegX|ff8|dffs[2]~5_combout\ : std_logic;
SIGNAL \XYSum|inst3|inst6~0_combout\ : std_logic;
SIGNAL \RegY|ff8|dffs[3]~4_combout\ : std_logic;
SIGNAL \XYSum|inst4|inst1~0_combout\ : std_logic;
SIGNAL \RegX|ff8|dffs[3]~4_combout\ : std_logic;
SIGNAL \XYSum|inst4|inst6~0_combout\ : std_logic;
SIGNAL \XYSum|inst5|inst1~0_combout\ : std_logic;
SIGNAL \RegX|ff8|dffs[4]~3_combout\ : std_logic;
SIGNAL \XYSum|inst5|inst6~0_combout\ : std_logic;
SIGNAL \XYSum|inst6|inst1~0_combout\ : std_logic;
SIGNAL \RegX|ff8|dffs[5]~2_combout\ : std_logic;
SIGNAL \XYSum|inst6|inst6~0_combout\ : std_logic;
SIGNAL \XYSum|inst7|inst1~0_combout\ : std_logic;
SIGNAL \zflag|inst3~0_combout\ : std_logic;
SIGNAL \zflag|inst3~1_combout\ : std_logic;
SIGNAL \XYSum|inst7|inst6~0_combout\ : std_logic;
SIGNAL \RegX|ff8|dffs[7]~0_combout\ : std_logic;
SIGNAL \RegX|ff8|dffs[7]~feeder_combout\ : std_logic;
SIGNAL \XYSum|inst8|inst1~0_combout\ : std_logic;
SIGNAL \zflag|inst3~2_combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \zflag|inst~regout\ : std_logic;
SIGNAL \RegX|ff8|dffs\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \X~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \Y~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RegY|ff8|dffs\ : std_logic_vector(7 DOWNTO 0);

BEGIN

Z <= ww_Z;
ww_reset <= reset;
ww_SF <= SF;
ww_CLK <= CLK;
ww_Sub <= Sub;
ww_SelB <= SelB;
ww_LSB <= LSB;
ww_ENB <= ENB;
ww_Y <= Y;
ww_SelA <= SelA;
ww_LSA <= LSA;
ww_ENA <= ENA;
ww_X <= X;
Sum <= ww_Sum;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~combout\);

-- Location: LCFF_X62_Y33_N17
\RegY|ff8|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \RegY|ff8|dffs[6]~1_combout\,
	sdata => \RegY|ff8|dffs[5]~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \LSB~combout\,
	ena => \ENB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegY|ff8|dffs\(6));

-- Location: LCFF_X62_Y33_N9
\RegY|ff8|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \RegY|ff8|dffs[5]~2_combout\,
	sdata => \RegY|ff8|dffs[4]~3_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \LSB~combout\,
	ena => \ENB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegY|ff8|dffs\(5));

-- Location: LCFF_X62_Y33_N11
\RegY|ff8|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \RegY|ff8|dffs[4]~3_combout\,
	sdata => \RegY|ff8|dffs[3]~4_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \LSB~combout\,
	ena => \ENB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegY|ff8|dffs\(4));

-- Location: LCFF_X62_Y33_N21
\RegY|ff8|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \RegY|ff8|dffs[7]~feeder_combout\,
	sdata => \RegY|ff8|dffs[6]~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \LSB~combout\,
	ena => \ENB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegY|ff8|dffs\(7));

-- Location: LCCOMB_X62_Y33_N16
\RegY|ff8|dffs[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegY|ff8|dffs[6]~1_combout\ = (\SelB~combout\ & ((\XYSum|inst7|inst1~0_combout\))) # (!\SelB~combout\ & (\Y~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelB~combout\,
	datab => \Y~combout\(6),
	datad => \XYSum|inst7|inst1~0_combout\,
	combout => \RegY|ff8|dffs[6]~1_combout\);

-- Location: LCCOMB_X62_Y33_N8
\RegY|ff8|dffs[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegY|ff8|dffs[5]~2_combout\ = (\SelB~combout\ & ((\XYSum|inst6|inst1~0_combout\))) # (!\SelB~combout\ & (\Y~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelB~combout\,
	datab => \Y~combout\(5),
	datad => \XYSum|inst6|inst1~0_combout\,
	combout => \RegY|ff8|dffs[5]~2_combout\);

-- Location: LCCOMB_X62_Y33_N10
\RegY|ff8|dffs[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegY|ff8|dffs[4]~3_combout\ = (\SelB~combout\ & ((\XYSum|inst5|inst1~0_combout\))) # (!\SelB~combout\ & (\Y~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelB~combout\,
	datab => \Y~combout\(4),
	datad => \XYSum|inst5|inst1~0_combout\,
	combout => \RegY|ff8|dffs[4]~3_combout\);

-- Location: LCCOMB_X62_Y33_N12
\RegY|ff8|dffs[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegY|ff8|dffs[7]~0_combout\ = (\SelB~combout\ & (\RegY|ff8|dffs[7]~7_combout\ $ (((!\XYSum|inst7|inst6~0_combout\))))) # (!\SelB~combout\ & (((\Y~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelB~combout\,
	datab => \RegY|ff8|dffs[7]~7_combout\,
	datac => \Y~combout\(7),
	datad => \XYSum|inst7|inst6~0_combout\,
	combout => \RegY|ff8|dffs[7]~0_combout\);

-- Location: LCCOMB_X61_Y33_N16
\RegY|ff8|dffs[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegY|ff8|dffs[7]~7_combout\ = \Sub~combout\ $ (\RegX|ff8|dffs\(7) $ (!\RegY|ff8|dffs\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Sub~combout\,
	datac => \RegX|ff8|dffs\(7),
	datad => \RegY|ff8|dffs\(7),
	combout => \RegY|ff8|dffs[7]~7_combout\);

-- Location: PIN_C23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Y[6]~I\ : cycloneii_io
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
	padio => ww_Y(6),
	combout => \Y~combout\(6));

-- Location: PIN_K17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Y[5]~I\ : cycloneii_io
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
	padio => ww_Y(5),
	combout => \Y~combout\(5));

-- Location: PIN_C22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Y[4]~I\ : cycloneii_io
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
	padio => ww_Y(4),
	combout => \Y~combout\(4));

-- Location: PIN_E26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Y[2]~I\ : cycloneii_io
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
	padio => ww_Y(2),
	combout => \Y~combout\(2));

-- Location: PIN_D21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Y[7]~I\ : cycloneii_io
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
	padio => ww_Y(7),
	combout => \Y~combout\(7));

-- Location: LCCOMB_X62_Y33_N20
\RegY|ff8|dffs[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegY|ff8|dffs[7]~feeder_combout\ = \RegY|ff8|dffs[7]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegY|ff8|dffs[7]~0_combout\,
	combout => \RegY|ff8|dffs[7]~feeder_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~I\ : cycloneii_io
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
	padio => ww_reset,
	combout => \reset~combout\);

-- Location: PIN_E24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SF~I\ : cycloneii_io
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
	padio => ww_SF,
	combout => \SF~combout\);

-- Location: LCCOMB_X62_Y33_N2
\zflag|inst4\ : cycloneii_lcell_comb
-- Equation(s):
-- \zflag|inst4~combout\ = LCELL((\reset~combout\ & \SF~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~combout\,
	datad => \SF~combout\,
	combout => \zflag|inst4~combout\);

-- Location: PIN_D13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[6]~I\ : cycloneii_io
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
	padio => ww_X(6),
	combout => \X~combout\(6));

-- Location: LCCOMB_X61_Y33_N4
\RegX|ff8|dffs[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegX|ff8|dffs[6]~1_combout\ = (\SelA~combout\ & ((\XYSum|inst7|inst1~0_combout\))) # (!\SelA~combout\ & (\X~combout\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelA~combout\,
	datab => \X~combout\(6),
	datad => \XYSum|inst7|inst1~0_combout\,
	combout => \RegX|ff8|dffs[6]~1_combout\);

-- Location: PIN_A23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[5]~I\ : cycloneii_io
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
	padio => ww_X(5),
	combout => \X~combout\(5));

-- Location: PIN_B22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[4]~I\ : cycloneii_io
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
	padio => ww_X(4),
	combout => \X~combout\(4));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Sub~I\ : cycloneii_io
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
	padio => ww_Sub,
	combout => \Sub~combout\);

-- Location: LCCOMB_X61_Y33_N0
\RegX|ff8|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegX|ff8|dffs[4]~feeder_combout\ = \RegX|ff8|dffs[4]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegX|ff8|dffs[4]~3_combout\,
	combout => \RegX|ff8|dffs[4]~feeder_combout\);

-- Location: PIN_A22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[3]~I\ : cycloneii_io
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
	padio => ww_X(3),
	combout => \X~combout\(3));

-- Location: LCCOMB_X61_Y33_N22
\RegX|ff8|dffs[3]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegX|ff8|dffs[3]~feeder_combout\ = \RegX|ff8|dffs[3]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegX|ff8|dffs[3]~4_combout\,
	combout => \RegX|ff8|dffs[3]~feeder_combout\);

-- Location: LCCOMB_X64_Y33_N24
\RegX|ff8|dffs[2]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegX|ff8|dffs[2]~feeder_combout\ = \RegX|ff8|dffs[2]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegX|ff8|dffs[2]~5_combout\,
	combout => \RegX|ff8|dffs[2]~feeder_combout\);

-- Location: PIN_J22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[1]~I\ : cycloneii_io
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
	padio => ww_X(1),
	combout => \X~combout\(1));

-- Location: LCCOMB_X64_Y33_N30
\RegX|ff8|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegX|ff8|dffs[1]~feeder_combout\ = \RegX|ff8|dffs[1]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegX|ff8|dffs[1]~6_combout\,
	combout => \RegX|ff8|dffs[1]~feeder_combout\);

-- Location: PIN_C21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[0]~I\ : cycloneii_io
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
	padio => ww_X(0),
	combout => \X~combout\(0));

-- Location: PIN_G21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SelA~I\ : cycloneii_io
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
	padio => ww_SelA,
	combout => \SelA~combout\);

-- Location: PIN_E23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\LSA~I\ : cycloneii_io
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
	padio => ww_LSA,
	combout => \LSA~combout\);

-- Location: LCCOMB_X63_Y33_N14
\RegX|lsmux|mux0|7\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegX|lsmux|mux0|7~combout\ = (!\LSA~combout\ & ((\SelA~combout\ & ((\XYSum|inst|inst1~0_combout\))) # (!\SelA~combout\ & (\X~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelA~combout\,
	datab => \X~combout\(0),
	datac => \LSA~combout\,
	datad => \XYSum|inst|inst1~0_combout\,
	combout => \RegX|lsmux|mux0|7~combout\);

-- Location: CLKCTRL_G1
\reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~clkctrl_outclk\);

-- Location: PIN_H21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ENA~I\ : cycloneii_io
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
	padio => ww_ENA,
	combout => \ENA~combout\);

-- Location: LCFF_X63_Y33_N15
\RegX|ff8|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \RegX|lsmux|mux0|7~combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \ENA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegX|ff8|dffs\(0));

-- Location: LCCOMB_X63_Y33_N16
\XYSum|inst|inst1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \XYSum|inst|inst1~0_combout\ = \RegX|ff8|dffs\(0) $ (\RegY|ff8|dffs\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \RegX|ff8|dffs\(0),
	datad => \RegY|ff8|dffs\(0),
	combout => \XYSum|inst|inst1~0_combout\);

-- Location: PIN_E25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Y[0]~I\ : cycloneii_io
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
	padio => ww_Y(0),
	combout => \Y~combout\(0));

-- Location: PIN_F20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\LSB~I\ : cycloneii_io
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
	padio => ww_LSB,
	combout => \LSB~combout\);

-- Location: LCCOMB_X63_Y33_N0
\RegY|lsmux|mux0|7\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegY|lsmux|mux0|7~combout\ = (!\LSB~combout\ & ((\SelB~combout\ & (\XYSum|inst|inst1~0_combout\)) # (!\SelB~combout\ & ((\Y~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelB~combout\,
	datab => \XYSum|inst|inst1~0_combout\,
	datac => \Y~combout\(0),
	datad => \LSB~combout\,
	combout => \RegY|lsmux|mux0|7~combout\);

-- Location: PIN_D23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\ENB~I\ : cycloneii_io
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
	padio => ww_ENB,
	combout => \ENB~combout\);

-- Location: LCFF_X63_Y33_N1
\RegY|ff8|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \RegY|lsmux|mux0|7~combout\,
	aclr => \reset~clkctrl_outclk\,
	ena => \ENB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegY|ff8|dffs\(0));

-- Location: LCCOMB_X63_Y33_N28
\RegX|mux8|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegX|mux8|$00000|auto_generated|result_node[0]~0_combout\ = (\SelA~combout\ & (\RegX|ff8|dffs\(0) $ (((\RegY|ff8|dffs\(0)))))) # (!\SelA~combout\ & (((\X~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegX|ff8|dffs\(0),
	datab => \X~combout\(0),
	datac => \SelA~combout\,
	datad => \RegY|ff8|dffs\(0),
	combout => \RegX|mux8|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCFF_X64_Y33_N31
\RegX|ff8|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \RegX|ff8|dffs[1]~feeder_combout\,
	sdata => \RegX|mux8|$00000|auto_generated|result_node[0]~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \LSA~combout\,
	ena => \ENA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegX|ff8|dffs\(1));

-- Location: PIN_D25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Y[1]~I\ : cycloneii_io
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
	padio => ww_Y(1),
	combout => \Y~combout\(1));

-- Location: PIN_B24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\SelB~I\ : cycloneii_io
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
	padio => ww_SelB,
	combout => \SelB~combout\);

-- Location: LCCOMB_X63_Y33_N6
\RegY|ff8|dffs[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegY|ff8|dffs[1]~6_combout\ = (\SelB~combout\ & (\XYSum|inst2|inst1~combout\)) # (!\SelB~combout\ & ((\Y~combout\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \XYSum|inst2|inst1~combout\,
	datac => \Y~combout\(1),
	datad => \SelB~combout\,
	combout => \RegY|ff8|dffs[1]~6_combout\);

-- Location: LCCOMB_X63_Y33_N20
\RegY|ff8|dffs[1]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegY|ff8|dffs[1]~feeder_combout\ = \RegY|ff8|dffs[1]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \RegY|ff8|dffs[1]~6_combout\,
	combout => \RegY|ff8|dffs[1]~feeder_combout\);

-- Location: LCCOMB_X63_Y33_N2
\RegY|mux8|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegY|mux8|$00000|auto_generated|result_node[0]~0_combout\ = (\SelB~combout\ & ((\RegX|ff8|dffs\(0) $ (\RegY|ff8|dffs\(0))))) # (!\SelB~combout\ & (\Y~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(0),
	datab => \RegX|ff8|dffs\(0),
	datac => \RegY|ff8|dffs\(0),
	datad => \SelB~combout\,
	combout => \RegY|mux8|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCFF_X63_Y33_N21
\RegY|ff8|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \RegY|ff8|dffs[1]~feeder_combout\,
	sdata => \RegY|mux8|$00000|auto_generated|result_node[0]~0_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \LSB~combout\,
	ena => \ENB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegY|ff8|dffs\(1));

-- Location: LCCOMB_X63_Y33_N12
\XYSum|inst|inst6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \XYSum|inst|inst6~0_combout\ = (\RegX|ff8|dffs\(0) & ((\RegY|ff8|dffs\(0)))) # (!\RegX|ff8|dffs\(0) & (\Sub~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sub~combout\,
	datac => \RegX|ff8|dffs\(0),
	datad => \RegY|ff8|dffs\(0),
	combout => \XYSum|inst|inst6~0_combout\);

-- Location: LCCOMB_X63_Y33_N30
\XYSum|inst2|inst1\ : cycloneii_lcell_comb
-- Equation(s):
-- \XYSum|inst2|inst1~combout\ = \Sub~combout\ $ (\RegX|ff8|dffs\(1) $ (\RegY|ff8|dffs\(1) $ (\XYSum|inst|inst6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sub~combout\,
	datab => \RegX|ff8|dffs\(1),
	datac => \RegY|ff8|dffs\(1),
	datad => \XYSum|inst|inst6~0_combout\,
	combout => \XYSum|inst2|inst1~combout\);

-- Location: LCCOMB_X64_Y33_N14
\RegX|ff8|dffs[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegX|ff8|dffs[1]~6_combout\ = (\SelA~combout\ & ((\XYSum|inst2|inst1~combout\))) # (!\SelA~combout\ & (\X~combout\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \X~combout\(1),
	datac => \XYSum|inst2|inst1~combout\,
	datad => \SelA~combout\,
	combout => \RegX|ff8|dffs[1]~6_combout\);

-- Location: LCFF_X64_Y33_N25
\RegX|ff8|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \RegX|ff8|dffs[2]~feeder_combout\,
	sdata => \RegX|ff8|dffs[1]~6_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \LSA~combout\,
	ena => \ENA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegX|ff8|dffs\(2));

-- Location: LCCOMB_X63_Y33_N26
\XYSum|inst2|inst6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \XYSum|inst2|inst6~0_combout\ = (\RegY|ff8|dffs\(1) & ((\XYSum|inst|inst6~0_combout\) # (\Sub~combout\ $ (\RegX|ff8|dffs\(1))))) # (!\RegY|ff8|dffs\(1) & (\XYSum|inst|inst6~0_combout\ & (\Sub~combout\ $ (\RegX|ff8|dffs\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sub~combout\,
	datab => \RegX|ff8|dffs\(1),
	datac => \RegY|ff8|dffs\(1),
	datad => \XYSum|inst|inst6~0_combout\,
	combout => \XYSum|inst2|inst6~0_combout\);

-- Location: LCCOMB_X63_Y33_N18
\RegY|ff8|dffs[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegY|ff8|dffs[2]~5_combout\ = (\SelB~combout\ & ((\XYSum|inst3|inst1~0_combout\))) # (!\SelB~combout\ & (\Y~combout\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Y~combout\(2),
	datab => \XYSum|inst3|inst1~0_combout\,
	datad => \SelB~combout\,
	combout => \RegY|ff8|dffs[2]~5_combout\);

-- Location: LCFF_X63_Y33_N19
\RegY|ff8|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \RegY|ff8|dffs[2]~5_combout\,
	sdata => \RegY|ff8|dffs[1]~6_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \LSB~combout\,
	ena => \ENB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegY|ff8|dffs\(2));

-- Location: LCCOMB_X63_Y33_N4
\XYSum|inst3|inst1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \XYSum|inst3|inst1~0_combout\ = \Sub~combout\ $ (\RegX|ff8|dffs\(2) $ (\XYSum|inst2|inst6~0_combout\ $ (\RegY|ff8|dffs\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sub~combout\,
	datab => \RegX|ff8|dffs\(2),
	datac => \XYSum|inst2|inst6~0_combout\,
	datad => \RegY|ff8|dffs\(2),
	combout => \XYSum|inst3|inst1~0_combout\);

-- Location: PIN_E22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[2]~I\ : cycloneii_io
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
	padio => ww_X(2),
	combout => \X~combout\(2));

-- Location: LCCOMB_X64_Y33_N28
\RegX|ff8|dffs[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegX|ff8|dffs[2]~5_combout\ = (\SelA~combout\ & (\XYSum|inst3|inst1~0_combout\)) # (!\SelA~combout\ & ((\X~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelA~combout\,
	datac => \XYSum|inst3|inst1~0_combout\,
	datad => \X~combout\(2),
	combout => \RegX|ff8|dffs[2]~5_combout\);

-- Location: LCFF_X61_Y33_N23
\RegX|ff8|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \RegX|ff8|dffs[3]~feeder_combout\,
	sdata => \RegX|ff8|dffs[2]~5_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \LSA~combout\,
	ena => \ENA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegX|ff8|dffs\(3));

-- Location: LCCOMB_X63_Y33_N24
\XYSum|inst3|inst6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \XYSum|inst3|inst6~0_combout\ = (\RegY|ff8|dffs\(2) & ((\XYSum|inst2|inst6~0_combout\) # (\Sub~combout\ $ (\RegX|ff8|dffs\(2))))) # (!\RegY|ff8|dffs\(2) & (\XYSum|inst2|inst6~0_combout\ & (\Sub~combout\ $ (\RegX|ff8|dffs\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sub~combout\,
	datab => \RegX|ff8|dffs\(2),
	datac => \RegY|ff8|dffs\(2),
	datad => \XYSum|inst2|inst6~0_combout\,
	combout => \XYSum|inst3|inst6~0_combout\);

-- Location: PIN_D26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Y[3]~I\ : cycloneii_io
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
	padio => ww_Y(3),
	combout => \Y~combout\(3));

-- Location: LCCOMB_X63_Y33_N8
\RegY|ff8|dffs[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegY|ff8|dffs[3]~4_combout\ = (\SelB~combout\ & ((\XYSum|inst4|inst1~0_combout\))) # (!\SelB~combout\ & (\Y~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelB~combout\,
	datab => \Y~combout\(3),
	datad => \XYSum|inst4|inst1~0_combout\,
	combout => \RegY|ff8|dffs[3]~4_combout\);

-- Location: LCFF_X63_Y33_N9
\RegY|ff8|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \RegY|ff8|dffs[3]~4_combout\,
	sdata => \RegY|ff8|dffs[2]~5_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \LSB~combout\,
	ena => \ENB~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegY|ff8|dffs\(3));

-- Location: LCCOMB_X63_Y33_N22
\XYSum|inst4|inst1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \XYSum|inst4|inst1~0_combout\ = \Sub~combout\ $ (\RegX|ff8|dffs\(3) $ (\XYSum|inst3|inst6~0_combout\ $ (\RegY|ff8|dffs\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Sub~combout\,
	datab => \RegX|ff8|dffs\(3),
	datac => \XYSum|inst3|inst6~0_combout\,
	datad => \RegY|ff8|dffs\(3),
	combout => \XYSum|inst4|inst1~0_combout\);

-- Location: LCCOMB_X61_Y33_N20
\RegX|ff8|dffs[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegX|ff8|dffs[3]~4_combout\ = (\SelA~combout\ & ((\XYSum|inst4|inst1~0_combout\))) # (!\SelA~combout\ & (\X~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelA~combout\,
	datac => \X~combout\(3),
	datad => \XYSum|inst4|inst1~0_combout\,
	combout => \RegX|ff8|dffs[3]~4_combout\);

-- Location: LCFF_X61_Y33_N1
\RegX|ff8|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \RegX|ff8|dffs[4]~feeder_combout\,
	sdata => \RegX|ff8|dffs[3]~4_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \LSA~combout\,
	ena => \ENA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegX|ff8|dffs\(4));

-- Location: LCCOMB_X62_Y33_N28
\XYSum|inst4|inst6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \XYSum|inst4|inst6~0_combout\ = (\RegY|ff8|dffs\(3) & ((\XYSum|inst3|inst6~0_combout\) # (\RegX|ff8|dffs\(3) $ (\Sub~combout\)))) # (!\RegY|ff8|dffs\(3) & (\XYSum|inst3|inst6~0_combout\ & (\RegX|ff8|dffs\(3) $ (\Sub~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegY|ff8|dffs\(3),
	datab => \RegX|ff8|dffs\(3),
	datac => \Sub~combout\,
	datad => \XYSum|inst3|inst6~0_combout\,
	combout => \XYSum|inst4|inst6~0_combout\);

-- Location: LCCOMB_X62_Y33_N4
\XYSum|inst5|inst1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \XYSum|inst5|inst1~0_combout\ = \RegY|ff8|dffs\(4) $ (\Sub~combout\ $ (\RegX|ff8|dffs\(4) $ (\XYSum|inst4|inst6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegY|ff8|dffs\(4),
	datab => \Sub~combout\,
	datac => \RegX|ff8|dffs\(4),
	datad => \XYSum|inst4|inst6~0_combout\,
	combout => \XYSum|inst5|inst1~0_combout\);

-- Location: LCCOMB_X61_Y33_N30
\RegX|ff8|dffs[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegX|ff8|dffs[4]~3_combout\ = (\SelA~combout\ & ((\XYSum|inst5|inst1~0_combout\))) # (!\SelA~combout\ & (\X~combout\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelA~combout\,
	datac => \X~combout\(4),
	datad => \XYSum|inst5|inst1~0_combout\,
	combout => \RegX|ff8|dffs[4]~3_combout\);

-- Location: LCFF_X61_Y33_N15
\RegX|ff8|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \RegX|ff8|dffs[5]~2_combout\,
	sdata => \RegX|ff8|dffs[4]~3_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \LSA~combout\,
	ena => \ENA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegX|ff8|dffs\(5));

-- Location: LCCOMB_X62_Y33_N0
\XYSum|inst5|inst6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \XYSum|inst5|inst6~0_combout\ = (\RegY|ff8|dffs\(4) & ((\XYSum|inst4|inst6~0_combout\) # (\Sub~combout\ $ (\RegX|ff8|dffs\(4))))) # (!\RegY|ff8|dffs\(4) & (\XYSum|inst4|inst6~0_combout\ & (\Sub~combout\ $ (\RegX|ff8|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegY|ff8|dffs\(4),
	datab => \Sub~combout\,
	datac => \RegX|ff8|dffs\(4),
	datad => \XYSum|inst4|inst6~0_combout\,
	combout => \XYSum|inst5|inst6~0_combout\);

-- Location: LCCOMB_X62_Y33_N6
\XYSum|inst6|inst1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \XYSum|inst6|inst1~0_combout\ = \RegY|ff8|dffs\(5) $ (\RegX|ff8|dffs\(5) $ (\Sub~combout\ $ (\XYSum|inst5|inst6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegY|ff8|dffs\(5),
	datab => \RegX|ff8|dffs\(5),
	datac => \Sub~combout\,
	datad => \XYSum|inst5|inst6~0_combout\,
	combout => \XYSum|inst6|inst1~0_combout\);

-- Location: LCCOMB_X61_Y33_N14
\RegX|ff8|dffs[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegX|ff8|dffs[5]~2_combout\ = (\SelA~combout\ & ((\XYSum|inst6|inst1~0_combout\))) # (!\SelA~combout\ & (\X~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SelA~combout\,
	datab => \X~combout\(5),
	datad => \XYSum|inst6|inst1~0_combout\,
	combout => \RegX|ff8|dffs[5]~2_combout\);

-- Location: LCFF_X61_Y33_N5
\RegX|ff8|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \RegX|ff8|dffs[6]~1_combout\,
	sdata => \RegX|ff8|dffs[5]~2_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \LSA~combout\,
	ena => \ENA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegX|ff8|dffs\(6));

-- Location: LCCOMB_X62_Y33_N22
\XYSum|inst6|inst6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \XYSum|inst6|inst6~0_combout\ = (\RegY|ff8|dffs\(5) & ((\XYSum|inst5|inst6~0_combout\) # (\RegX|ff8|dffs\(5) $ (\Sub~combout\)))) # (!\RegY|ff8|dffs\(5) & (\XYSum|inst5|inst6~0_combout\ & (\RegX|ff8|dffs\(5) $ (\Sub~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegY|ff8|dffs\(5),
	datab => \RegX|ff8|dffs\(5),
	datac => \Sub~combout\,
	datad => \XYSum|inst5|inst6~0_combout\,
	combout => \XYSum|inst6|inst6~0_combout\);

-- Location: LCCOMB_X62_Y33_N30
\XYSum|inst7|inst1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \XYSum|inst7|inst1~0_combout\ = \RegY|ff8|dffs\(6) $ (\RegX|ff8|dffs\(6) $ (\Sub~combout\ $ (\XYSum|inst6|inst6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegY|ff8|dffs\(6),
	datab => \RegX|ff8|dffs\(6),
	datac => \Sub~combout\,
	datad => \XYSum|inst6|inst6~0_combout\,
	combout => \XYSum|inst7|inst1~0_combout\);

-- Location: LCCOMB_X63_Y33_N10
\zflag|inst3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \zflag|inst3~0_combout\ = (\XYSum|inst3|inst1~0_combout\) # (\XYSum|inst4|inst1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \XYSum|inst3|inst1~0_combout\,
	datad => \XYSum|inst4|inst1~0_combout\,
	combout => \zflag|inst3~0_combout\);

-- Location: LCCOMB_X62_Y33_N14
\zflag|inst3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \zflag|inst3~1_combout\ = (\XYSum|inst|inst1~0_combout\) # ((\XYSum|inst5|inst1~0_combout\) # ((\zflag|inst3~0_combout\) # (\XYSum|inst6|inst1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XYSum|inst|inst1~0_combout\,
	datab => \XYSum|inst5|inst1~0_combout\,
	datac => \zflag|inst3~0_combout\,
	datad => \XYSum|inst6|inst1~0_combout\,
	combout => \zflag|inst3~1_combout\);

-- Location: PIN_J18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\X[7]~I\ : cycloneii_io
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
	padio => ww_X(7),
	combout => \X~combout\(7));

-- Location: LCCOMB_X62_Y33_N18
\XYSum|inst7|inst6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \XYSum|inst7|inst6~0_combout\ = (\RegY|ff8|dffs\(6) & ((\XYSum|inst6|inst6~0_combout\) # (\RegX|ff8|dffs\(6) $ (\Sub~combout\)))) # (!\RegY|ff8|dffs\(6) & (\XYSum|inst6|inst6~0_combout\ & (\RegX|ff8|dffs\(6) $ (\Sub~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegY|ff8|dffs\(6),
	datab => \RegX|ff8|dffs\(6),
	datac => \Sub~combout\,
	datad => \XYSum|inst6|inst6~0_combout\,
	combout => \XYSum|inst7|inst6~0_combout\);

-- Location: LCCOMB_X61_Y33_N6
\RegX|ff8|dffs[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegX|ff8|dffs[7]~0_combout\ = (\SelA~combout\ & (\RegY|ff8|dffs[7]~7_combout\ $ (((!\XYSum|inst7|inst6~0_combout\))))) # (!\SelA~combout\ & (((\X~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegY|ff8|dffs[7]~7_combout\,
	datab => \X~combout\(7),
	datac => \SelA~combout\,
	datad => \XYSum|inst7|inst6~0_combout\,
	combout => \RegX|ff8|dffs[7]~0_combout\);

-- Location: LCCOMB_X61_Y33_N24
\RegX|ff8|dffs[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \RegX|ff8|dffs[7]~feeder_combout\ = \RegX|ff8|dffs[7]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RegX|ff8|dffs[7]~0_combout\,
	combout => \RegX|ff8|dffs[7]~feeder_combout\);

-- Location: LCFF_X61_Y33_N25
\RegX|ff8|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \RegX|ff8|dffs[7]~feeder_combout\,
	sdata => \RegX|ff8|dffs[6]~1_combout\,
	aclr => \reset~clkctrl_outclk\,
	sload => \LSA~combout\,
	ena => \ENA~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \RegX|ff8|dffs\(7));

-- Location: LCCOMB_X62_Y33_N26
\XYSum|inst8|inst1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \XYSum|inst8|inst1~0_combout\ = \RegY|ff8|dffs\(7) $ (\RegX|ff8|dffs\(7) $ (\Sub~combout\ $ (\XYSum|inst7|inst6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \RegY|ff8|dffs\(7),
	datab => \RegX|ff8|dffs\(7),
	datac => \Sub~combout\,
	datad => \XYSum|inst7|inst6~0_combout\,
	combout => \XYSum|inst8|inst1~0_combout\);

-- Location: LCCOMB_X62_Y33_N24
\zflag|inst3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \zflag|inst3~2_combout\ = (!\XYSum|inst2|inst1~combout\ & (!\XYSum|inst7|inst1~0_combout\ & (!\zflag|inst3~1_combout\ & !\XYSum|inst8|inst1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \XYSum|inst2|inst1~combout\,
	datab => \XYSum|inst7|inst1~0_combout\,
	datac => \zflag|inst3~1_combout\,
	datad => \XYSum|inst8|inst1~0_combout\,
	combout => \zflag|inst3~2_combout\);

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

-- Location: LCFF_X62_Y33_N25
\zflag|inst\ : cycloneii_lcell_ff
PORT MAP (
	clk => \zflag|inst4~combout\,
	datain => \zflag|inst3~2_combout\,
	aclr => \CLK~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \zflag|inst~regout\);

-- Location: PIN_B23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Z~I\ : cycloneii_io
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
	datain => \zflag|inst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Z);

-- Location: PIN_F24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sum[7]~I\ : cycloneii_io
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
	datain => \XYSum|inst8|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sum(7));

-- Location: PIN_B25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sum[6]~I\ : cycloneii_io
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
	datain => \XYSum|inst7|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sum(6));

-- Location: PIN_A21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sum[5]~I\ : cycloneii_io
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
	datain => \XYSum|inst6|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sum(5));

-- Location: PIN_B21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sum[4]~I\ : cycloneii_io
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
	datain => \XYSum|inst5|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sum(4));

-- Location: PIN_C25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sum[3]~I\ : cycloneii_io
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
	datain => \XYSum|inst4|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sum(3));

-- Location: PIN_C24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sum[2]~I\ : cycloneii_io
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
	datain => \XYSum|inst3|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sum(2));

-- Location: PIN_G22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sum[1]~I\ : cycloneii_io
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
	datain => \XYSum|inst2|inst1~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sum(1));

-- Location: PIN_F21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Sum[0]~I\ : cycloneii_io
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
	datain => \XYSum|inst|inst1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Sum(0));
END structure;


