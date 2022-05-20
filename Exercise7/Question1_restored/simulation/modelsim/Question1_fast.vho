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

-- DATE "05/20/2022 12:51:46"

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

ENTITY 	Sorter IS
    PORT (
	CLK : IN std_logic;
	Reset : IN std_logic;
	Launch : IN std_logic;
	Data : OUT std_logic_vector(7 DOWNTO 0);
	Complete : OUT std_logic
	);
END Sorter;

-- Design Ports Information
-- Data[0]	=>  Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[1]	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[2]	=>  Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[3]	=>  Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[4]	=>  Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[5]	=>  Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[6]	=>  Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[7]	=>  Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Complete	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- CLK	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Launch	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Reset	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Sorter IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_Launch : std_logic;
SIGNAL ww_Data : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Complete : std_logic;
SIGNAL \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \CLK~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Reset~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \BS|Selector5~3_combout\ : std_logic;
SIGNAL \BS|Selector5~4_combout\ : std_logic;
SIGNAL \BS|Selector5~5_combout\ : std_logic;
SIGNAL \BS|state.SendAddrB_r~regout\ : std_logic;
SIGNAL \BS|state~21_combout\ : std_logic;
SIGNAL \Launch~combout\ : std_logic;
SIGNAL \CLK~combout\ : std_logic;
SIGNAL \CLK~clkctrl_outclk\ : std_logic;
SIGNAL \BS|state.SendAddrA_w~feeder_combout\ : std_logic;
SIGNAL \Reset~combout\ : std_logic;
SIGNAL \Reset~clkctrl_outclk\ : std_logic;
SIGNAL \BS|state.SendAddrA_w~regout\ : std_logic;
SIGNAL \BS|dataB[7]~0_combout\ : std_logic;
SIGNAL \BS|state.WriteA~regout\ : std_logic;
SIGNAL \BS|DataOut[0]~0_combout\ : std_logic;
SIGNAL \BS|count[0]~5_combout\ : std_logic;
SIGNAL \BS|Selector6~0_combout\ : std_logic;
SIGNAL \BS|Selector6~1_combout\ : std_logic;
SIGNAL \BS|Flag~regout\ : std_logic;
SIGNAL \BS|Cnt~0_combout\ : std_logic;
SIGNAL \BS|count[0]~7_combout\ : std_logic;
SIGNAL \BS|count[0]~6\ : std_logic;
SIGNAL \BS|count[1]~8_combout\ : std_logic;
SIGNAL \BS|Cnt~1_combout\ : std_logic;
SIGNAL \BS|count[1]~9\ : std_logic;
SIGNAL \BS|count[2]~10_combout\ : std_logic;
SIGNAL \BS|count[2]~11\ : std_logic;
SIGNAL \BS|count[3]~12_combout\ : std_logic;
SIGNAL \BS|count[3]~13\ : std_logic;
SIGNAL \BS|count[4]~14_combout\ : std_logic;
SIGNAL \BS|dataA[7]~feeder_combout\ : std_logic;
SIGNAL \BS|dataA[7]~0_combout\ : std_logic;
SIGNAL \BS|DataOut[7]~7_combout\ : std_logic;
SIGNAL \BS|DataOut[6]~6_combout\ : std_logic;
SIGNAL \BS|DataOut[5]~5_combout\ : std_logic;
SIGNAL \BS|DataOut[4]~4_combout\ : std_logic;
SIGNAL \BS|DataOut[3]~3_combout\ : std_logic;
SIGNAL \BS|DataOut[2]~2_combout\ : std_logic;
SIGNAL \BS|DataOut[1]~1_combout\ : std_logic;
SIGNAL \BS|LessThan0~1_cout\ : std_logic;
SIGNAL \BS|LessThan0~3_cout\ : std_logic;
SIGNAL \BS|LessThan0~5_cout\ : std_logic;
SIGNAL \BS|LessThan0~7_cout\ : std_logic;
SIGNAL \BS|LessThan0~9_cout\ : std_logic;
SIGNAL \BS|LessThan0~11_cout\ : std_logic;
SIGNAL \BS|LessThan0~13_cout\ : std_logic;
SIGNAL \BS|LessThan0~14_combout\ : std_logic;
SIGNAL \BS|Selector4~0_combout\ : std_logic;
SIGNAL \BS|state.CheckLoop~regout\ : std_logic;
SIGNAL \BS|state~18_combout\ : std_logic;
SIGNAL \BS|state.CheckFlag~regout\ : std_logic;
SIGNAL \BS|Selector0~0_combout\ : std_logic;
SIGNAL \BS|Selector5~6_combout\ : std_logic;
SIGNAL \BS|Selector5~7_combout\ : std_logic;
SIGNAL \BS|Selector1~0_combout\ : std_logic;
SIGNAL \BS|state.SendAddrA_r~regout\ : std_logic;
SIGNAL \BS|Selector2~0_combout\ : std_logic;
SIGNAL \BS|state.GetA~regout\ : std_logic;
SIGNAL \BS|delay~0_combout\ : std_logic;
SIGNAL \BS|delay~regout\ : std_logic;
SIGNAL \BS|Selector3~0_combout\ : std_logic;
SIGNAL \BS|state.GetB~regout\ : std_logic;
SIGNAL \BS|state~19_combout\ : std_logic;
SIGNAL \BS|state.Compare~regout\ : std_logic;
SIGNAL \BS|state~20_combout\ : std_logic;
SIGNAL \BS|state.SendAddrB_w~regout\ : std_logic;
SIGNAL \BS|state.WriteB~feeder_combout\ : std_logic;
SIGNAL \BS|state.WriteB~regout\ : std_logic;
SIGNAL \BS|WR~combout\ : std_logic;
SIGNAL \BS|Selector0~1_combout\ : std_logic;
SIGNAL \BS|state.Waiting~regout\ : std_logic;
SIGNAL \BS|dataB\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \BS|dataA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \BS|count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \RAM|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \BS|ALT_INV_state.Waiting~regout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_Reset <= Reset;
ww_Launch <= Launch;
Data <= ww_Data;
Complete <= ww_Complete;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\BS|DataOut[7]~7_combout\ & \BS|DataOut[6]~6_combout\ & \BS|DataOut[5]~5_combout\ & \BS|DataOut[4]~4_combout\ & \BS|DataOut[3]~3_combout\ & \BS|DataOut[2]~2_combout\ & 
\BS|DataOut[1]~1_combout\ & \BS|DataOut[0]~0_combout\);

\RAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\BS|count\(4) & \BS|count\(3) & \BS|count\(2) & \BS|count\(1) & \BS|count\(0));

\RAM|altsyncram_component|auto_generated|q_a\(0) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\RAM|altsyncram_component|auto_generated|q_a\(1) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\RAM|altsyncram_component|auto_generated|q_a\(2) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\RAM|altsyncram_component|auto_generated|q_a\(3) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\RAM|altsyncram_component|auto_generated|q_a\(4) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\RAM|altsyncram_component|auto_generated|q_a\(5) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\RAM|altsyncram_component|auto_generated|q_a\(6) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\RAM|altsyncram_component|auto_generated|q_a\(7) <= \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\CLK~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK~combout\);

\Reset~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \Reset~combout\);
\BS|ALT_INV_state.Waiting~regout\ <= NOT \BS|state.Waiting~regout\;

-- Location: LCFF_X51_Y20_N29
\BS|dataA[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \RAM|altsyncram_component|auto_generated|q_a\(0),
	sload => VCC,
	ena => \BS|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BS|dataA\(0));

-- Location: LCFF_X51_Y20_N21
\BS|dataA[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \RAM|altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	ena => \BS|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BS|dataA\(4));

-- Location: LCFF_X51_Y20_N25
\BS|dataA[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \RAM|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	ena => \BS|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BS|dataA\(6));

-- Location: LCCOMB_X49_Y20_N10
\BS|Selector5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|Selector5~3_combout\ = (\BS|state.Waiting~regout\ & (((\BS|Flag~regout\ & \BS|state.CheckFlag~regout\)))) # (!\BS|state.Waiting~regout\ & ((\Launch~combout\) # ((\BS|Flag~regout\ & \BS|state.CheckFlag~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BS|state.Waiting~regout\,
	datab => \Launch~combout\,
	datac => \BS|Flag~regout\,
	datad => \BS|state.CheckFlag~regout\,
	combout => \BS|Selector5~3_combout\);

-- Location: LCCOMB_X50_Y20_N2
\BS|Selector5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|Selector5~4_combout\ = (\BS|count\(2) & (\BS|count\(1) & (\BS|count\(0) & \BS|state.CheckLoop~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BS|count\(2),
	datab => \BS|count\(1),
	datac => \BS|count\(0),
	datad => \BS|state.CheckLoop~regout\,
	combout => \BS|Selector5~4_combout\);

-- Location: LCCOMB_X50_Y20_N12
\BS|Selector5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|Selector5~5_combout\ = (\BS|Selector5~3_combout\) # ((\BS|count\(3) & (\BS|count\(4) & \BS|Selector5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BS|Selector5~3_combout\,
	datab => \BS|count\(3),
	datac => \BS|count\(4),
	datad => \BS|Selector5~4_combout\,
	combout => \BS|Selector5~5_combout\);

-- Location: LCFF_X50_Y20_N11
\BS|state.SendAddrB_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \BS|state~21_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BS|state.SendAddrB_r~regout\);

-- Location: LCCOMB_X50_Y20_N10
\BS|state~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|state~21_combout\ = (\BS|state.GetA~regout\ & ((\BS|Selector5~6_combout\) # ((\BS|LessThan0~14_combout\ & \BS|state.Compare~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BS|LessThan0~14_combout\,
	datab => \BS|state.Compare~regout\,
	datac => \BS|state.GetA~regout\,
	datad => \BS|Selector5~6_combout\,
	combout => \BS|state~21_combout\);

-- Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Launch~I\ : cycloneii_io
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
	padio => ww_Launch,
	combout => \Launch~combout\);

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

-- Location: LCCOMB_X53_Y20_N10
\BS|state.SendAddrA_w~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|state.SendAddrA_w~feeder_combout\ = \BS|state.WriteB~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BS|state.WriteB~regout\,
	combout => \BS|state.SendAddrA_w~feeder_combout\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset~I\ : cycloneii_io
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
	padio => ww_Reset,
	combout => \Reset~combout\);

-- Location: CLKCTRL_G1
\Reset~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset~clkctrl_outclk\);

-- Location: LCFF_X53_Y20_N11
\BS|state.SendAddrA_w\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \BS|state.SendAddrA_w~feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BS|state.SendAddrA_w~regout\);

-- Location: LCCOMB_X51_Y20_N28
\BS|dataB[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|dataB[7]~0_combout\ = (\BS|state.GetB~regout\ & \BS|delay~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BS|state.GetB~regout\,
	datad => \BS|delay~regout\,
	combout => \BS|dataB[7]~0_combout\);

-- Location: LCFF_X51_Y20_N31
\BS|dataB[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \RAM|altsyncram_component|auto_generated|q_a\(0),
	sload => VCC,
	ena => \BS|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BS|dataB\(0));

-- Location: LCFF_X53_Y20_N13
\BS|state.WriteA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \BS|state.SendAddrA_w~regout\,
	aclr => \Reset~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BS|state.WriteA~regout\);

-- Location: LCCOMB_X51_Y20_N30
\BS|DataOut[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|DataOut[0]~0_combout\ = (\BS|state.SendAddrA_w~regout\ & (\BS|dataA\(0))) # (!\BS|state.SendAddrA_w~regout\ & ((\BS|state.WriteA~regout\ & (\BS|dataA\(0))) # (!\BS|state.WriteA~regout\ & ((\BS|dataB\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BS|dataA\(0),
	datab => \BS|state.SendAddrA_w~regout\,
	datac => \BS|dataB\(0),
	datad => \BS|state.WriteA~regout\,
	combout => \BS|DataOut[0]~0_combout\);

-- Location: LCCOMB_X50_Y20_N16
\BS|count[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|count[0]~5_combout\ = \BS|count\(0) $ (VCC)
-- \BS|count[0]~6\ = CARRY(\BS|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BS|count\(0),
	datad => VCC,
	combout => \BS|count[0]~5_combout\,
	cout => \BS|count[0]~6\);

-- Location: LCCOMB_X49_Y20_N14
\BS|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|Selector6~0_combout\ = (\BS|state.GetB~regout\) # ((\BS|state.GetA~regout\) # ((\BS|state.Waiting~regout\ & !\BS|state.CheckFlag~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BS|state.Waiting~regout\,
	datab => \BS|state.CheckFlag~regout\,
	datac => \BS|state.GetB~regout\,
	datad => \BS|state.GetA~regout\,
	combout => \BS|Selector6~0_combout\);

-- Location: LCCOMB_X50_Y20_N14
\BS|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|Selector6~1_combout\ = (\BS|state.Compare~regout\ & ((\BS|LessThan0~14_combout\) # ((\BS|Flag~regout\)))) # (!\BS|state.Compare~regout\ & (((\BS|Flag~regout\ & \BS|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BS|LessThan0~14_combout\,
	datab => \BS|state.Compare~regout\,
	datac => \BS|Flag~regout\,
	datad => \BS|Selector6~0_combout\,
	combout => \BS|Selector6~1_combout\);

-- Location: LCFF_X50_Y20_N15
\BS|Flag\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \BS|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BS|Flag~regout\);

-- Location: LCCOMB_X49_Y20_N16
\BS|Cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|Cnt~0_combout\ = ((\BS|Flag~regout\ & \BS|state.CheckFlag~regout\)) # (!\BS|state.Waiting~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BS|state.Waiting~regout\,
	datac => \BS|Flag~regout\,
	datad => \BS|state.CheckFlag~regout\,
	combout => \BS|Cnt~0_combout\);

-- Location: LCCOMB_X50_Y20_N8
\BS|count[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|count[0]~7_combout\ = (\BS|Cnt~1_combout\) # ((\BS|Cnt~0_combout\) # ((\BS|state.Compare~regout\ & \BS|LessThan0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BS|Cnt~1_combout\,
	datab => \BS|state.Compare~regout\,
	datac => \BS|LessThan0~14_combout\,
	datad => \BS|Cnt~0_combout\,
	combout => \BS|count[0]~7_combout\);

-- Location: LCFF_X50_Y20_N17
\BS|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \BS|count[0]~5_combout\,
	sclr => \BS|Cnt~0_combout\,
	ena => \BS|count[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BS|count\(0));

-- Location: LCCOMB_X50_Y20_N18
\BS|count[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|count[1]~8_combout\ = (\BS|Cnt~1_combout\ & ((\BS|count\(1) & (!\BS|count[0]~6\)) # (!\BS|count\(1) & ((\BS|count[0]~6\) # (GND))))) # (!\BS|Cnt~1_combout\ & ((\BS|count\(1) & (\BS|count[0]~6\ & VCC)) # (!\BS|count\(1) & (!\BS|count[0]~6\))))
-- \BS|count[1]~9\ = CARRY((\BS|Cnt~1_combout\ & ((!\BS|count[0]~6\) # (!\BS|count\(1)))) # (!\BS|Cnt~1_combout\ & (!\BS|count\(1) & !\BS|count[0]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BS|Cnt~1_combout\,
	datab => \BS|count\(1),
	datad => VCC,
	cin => \BS|count[0]~6\,
	combout => \BS|count[1]~8_combout\,
	cout => \BS|count[1]~9\);

-- Location: LCFF_X50_Y20_N19
\BS|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \BS|count[1]~8_combout\,
	sclr => \BS|Cnt~0_combout\,
	ena => \BS|count[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BS|count\(1));

-- Location: LCCOMB_X53_Y20_N12
\BS|Cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|Cnt~1_combout\ = (\BS|state.WriteB~regout\) # ((\BS|delay~regout\ & \BS|state.GetA~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BS|delay~regout\,
	datab => \BS|state.GetA~regout\,
	datad => \BS|state.WriteB~regout\,
	combout => \BS|Cnt~1_combout\);

-- Location: LCCOMB_X50_Y20_N20
\BS|count[2]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|count[2]~10_combout\ = ((\BS|count\(2) $ (\BS|Cnt~1_combout\ $ (\BS|count[1]~9\)))) # (GND)
-- \BS|count[2]~11\ = CARRY((\BS|count\(2) & ((!\BS|count[1]~9\) # (!\BS|Cnt~1_combout\))) # (!\BS|count\(2) & (!\BS|Cnt~1_combout\ & !\BS|count[1]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BS|count\(2),
	datab => \BS|Cnt~1_combout\,
	datad => VCC,
	cin => \BS|count[1]~9\,
	combout => \BS|count[2]~10_combout\,
	cout => \BS|count[2]~11\);

-- Location: LCFF_X50_Y20_N21
\BS|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \BS|count[2]~10_combout\,
	sclr => \BS|Cnt~0_combout\,
	ena => \BS|count[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BS|count\(2));

-- Location: LCCOMB_X50_Y20_N22
\BS|count[3]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|count[3]~12_combout\ = (\BS|Cnt~1_combout\ & ((\BS|count\(3) & (!\BS|count[2]~11\)) # (!\BS|count\(3) & ((\BS|count[2]~11\) # (GND))))) # (!\BS|Cnt~1_combout\ & ((\BS|count\(3) & (\BS|count[2]~11\ & VCC)) # (!\BS|count\(3) & (!\BS|count[2]~11\))))
-- \BS|count[3]~13\ = CARRY((\BS|Cnt~1_combout\ & ((!\BS|count[2]~11\) # (!\BS|count\(3)))) # (!\BS|Cnt~1_combout\ & (!\BS|count\(3) & !\BS|count[2]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BS|Cnt~1_combout\,
	datab => \BS|count\(3),
	datad => VCC,
	cin => \BS|count[2]~11\,
	combout => \BS|count[3]~12_combout\,
	cout => \BS|count[3]~13\);

-- Location: LCFF_X50_Y20_N23
\BS|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \BS|count[3]~12_combout\,
	sclr => \BS|Cnt~0_combout\,
	ena => \BS|count[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BS|count\(3));

-- Location: LCCOMB_X50_Y20_N24
\BS|count[4]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|count[4]~14_combout\ = \BS|count\(4) $ (\BS|count[3]~13\ $ (\BS|Cnt~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BS|count\(4),
	datad => \BS|Cnt~1_combout\,
	cin => \BS|count[3]~13\,
	combout => \BS|count[4]~14_combout\);

-- Location: LCFF_X50_Y20_N25
\BS|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \BS|count[4]~14_combout\,
	sclr => \BS|Cnt~0_combout\,
	ena => \BS|count[0]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BS|count\(4));

-- Location: LCCOMB_X53_Y20_N16
\BS|dataA[7]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|dataA[7]~feeder_combout\ = \RAM|altsyncram_component|auto_generated|q_a\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \RAM|altsyncram_component|auto_generated|q_a\(7),
	combout => \BS|dataA[7]~feeder_combout\);

-- Location: LCCOMB_X53_Y20_N18
\BS|dataA[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|dataA[7]~0_combout\ = (\BS|state.GetA~regout\ & \BS|delay~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BS|state.GetA~regout\,
	datad => \BS|delay~regout\,
	combout => \BS|dataA[7]~0_combout\);

-- Location: LCFF_X53_Y20_N17
\BS|dataA[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \BS|dataA[7]~feeder_combout\,
	ena => \BS|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BS|dataA\(7));

-- Location: LCCOMB_X53_Y20_N6
\BS|DataOut[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|DataOut[7]~7_combout\ = (\BS|state.SendAddrA_w~regout\ & (((\BS|dataA\(7))))) # (!\BS|state.SendAddrA_w~regout\ & ((\BS|state.WriteA~regout\ & ((\BS|dataA\(7)))) # (!\BS|state.WriteA~regout\ & (\BS|dataB\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BS|state.SendAddrA_w~regout\,
	datab => \BS|dataB\(7),
	datac => \BS|dataA\(7),
	datad => \BS|state.WriteA~regout\,
	combout => \BS|DataOut[7]~7_combout\);

-- Location: M4K_X52_Y20
\RAM|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"E0E1E2E3E4E5E6E7E8E9EAEBECEDEEEFF0F1F2F3F4F5F6F7F8F9FAFBFCFDFEFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "RAM32x8.mif",
	init_file_layout => "port_a",
	logical_ram_name => "RAM32x8:RAM|altsyncram:altsyncram_component|altsyncram_8qc1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 5,
	port_b_data_width => 8,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \BS|WR~combout\,
	clk0 => \CLK~clkctrl_outclk\,
	portadatain => \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCFF_X51_Y20_N3
\BS|dataB[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \RAM|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	ena => \BS|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BS|dataB\(6));

-- Location: LCCOMB_X51_Y20_N2
\BS|DataOut[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|DataOut[6]~6_combout\ = (\BS|state.SendAddrA_w~regout\ & (\BS|dataA\(6))) # (!\BS|state.SendAddrA_w~regout\ & ((\BS|state.WriteA~regout\ & (\BS|dataA\(6))) # (!\BS|state.WriteA~regout\ & ((\BS|dataB\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BS|dataA\(6),
	datab => \BS|state.SendAddrA_w~regout\,
	datac => \BS|dataB\(6),
	datad => \BS|state.WriteA~regout\,
	combout => \BS|DataOut[6]~6_combout\);

-- Location: LCFF_X51_Y20_N9
\BS|dataB[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \RAM|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	ena => \BS|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BS|dataB\(5));

-- Location: LCFF_X51_Y20_N23
\BS|dataA[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \RAM|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	ena => \BS|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BS|dataA\(5));

-- Location: LCCOMB_X51_Y20_N8
\BS|DataOut[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|DataOut[5]~5_combout\ = (\BS|state.WriteA~regout\ & (((\BS|dataA\(5))))) # (!\BS|state.WriteA~regout\ & ((\BS|state.SendAddrA_w~regout\ & ((\BS|dataA\(5)))) # (!\BS|state.SendAddrA_w~regout\ & (\BS|dataB\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BS|state.WriteA~regout\,
	datab => \BS|state.SendAddrA_w~regout\,
	datac => \BS|dataB\(5),
	datad => \BS|dataA\(5),
	combout => \BS|DataOut[5]~5_combout\);

-- Location: LCFF_X51_Y20_N7
\BS|dataB[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \RAM|altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	ena => \BS|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BS|dataB\(4));

-- Location: LCCOMB_X51_Y20_N6
\BS|DataOut[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|DataOut[4]~4_combout\ = (\BS|state.SendAddrA_w~regout\ & (\BS|dataA\(4))) # (!\BS|state.SendAddrA_w~regout\ & ((\BS|state.WriteA~regout\ & (\BS|dataA\(4))) # (!\BS|state.WriteA~regout\ & ((\BS|dataB\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BS|dataA\(4),
	datab => \BS|state.SendAddrA_w~regout\,
	datac => \BS|dataB\(4),
	datad => \BS|state.WriteA~regout\,
	combout => \BS|DataOut[4]~4_combout\);

-- Location: LCFF_X51_Y20_N1
\BS|dataB[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \RAM|altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	ena => \BS|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BS|dataB\(3));

-- Location: LCFF_X51_Y20_N19
\BS|dataA[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \RAM|altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	ena => \BS|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BS|dataA\(3));

-- Location: LCCOMB_X51_Y20_N0
\BS|DataOut[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|DataOut[3]~3_combout\ = (\BS|state.WriteA~regout\ & (((\BS|dataA\(3))))) # (!\BS|state.WriteA~regout\ & ((\BS|state.SendAddrA_w~regout\ & ((\BS|dataA\(3)))) # (!\BS|state.SendAddrA_w~regout\ & (\BS|dataB\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BS|state.WriteA~regout\,
	datab => \BS|state.SendAddrA_w~regout\,
	datac => \BS|dataB\(3),
	datad => \BS|dataA\(3),
	combout => \BS|DataOut[3]~3_combout\);

-- Location: LCFF_X51_Y20_N11
\BS|dataB[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \RAM|altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	ena => \BS|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BS|dataB\(2));

-- Location: LCCOMB_X51_Y20_N10
\BS|DataOut[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|DataOut[2]~2_combout\ = (\BS|state.SendAddrA_w~regout\ & (\BS|dataA\(2))) # (!\BS|state.SendAddrA_w~regout\ & ((\BS|state.WriteA~regout\ & (\BS|dataA\(2))) # (!\BS|state.WriteA~regout\ & ((\BS|dataB\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BS|dataA\(2),
	datab => \BS|state.SendAddrA_w~regout\,
	datac => \BS|dataB\(2),
	datad => \BS|state.WriteA~regout\,
	combout => \BS|DataOut[2]~2_combout\);

-- Location: LCFF_X51_Y20_N15
\BS|dataA[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \RAM|altsyncram_component|auto_generated|q_a\(1),
	sload => VCC,
	ena => \BS|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BS|dataA\(1));

-- Location: LCFF_X51_Y20_N5
\BS|dataB[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \RAM|altsyncram_component|auto_generated|q_a\(1),
	sload => VCC,
	ena => \BS|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BS|dataB\(1));

-- Location: LCCOMB_X51_Y20_N4
\BS|DataOut[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|DataOut[1]~1_combout\ = (\BS|state.SendAddrA_w~regout\ & (\BS|dataA\(1))) # (!\BS|state.SendAddrA_w~regout\ & ((\BS|state.WriteA~regout\ & (\BS|dataA\(1))) # (!\BS|state.WriteA~regout\ & ((\BS|dataB\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BS|state.SendAddrA_w~regout\,
	datab => \BS|dataA\(1),
	datac => \BS|dataB\(1),
	datad => \BS|state.WriteA~regout\,
	combout => \BS|DataOut[1]~1_combout\);

-- Location: LCFF_X51_Y20_N27
\BS|dataB[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \RAM|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	ena => \BS|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BS|dataB\(7));

-- Location: LCFF_X51_Y20_N17
\BS|dataA[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	sdata => \RAM|altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	ena => \BS|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BS|dataA\(2));

-- Location: LCCOMB_X51_Y20_N12
\BS|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|LessThan0~1_cout\ = CARRY((\BS|dataA\(0) & !\BS|dataB\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BS|dataA\(0),
	datab => \BS|dataB\(0),
	datad => VCC,
	cout => \BS|LessThan0~1_cout\);

-- Location: LCCOMB_X51_Y20_N14
\BS|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|LessThan0~3_cout\ = CARRY((\BS|dataA\(1) & (\BS|dataB\(1) & !\BS|LessThan0~1_cout\)) # (!\BS|dataA\(1) & ((\BS|dataB\(1)) # (!\BS|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BS|dataA\(1),
	datab => \BS|dataB\(1),
	datad => VCC,
	cin => \BS|LessThan0~1_cout\,
	cout => \BS|LessThan0~3_cout\);

-- Location: LCCOMB_X51_Y20_N16
\BS|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|LessThan0~5_cout\ = CARRY((\BS|dataB\(2) & (\BS|dataA\(2) & !\BS|LessThan0~3_cout\)) # (!\BS|dataB\(2) & ((\BS|dataA\(2)) # (!\BS|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BS|dataB\(2),
	datab => \BS|dataA\(2),
	datad => VCC,
	cin => \BS|LessThan0~3_cout\,
	cout => \BS|LessThan0~5_cout\);

-- Location: LCCOMB_X51_Y20_N18
\BS|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|LessThan0~7_cout\ = CARRY((\BS|dataB\(3) & ((!\BS|LessThan0~5_cout\) # (!\BS|dataA\(3)))) # (!\BS|dataB\(3) & (!\BS|dataA\(3) & !\BS|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BS|dataB\(3),
	datab => \BS|dataA\(3),
	datad => VCC,
	cin => \BS|LessThan0~5_cout\,
	cout => \BS|LessThan0~7_cout\);

-- Location: LCCOMB_X51_Y20_N20
\BS|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|LessThan0~9_cout\ = CARRY((\BS|dataA\(4) & ((!\BS|LessThan0~7_cout\) # (!\BS|dataB\(4)))) # (!\BS|dataA\(4) & (!\BS|dataB\(4) & !\BS|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BS|dataA\(4),
	datab => \BS|dataB\(4),
	datad => VCC,
	cin => \BS|LessThan0~7_cout\,
	cout => \BS|LessThan0~9_cout\);

-- Location: LCCOMB_X51_Y20_N22
\BS|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|LessThan0~11_cout\ = CARRY((\BS|dataB\(5) & ((!\BS|LessThan0~9_cout\) # (!\BS|dataA\(5)))) # (!\BS|dataB\(5) & (!\BS|dataA\(5) & !\BS|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BS|dataB\(5),
	datab => \BS|dataA\(5),
	datad => VCC,
	cin => \BS|LessThan0~9_cout\,
	cout => \BS|LessThan0~11_cout\);

-- Location: LCCOMB_X51_Y20_N24
\BS|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|LessThan0~13_cout\ = CARRY((\BS|dataA\(6) & ((!\BS|LessThan0~11_cout\) # (!\BS|dataB\(6)))) # (!\BS|dataA\(6) & (!\BS|dataB\(6) & !\BS|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \BS|dataA\(6),
	datab => \BS|dataB\(6),
	datad => VCC,
	cin => \BS|LessThan0~11_cout\,
	cout => \BS|LessThan0~13_cout\);

-- Location: LCCOMB_X51_Y20_N26
\BS|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|LessThan0~14_combout\ = (\BS|dataB\(7) & (\BS|LessThan0~13_cout\ & \BS|dataA\(7))) # (!\BS|dataB\(7) & ((\BS|LessThan0~13_cout\) # (\BS|dataA\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \BS|dataB\(7),
	datad => \BS|dataA\(7),
	cin => \BS|LessThan0~13_cout\,
	combout => \BS|LessThan0~14_combout\);

-- Location: LCCOMB_X50_Y20_N28
\BS|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|Selector4~0_combout\ = (\BS|state.WriteA~regout\) # ((\BS|state.Compare~regout\ & !\BS|LessThan0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BS|state.Compare~regout\,
	datac => \BS|LessThan0~14_combout\,
	datad => \BS|state.WriteA~regout\,
	combout => \BS|Selector4~0_combout\);

-- Location: LCFF_X50_Y20_N29
\BS|state.CheckLoop\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \BS|Selector4~0_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BS|state.CheckLoop~regout\);

-- Location: LCCOMB_X50_Y20_N30
\BS|state~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|state~18_combout\ = (\BS|state.CheckLoop~regout\ & ((\BS|Selector5~6_combout\) # ((\BS|state.Compare~regout\ & \BS|LessThan0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BS|Selector5~6_combout\,
	datab => \BS|state.Compare~regout\,
	datac => \BS|LessThan0~14_combout\,
	datad => \BS|state.CheckLoop~regout\,
	combout => \BS|state~18_combout\);

-- Location: LCFF_X50_Y20_N31
\BS|state.CheckFlag\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \BS|state~18_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BS|state.CheckFlag~regout\);

-- Location: LCCOMB_X49_Y20_N4
\BS|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|Selector0~0_combout\ = (\BS|state.CheckFlag~regout\) # (!\BS|state.Waiting~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BS|state.Waiting~regout\,
	datad => \BS|state.CheckFlag~regout\,
	combout => \BS|Selector0~0_combout\);

-- Location: LCCOMB_X50_Y20_N6
\BS|Selector5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|Selector5~6_combout\ = (\BS|Selector5~5_combout\) # ((\BS|delay~regout\ & ((\BS|state.GetA~regout\) # (\BS|state.GetB~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BS|Selector5~5_combout\,
	datab => \BS|state.GetA~regout\,
	datac => \BS|delay~regout\,
	datad => \BS|state.GetB~regout\,
	combout => \BS|Selector5~6_combout\);

-- Location: LCCOMB_X53_Y20_N22
\BS|Selector5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|Selector5~7_combout\ = (\BS|LessThan0~14_combout\ & \BS|state.Compare~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \BS|LessThan0~14_combout\,
	datad => \BS|state.Compare~regout\,
	combout => \BS|Selector5~7_combout\);

-- Location: LCCOMB_X53_Y20_N4
\BS|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|Selector1~0_combout\ = (\BS|Selector5~6_combout\ & (((\BS|Selector0~0_combout\)))) # (!\BS|Selector5~6_combout\ & ((\BS|Selector5~7_combout\ & ((\BS|Selector0~0_combout\))) # (!\BS|Selector5~7_combout\ & (\BS|state.CheckLoop~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BS|state.CheckLoop~regout\,
	datab => \BS|Selector0~0_combout\,
	datac => \BS|Selector5~6_combout\,
	datad => \BS|Selector5~7_combout\,
	combout => \BS|Selector1~0_combout\);

-- Location: LCFF_X53_Y20_N5
\BS|state.SendAddrA_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \BS|Selector1~0_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BS|state.SendAddrA_r~regout\);

-- Location: LCCOMB_X53_Y20_N2
\BS|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|Selector2~0_combout\ = (\BS|state.SendAddrA_r~regout\) # ((\BS|state.GetA~regout\ & !\BS|delay~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BS|state.SendAddrA_r~regout\,
	datac => \BS|state.GetA~regout\,
	datad => \BS|delay~regout\,
	combout => \BS|Selector2~0_combout\);

-- Location: LCFF_X53_Y20_N3
\BS|state.GetA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \BS|Selector2~0_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BS|state.GetA~regout\);

-- Location: LCCOMB_X53_Y20_N28
\BS|delay~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|delay~0_combout\ = \BS|delay~regout\ $ (((\BS|state.GetB~regout\) # (\BS|state.GetA~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111000011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BS|state.GetB~regout\,
	datab => \BS|state.GetA~regout\,
	datac => \BS|delay~regout\,
	combout => \BS|delay~0_combout\);

-- Location: LCFF_X53_Y20_N29
\BS|delay\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \BS|delay~0_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BS|delay~regout\);

-- Location: LCCOMB_X53_Y20_N24
\BS|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|Selector3~0_combout\ = (\BS|state.SendAddrB_r~regout\) # ((\BS|state.GetB~regout\ & !\BS|delay~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BS|state.SendAddrB_r~regout\,
	datac => \BS|state.GetB~regout\,
	datad => \BS|delay~regout\,
	combout => \BS|Selector3~0_combout\);

-- Location: LCFF_X53_Y20_N25
\BS|state.GetB\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \BS|Selector3~0_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BS|state.GetB~regout\);

-- Location: LCCOMB_X50_Y20_N0
\BS|state~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|state~19_combout\ = (\BS|state.GetB~regout\ & ((\BS|Selector5~6_combout\) # ((\BS|LessThan0~14_combout\ & \BS|state.Compare~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BS|LessThan0~14_combout\,
	datab => \BS|state.GetB~regout\,
	datac => \BS|state.Compare~regout\,
	datad => \BS|Selector5~6_combout\,
	combout => \BS|state~19_combout\);

-- Location: LCFF_X50_Y20_N1
\BS|state.Compare\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \BS|state~19_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BS|state.Compare~regout\);

-- Location: LCCOMB_X50_Y20_N26
\BS|state~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|state~20_combout\ = (\BS|state.Compare~regout\ & ((\BS|LessThan0~14_combout\) # (\BS|Selector5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BS|state.Compare~regout\,
	datac => \BS|LessThan0~14_combout\,
	datad => \BS|Selector5~6_combout\,
	combout => \BS|state~20_combout\);

-- Location: LCFF_X50_Y20_N27
\BS|state.SendAddrB_w\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \BS|state~20_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BS|state.SendAddrB_w~regout\);

-- Location: LCCOMB_X53_Y20_N26
\BS|state.WriteB~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|state.WriteB~feeder_combout\ = \BS|state.SendAddrB_w~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \BS|state.SendAddrB_w~regout\,
	combout => \BS|state.WriteB~feeder_combout\);

-- Location: LCFF_X53_Y20_N27
\BS|state.WriteB\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \BS|state.WriteB~feeder_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BS|state.WriteB~regout\);

-- Location: LCCOMB_X53_Y20_N20
\BS|WR\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|WR~combout\ = (\BS|state.WriteB~regout\) # (\BS|state.WriteA~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \BS|state.WriteB~regout\,
	datad => \BS|state.WriteA~regout\,
	combout => \BS|WR~combout\);

-- Location: LCCOMB_X50_Y20_N4
\BS|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \BS|Selector0~1_combout\ = (\BS|Selector5~6_combout\) # (((\BS|LessThan0~14_combout\ & \BS|state.Compare~regout\)) # (!\BS|Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BS|Selector5~6_combout\,
	datab => \BS|Selector0~0_combout\,
	datac => \BS|LessThan0~14_combout\,
	datad => \BS|state.Compare~regout\,
	combout => \BS|Selector0~1_combout\);

-- Location: LCFF_X50_Y20_N5
\BS|state.Waiting\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK~clkctrl_outclk\,
	datain => \BS|Selector0~1_combout\,
	aclr => \Reset~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \BS|state.Waiting~regout\);

-- Location: PIN_M19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Data[0]~I\ : cycloneii_io
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
	datain => \RAM|altsyncram_component|auto_generated|q_a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(0));

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Data[1]~I\ : cycloneii_io
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
	datain => \RAM|altsyncram_component|auto_generated|q_a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(1));

-- Location: PIN_N20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Data[2]~I\ : cycloneii_io
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
	datain => \RAM|altsyncram_component|auto_generated|q_a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(2));

-- Location: PIN_M24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Data[3]~I\ : cycloneii_io
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
	datain => \RAM|altsyncram_component|auto_generated|q_a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(3));

-- Location: PIN_M21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Data[4]~I\ : cycloneii_io
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
	datain => \RAM|altsyncram_component|auto_generated|q_a\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(4));

-- Location: PIN_M20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Data[5]~I\ : cycloneii_io
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
	datain => \RAM|altsyncram_component|auto_generated|q_a\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(5));

-- Location: PIN_M25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Data[6]~I\ : cycloneii_io
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
	datain => \RAM|altsyncram_component|auto_generated|q_a\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(6));

-- Location: PIN_N24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Data[7]~I\ : cycloneii_io
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
	datain => \RAM|altsyncram_component|auto_generated|q_a\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(7));

-- Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\Complete~I\ : cycloneii_io
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
	datain => \BS|ALT_INV_state.Waiting~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Complete);
END structure;


