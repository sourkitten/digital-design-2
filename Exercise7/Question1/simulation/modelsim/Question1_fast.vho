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

-- DATE "05/20/2022 12:08:29"

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

ENTITY 	Sorterbdf IS
    PORT (
	Complete : OUT std_logic;
	\CLK~\ : IN std_logic;
	Launch : IN std_logic;
	\reset~\ : IN std_logic;
	LCD_RS : OUT std_logic;
	CLK50 : IN std_logic;
	DBUS : INOUT std_logic_vector(7 DOWNTO 0);
	LCD_E : OUT std_logic;
	LCD_RW : OUT std_logic;
	LCD_ONOFF : OUT std_logic;
	LCD_BLONOFF : OUT std_logic;
	Data : OUT std_logic_vector(7 DOWNTO 0)
	);
END Sorterbdf;

-- Design Ports Information
-- DBUS[7]	=>  Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DBUS[6]	=>  Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DBUS[5]	=>  Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DBUS[4]	=>  Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DBUS[3]	=>  Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DBUS[2]	=>  Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DBUS[1]	=>  Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- DBUS[0]	=>  Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Complete	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_RS	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_E	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_RW	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_ONOFF	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_BLONOFF	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[7]	=>  Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[6]	=>  Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[5]	=>  Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[4]	=>  Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[3]	=>  Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[2]	=>  Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[1]	=>  Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[0]	=>  Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Launch	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK~	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset~	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF Sorterbdf IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Complete : std_logic;
SIGNAL \ww_CLK~\ : std_logic;
SIGNAL ww_Launch : std_logic;
SIGNAL \ww_reset~\ : std_logic;
SIGNAL ww_LCD_RS : std_logic;
SIGNAL ww_CLK50 : std_logic;
SIGNAL ww_LCD_E : std_logic;
SIGNAL ww_LCD_RW : std_logic;
SIGNAL ww_LCD_ONOFF : std_logic;
SIGNAL ww_LCD_BLONOFF : std_logic;
SIGNAL ww_Data : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst3|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|inst|CLK_400HZ~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst|CLK_COUNT_400HZ[0]~20_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[2]~24_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[6]~33_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[15]~51_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[16]~53_combout\ : std_logic;
SIGNAL \inst3|inst|Add2~9\ : std_logic;
SIGNAL \inst3|inst|Add2~11_combout\ : std_logic;
SIGNAL \inst7|WR~combout\ : std_logic;
SIGNAL \inst7|Selector5~7_combout\ : std_logic;
SIGNAL \inst3|inst|Equal4~0_combout\ : std_logic;
SIGNAL \inst3|inst|Selector4~1_combout\ : std_logic;
SIGNAL \inst3|inst|state.RESET2~regout\ : std_logic;
SIGNAL \inst3|inst|Selector6~0_combout\ : std_logic;
SIGNAL \inst3|inst|Selector6~1_combout\ : std_logic;
SIGNAL \inst3|inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst3|inst|Selector8~0_combout\ : std_logic;
SIGNAL \inst3|inst|next_command.RESET2~regout\ : std_logic;
SIGNAL \inst3|inst|state~37_combout\ : std_logic;
SIGNAL \inst3|inst|Selector18~0_combout\ : std_logic;
SIGNAL \CLK50~combout\ : std_logic;
SIGNAL \CLK50~clkctrl_outclk\ : std_logic;
SIGNAL \inst5|dffs[4]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[0]~21\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[1]~22_combout\ : std_logic;
SIGNAL \inst3|inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[4]~29_combout\ : std_logic;
SIGNAL \inst3|inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst3|inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[14]~49_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[13]~47_combout\ : std_logic;
SIGNAL \inst3|inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[14]~26_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[1]~23\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[2]~25\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[3]~27_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[3]~28\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[4]~30\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[5]~31_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[5]~32\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[6]~34\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[7]~35_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[7]~36\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[8]~37_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[8]~38\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[9]~39_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[9]~40\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[10]~41_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[10]~feeder_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[10]~42\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[11]~43_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[11]~44\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[12]~45_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[12]~46\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[13]~48\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[14]~50\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[15]~52\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[16]~54\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[17]~55_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[17]~56\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[18]~57_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[18]~58\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[19]~59_combout\ : std_logic;
SIGNAL \inst3|inst|LessThan0~4_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_400HZ~0_combout\ : std_logic;
SIGNAL \reset~~combout\ : std_logic;
SIGNAL \inst3|inst|CLK_400HZ~regout\ : std_logic;
SIGNAL \inst3|inst|CLK_400HZ~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|inst|LCD_RS~0_combout\ : std_logic;
SIGNAL \reset~~clk_delay_ctrl_clkout\ : std_logic;
SIGNAL \reset~~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|inst|state.DROP_LCD_E~regout\ : std_logic;
SIGNAL \inst3|inst|state.HOLD~regout\ : std_logic;
SIGNAL \inst3|inst|Add2~0_combout\ : std_logic;
SIGNAL \inst3|inst|state.RESET1~feeder_combout\ : std_logic;
SIGNAL \inst3|inst|state.RESET1~regout\ : std_logic;
SIGNAL \inst3|inst|Add2~2_combout\ : std_logic;
SIGNAL \inst3|inst|Add2~13_combout\ : std_logic;
SIGNAL \inst3|inst|Add2~1\ : std_logic;
SIGNAL \inst3|inst|Add2~4_combout\ : std_logic;
SIGNAL \inst3|inst|Add2~15_combout\ : std_logic;
SIGNAL \inst3|inst|Add2~5\ : std_logic;
SIGNAL \inst3|inst|Add2~6_combout\ : std_logic;
SIGNAL \inst3|inst|Add2~14_combout\ : std_logic;
SIGNAL \inst3|inst|Add2~7\ : std_logic;
SIGNAL \inst3|inst|Add2~8_combout\ : std_logic;
SIGNAL \inst3|inst|Add2~10_combout\ : std_logic;
SIGNAL \inst3|inst|Equal2~0_combout\ : std_logic;
SIGNAL \inst3|inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \CLK~~combout\ : std_logic;
SIGNAL \inst7|count[0]~5_combout\ : std_logic;
SIGNAL \inst7|Cnt~0_combout\ : std_logic;
SIGNAL \inst7|count[0]~6\ : std_logic;
SIGNAL \inst7|count[1]~8\ : std_logic;
SIGNAL \inst7|count[2]~10\ : std_logic;
SIGNAL \inst7|count[3]~12\ : std_logic;
SIGNAL \inst7|count[4]~14_combout\ : std_logic;
SIGNAL \inst7|count[4]~13_combout\ : std_logic;
SIGNAL \Launch~combout\ : std_logic;
SIGNAL \inst7|Selector5~3_combout\ : std_logic;
SIGNAL \inst7|count[1]~7_combout\ : std_logic;
SIGNAL \inst7|Selector5~4_combout\ : std_logic;
SIGNAL \inst7|Selector5~5_combout\ : std_logic;
SIGNAL \inst7|Selector5~6_combout\ : std_logic;
SIGNAL \inst7|state~18_combout\ : std_logic;
SIGNAL \inst7|state.CheckFlag~regout\ : std_logic;
SIGNAL \inst7|Selector6~0_combout\ : std_logic;
SIGNAL \inst7|Selector6~1_combout\ : std_logic;
SIGNAL \inst7|Flag~regout\ : std_logic;
SIGNAL \inst7|Cnt~1_combout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \inst7|count[2]~9_combout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \inst7|state~21_combout\ : std_logic;
SIGNAL \inst7|state.SendAddrB_w~regout\ : std_logic;
SIGNAL \inst7|state.WriteB~feeder_combout\ : std_logic;
SIGNAL \inst7|state.WriteB~regout\ : std_logic;
SIGNAL \inst7|state.SendAddrA_w~feeder_combout\ : std_logic;
SIGNAL \inst7|state.SendAddrA_w~regout\ : std_logic;
SIGNAL \inst7|state.WriteA~feeder_combout\ : std_logic;
SIGNAL \inst7|state.WriteA~regout\ : std_logic;
SIGNAL \inst7|dataA[7]~0_combout\ : std_logic;
SIGNAL \inst7|DataOut[7]~0_combout\ : std_logic;
SIGNAL \inst7|dataB[7]~0_combout\ : std_logic;
SIGNAL \inst7|DataOut[6]~1_combout\ : std_logic;
SIGNAL \inst7|DataOut[5]~2_combout\ : std_logic;
SIGNAL \inst7|DataOut[4]~3_combout\ : std_logic;
SIGNAL \inst7|DataOut[3]~4_combout\ : std_logic;
SIGNAL \inst7|DataOut[2]~5_combout\ : std_logic;
SIGNAL \inst7|DataOut[1]~6_combout\ : std_logic;
SIGNAL \inst7|DataOut[0]~7_combout\ : std_logic;
SIGNAL \inst7|LessThan0~1_cout\ : std_logic;
SIGNAL \inst7|LessThan0~3_cout\ : std_logic;
SIGNAL \inst7|LessThan0~5_cout\ : std_logic;
SIGNAL \inst7|LessThan0~7_cout\ : std_logic;
SIGNAL \inst7|LessThan0~9_cout\ : std_logic;
SIGNAL \inst7|LessThan0~11_cout\ : std_logic;
SIGNAL \inst7|LessThan0~13_cout\ : std_logic;
SIGNAL \inst7|LessThan0~14_combout\ : std_logic;
SIGNAL \inst7|Selector4~0_combout\ : std_logic;
SIGNAL \inst7|state.CheckLoop~regout\ : std_logic;
SIGNAL \inst7|Selector0~0_combout\ : std_logic;
SIGNAL \inst7|Selector1~0_combout\ : std_logic;
SIGNAL \inst7|state.SendAddrA_r~regout\ : std_logic;
SIGNAL \inst7|Selector2~0_combout\ : std_logic;
SIGNAL \inst7|state.GetA~regout\ : std_logic;
SIGNAL \inst7|delay~0_combout\ : std_logic;
SIGNAL \inst7|delay~regout\ : std_logic;
SIGNAL \inst7|state~20_combout\ : std_logic;
SIGNAL \inst7|state.SendAddrB_r~regout\ : std_logic;
SIGNAL \inst7|Selector3~0_combout\ : std_logic;
SIGNAL \inst7|state.GetB~regout\ : std_logic;
SIGNAL \inst7|state~19_combout\ : std_logic;
SIGNAL \inst7|state.Compare~regout\ : std_logic;
SIGNAL \inst7|Selector0~1_combout\ : std_logic;
SIGNAL \inst7|state.Waiting~regout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst7|count[3]~11_combout\ : std_logic;
SIGNAL \inst2|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \inst3|inst|Next_Char[3]~2_combout\ : std_logic;
SIGNAL \inst3|inst|Next_Char[3]~3_combout\ : std_logic;
SIGNAL \inst3|inst|Next_Char[3]~0_combout\ : std_logic;
SIGNAL \inst3|inst|Next_Char[3]~1_combout\ : std_logic;
SIGNAL \inst3|inst|Next_Char[3]~4_combout\ : std_logic;
SIGNAL \inst3|inst|Next_Char[1]~8_combout\ : std_logic;
SIGNAL \inst3|inst|Next_Char[1]~9_combout\ : std_logic;
SIGNAL \inst3|inst|Next_Char[1]~10_combout\ : std_logic;
SIGNAL \inst3|inst|Equal2~1_combout\ : std_logic;
SIGNAL \inst3|inst|Selector17~0_combout\ : std_logic;
SIGNAL \inst3|inst|Selector17~1_combout\ : std_logic;
SIGNAL \inst3|inst|next_command.RETURN_HOME~regout\ : std_logic;
SIGNAL \inst3|inst|state~31_combout\ : std_logic;
SIGNAL \inst3|inst|state.RETURN_HOME~regout\ : std_logic;
SIGNAL \inst3|inst|Selector19~0_combout\ : std_logic;
SIGNAL \inst3|inst|next_command.RESET3~regout\ : std_logic;
SIGNAL \inst3|inst|state~35_combout\ : std_logic;
SIGNAL \inst3|inst|state.RESET3~regout\ : std_logic;
SIGNAL \inst3|inst|Selector12~0_combout\ : std_logic;
SIGNAL \inst3|inst|next_command.FUNC_SET~regout\ : std_logic;
SIGNAL \inst3|inst|state~36_combout\ : std_logic;
SIGNAL \inst3|inst|state.FUNC_SET~regout\ : std_logic;
SIGNAL \inst3|inst|Selector20~0_combout\ : std_logic;
SIGNAL \inst3|inst|next_command.DISPLAY_OFF~regout\ : std_logic;
SIGNAL \inst3|inst|state~33_combout\ : std_logic;
SIGNAL \inst3|inst|state.DISPLAY_OFF~regout\ : std_logic;
SIGNAL \inst3|inst|Selector21~0_combout\ : std_logic;
SIGNAL \inst3|inst|next_command.DISPLAY_CLEAR~regout\ : std_logic;
SIGNAL \inst3|inst|state~34_combout\ : std_logic;
SIGNAL \inst3|inst|state.DISPLAY_CLEAR~regout\ : std_logic;
SIGNAL \inst3|inst|Selector13~0_combout\ : std_logic;
SIGNAL \inst3|inst|next_command.DISPLAY_ON~regout\ : std_logic;
SIGNAL \inst3|inst|state~32_combout\ : std_logic;
SIGNAL \inst3|inst|state.DISPLAY_ON~regout\ : std_logic;
SIGNAL \inst3|inst|Selector14~0_combout\ : std_logic;
SIGNAL \inst3|inst|next_command.MODE_SET~regout\ : std_logic;
SIGNAL \inst3|inst|state~29_combout\ : std_logic;
SIGNAL \inst3|inst|state.MODE_SET~regout\ : std_logic;
SIGNAL \inst3|inst|Equal3~0_combout\ : std_logic;
SIGNAL \inst3|inst|Equal3~1_combout\ : std_logic;
SIGNAL \inst3|inst|Selector16~0_combout\ : std_logic;
SIGNAL \inst3|inst|next_command.LINE2~regout\ : std_logic;
SIGNAL \inst3|inst|state~30_combout\ : std_logic;
SIGNAL \inst3|inst|state.LINE2~regout\ : std_logic;
SIGNAL \inst3|inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst3|inst|Selector15~5_combout\ : std_logic;
SIGNAL \inst3|inst|Selector15~6_combout\ : std_logic;
SIGNAL \inst3|inst|next_command.Print_String~regout\ : std_logic;
SIGNAL \inst3|inst|state~28_combout\ : std_logic;
SIGNAL \inst3|inst|state.Print_String~regout\ : std_logic;
SIGNAL \inst3|inst|Selector15~4_combout\ : std_logic;
SIGNAL \inst3|inst|Add2~3_combout\ : std_logic;
SIGNAL \inst3|inst|Selector2~2_combout\ : std_logic;
SIGNAL \inst3|inst|Selector2~3_combout\ : std_logic;
SIGNAL \inst3|inst|LCD_RW_INT~feeder_combout\ : std_logic;
SIGNAL \inst3|inst|LCD_RW_INT~regout\ : std_logic;
SIGNAL \inst3|inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst3|inst|Next_Char[2]~5_combout\ : std_logic;
SIGNAL \inst3|inst|Next_Char[2]~6_combout\ : std_logic;
SIGNAL \inst3|inst|Next_Char[2]~7_combout\ : std_logic;
SIGNAL \inst3|inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst3|inst|Selector3~1_combout\ : std_logic;
SIGNAL \inst3|inst|Selector3~2_combout\ : std_logic;
SIGNAL \inst3|inst|Selector4~2_combout\ : std_logic;
SIGNAL \inst3|inst|Selector4~3_combout\ : std_logic;
SIGNAL \inst3|inst|Selector4~4_combout\ : std_logic;
SIGNAL \inst3|inst|Selector4~5_combout\ : std_logic;
SIGNAL \inst3|inst|Selector5~0_combout\ : std_logic;
SIGNAL \inst3|inst|Selector5~1_combout\ : std_logic;
SIGNAL \inst3|inst|DATA_BUS_VALUE~0_combout\ : std_logic;
SIGNAL \inst3|inst|Selector6~2_combout\ : std_logic;
SIGNAL \inst3|inst|Selector7~0_combout\ : std_logic;
SIGNAL \inst3|inst|Mux3~1_combout\ : std_logic;
SIGNAL \inst3|inst|Next_Char[0]~11_combout\ : std_logic;
SIGNAL \inst3|inst|Next_Char[0]~12_combout\ : std_logic;
SIGNAL \inst3|inst|Selector7~1_combout\ : std_logic;
SIGNAL \inst3|inst|Selector7~2_combout\ : std_logic;
SIGNAL \inst3|inst|Selector8~1_combout\ : std_logic;
SIGNAL \inst3|inst|Selector8~2_combout\ : std_logic;
SIGNAL \inst3|inst|Selector9~0_combout\ : std_logic;
SIGNAL \inst3|inst|Selector9~1_combout\ : std_logic;
SIGNAL \inst3|inst|Selector9~2_combout\ : std_logic;
SIGNAL \inst3|inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst3|inst|LCD_RS~regout\ : std_logic;
SIGNAL \inst3|inst|LCD_E~0_combout\ : std_logic;
SIGNAL \inst3|inst|LCD_E~regout\ : std_logic;
SIGNAL \inst7|count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst5|dffs\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst3|inst|CLK_COUNT_400HZ\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst7|dataB\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst7|dataA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|inst|CHAR_COUNT\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst3|inst1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|inst|DATA_BUS_VALUE\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|LPM_COUNTER_component|auto_generated|safe_q\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_reset~~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~~combout\ : std_logic;
SIGNAL \ALT_INV_CLK~~combout\ : std_logic;
SIGNAL \inst3|inst|ALT_INV_DATA_BUS_VALUE\ : std_logic_vector(5 DOWNTO 3);
SIGNAL \inst3|inst|ALT_INV_LCD_RW_INT~regout\ : std_logic;
SIGNAL \inst3|inst|ALT_INV_LCD_E~regout\ : std_logic;
SIGNAL \inst7|ALT_INV_state.Waiting~regout\ : std_logic;

BEGIN

Complete <= ww_Complete;
\ww_CLK~\ <= \CLK~\;
ww_Launch <= Launch;
\ww_reset~\ <= \reset~\;
LCD_RS <= ww_LCD_RS;
ww_CLK50 <= CLK50;
LCD_E <= ww_LCD_E;
LCD_RW <= ww_LCD_RW;
LCD_ONOFF <= ww_LCD_ONOFF;
LCD_BLONOFF <= ww_LCD_BLONOFF;
Data <= ww_Data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\inst7|DataOut[7]~0_combout\ & \inst7|DataOut[6]~1_combout\ & \inst7|DataOut[5]~2_combout\ & \inst7|DataOut[4]~3_combout\ & \inst7|DataOut[3]~4_combout\ & 
\inst7|DataOut[2]~5_combout\ & \inst7|DataOut[1]~6_combout\ & \inst7|DataOut[0]~7_combout\);

\inst1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst2|$00000|auto_generated|result_node[4]~4_combout\ & \inst2|$00000|auto_generated|result_node[3]~3_combout\ & \inst2|$00000|auto_generated|result_node[2]~2_combout\ & 
\inst2|$00000|auto_generated|result_node[1]~1_combout\ & \inst2|$00000|auto_generated|result_node[0]~0_combout\);

\inst1|altsyncram_component|auto_generated|q_a\(0) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst1|altsyncram_component|auto_generated|q_a\(1) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst1|altsyncram_component|auto_generated|q_a\(2) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst1|altsyncram_component|auto_generated|q_a\(3) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst1|altsyncram_component|auto_generated|q_a\(4) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst1|altsyncram_component|auto_generated|q_a\(5) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst1|altsyncram_component|auto_generated|q_a\(6) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst1|altsyncram_component|auto_generated|q_a\(7) <= \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\inst3|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst3|inst|CHAR_COUNT\(4) & \inst3|inst|CHAR_COUNT\(3) & \inst3|inst|CHAR_COUNT\(2) & \inst3|inst|CHAR_COUNT\(1) & \inst3|inst|CHAR_COUNT\(0));

\inst3|inst1|altsyncram_component|auto_generated|q_a\(0) <= \inst3|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst3|inst1|altsyncram_component|auto_generated|q_a\(1) <= \inst3|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst3|inst1|altsyncram_component|auto_generated|q_a\(2) <= \inst3|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst3|inst1|altsyncram_component|auto_generated|q_a\(3) <= \inst3|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst3|inst1|altsyncram_component|auto_generated|q_a\(4) <= \inst3|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst3|inst1|altsyncram_component|auto_generated|q_a\(5) <= \inst3|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst3|inst1|altsyncram_component|auto_generated|q_a\(6) <= \inst3|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst3|inst1|altsyncram_component|auto_generated|q_a\(7) <= \inst3|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\inst3|inst|CLK_400HZ~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \inst3|inst|CLK_400HZ~regout\);

\CLK50~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \CLK50~combout\);

\reset~~clkctrl_INCLK_bus\ <= (gnd & gnd & gnd & \reset~~clk_delay_ctrl_clkout\);
\ALT_INV_reset~~clkctrl_outclk\ <= NOT \reset~~clkctrl_outclk\;
\ALT_INV_reset~~combout\ <= NOT \reset~~combout\;
\ALT_INV_CLK~~combout\ <= NOT \CLK~~combout\;
\inst3|inst|ALT_INV_DATA_BUS_VALUE\(3) <= NOT \inst3|inst|DATA_BUS_VALUE\(3);
\inst3|inst|ALT_INV_DATA_BUS_VALUE\(4) <= NOT \inst3|inst|DATA_BUS_VALUE\(4);
\inst3|inst|ALT_INV_DATA_BUS_VALUE\(5) <= NOT \inst3|inst|DATA_BUS_VALUE\(5);
\inst3|inst|ALT_INV_LCD_RW_INT~regout\ <= NOT \inst3|inst|LCD_RW_INT~regout\;
\inst3|inst|ALT_INV_LCD_E~regout\ <= NOT \inst3|inst|LCD_E~regout\;
\inst7|ALT_INV_state.Waiting~regout\ <= NOT \inst7|state.Waiting~regout\;

-- Location: LCFF_X63_Y19_N17
\inst3|inst|CLK_COUNT_400HZ[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[2]~24_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[14]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(2));

-- Location: LCFF_X63_Y19_N25
\inst3|inst|CLK_COUNT_400HZ[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[6]~33_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[14]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(6));

-- Location: LCFF_X63_Y18_N11
\inst3|inst|CLK_COUNT_400HZ[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[15]~51_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[14]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(15));

-- Location: LCFF_X63_Y18_N13
\inst3|inst|CLK_COUNT_400HZ[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[16]~53_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[14]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(16));

-- Location: M4K_X52_Y27
\inst3|inst1|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"2020202020200000202020202020000020202020415441442053534552444441",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "Rom.hex",
	init_file_layout => "port_a",
	logical_ram_name => "NewLCD:inst3|lpm_rom0:inst1|altsyncram:altsyncram_component|altsyncram_7f71:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
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
	port_a_write_enable_clock => "none",
	port_b_address_width => 5,
	port_b_data_width => 8,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	clk0 => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	portaaddr => \inst3|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst3|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCFF_X63_Y19_N13
\inst3|inst|CLK_COUNT_400HZ[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[0]~20_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[14]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(0));

-- Location: LCCOMB_X63_Y19_N12
\inst3|inst|CLK_COUNT_400HZ[0]~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[0]~20_combout\ = \inst3|inst|CLK_COUNT_400HZ\(0) $ (VCC)
-- \inst3|inst|CLK_COUNT_400HZ[0]~21\ = CARRY(\inst3|inst|CLK_COUNT_400HZ\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CLK_COUNT_400HZ\(0),
	datad => VCC,
	combout => \inst3|inst|CLK_COUNT_400HZ[0]~20_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[0]~21\);

-- Location: LCCOMB_X63_Y19_N16
\inst3|inst|CLK_COUNT_400HZ[2]~24\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[2]~24_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(2) & (\inst3|inst|CLK_COUNT_400HZ[1]~23\ $ (GND))) # (!\inst3|inst|CLK_COUNT_400HZ\(2) & (!\inst3|inst|CLK_COUNT_400HZ[1]~23\ & VCC))
-- \inst3|inst|CLK_COUNT_400HZ[2]~25\ = CARRY((\inst3|inst|CLK_COUNT_400HZ\(2) & !\inst3|inst|CLK_COUNT_400HZ[1]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CLK_COUNT_400HZ\(2),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[1]~23\,
	combout => \inst3|inst|CLK_COUNT_400HZ[2]~24_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[2]~25\);

-- Location: LCCOMB_X63_Y19_N24
\inst3|inst|CLK_COUNT_400HZ[6]~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[6]~33_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(6) & (\inst3|inst|CLK_COUNT_400HZ[5]~32\ $ (GND))) # (!\inst3|inst|CLK_COUNT_400HZ\(6) & (!\inst3|inst|CLK_COUNT_400HZ[5]~32\ & VCC))
-- \inst3|inst|CLK_COUNT_400HZ[6]~34\ = CARRY((\inst3|inst|CLK_COUNT_400HZ\(6) & !\inst3|inst|CLK_COUNT_400HZ[5]~32\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CLK_COUNT_400HZ\(6),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[5]~32\,
	combout => \inst3|inst|CLK_COUNT_400HZ[6]~33_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[6]~34\);

-- Location: LCCOMB_X63_Y18_N10
\inst3|inst|CLK_COUNT_400HZ[15]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[15]~51_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(15) & (!\inst3|inst|CLK_COUNT_400HZ[14]~50\)) # (!\inst3|inst|CLK_COUNT_400HZ\(15) & ((\inst3|inst|CLK_COUNT_400HZ[14]~50\) # (GND)))
-- \inst3|inst|CLK_COUNT_400HZ[15]~52\ = CARRY((!\inst3|inst|CLK_COUNT_400HZ[14]~50\) # (!\inst3|inst|CLK_COUNT_400HZ\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CLK_COUNT_400HZ\(15),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[14]~50\,
	combout => \inst3|inst|CLK_COUNT_400HZ[15]~51_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[15]~52\);

-- Location: LCCOMB_X63_Y18_N12
\inst3|inst|CLK_COUNT_400HZ[16]~53\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[16]~53_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(16) & (\inst3|inst|CLK_COUNT_400HZ[15]~52\ $ (GND))) # (!\inst3|inst|CLK_COUNT_400HZ\(16) & (!\inst3|inst|CLK_COUNT_400HZ[15]~52\ & VCC))
-- \inst3|inst|CLK_COUNT_400HZ[16]~54\ = CARRY((\inst3|inst|CLK_COUNT_400HZ\(16) & !\inst3|inst|CLK_COUNT_400HZ[15]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CLK_COUNT_400HZ\(16),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[15]~52\,
	combout => \inst3|inst|CLK_COUNT_400HZ[16]~53_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[16]~54\);

-- Location: LCCOMB_X50_Y27_N14
\inst3|inst|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Add2~8_combout\ = (\inst3|inst|CHAR_COUNT\(3) & (!\inst3|inst|Add2~7\)) # (!\inst3|inst|CHAR_COUNT\(3) & ((\inst3|inst|Add2~7\) # (GND)))
-- \inst3|inst|Add2~9\ = CARRY((!\inst3|inst|Add2~7\) # (!\inst3|inst|CHAR_COUNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|CHAR_COUNT\(3),
	datad => VCC,
	cin => \inst3|inst|Add2~7\,
	combout => \inst3|inst|Add2~8_combout\,
	cout => \inst3|inst|Add2~9\);

-- Location: LCCOMB_X50_Y27_N16
\inst3|inst|Add2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Add2~11_combout\ = \inst3|inst|Add2~9\ $ (!\inst3|inst|CHAR_COUNT\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst|CHAR_COUNT\(4),
	cin => \inst3|inst|Add2~9\,
	combout => \inst3|inst|Add2~11_combout\);

-- Location: LCCOMB_X55_Y27_N16
\inst7|WR\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|WR~combout\ = (\inst7|state.WriteB~regout\) # (\inst7|state.WriteA~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.WriteB~regout\,
	datac => \inst7|state.WriteA~regout\,
	combout => \inst7|WR~combout\);

-- Location: LCCOMB_X54_Y26_N2
\inst7|Selector5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector5~7_combout\ = (\inst7|LessThan0~14_combout\ & \inst7|state.Compare~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|LessThan0~14_combout\,
	datad => \inst7|state.Compare~regout\,
	combout => \inst7|Selector5~7_combout\);

-- Location: LCFF_X51_Y26_N9
\inst5|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst2|$00000|auto_generated|result_node[2]~2_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|dffs\(2));

-- Location: LCCOMB_X49_Y27_N16
\inst3|inst|Equal4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Equal4~0_combout\ = (\inst3|inst|CHAR_COUNT\(4) & \inst3|inst|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|CHAR_COUNT\(4),
	datad => \inst3|inst|Equal3~0_combout\,
	combout => \inst3|inst|Equal4~0_combout\);

-- Location: LCCOMB_X47_Y26_N6
\inst3|inst|Selector4~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector4~1_combout\ = (!\inst3|inst|state.DISPLAY_OFF~regout\ & !\inst3|inst|state.DISPLAY_ON~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|state.DISPLAY_OFF~regout\,
	datad => \inst3|inst|state.DISPLAY_ON~regout\,
	combout => \inst3|inst|Selector4~1_combout\);

-- Location: LCFF_X47_Y26_N11
\inst3|inst|state.RESET2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|state~37_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.RESET2~regout\);

-- Location: LCCOMB_X47_Y26_N30
\inst3|inst|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector6~0_combout\ = (\inst3|inst|state.RESET2~regout\) # ((\inst3|inst|state.RESET3~regout\) # ((\inst3|inst|state.FUNC_SET~regout\) # (!\inst3|inst|Selector4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.RESET2~regout\,
	datab => \inst3|inst|state.RESET3~regout\,
	datac => \inst3|inst|Selector4~1_combout\,
	datad => \inst3|inst|state.FUNC_SET~regout\,
	combout => \inst3|inst|Selector6~0_combout\);

-- Location: LCCOMB_X47_Y26_N26
\inst3|inst|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector6~1_combout\ = (\inst3|inst|Selector6~0_combout\) # (((!\inst3|inst|DATA_BUS_VALUE\(3) & !\inst3|inst|LCD_RS~0_combout\)) # (!\inst3|inst|state.RESET1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|DATA_BUS_VALUE\(3),
	datab => \inst3|inst|Selector6~0_combout\,
	datac => \inst3|inst|LCD_RS~0_combout\,
	datad => \inst3|inst|state.RESET1~regout\,
	combout => \inst3|inst|Selector6~1_combout\);

-- Location: LCFF_X55_Y26_N11
\inst5|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst2|$00000|auto_generated|result_node[0]~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|dffs\(0));

-- Location: LCFF_X56_Y27_N17
\inst5|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst5|dffs[4]~feeder_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|dffs\(4));

-- Location: LCCOMB_X51_Y27_N16
\inst3|inst|Mux3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Mux3~0_combout\ = (\inst3|inst|CHAR_COUNT\(3) & (((\inst3|inst|CHAR_COUNT\(0))))) # (!\inst3|inst|CHAR_COUNT\(3) & ((\inst3|inst|CHAR_COUNT\(0) & ((\inst5|dffs\(0)))) # (!\inst3|inst|CHAR_COUNT\(0) & (\inst5|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dffs\(4),
	datab => \inst3|inst|CHAR_COUNT\(3),
	datac => \inst5|dffs\(0),
	datad => \inst3|inst|CHAR_COUNT\(0),
	combout => \inst3|inst|Mux3~0_combout\);

-- Location: LCCOMB_X48_Y26_N12
\inst3|inst|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector8~0_combout\ = (\inst3|inst|state.MODE_SET~regout\) # ((\inst3|inst|DATA_BUS_VALUE\(1) & ((\inst3|inst|state.DROP_LCD_E~regout\) # (\inst3|inst|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.DROP_LCD_E~regout\,
	datab => \inst3|inst|state.HOLD~regout\,
	datac => \inst3|inst|state.MODE_SET~regout\,
	datad => \inst3|inst|DATA_BUS_VALUE\(1),
	combout => \inst3|inst|Selector8~0_combout\);

-- Location: LCFF_X47_Y26_N5
\inst3|inst|next_command.RESET2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector18~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|next_command.RESET2~regout\);

-- Location: LCCOMB_X47_Y26_N10
\inst3|inst|state~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|state~37_combout\ = (!\inst3|inst|next_command.RESET2~regout\ & \inst3|inst|state.HOLD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|next_command.RESET2~regout\,
	datad => \inst3|inst|state.HOLD~regout\,
	combout => \inst3|inst|state~37_combout\);

-- Location: LCCOMB_X47_Y26_N4
\inst3|inst|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector18~0_combout\ = (\inst3|inst|state.RESET1~regout\ & ((\inst3|inst|next_command.RESET2~regout\) # ((!\inst3|inst|state.DROP_LCD_E~regout\ & !\inst3|inst|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.DROP_LCD_E~regout\,
	datab => \inst3|inst|state.RESET1~regout\,
	datac => \inst3|inst|next_command.RESET2~regout\,
	datad => \inst3|inst|state.HOLD~regout\,
	combout => \inst3|inst|Selector18~0_combout\);

-- Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK50~I\ : cycloneii_io
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
	padio => ww_CLK50,
	combout => \CLK50~combout\);

-- Location: CLKCTRL_G2
\CLK50~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK50~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK50~clkctrl_outclk\);

-- Location: LCCOMB_X56_Y27_N16
\inst5|dffs[4]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst5|dffs[4]~feeder_combout\ = \inst2|$00000|auto_generated|result_node[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst2|$00000|auto_generated|result_node[4]~4_combout\,
	combout => \inst5|dffs[4]~feeder_combout\);

-- Location: LCCOMB_X63_Y19_N14
\inst3|inst|CLK_COUNT_400HZ[1]~22\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[1]~22_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(1) & (!\inst3|inst|CLK_COUNT_400HZ[0]~21\)) # (!\inst3|inst|CLK_COUNT_400HZ\(1) & ((\inst3|inst|CLK_COUNT_400HZ[0]~21\) # (GND)))
-- \inst3|inst|CLK_COUNT_400HZ[1]~23\ = CARRY((!\inst3|inst|CLK_COUNT_400HZ[0]~21\) # (!\inst3|inst|CLK_COUNT_400HZ\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|CLK_COUNT_400HZ\(1),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[0]~21\,
	combout => \inst3|inst|CLK_COUNT_400HZ[1]~22_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[1]~23\);

-- Location: LCCOMB_X63_Y19_N4
\inst3|inst|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|LessThan0~1_combout\ = (!\inst3|inst|CLK_COUNT_400HZ\(6) & (!\inst3|inst|CLK_COUNT_400HZ\(7) & (!\inst3|inst|CLK_COUNT_400HZ\(9) & !\inst3|inst|CLK_COUNT_400HZ\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CLK_COUNT_400HZ\(6),
	datab => \inst3|inst|CLK_COUNT_400HZ\(7),
	datac => \inst3|inst|CLK_COUNT_400HZ\(9),
	datad => \inst3|inst|CLK_COUNT_400HZ\(8),
	combout => \inst3|inst|LessThan0~1_combout\);

-- Location: LCCOMB_X63_Y19_N20
\inst3|inst|CLK_COUNT_400HZ[4]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[4]~29_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(4) & (\inst3|inst|CLK_COUNT_400HZ[3]~28\ $ (GND))) # (!\inst3|inst|CLK_COUNT_400HZ\(4) & (!\inst3|inst|CLK_COUNT_400HZ[3]~28\ & VCC))
-- \inst3|inst|CLK_COUNT_400HZ[4]~30\ = CARRY((\inst3|inst|CLK_COUNT_400HZ\(4) & !\inst3|inst|CLK_COUNT_400HZ[3]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CLK_COUNT_400HZ\(4),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[3]~28\,
	combout => \inst3|inst|CLK_COUNT_400HZ[4]~29_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[4]~30\);

-- Location: LCFF_X63_Y19_N21
\inst3|inst|CLK_COUNT_400HZ[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[4]~29_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[14]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(4));

-- Location: LCCOMB_X63_Y19_N6
\inst3|inst|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|LessThan0~0_combout\ = ((!\inst3|inst|CLK_COUNT_400HZ\(2) & (!\inst3|inst|CLK_COUNT_400HZ\(3) & !\inst3|inst|CLK_COUNT_400HZ\(4)))) # (!\inst3|inst|CLK_COUNT_400HZ\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CLK_COUNT_400HZ\(2),
	datab => \inst3|inst|CLK_COUNT_400HZ\(3),
	datac => \inst3|inst|CLK_COUNT_400HZ\(4),
	datad => \inst3|inst|CLK_COUNT_400HZ\(5),
	combout => \inst3|inst|LessThan0~0_combout\);

-- Location: LCCOMB_X63_Y19_N2
\inst3|inst|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|LessThan0~2_combout\ = (!\inst3|inst|CLK_COUNT_400HZ\(11) & (((\inst3|inst|LessThan0~1_combout\ & \inst3|inst|LessThan0~0_combout\)) # (!\inst3|inst|CLK_COUNT_400HZ\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CLK_COUNT_400HZ\(11),
	datab => \inst3|inst|CLK_COUNT_400HZ\(10),
	datac => \inst3|inst|LessThan0~1_combout\,
	datad => \inst3|inst|LessThan0~0_combout\,
	combout => \inst3|inst|LessThan0~2_combout\);

-- Location: LCCOMB_X63_Y18_N8
\inst3|inst|CLK_COUNT_400HZ[14]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[14]~49_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(14) & (\inst3|inst|CLK_COUNT_400HZ[13]~48\ $ (GND))) # (!\inst3|inst|CLK_COUNT_400HZ\(14) & (!\inst3|inst|CLK_COUNT_400HZ[13]~48\ & VCC))
-- \inst3|inst|CLK_COUNT_400HZ[14]~50\ = CARRY((\inst3|inst|CLK_COUNT_400HZ\(14) & !\inst3|inst|CLK_COUNT_400HZ[13]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CLK_COUNT_400HZ\(14),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[13]~48\,
	combout => \inst3|inst|CLK_COUNT_400HZ[14]~49_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[14]~50\);

-- Location: LCFF_X63_Y18_N9
\inst3|inst|CLK_COUNT_400HZ[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[14]~49_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[14]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(14));

-- Location: LCCOMB_X63_Y18_N6
\inst3|inst|CLK_COUNT_400HZ[13]~47\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[13]~47_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(13) & (!\inst3|inst|CLK_COUNT_400HZ[12]~46\)) # (!\inst3|inst|CLK_COUNT_400HZ\(13) & ((\inst3|inst|CLK_COUNT_400HZ[12]~46\) # (GND)))
-- \inst3|inst|CLK_COUNT_400HZ[13]~48\ = CARRY((!\inst3|inst|CLK_COUNT_400HZ[12]~46\) # (!\inst3|inst|CLK_COUNT_400HZ\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CLK_COUNT_400HZ\(13),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[12]~46\,
	combout => \inst3|inst|CLK_COUNT_400HZ[13]~47_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[13]~48\);

-- Location: LCFF_X63_Y18_N7
\inst3|inst|CLK_COUNT_400HZ[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[13]~47_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[14]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(13));

-- Location: LCCOMB_X63_Y18_N28
\inst3|inst|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|LessThan0~3_combout\ = (((!\inst3|inst|CLK_COUNT_400HZ\(13)) # (!\inst3|inst|CLK_COUNT_400HZ\(14))) # (!\inst3|inst|CLK_COUNT_400HZ\(12))) # (!\inst3|inst|CLK_COUNT_400HZ\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CLK_COUNT_400HZ\(15),
	datab => \inst3|inst|CLK_COUNT_400HZ\(12),
	datac => \inst3|inst|CLK_COUNT_400HZ\(14),
	datad => \inst3|inst|CLK_COUNT_400HZ\(13),
	combout => \inst3|inst|LessThan0~3_combout\);

-- Location: LCCOMB_X63_Y19_N8
\inst3|inst|CLK_COUNT_400HZ[14]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[14]~26_combout\ = (((!\inst3|inst|LessThan0~2_combout\ & !\inst3|inst|LessThan0~3_combout\)) # (!\inst3|inst|LessThan0~4_combout\)) # (!\reset~~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~~combout\,
	datab => \inst3|inst|LessThan0~2_combout\,
	datac => \inst3|inst|LessThan0~4_combout\,
	datad => \inst3|inst|LessThan0~3_combout\,
	combout => \inst3|inst|CLK_COUNT_400HZ[14]~26_combout\);

-- Location: LCFF_X63_Y19_N15
\inst3|inst|CLK_COUNT_400HZ[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[1]~22_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[14]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(1));

-- Location: LCCOMB_X63_Y19_N18
\inst3|inst|CLK_COUNT_400HZ[3]~27\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[3]~27_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(3) & (!\inst3|inst|CLK_COUNT_400HZ[2]~25\)) # (!\inst3|inst|CLK_COUNT_400HZ\(3) & ((\inst3|inst|CLK_COUNT_400HZ[2]~25\) # (GND)))
-- \inst3|inst|CLK_COUNT_400HZ[3]~28\ = CARRY((!\inst3|inst|CLK_COUNT_400HZ[2]~25\) # (!\inst3|inst|CLK_COUNT_400HZ\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|CLK_COUNT_400HZ\(3),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[2]~25\,
	combout => \inst3|inst|CLK_COUNT_400HZ[3]~27_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[3]~28\);

-- Location: LCFF_X63_Y19_N19
\inst3|inst|CLK_COUNT_400HZ[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[3]~27_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[14]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(3));

-- Location: LCCOMB_X63_Y19_N22
\inst3|inst|CLK_COUNT_400HZ[5]~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[5]~31_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(5) & (!\inst3|inst|CLK_COUNT_400HZ[4]~30\)) # (!\inst3|inst|CLK_COUNT_400HZ\(5) & ((\inst3|inst|CLK_COUNT_400HZ[4]~30\) # (GND)))
-- \inst3|inst|CLK_COUNT_400HZ[5]~32\ = CARRY((!\inst3|inst|CLK_COUNT_400HZ[4]~30\) # (!\inst3|inst|CLK_COUNT_400HZ\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|CLK_COUNT_400HZ\(5),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[4]~30\,
	combout => \inst3|inst|CLK_COUNT_400HZ[5]~31_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[5]~32\);

-- Location: LCFF_X63_Y19_N23
\inst3|inst|CLK_COUNT_400HZ[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[5]~31_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[14]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(5));

-- Location: LCCOMB_X63_Y19_N26
\inst3|inst|CLK_COUNT_400HZ[7]~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[7]~35_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(7) & (!\inst3|inst|CLK_COUNT_400HZ[6]~34\)) # (!\inst3|inst|CLK_COUNT_400HZ\(7) & ((\inst3|inst|CLK_COUNT_400HZ[6]~34\) # (GND)))
-- \inst3|inst|CLK_COUNT_400HZ[7]~36\ = CARRY((!\inst3|inst|CLK_COUNT_400HZ[6]~34\) # (!\inst3|inst|CLK_COUNT_400HZ\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|CLK_COUNT_400HZ\(7),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[6]~34\,
	combout => \inst3|inst|CLK_COUNT_400HZ[7]~35_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[7]~36\);

-- Location: LCFF_X63_Y19_N27
\inst3|inst|CLK_COUNT_400HZ[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[7]~35_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[14]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(7));

-- Location: LCCOMB_X63_Y19_N28
\inst3|inst|CLK_COUNT_400HZ[8]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[8]~37_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(8) & (\inst3|inst|CLK_COUNT_400HZ[7]~36\ $ (GND))) # (!\inst3|inst|CLK_COUNT_400HZ\(8) & (!\inst3|inst|CLK_COUNT_400HZ[7]~36\ & VCC))
-- \inst3|inst|CLK_COUNT_400HZ[8]~38\ = CARRY((\inst3|inst|CLK_COUNT_400HZ\(8) & !\inst3|inst|CLK_COUNT_400HZ[7]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|CLK_COUNT_400HZ\(8),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[7]~36\,
	combout => \inst3|inst|CLK_COUNT_400HZ[8]~37_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[8]~38\);

-- Location: LCFF_X63_Y19_N29
\inst3|inst|CLK_COUNT_400HZ[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[8]~37_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[14]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(8));

-- Location: LCCOMB_X63_Y19_N30
\inst3|inst|CLK_COUNT_400HZ[9]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[9]~39_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(9) & (!\inst3|inst|CLK_COUNT_400HZ[8]~38\)) # (!\inst3|inst|CLK_COUNT_400HZ\(9) & ((\inst3|inst|CLK_COUNT_400HZ[8]~38\) # (GND)))
-- \inst3|inst|CLK_COUNT_400HZ[9]~40\ = CARRY((!\inst3|inst|CLK_COUNT_400HZ[8]~38\) # (!\inst3|inst|CLK_COUNT_400HZ\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|CLK_COUNT_400HZ\(9),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[8]~38\,
	combout => \inst3|inst|CLK_COUNT_400HZ[9]~39_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[9]~40\);

-- Location: LCFF_X63_Y19_N31
\inst3|inst|CLK_COUNT_400HZ[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[9]~39_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[14]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(9));

-- Location: LCCOMB_X63_Y18_N0
\inst3|inst|CLK_COUNT_400HZ[10]~41\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[10]~41_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(10) & (\inst3|inst|CLK_COUNT_400HZ[9]~40\ $ (GND))) # (!\inst3|inst|CLK_COUNT_400HZ\(10) & (!\inst3|inst|CLK_COUNT_400HZ[9]~40\ & VCC))
-- \inst3|inst|CLK_COUNT_400HZ[10]~42\ = CARRY((\inst3|inst|CLK_COUNT_400HZ\(10) & !\inst3|inst|CLK_COUNT_400HZ[9]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|CLK_COUNT_400HZ\(10),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[9]~40\,
	combout => \inst3|inst|CLK_COUNT_400HZ[10]~41_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[10]~42\);

-- Location: LCCOMB_X63_Y19_N0
\inst3|inst|CLK_COUNT_400HZ[10]~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[10]~feeder_combout\ = \inst3|inst|CLK_COUNT_400HZ[10]~41_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst|CLK_COUNT_400HZ[10]~41_combout\,
	combout => \inst3|inst|CLK_COUNT_400HZ[10]~feeder_combout\);

-- Location: LCFF_X63_Y19_N1
\inst3|inst|CLK_COUNT_400HZ[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[10]~feeder_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[14]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(10));

-- Location: LCCOMB_X63_Y18_N2
\inst3|inst|CLK_COUNT_400HZ[11]~43\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[11]~43_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(11) & (!\inst3|inst|CLK_COUNT_400HZ[10]~42\)) # (!\inst3|inst|CLK_COUNT_400HZ\(11) & ((\inst3|inst|CLK_COUNT_400HZ[10]~42\) # (GND)))
-- \inst3|inst|CLK_COUNT_400HZ[11]~44\ = CARRY((!\inst3|inst|CLK_COUNT_400HZ[10]~42\) # (!\inst3|inst|CLK_COUNT_400HZ\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|CLK_COUNT_400HZ\(11),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[10]~42\,
	combout => \inst3|inst|CLK_COUNT_400HZ[11]~43_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[11]~44\);

-- Location: LCFF_X63_Y18_N3
\inst3|inst|CLK_COUNT_400HZ[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[11]~43_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[14]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(11));

-- Location: LCCOMB_X63_Y18_N4
\inst3|inst|CLK_COUNT_400HZ[12]~45\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[12]~45_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(12) & (\inst3|inst|CLK_COUNT_400HZ[11]~44\ $ (GND))) # (!\inst3|inst|CLK_COUNT_400HZ\(12) & (!\inst3|inst|CLK_COUNT_400HZ[11]~44\ & VCC))
-- \inst3|inst|CLK_COUNT_400HZ[12]~46\ = CARRY((\inst3|inst|CLK_COUNT_400HZ\(12) & !\inst3|inst|CLK_COUNT_400HZ[11]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|CLK_COUNT_400HZ\(12),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[11]~44\,
	combout => \inst3|inst|CLK_COUNT_400HZ[12]~45_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[12]~46\);

-- Location: LCFF_X63_Y18_N5
\inst3|inst|CLK_COUNT_400HZ[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[12]~45_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[14]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(12));

-- Location: LCCOMB_X63_Y18_N14
\inst3|inst|CLK_COUNT_400HZ[17]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[17]~55_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(17) & (!\inst3|inst|CLK_COUNT_400HZ[16]~54\)) # (!\inst3|inst|CLK_COUNT_400HZ\(17) & ((\inst3|inst|CLK_COUNT_400HZ[16]~54\) # (GND)))
-- \inst3|inst|CLK_COUNT_400HZ[17]~56\ = CARRY((!\inst3|inst|CLK_COUNT_400HZ[16]~54\) # (!\inst3|inst|CLK_COUNT_400HZ\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CLK_COUNT_400HZ\(17),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[16]~54\,
	combout => \inst3|inst|CLK_COUNT_400HZ[17]~55_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[17]~56\);

-- Location: LCFF_X63_Y18_N15
\inst3|inst|CLK_COUNT_400HZ[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[17]~55_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[14]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(17));

-- Location: LCCOMB_X63_Y18_N16
\inst3|inst|CLK_COUNT_400HZ[18]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[18]~57_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(18) & (\inst3|inst|CLK_COUNT_400HZ[17]~56\ $ (GND))) # (!\inst3|inst|CLK_COUNT_400HZ\(18) & (!\inst3|inst|CLK_COUNT_400HZ[17]~56\ & VCC))
-- \inst3|inst|CLK_COUNT_400HZ[18]~58\ = CARRY((\inst3|inst|CLK_COUNT_400HZ\(18) & !\inst3|inst|CLK_COUNT_400HZ[17]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|CLK_COUNT_400HZ\(18),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[17]~56\,
	combout => \inst3|inst|CLK_COUNT_400HZ[18]~57_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[18]~58\);

-- Location: LCFF_X63_Y18_N17
\inst3|inst|CLK_COUNT_400HZ[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[18]~57_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[14]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(18));

-- Location: LCCOMB_X63_Y18_N18
\inst3|inst|CLK_COUNT_400HZ[19]~59\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[19]~59_combout\ = \inst3|inst|CLK_COUNT_400HZ[18]~58\ $ (\inst3|inst|CLK_COUNT_400HZ\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst|CLK_COUNT_400HZ\(19),
	cin => \inst3|inst|CLK_COUNT_400HZ[18]~58\,
	combout => \inst3|inst|CLK_COUNT_400HZ[19]~59_combout\);

-- Location: LCFF_X63_Y18_N19
\inst3|inst|CLK_COUNT_400HZ[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[19]~59_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[14]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(19));

-- Location: LCCOMB_X63_Y18_N22
\inst3|inst|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|LessThan0~4_combout\ = (!\inst3|inst|CLK_COUNT_400HZ\(16) & (!\inst3|inst|CLK_COUNT_400HZ\(17) & (!\inst3|inst|CLK_COUNT_400HZ\(18) & !\inst3|inst|CLK_COUNT_400HZ\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CLK_COUNT_400HZ\(16),
	datab => \inst3|inst|CLK_COUNT_400HZ\(17),
	datac => \inst3|inst|CLK_COUNT_400HZ\(18),
	datad => \inst3|inst|CLK_COUNT_400HZ\(19),
	combout => \inst3|inst|LessThan0~4_combout\);

-- Location: LCCOMB_X64_Y19_N14
\inst3|inst|CLK_400HZ~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_400HZ~0_combout\ = \inst3|inst|CLK_400HZ~regout\ $ ((((!\inst3|inst|LessThan0~3_combout\ & !\inst3|inst|LessThan0~2_combout\)) # (!\inst3|inst|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|LessThan0~3_combout\,
	datab => \inst3|inst|LessThan0~4_combout\,
	datac => \inst3|inst|CLK_400HZ~regout\,
	datad => \inst3|inst|LessThan0~2_combout\,
	combout => \inst3|inst|CLK_400HZ~0_combout\);

-- Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\reset~~I\ : cycloneii_io
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
	padio => \ww_reset~\,
	combout => \reset~~combout\);

-- Location: LCFF_X64_Y19_N15
\inst3|inst|CLK_400HZ\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_400HZ~0_combout\,
	sclr => \ALT_INV_reset~~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_400HZ~regout\);

-- Location: CLKCTRL_G7
\inst3|inst|CLK_400HZ~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst3|inst|CLK_400HZ~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst3|inst|CLK_400HZ~clkctrl_outclk\);

-- Location: LCCOMB_X47_Y26_N28
\inst3|inst|LCD_RS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|LCD_RS~0_combout\ = (!\inst3|inst|state.HOLD~regout\ & !\inst3|inst|state.DROP_LCD_E~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.HOLD~regout\,
	datad => \inst3|inst|state.DROP_LCD_E~regout\,
	combout => \inst3|inst|LCD_RS~0_combout\);

-- Location: CLKDELAYCTRL_G4
\reset~~clk_delay_ctrl\ : cycloneii_clk_delay_ctrl
-- pragma translate_off
GENERIC MAP (
	delay_chain_mode => "none",
	use_new_style_dq_detection => "false")
-- pragma translate_on
PORT MAP (
	clk => \reset~~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	clkout => \reset~~clk_delay_ctrl_clkout\);

-- Location: CLKCTRL_G4
\reset~~clkctrl\ : cycloneii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~~clkctrl_outclk\);

-- Location: LCFF_X47_Y26_N13
\inst3|inst|state.DROP_LCD_E\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	sdata => \inst3|inst|LCD_RS~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.DROP_LCD_E~regout\);

-- Location: LCFF_X47_Y26_N7
\inst3|inst|state.HOLD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	sdata => \inst3|inst|state.DROP_LCD_E~regout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.HOLD~regout\);

-- Location: LCCOMB_X50_Y27_N8
\inst3|inst|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Add2~0_combout\ = \inst3|inst|CHAR_COUNT\(0) $ (VCC)
-- \inst3|inst|Add2~1\ = CARRY(\inst3|inst|CHAR_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|CHAR_COUNT\(0),
	datad => VCC,
	combout => \inst3|inst|Add2~0_combout\,
	cout => \inst3|inst|Add2~1\);

-- Location: LCCOMB_X47_Y26_N0
\inst3|inst|state.RESET1~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|state.RESET1~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst3|inst|state.RESET1~feeder_combout\);

-- Location: LCFF_X47_Y26_N1
\inst3|inst|state.RESET1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|state.RESET1~feeder_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.RESET1~regout\);

-- Location: LCCOMB_X48_Y26_N28
\inst3|inst|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Add2~2_combout\ = (\inst3|inst|state.RESET1~regout\ & !\inst3|inst|state.Print_String~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|state.RESET1~regout\,
	datad => \inst3|inst|state.Print_String~regout\,
	combout => \inst3|inst|Add2~2_combout\);

-- Location: LCCOMB_X50_Y26_N14
\inst3|inst|Add2~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Add2~13_combout\ = (\inst3|inst|Add2~11_combout\ & ((\inst3|inst|Selector15~4_combout\) # ((\inst3|inst|Add2~2_combout\ & \inst3|inst|CHAR_COUNT\(4))))) # (!\inst3|inst|Add2~11_combout\ & (\inst3|inst|Add2~2_combout\ & 
-- (\inst3|inst|CHAR_COUNT\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Add2~11_combout\,
	datab => \inst3|inst|Add2~2_combout\,
	datac => \inst3|inst|CHAR_COUNT\(4),
	datad => \inst3|inst|Selector15~4_combout\,
	combout => \inst3|inst|Add2~13_combout\);

-- Location: LCFF_X50_Y26_N15
\inst3|inst|CHAR_COUNT[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Add2~13_combout\,
	ena => \reset~~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CHAR_COUNT\(4));

-- Location: LCCOMB_X50_Y27_N10
\inst3|inst|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Add2~4_combout\ = (\inst3|inst|CHAR_COUNT\(1) & (!\inst3|inst|Add2~1\)) # (!\inst3|inst|CHAR_COUNT\(1) & ((\inst3|inst|Add2~1\) # (GND)))
-- \inst3|inst|Add2~5\ = CARRY((!\inst3|inst|Add2~1\) # (!\inst3|inst|CHAR_COUNT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|CHAR_COUNT\(1),
	datad => VCC,
	cin => \inst3|inst|Add2~1\,
	combout => \inst3|inst|Add2~4_combout\,
	cout => \inst3|inst|Add2~5\);

-- Location: LCCOMB_X50_Y26_N6
\inst3|inst|Add2~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Add2~15_combout\ = (\inst3|inst|Add2~2_combout\ & ((\inst3|inst|CHAR_COUNT\(1)) # ((\inst3|inst|Add2~4_combout\ & \inst3|inst|Selector15~4_combout\)))) # (!\inst3|inst|Add2~2_combout\ & (\inst3|inst|Add2~4_combout\ & 
-- ((\inst3|inst|Selector15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Add2~2_combout\,
	datab => \inst3|inst|Add2~4_combout\,
	datac => \inst3|inst|CHAR_COUNT\(1),
	datad => \inst3|inst|Selector15~4_combout\,
	combout => \inst3|inst|Add2~15_combout\);

-- Location: LCFF_X50_Y26_N7
\inst3|inst|CHAR_COUNT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Add2~15_combout\,
	ena => \reset~~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CHAR_COUNT\(1));

-- Location: LCCOMB_X50_Y27_N12
\inst3|inst|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Add2~6_combout\ = (\inst3|inst|CHAR_COUNT\(2) & (\inst3|inst|Add2~5\ $ (GND))) # (!\inst3|inst|CHAR_COUNT\(2) & (!\inst3|inst|Add2~5\ & VCC))
-- \inst3|inst|Add2~7\ = CARRY((\inst3|inst|CHAR_COUNT\(2) & !\inst3|inst|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CHAR_COUNT\(2),
	datad => VCC,
	cin => \inst3|inst|Add2~5\,
	combout => \inst3|inst|Add2~6_combout\,
	cout => \inst3|inst|Add2~7\);

-- Location: LCCOMB_X50_Y26_N8
\inst3|inst|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Add2~14_combout\ = (\inst3|inst|Add2~2_combout\ & ((\inst3|inst|CHAR_COUNT\(2)) # ((\inst3|inst|Add2~6_combout\ & \inst3|inst|Selector15~4_combout\)))) # (!\inst3|inst|Add2~2_combout\ & (\inst3|inst|Add2~6_combout\ & 
-- ((\inst3|inst|Selector15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Add2~2_combout\,
	datab => \inst3|inst|Add2~6_combout\,
	datac => \inst3|inst|CHAR_COUNT\(2),
	datad => \inst3|inst|Selector15~4_combout\,
	combout => \inst3|inst|Add2~14_combout\);

-- Location: LCFF_X50_Y26_N9
\inst3|inst|CHAR_COUNT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Add2~14_combout\,
	ena => \reset~~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CHAR_COUNT\(2));

-- Location: LCCOMB_X50_Y26_N16
\inst3|inst|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Add2~10_combout\ = (\inst3|inst|Add2~2_combout\ & ((\inst3|inst|CHAR_COUNT\(3)) # ((\inst3|inst|Add2~8_combout\ & \inst3|inst|Selector15~4_combout\)))) # (!\inst3|inst|Add2~2_combout\ & (\inst3|inst|Add2~8_combout\ & 
-- ((\inst3|inst|Selector15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Add2~2_combout\,
	datab => \inst3|inst|Add2~8_combout\,
	datac => \inst3|inst|CHAR_COUNT\(3),
	datad => \inst3|inst|Selector15~4_combout\,
	combout => \inst3|inst|Add2~10_combout\);

-- Location: LCFF_X50_Y26_N17
\inst3|inst|CHAR_COUNT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Add2~10_combout\,
	ena => \reset~~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CHAR_COUNT\(3));

-- Location: LCCOMB_X51_Y27_N24
\inst3|inst|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Equal2~0_combout\ = (\inst3|inst1|altsyncram_component|auto_generated|q_a\(4) & (\inst3|inst1|altsyncram_component|auto_generated|q_a\(5) & (\inst3|inst1|altsyncram_component|auto_generated|q_a\(6) & 
-- !\inst3|inst1|altsyncram_component|auto_generated|q_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst1|altsyncram_component|auto_generated|q_a\(4),
	datab => \inst3|inst1|altsyncram_component|auto_generated|q_a\(5),
	datac => \inst3|inst1|altsyncram_component|auto_generated|q_a\(6),
	datad => \inst3|inst1|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst3|inst|Equal2~0_combout\);

-- Location: LCCOMB_X51_Y26_N14
\inst3|inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Equal0~0_combout\ = (!\inst3|inst1|altsyncram_component|auto_generated|q_a\(7) & (!\inst3|inst1|altsyncram_component|auto_generated|q_a\(4) & (!\inst3|inst1|altsyncram_component|auto_generated|q_a\(6) & 
-- !\inst3|inst1|altsyncram_component|auto_generated|q_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst1|altsyncram_component|auto_generated|q_a\(7),
	datab => \inst3|inst1|altsyncram_component|auto_generated|q_a\(4),
	datac => \inst3|inst1|altsyncram_component|auto_generated|q_a\(6),
	datad => \inst3|inst1|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst3|inst|Equal0~0_combout\);

-- Location: LCCOMB_X55_Y26_N18
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst|LPM_COUNTER_component|auto_generated|safe_q\(0) $ (VCC)
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst|LPM_COUNTER_component|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

-- Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\CLK~~I\ : cycloneii_io
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
	padio => \ww_CLK~\,
	combout => \CLK~~combout\);

-- Location: LCCOMB_X54_Y26_N6
\inst7|count[0]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|count[0]~5_combout\ = \inst7|count\(0) $ (VCC)
-- \inst7|count[0]~6\ = CARRY(\inst7|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|count\(0),
	datad => VCC,
	combout => \inst7|count[0]~5_combout\,
	cout => \inst7|count[0]~6\);

-- Location: LCCOMB_X55_Y27_N10
\inst7|Cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Cnt~0_combout\ = (\inst7|state.WriteB~regout\) # ((\inst7|state.GetA~regout\ & \inst7|delay~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.WriteB~regout\,
	datac => \inst7|state.GetA~regout\,
	datad => \inst7|delay~regout\,
	combout => \inst7|Cnt~0_combout\);

-- Location: LCCOMB_X54_Y26_N8
\inst7|count[1]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|count[1]~7_combout\ = (\inst7|count\(1) & ((\inst7|Cnt~0_combout\ & (!\inst7|count[0]~6\)) # (!\inst7|Cnt~0_combout\ & (\inst7|count[0]~6\ & VCC)))) # (!\inst7|count\(1) & ((\inst7|Cnt~0_combout\ & ((\inst7|count[0]~6\) # (GND))) # 
-- (!\inst7|Cnt~0_combout\ & (!\inst7|count[0]~6\))))
-- \inst7|count[1]~8\ = CARRY((\inst7|count\(1) & (\inst7|Cnt~0_combout\ & !\inst7|count[0]~6\)) # (!\inst7|count\(1) & ((\inst7|Cnt~0_combout\) # (!\inst7|count[0]~6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|count\(1),
	datab => \inst7|Cnt~0_combout\,
	datad => VCC,
	cin => \inst7|count[0]~6\,
	combout => \inst7|count[1]~7_combout\,
	cout => \inst7|count[1]~8\);

-- Location: LCCOMB_X54_Y26_N10
\inst7|count[2]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|count[2]~9_combout\ = ((\inst7|count\(2) $ (\inst7|Cnt~0_combout\ $ (\inst7|count[1]~8\)))) # (GND)
-- \inst7|count[2]~10\ = CARRY((\inst7|count\(2) & ((!\inst7|count[1]~8\) # (!\inst7|Cnt~0_combout\))) # (!\inst7|count\(2) & (!\inst7|Cnt~0_combout\ & !\inst7|count[1]~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|count\(2),
	datab => \inst7|Cnt~0_combout\,
	datad => VCC,
	cin => \inst7|count[1]~8\,
	combout => \inst7|count[2]~9_combout\,
	cout => \inst7|count[2]~10\);

-- Location: LCCOMB_X54_Y26_N12
\inst7|count[3]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|count[3]~11_combout\ = (\inst7|count\(3) & ((\inst7|Cnt~0_combout\ & (!\inst7|count[2]~10\)) # (!\inst7|Cnt~0_combout\ & (\inst7|count[2]~10\ & VCC)))) # (!\inst7|count\(3) & ((\inst7|Cnt~0_combout\ & ((\inst7|count[2]~10\) # (GND))) # 
-- (!\inst7|Cnt~0_combout\ & (!\inst7|count[2]~10\))))
-- \inst7|count[3]~12\ = CARRY((\inst7|count\(3) & (\inst7|Cnt~0_combout\ & !\inst7|count[2]~10\)) # (!\inst7|count\(3) & ((\inst7|Cnt~0_combout\) # (!\inst7|count[2]~10\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|count\(3),
	datab => \inst7|Cnt~0_combout\,
	datad => VCC,
	cin => \inst7|count[2]~10\,
	combout => \inst7|count[3]~11_combout\,
	cout => \inst7|count[3]~12\);

-- Location: LCCOMB_X54_Y26_N14
\inst7|count[4]~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|count[4]~14_combout\ = \inst7|count\(4) $ (\inst7|count[3]~12\ $ (\inst7|Cnt~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|count\(4),
	datad => \inst7|Cnt~0_combout\,
	cin => \inst7|count[3]~12\,
	combout => \inst7|count[4]~14_combout\);

-- Location: LCCOMB_X54_Y26_N26
\inst7|count[4]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|count[4]~13_combout\ = (\inst7|Cnt~1_combout\) # ((\inst7|Cnt~0_combout\) # ((\inst7|state.Compare~regout\ & \inst7|LessThan0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Cnt~1_combout\,
	datab => \inst7|state.Compare~regout\,
	datac => \inst7|LessThan0~14_combout\,
	datad => \inst7|Cnt~0_combout\,
	combout => \inst7|count[4]~13_combout\);

-- Location: LCFF_X54_Y26_N15
\inst7|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst7|count[4]~14_combout\,
	sclr => \inst7|Cnt~1_combout\,
	ena => \inst7|count[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|count\(4));

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

-- Location: LCCOMB_X55_Y26_N12
\inst7|Selector5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector5~3_combout\ = (\inst7|state.Waiting~regout\ & (\inst7|Flag~regout\ & ((\inst7|state.CheckFlag~regout\)))) # (!\inst7|state.Waiting~regout\ & ((\Launch~combout\) # ((\inst7|Flag~regout\ & \inst7|state.CheckFlag~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.Waiting~regout\,
	datab => \inst7|Flag~regout\,
	datac => \Launch~combout\,
	datad => \inst7|state.CheckFlag~regout\,
	combout => \inst7|Selector5~3_combout\);

-- Location: LCFF_X54_Y26_N9
\inst7|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst7|count[1]~7_combout\,
	sclr => \inst7|Cnt~1_combout\,
	ena => \inst7|count[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|count\(1));

-- Location: LCCOMB_X54_Y26_N30
\inst7|Selector5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector5~4_combout\ = (\inst7|count\(2) & (\inst7|state.CheckLoop~regout\ & (\inst7|count\(1) & \inst7|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|count\(2),
	datab => \inst7|state.CheckLoop~regout\,
	datac => \inst7|count\(1),
	datad => \inst7|count\(0),
	combout => \inst7|Selector5~4_combout\);

-- Location: LCCOMB_X54_Y26_N20
\inst7|Selector5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector5~5_combout\ = (\inst7|Selector5~3_combout\) # ((\inst7|count\(3) & (\inst7|count\(4) & \inst7|Selector5~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|count\(3),
	datab => \inst7|count\(4),
	datac => \inst7|Selector5~3_combout\,
	datad => \inst7|Selector5~4_combout\,
	combout => \inst7|Selector5~5_combout\);

-- Location: LCCOMB_X54_Y26_N22
\inst7|Selector5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector5~6_combout\ = (\inst7|Selector5~5_combout\) # ((\inst7|delay~regout\ & ((\inst7|state.GetA~regout\) # (\inst7|state.GetB~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.GetA~regout\,
	datab => \inst7|state.GetB~regout\,
	datac => \inst7|Selector5~5_combout\,
	datad => \inst7|delay~regout\,
	combout => \inst7|Selector5~6_combout\);

-- Location: LCCOMB_X54_Y26_N16
\inst7|state~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|state~18_combout\ = (\inst7|state.CheckLoop~regout\ & ((\inst7|Selector5~6_combout\) # ((\inst7|state.Compare~regout\ & \inst7|LessThan0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.Compare~regout\,
	datab => \inst7|state.CheckLoop~regout\,
	datac => \inst7|LessThan0~14_combout\,
	datad => \inst7|Selector5~6_combout\,
	combout => \inst7|state~18_combout\);

-- Location: LCFF_X54_Y26_N17
\inst7|state.CheckFlag\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst7|state~18_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state.CheckFlag~regout\);

-- Location: LCCOMB_X55_Y26_N30
\inst7|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector6~0_combout\ = (\inst7|state.GetB~regout\) # ((\inst7|state.GetA~regout\) # ((\inst7|state.Waiting~regout\ & !\inst7|state.CheckFlag~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.Waiting~regout\,
	datab => \inst7|state.CheckFlag~regout\,
	datac => \inst7|state.GetB~regout\,
	datad => \inst7|state.GetA~regout\,
	combout => \inst7|Selector6~0_combout\);

-- Location: LCCOMB_X54_Y26_N24
\inst7|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector6~1_combout\ = (\inst7|state.Compare~regout\ & ((\inst7|LessThan0~14_combout\) # ((\inst7|Flag~regout\)))) # (!\inst7|state.Compare~regout\ & (((\inst7|Flag~regout\ & \inst7|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan0~14_combout\,
	datab => \inst7|state.Compare~regout\,
	datac => \inst7|Flag~regout\,
	datad => \inst7|Selector6~0_combout\,
	combout => \inst7|Selector6~1_combout\);

-- Location: LCFF_X54_Y26_N25
\inst7|Flag\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst7|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|Flag~regout\);

-- Location: LCCOMB_X55_Y26_N16
\inst7|Cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Cnt~1_combout\ = ((\inst7|Flag~regout\ & \inst7|state.CheckFlag~regout\)) # (!\inst7|state.Waiting~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.Waiting~regout\,
	datab => \inst7|Flag~regout\,
	datad => \inst7|state.CheckFlag~regout\,
	combout => \inst7|Cnt~1_combout\);

-- Location: LCFF_X54_Y26_N7
\inst7|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst7|count[0]~5_combout\,
	sclr => \inst7|Cnt~1_combout\,
	ena => \inst7|count[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|count\(0));

-- Location: LCCOMB_X55_Y26_N14
\inst2|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[0]~0_combout\ = (\inst7|state.Waiting~regout\ & (\inst7|count\(0))) # (!\inst7|state.Waiting~regout\ & ((\inst|LPM_COUNTER_component|auto_generated|safe_q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.Waiting~regout\,
	datac => \inst7|count\(0),
	datad => \inst|LPM_COUNTER_component|auto_generated|safe_q\(0),
	combout => \inst2|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: LCCOMB_X55_Y26_N20
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCFF_X55_Y26_N21
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	aclr => \inst7|state.Waiting~regout\,
	ena => \inst7|ALT_INV_state.Waiting~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(1));

-- Location: LCCOMB_X55_Y26_N28
\inst2|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[1]~1_combout\ = (\inst7|state.Waiting~regout\ & ((\inst7|count\(1)))) # (!\inst7|state.Waiting~regout\ & (\inst|LPM_COUNTER_component|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.Waiting~regout\,
	datac => \inst|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => \inst7|count\(1),
	combout => \inst2|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCFF_X54_Y26_N11
\inst7|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst7|count[2]~9_combout\,
	sclr => \inst7|Cnt~1_combout\,
	ena => \inst7|count[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|count\(2));

-- Location: LCCOMB_X55_Y26_N6
\inst2|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[2]~2_combout\ = (\inst7|state.Waiting~regout\ & ((\inst7|count\(2)))) # (!\inst7|state.Waiting~regout\ & (\inst|LPM_COUNTER_component|auto_generated|safe_q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.Waiting~regout\,
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => \inst7|count\(2),
	combout => \inst2|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCCOMB_X55_Y26_N24
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(3) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCCOMB_X55_Y26_N26
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|LPM_COUNTER_component|auto_generated|safe_q\(4),
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\);

-- Location: LCFF_X55_Y26_N27
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	aclr => \inst7|state.Waiting~regout\,
	ena => \inst7|ALT_INV_state.Waiting~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(4));

-- Location: LCCOMB_X55_Y26_N2
\inst2|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[4]~4_combout\ = (\inst7|state.Waiting~regout\ & (\inst7|count\(4))) # (!\inst7|state.Waiting~regout\ & ((\inst|LPM_COUNTER_component|auto_generated|safe_q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|count\(4),
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datad => \inst7|state.Waiting~regout\,
	combout => \inst2|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X54_Y26_N0
\inst7|state~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|state~21_combout\ = (\inst7|state.Compare~regout\ & ((\inst7|LessThan0~14_combout\) # (\inst7|Selector5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|state.Compare~regout\,
	datac => \inst7|LessThan0~14_combout\,
	datad => \inst7|Selector5~6_combout\,
	combout => \inst7|state~21_combout\);

-- Location: LCFF_X54_Y26_N1
\inst7|state.SendAddrB_w\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst7|state~21_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state.SendAddrB_w~regout\);

-- Location: LCCOMB_X64_Y27_N0
\inst7|state.WriteB~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|state.WriteB~feeder_combout\ = \inst7|state.SendAddrB_w~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|state.SendAddrB_w~regout\,
	combout => \inst7|state.WriteB~feeder_combout\);

-- Location: LCFF_X64_Y27_N1
\inst7|state.WriteB\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst7|state.WriteB~feeder_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state.WriteB~regout\);

-- Location: LCCOMB_X64_Y27_N2
\inst7|state.SendAddrA_w~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|state.SendAddrA_w~feeder_combout\ = \inst7|state.WriteB~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|state.WriteB~regout\,
	combout => \inst7|state.SendAddrA_w~feeder_combout\);

-- Location: LCFF_X64_Y27_N3
\inst7|state.SendAddrA_w\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst7|state.SendAddrA_w~feeder_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state.SendAddrA_w~regout\);

-- Location: LCCOMB_X64_Y27_N26
\inst7|state.WriteA~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|state.WriteA~feeder_combout\ = \inst7|state.SendAddrA_w~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst7|state.SendAddrA_w~regout\,
	combout => \inst7|state.WriteA~feeder_combout\);

-- Location: LCFF_X64_Y27_N27
\inst7|state.WriteA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst7|state.WriteA~feeder_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state.WriteA~regout\);

-- Location: LCCOMB_X56_Y26_N6
\inst7|dataA[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|dataA[7]~0_combout\ = (\inst7|state.GetA~regout\ & \inst7|delay~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|state.GetA~regout\,
	datad => \inst7|delay~regout\,
	combout => \inst7|dataA[7]~0_combout\);

-- Location: LCFF_X53_Y26_N31
\inst7|dataA[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst1|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	ena => \inst7|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|dataA\(7));

-- Location: LCCOMB_X53_Y26_N0
\inst7|DataOut[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|DataOut[7]~0_combout\ = (\inst7|state.SendAddrA_w~regout\ & (\inst7|dataA\(7))) # (!\inst7|state.SendAddrA_w~regout\ & ((\inst7|state.WriteA~regout\ & (\inst7|dataA\(7))) # (!\inst7|state.WriteA~regout\ & ((\inst7|dataB\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.SendAddrA_w~regout\,
	datab => \inst7|dataA\(7),
	datac => \inst7|dataB\(7),
	datad => \inst7|state.WriteA~regout\,
	combout => \inst7|DataOut[7]~0_combout\);

-- Location: M4K_X52_Y26
\inst1|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"E0E1E2E3E4E5E6E7E8E9EAEBECEDEEEFF0F1F2F3F4F5F6F7F8F9FAFBFCFDFEFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "RAM32x8.mif",
	init_file_layout => "port_a",
	logical_ram_name => "RAM32x8:inst1|altsyncram:altsyncram_component|altsyncram_8qc1:auto_generated|ALTSYNCRAM",
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
	portawe => \inst7|WR~combout\,
	clk0 => \ALT_INV_CLK~~combout\,
	portadatain => \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCFF_X53_Y26_N29
\inst7|dataA[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst1|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	ena => \inst7|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|dataA\(6));

-- Location: LCCOMB_X56_Y26_N0
\inst7|dataB[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|dataB[7]~0_combout\ = (\inst7|state.GetB~regout\ & \inst7|delay~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|state.GetB~regout\,
	datad => \inst7|delay~regout\,
	combout => \inst7|dataB[7]~0_combout\);

-- Location: LCFF_X53_Y26_N11
\inst7|dataB[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst1|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	ena => \inst7|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|dataB\(6));

-- Location: LCCOMB_X53_Y26_N10
\inst7|DataOut[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|DataOut[6]~1_combout\ = (\inst7|state.SendAddrA_w~regout\ & (\inst7|dataA\(6))) # (!\inst7|state.SendAddrA_w~regout\ & ((\inst7|state.WriteA~regout\ & (\inst7|dataA\(6))) # (!\inst7|state.WriteA~regout\ & ((\inst7|dataB\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.SendAddrA_w~regout\,
	datab => \inst7|dataA\(6),
	datac => \inst7|dataB\(6),
	datad => \inst7|state.WriteA~regout\,
	combout => \inst7|DataOut[6]~1_combout\);

-- Location: LCFF_X53_Y26_N13
\inst7|dataB[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst1|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	ena => \inst7|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|dataB\(5));

-- Location: LCFF_X53_Y26_N27
\inst7|dataA[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst1|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	ena => \inst7|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|dataA\(5));

-- Location: LCCOMB_X53_Y26_N12
\inst7|DataOut[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|DataOut[5]~2_combout\ = (\inst7|state.SendAddrA_w~regout\ & (((\inst7|dataA\(5))))) # (!\inst7|state.SendAddrA_w~regout\ & ((\inst7|state.WriteA~regout\ & ((\inst7|dataA\(5)))) # (!\inst7|state.WriteA~regout\ & (\inst7|dataB\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.SendAddrA_w~regout\,
	datab => \inst7|state.WriteA~regout\,
	datac => \inst7|dataB\(5),
	datad => \inst7|dataA\(5),
	combout => \inst7|DataOut[5]~2_combout\);

-- Location: LCFF_X53_Y26_N25
\inst7|dataA[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst1|altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	ena => \inst7|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|dataA\(4));

-- Location: LCFF_X53_Y26_N3
\inst7|dataB[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst1|altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	ena => \inst7|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|dataB\(4));

-- Location: LCCOMB_X53_Y26_N2
\inst7|DataOut[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|DataOut[4]~3_combout\ = (\inst7|state.SendAddrA_w~regout\ & (\inst7|dataA\(4))) # (!\inst7|state.SendAddrA_w~regout\ & ((\inst7|state.WriteA~regout\ & (\inst7|dataA\(4))) # (!\inst7|state.WriteA~regout\ & ((\inst7|dataB\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.SendAddrA_w~regout\,
	datab => \inst7|dataA\(4),
	datac => \inst7|dataB\(4),
	datad => \inst7|state.WriteA~regout\,
	combout => \inst7|DataOut[4]~3_combout\);

-- Location: LCFF_X53_Y26_N9
\inst7|dataB[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst1|altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	ena => \inst7|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|dataB\(3));

-- Location: LCFF_X53_Y26_N23
\inst7|dataA[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst1|altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	ena => \inst7|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|dataA\(3));

-- Location: LCCOMB_X53_Y26_N8
\inst7|DataOut[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|DataOut[3]~4_combout\ = (\inst7|state.SendAddrA_w~regout\ & (((\inst7|dataA\(3))))) # (!\inst7|state.SendAddrA_w~regout\ & ((\inst7|state.WriteA~regout\ & ((\inst7|dataA\(3)))) # (!\inst7|state.WriteA~regout\ & (\inst7|dataB\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.SendAddrA_w~regout\,
	datab => \inst7|state.WriteA~regout\,
	datac => \inst7|dataB\(3),
	datad => \inst7|dataA\(3),
	combout => \inst7|DataOut[3]~4_combout\);

-- Location: LCFF_X53_Y26_N21
\inst7|dataA[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst1|altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	ena => \inst7|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|dataA\(2));

-- Location: LCFF_X53_Y26_N7
\inst7|dataB[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst1|altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	ena => \inst7|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|dataB\(2));

-- Location: LCCOMB_X53_Y26_N6
\inst7|DataOut[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|DataOut[2]~5_combout\ = (\inst7|state.SendAddrA_w~regout\ & (\inst7|dataA\(2))) # (!\inst7|state.SendAddrA_w~regout\ & ((\inst7|state.WriteA~regout\ & (\inst7|dataA\(2))) # (!\inst7|state.WriteA~regout\ & ((\inst7|dataB\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.SendAddrA_w~regout\,
	datab => \inst7|dataA\(2),
	datac => \inst7|dataB\(2),
	datad => \inst7|state.WriteA~regout\,
	combout => \inst7|DataOut[2]~5_combout\);

-- Location: LCFF_X53_Y26_N5
\inst7|dataB[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst1|altsyncram_component|auto_generated|q_a\(1),
	sload => VCC,
	ena => \inst7|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|dataB\(1));

-- Location: LCFF_X53_Y26_N19
\inst7|dataA[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst1|altsyncram_component|auto_generated|q_a\(1),
	sload => VCC,
	ena => \inst7|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|dataA\(1));

-- Location: LCCOMB_X53_Y26_N4
\inst7|DataOut[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|DataOut[1]~6_combout\ = (\inst7|state.SendAddrA_w~regout\ & (((\inst7|dataA\(1))))) # (!\inst7|state.SendAddrA_w~regout\ & ((\inst7|state.WriteA~regout\ & ((\inst7|dataA\(1)))) # (!\inst7|state.WriteA~regout\ & (\inst7|dataB\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.SendAddrA_w~regout\,
	datab => \inst7|state.WriteA~regout\,
	datac => \inst7|dataB\(1),
	datad => \inst7|dataA\(1),
	combout => \inst7|DataOut[1]~6_combout\);

-- Location: LCFF_X53_Y26_N17
\inst7|dataA[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst1|altsyncram_component|auto_generated|q_a\(0),
	sload => VCC,
	ena => \inst7|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|dataA\(0));

-- Location: LCFF_X53_Y26_N15
\inst7|dataB[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst1|altsyncram_component|auto_generated|q_a\(0),
	sload => VCC,
	ena => \inst7|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|dataB\(0));

-- Location: LCCOMB_X53_Y26_N14
\inst7|DataOut[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|DataOut[0]~7_combout\ = (\inst7|state.SendAddrA_w~regout\ & (\inst7|dataA\(0))) # (!\inst7|state.SendAddrA_w~regout\ & ((\inst7|state.WriteA~regout\ & (\inst7|dataA\(0))) # (!\inst7|state.WriteA~regout\ & ((\inst7|dataB\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.SendAddrA_w~regout\,
	datab => \inst7|dataA\(0),
	datac => \inst7|dataB\(0),
	datad => \inst7|state.WriteA~regout\,
	combout => \inst7|DataOut[0]~7_combout\);

-- Location: LCFF_X53_Y26_N1
\inst7|dataB[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst1|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	ena => \inst7|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|dataB\(7));

-- Location: LCCOMB_X53_Y26_N16
\inst7|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LessThan0~1_cout\ = CARRY((\inst7|dataA\(0) & !\inst7|dataB\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|dataA\(0),
	datab => \inst7|dataB\(0),
	datad => VCC,
	cout => \inst7|LessThan0~1_cout\);

-- Location: LCCOMB_X53_Y26_N18
\inst7|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LessThan0~3_cout\ = CARRY((\inst7|dataB\(1) & ((!\inst7|LessThan0~1_cout\) # (!\inst7|dataA\(1)))) # (!\inst7|dataB\(1) & (!\inst7|dataA\(1) & !\inst7|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|dataB\(1),
	datab => \inst7|dataA\(1),
	datad => VCC,
	cin => \inst7|LessThan0~1_cout\,
	cout => \inst7|LessThan0~3_cout\);

-- Location: LCCOMB_X53_Y26_N20
\inst7|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LessThan0~5_cout\ = CARRY((\inst7|dataB\(2) & (\inst7|dataA\(2) & !\inst7|LessThan0~3_cout\)) # (!\inst7|dataB\(2) & ((\inst7|dataA\(2)) # (!\inst7|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|dataB\(2),
	datab => \inst7|dataA\(2),
	datad => VCC,
	cin => \inst7|LessThan0~3_cout\,
	cout => \inst7|LessThan0~5_cout\);

-- Location: LCCOMB_X53_Y26_N22
\inst7|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LessThan0~7_cout\ = CARRY((\inst7|dataB\(3) & ((!\inst7|LessThan0~5_cout\) # (!\inst7|dataA\(3)))) # (!\inst7|dataB\(3) & (!\inst7|dataA\(3) & !\inst7|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|dataB\(3),
	datab => \inst7|dataA\(3),
	datad => VCC,
	cin => \inst7|LessThan0~5_cout\,
	cout => \inst7|LessThan0~7_cout\);

-- Location: LCCOMB_X53_Y26_N24
\inst7|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LessThan0~9_cout\ = CARRY((\inst7|dataA\(4) & ((!\inst7|LessThan0~7_cout\) # (!\inst7|dataB\(4)))) # (!\inst7|dataA\(4) & (!\inst7|dataB\(4) & !\inst7|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|dataA\(4),
	datab => \inst7|dataB\(4),
	datad => VCC,
	cin => \inst7|LessThan0~7_cout\,
	cout => \inst7|LessThan0~9_cout\);

-- Location: LCCOMB_X53_Y26_N26
\inst7|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LessThan0~11_cout\ = CARRY((\inst7|dataB\(5) & ((!\inst7|LessThan0~9_cout\) # (!\inst7|dataA\(5)))) # (!\inst7|dataB\(5) & (!\inst7|dataA\(5) & !\inst7|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|dataB\(5),
	datab => \inst7|dataA\(5),
	datad => VCC,
	cin => \inst7|LessThan0~9_cout\,
	cout => \inst7|LessThan0~11_cout\);

-- Location: LCCOMB_X53_Y26_N28
\inst7|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LessThan0~13_cout\ = CARRY((\inst7|dataB\(6) & (\inst7|dataA\(6) & !\inst7|LessThan0~11_cout\)) # (!\inst7|dataB\(6) & ((\inst7|dataA\(6)) # (!\inst7|LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|dataB\(6),
	datab => \inst7|dataA\(6),
	datad => VCC,
	cin => \inst7|LessThan0~11_cout\,
	cout => \inst7|LessThan0~13_cout\);

-- Location: LCCOMB_X53_Y26_N30
\inst7|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|LessThan0~14_combout\ = (\inst7|dataB\(7) & (\inst7|LessThan0~13_cout\ & \inst7|dataA\(7))) # (!\inst7|dataB\(7) & ((\inst7|LessThan0~13_cout\) # (\inst7|dataA\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|dataB\(7),
	datad => \inst7|dataA\(7),
	cin => \inst7|LessThan0~13_cout\,
	combout => \inst7|LessThan0~14_combout\);

-- Location: LCCOMB_X54_Y26_N28
\inst7|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector4~0_combout\ = (\inst7|state.WriteA~regout\) # ((\inst7|state.Compare~regout\ & !\inst7|LessThan0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.WriteA~regout\,
	datab => \inst7|state.Compare~regout\,
	datac => \inst7|LessThan0~14_combout\,
	combout => \inst7|Selector4~0_combout\);

-- Location: LCFF_X54_Y26_N29
\inst7|state.CheckLoop\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst7|Selector4~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state.CheckLoop~regout\);

-- Location: LCCOMB_X55_Y26_N10
\inst7|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector0~0_combout\ = (\inst7|state.CheckFlag~regout\) # (!\inst7|state.Waiting~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.Waiting~regout\,
	datad => \inst7|state.CheckFlag~regout\,
	combout => \inst7|Selector0~0_combout\);

-- Location: LCCOMB_X54_Y26_N4
\inst7|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector1~0_combout\ = (\inst7|Selector5~7_combout\ & (((\inst7|Selector0~0_combout\)))) # (!\inst7|Selector5~7_combout\ & ((\inst7|Selector5~6_combout\ & ((\inst7|Selector0~0_combout\))) # (!\inst7|Selector5~6_combout\ & 
-- (\inst7|state.CheckLoop~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Selector5~7_combout\,
	datab => \inst7|state.CheckLoop~regout\,
	datac => \inst7|Selector0~0_combout\,
	datad => \inst7|Selector5~6_combout\,
	combout => \inst7|Selector1~0_combout\);

-- Location: LCFF_X54_Y26_N5
\inst7|state.SendAddrA_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst7|Selector1~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state.SendAddrA_r~regout\);

-- Location: LCCOMB_X64_Y27_N22
\inst7|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector2~0_combout\ = (\inst7|state.SendAddrA_r~regout\) # ((!\inst7|delay~regout\ & \inst7|state.GetA~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|delay~regout\,
	datac => \inst7|state.GetA~regout\,
	datad => \inst7|state.SendAddrA_r~regout\,
	combout => \inst7|Selector2~0_combout\);

-- Location: LCFF_X64_Y27_N23
\inst7|state.GetA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst7|Selector2~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state.GetA~regout\);

-- Location: LCCOMB_X64_Y27_N8
\inst7|delay~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|delay~0_combout\ = \inst7|delay~regout\ $ (((\inst7|state.GetB~regout\) # (\inst7|state.GetA~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.GetB~regout\,
	datac => \inst7|delay~regout\,
	datad => \inst7|state.GetA~regout\,
	combout => \inst7|delay~0_combout\);

-- Location: LCFF_X64_Y27_N9
\inst7|delay\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst7|delay~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|delay~regout\);

-- Location: LCCOMB_X55_Y26_N0
\inst7|state~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|state~20_combout\ = (\inst7|state.GetA~regout\ & ((\inst7|Selector5~6_combout\) # ((\inst7|state.Compare~regout\ & \inst7|LessThan0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.Compare~regout\,
	datab => \inst7|state.GetA~regout\,
	datac => \inst7|LessThan0~14_combout\,
	datad => \inst7|Selector5~6_combout\,
	combout => \inst7|state~20_combout\);

-- Location: LCFF_X55_Y26_N1
\inst7|state.SendAddrB_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst7|state~20_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state.SendAddrB_r~regout\);

-- Location: LCCOMB_X64_Y27_N12
\inst7|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector3~0_combout\ = (\inst7|state.SendAddrB_r~regout\) # ((!\inst7|delay~regout\ & \inst7|state.GetB~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|delay~regout\,
	datac => \inst7|state.GetB~regout\,
	datad => \inst7|state.SendAddrB_r~regout\,
	combout => \inst7|Selector3~0_combout\);

-- Location: LCFF_X64_Y27_N13
\inst7|state.GetB\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst7|Selector3~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state.GetB~regout\);

-- Location: LCCOMB_X54_Y26_N18
\inst7|state~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|state~19_combout\ = (\inst7|state.GetB~regout\ & ((\inst7|Selector5~6_combout\) # ((\inst7|LessThan0~14_combout\ & \inst7|state.Compare~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|LessThan0~14_combout\,
	datab => \inst7|state.GetB~regout\,
	datac => \inst7|state.Compare~regout\,
	datad => \inst7|Selector5~6_combout\,
	combout => \inst7|state~19_combout\);

-- Location: LCFF_X54_Y26_N19
\inst7|state.Compare\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst7|state~19_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state.Compare~regout\);

-- Location: LCCOMB_X55_Y26_N8
\inst7|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst7|Selector0~1_combout\ = ((\inst7|Selector5~6_combout\) # ((\inst7|state.Compare~regout\ & \inst7|LessThan0~14_combout\))) # (!\inst7|Selector0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Selector0~0_combout\,
	datab => \inst7|state.Compare~regout\,
	datac => \inst7|LessThan0~14_combout\,
	datad => \inst7|Selector5~6_combout\,
	combout => \inst7|Selector0~1_combout\);

-- Location: LCFF_X55_Y26_N9
\inst7|state.Waiting\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst7|Selector0~1_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|state.Waiting~regout\);

-- Location: LCFF_X55_Y26_N19
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	aclr => \inst7|state.Waiting~regout\,
	ena => \inst7|ALT_INV_state.Waiting~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(0));

-- Location: LCCOMB_X55_Y26_N22
\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCFF_X55_Y26_N23
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	aclr => \inst7|state.Waiting~regout\,
	ena => \inst7|ALT_INV_state.Waiting~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(2));

-- Location: LCFF_X55_Y26_N25
\inst|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	aclr => \inst7|state.Waiting~regout\,
	ena => \inst7|ALT_INV_state.Waiting~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|LPM_COUNTER_component|auto_generated|safe_q\(3));

-- Location: LCFF_X54_Y26_N13
\inst7|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst7|count[3]~11_combout\,
	sclr => \inst7|Cnt~1_combout\,
	ena => \inst7|count[4]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst7|count\(3));

-- Location: LCCOMB_X55_Y26_N4
\inst2|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst2|$00000|auto_generated|result_node[3]~3_combout\ = (\inst7|state.Waiting~regout\ & ((\inst7|count\(3)))) # (!\inst7|state.Waiting~regout\ & (\inst|LPM_COUNTER_component|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.Waiting~regout\,
	datac => \inst|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => \inst7|count\(3),
	combout => \inst2|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCFF_X51_Y26_N19
\inst5|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst2|$00000|auto_generated|result_node[3]~3_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|dffs\(3));

-- Location: LCCOMB_X51_Y26_N18
\inst3|inst|Next_Char[3]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Next_Char[3]~2_combout\ = (\inst3|inst|CHAR_COUNT\(0) & (((\inst5|dffs\(3)) # (\inst3|inst|CHAR_COUNT\(3))))) # (!\inst3|inst|CHAR_COUNT\(0) & (\inst1|altsyncram_component|auto_generated|q_a\(7) & ((\inst3|inst|CHAR_COUNT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altsyncram_component|auto_generated|q_a\(7),
	datab => \inst3|inst|CHAR_COUNT\(0),
	datac => \inst5|dffs\(3),
	datad => \inst3|inst|CHAR_COUNT\(3),
	combout => \inst3|inst|Next_Char[3]~2_combout\);

-- Location: LCCOMB_X51_Y26_N24
\inst3|inst|Next_Char[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Next_Char[3]~3_combout\ = (\inst3|inst|Equal0~0_combout\ & ((\inst3|inst|Next_Char[3]~2_combout\) # (!\inst3|inst|Next_Char[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Next_Char[3]~0_combout\,
	datab => \inst3|inst|Equal0~0_combout\,
	datad => \inst3|inst|Next_Char[3]~2_combout\,
	combout => \inst3|inst|Next_Char[3]~3_combout\);

-- Location: LCCOMB_X49_Y26_N26
\inst3|inst|Next_Char[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Next_Char[3]~0_combout\ = (\inst3|inst|CHAR_COUNT\(4) & (!\inst3|inst|CHAR_COUNT\(1) & !\inst3|inst|CHAR_COUNT\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|CHAR_COUNT\(4),
	datac => \inst3|inst|CHAR_COUNT\(1),
	datad => \inst3|inst|CHAR_COUNT\(2),
	combout => \inst3|inst|Next_Char[3]~0_combout\);

-- Location: LCCOMB_X51_Y26_N0
\inst3|inst|Next_Char[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Next_Char[3]~1_combout\ = ((\inst3|inst|CHAR_COUNT\(0) & (\inst3|inst|CHAR_COUNT\(3) & \inst3|inst|Next_Char[3]~0_combout\))) # (!\inst3|inst|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CHAR_COUNT\(0),
	datab => \inst3|inst|CHAR_COUNT\(3),
	datac => \inst3|inst|Next_Char[3]~0_combout\,
	datad => \inst3|inst|Equal0~0_combout\,
	combout => \inst3|inst|Next_Char[3]~1_combout\);

-- Location: LCCOMB_X51_Y26_N26
\inst3|inst|Next_Char[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Next_Char[3]~4_combout\ = (\inst3|inst|Next_Char[3]~3_combout\ & ((\inst1|altsyncram_component|auto_generated|q_a\(3)) # ((!\inst3|inst|Next_Char[3]~1_combout\)))) # (!\inst3|inst|Next_Char[3]~3_combout\ & 
-- (((\inst3|inst1|altsyncram_component|auto_generated|q_a\(3) & \inst3|inst|Next_Char[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|altsyncram_component|auto_generated|q_a\(3),
	datab => \inst3|inst1|altsyncram_component|auto_generated|q_a\(3),
	datac => \inst3|inst|Next_Char[3]~3_combout\,
	datad => \inst3|inst|Next_Char[3]~1_combout\,
	combout => \inst3|inst|Next_Char[3]~4_combout\);

-- Location: LCFF_X51_Y26_N25
\inst5|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst2|$00000|auto_generated|result_node[1]~1_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst5|dffs\(1));

-- Location: LCCOMB_X51_Y26_N4
\inst3|inst|Next_Char[1]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Next_Char[1]~8_combout\ = (\inst3|inst|CHAR_COUNT\(0) & ((\inst3|inst|CHAR_COUNT\(3)) # ((\inst5|dffs\(1))))) # (!\inst3|inst|CHAR_COUNT\(0) & (\inst3|inst|CHAR_COUNT\(3) & ((\inst1|altsyncram_component|auto_generated|q_a\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CHAR_COUNT\(0),
	datab => \inst3|inst|CHAR_COUNT\(3),
	datac => \inst5|dffs\(1),
	datad => \inst1|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst3|inst|Next_Char[1]~8_combout\);

-- Location: LCCOMB_X51_Y26_N8
\inst3|inst|Next_Char[1]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Next_Char[1]~9_combout\ = (\inst3|inst|Equal0~0_combout\ & ((\inst3|inst|Next_Char[1]~8_combout\) # (!\inst3|inst|Next_Char[3]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Next_Char[3]~0_combout\,
	datab => \inst3|inst|Next_Char[1]~8_combout\,
	datad => \inst3|inst|Equal0~0_combout\,
	combout => \inst3|inst|Next_Char[1]~9_combout\);

-- Location: LCCOMB_X51_Y26_N30
\inst3|inst|Next_Char[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Next_Char[1]~10_combout\ = (\inst3|inst|Next_Char[1]~9_combout\ & (((\inst1|altsyncram_component|auto_generated|q_a\(1)) # (!\inst3|inst|Next_Char[3]~1_combout\)))) # (!\inst3|inst|Next_Char[1]~9_combout\ & 
-- (\inst3|inst1|altsyncram_component|auto_generated|q_a\(1) & ((\inst3|inst|Next_Char[3]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst1|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst1|altsyncram_component|auto_generated|q_a\(1),
	datac => \inst3|inst|Next_Char[1]~9_combout\,
	datad => \inst3|inst|Next_Char[3]~1_combout\,
	combout => \inst3|inst|Next_Char[1]~10_combout\);

-- Location: LCCOMB_X51_Y26_N28
\inst3|inst|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Equal2~1_combout\ = (\inst3|inst|Next_Char[2]~7_combout\ & (\inst3|inst|Next_Char[3]~4_combout\ & (\inst3|inst1|altsyncram_component|auto_generated|q_a\(7) & \inst3|inst|Next_Char[1]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Next_Char[2]~7_combout\,
	datab => \inst3|inst|Next_Char[3]~4_combout\,
	datac => \inst3|inst1|altsyncram_component|auto_generated|q_a\(7),
	datad => \inst3|inst|Next_Char[1]~10_combout\,
	combout => \inst3|inst|Equal2~1_combout\);

-- Location: LCCOMB_X50_Y26_N22
\inst3|inst|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector17~0_combout\ = (\inst3|inst|Equal3~0_combout\ & (\inst3|inst|CHAR_COUNT\(4))) # (!\inst3|inst|Equal3~0_combout\ & (((\inst3|inst|Equal2~0_combout\ & \inst3|inst|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Equal3~0_combout\,
	datab => \inst3|inst|CHAR_COUNT\(4),
	datac => \inst3|inst|Equal2~0_combout\,
	datad => \inst3|inst|Equal2~1_combout\,
	combout => \inst3|inst|Selector17~0_combout\);

-- Location: LCCOMB_X50_Y26_N24
\inst3|inst|Selector17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector17~1_combout\ = (\inst3|inst|LCD_RS~0_combout\ & (\inst3|inst|state.Print_String~regout\ & ((\inst3|inst|Selector17~0_combout\)))) # (!\inst3|inst|LCD_RS~0_combout\ & ((\inst3|inst|next_command.RETURN_HOME~regout\) # 
-- ((\inst3|inst|state.Print_String~regout\ & \inst3|inst|Selector17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|LCD_RS~0_combout\,
	datab => \inst3|inst|state.Print_String~regout\,
	datac => \inst3|inst|next_command.RETURN_HOME~regout\,
	datad => \inst3|inst|Selector17~0_combout\,
	combout => \inst3|inst|Selector17~1_combout\);

-- Location: LCFF_X50_Y26_N25
\inst3|inst|next_command.RETURN_HOME\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector17~1_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|next_command.RETURN_HOME~regout\);

-- Location: LCCOMB_X49_Y26_N20
\inst3|inst|state~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|state~31_combout\ = (\inst3|inst|state.HOLD~regout\ & \inst3|inst|next_command.RETURN_HOME~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.HOLD~regout\,
	datac => \inst3|inst|next_command.RETURN_HOME~regout\,
	combout => \inst3|inst|state~31_combout\);

-- Location: LCFF_X49_Y26_N21
\inst3|inst|state.RETURN_HOME\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|state~31_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.RETURN_HOME~regout\);

-- Location: LCCOMB_X47_Y26_N24
\inst3|inst|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector19~0_combout\ = (\inst3|inst|state.RESET2~regout\) # ((\inst3|inst|next_command.RESET3~regout\ & ((\inst3|inst|state.DROP_LCD_E~regout\) # (\inst3|inst|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.RESET2~regout\,
	datab => \inst3|inst|state.DROP_LCD_E~regout\,
	datac => \inst3|inst|next_command.RESET3~regout\,
	datad => \inst3|inst|state.HOLD~regout\,
	combout => \inst3|inst|Selector19~0_combout\);

-- Location: LCFF_X47_Y26_N25
\inst3|inst|next_command.RESET3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector19~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|next_command.RESET3~regout\);

-- Location: LCCOMB_X47_Y26_N22
\inst3|inst|state~35\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|state~35_combout\ = (\inst3|inst|next_command.RESET3~regout\ & \inst3|inst|state.HOLD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|next_command.RESET3~regout\,
	datad => \inst3|inst|state.HOLD~regout\,
	combout => \inst3|inst|state~35_combout\);

-- Location: LCFF_X47_Y26_N23
\inst3|inst|state.RESET3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|state~35_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.RESET3~regout\);

-- Location: LCCOMB_X47_Y26_N16
\inst3|inst|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector12~0_combout\ = (\inst3|inst|state.RESET3~regout\) # ((\inst3|inst|next_command.FUNC_SET~regout\ & ((\inst3|inst|state.DROP_LCD_E~regout\) # (\inst3|inst|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.DROP_LCD_E~regout\,
	datab => \inst3|inst|state.RESET3~regout\,
	datac => \inst3|inst|next_command.FUNC_SET~regout\,
	datad => \inst3|inst|state.HOLD~regout\,
	combout => \inst3|inst|Selector12~0_combout\);

-- Location: LCFF_X47_Y26_N17
\inst3|inst|next_command.FUNC_SET\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector12~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|next_command.FUNC_SET~regout\);

-- Location: LCCOMB_X47_Y26_N18
\inst3|inst|state~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|state~36_combout\ = (\inst3|inst|next_command.FUNC_SET~regout\ & \inst3|inst|state.HOLD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|next_command.FUNC_SET~regout\,
	datad => \inst3|inst|state.HOLD~regout\,
	combout => \inst3|inst|state~36_combout\);

-- Location: LCFF_X47_Y26_N19
\inst3|inst|state.FUNC_SET\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|state~36_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.FUNC_SET~regout\);

-- Location: LCCOMB_X47_Y26_N20
\inst3|inst|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector20~0_combout\ = (\inst3|inst|state.FUNC_SET~regout\) # ((\inst3|inst|next_command.DISPLAY_OFF~regout\ & ((\inst3|inst|state.DROP_LCD_E~regout\) # (\inst3|inst|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.DROP_LCD_E~regout\,
	datab => \inst3|inst|state.FUNC_SET~regout\,
	datac => \inst3|inst|next_command.DISPLAY_OFF~regout\,
	datad => \inst3|inst|state.HOLD~regout\,
	combout => \inst3|inst|Selector20~0_combout\);

-- Location: LCFF_X47_Y26_N21
\inst3|inst|next_command.DISPLAY_OFF\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector20~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|next_command.DISPLAY_OFF~regout\);

-- Location: LCCOMB_X47_Y26_N2
\inst3|inst|state~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|state~33_combout\ = (\inst3|inst|next_command.DISPLAY_OFF~regout\ & \inst3|inst|state.HOLD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|next_command.DISPLAY_OFF~regout\,
	datad => \inst3|inst|state.HOLD~regout\,
	combout => \inst3|inst|state~33_combout\);

-- Location: LCFF_X47_Y26_N3
\inst3|inst|state.DISPLAY_OFF\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|state~33_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.DISPLAY_OFF~regout\);

-- Location: LCCOMB_X47_Y26_N14
\inst3|inst|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector21~0_combout\ = (\inst3|inst|state.DISPLAY_OFF~regout\) # ((\inst3|inst|next_command.DISPLAY_CLEAR~regout\ & ((\inst3|inst|state.DROP_LCD_E~regout\) # (\inst3|inst|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.DROP_LCD_E~regout\,
	datab => \inst3|inst|state.DISPLAY_OFF~regout\,
	datac => \inst3|inst|next_command.DISPLAY_CLEAR~regout\,
	datad => \inst3|inst|state.HOLD~regout\,
	combout => \inst3|inst|Selector21~0_combout\);

-- Location: LCFF_X47_Y26_N15
\inst3|inst|next_command.DISPLAY_CLEAR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector21~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|next_command.DISPLAY_CLEAR~regout\);

-- Location: LCCOMB_X48_Y26_N22
\inst3|inst|state~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|state~34_combout\ = (\inst3|inst|state.HOLD~regout\ & \inst3|inst|next_command.DISPLAY_CLEAR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|state.HOLD~regout\,
	datad => \inst3|inst|next_command.DISPLAY_CLEAR~regout\,
	combout => \inst3|inst|state~34_combout\);

-- Location: LCFF_X48_Y26_N23
\inst3|inst|state.DISPLAY_CLEAR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|state~34_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.DISPLAY_CLEAR~regout\);

-- Location: LCCOMB_X48_Y26_N2
\inst3|inst|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector13~0_combout\ = (\inst3|inst|state.DISPLAY_CLEAR~regout\) # ((\inst3|inst|next_command.DISPLAY_ON~regout\ & ((\inst3|inst|state.DROP_LCD_E~regout\) # (\inst3|inst|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.DROP_LCD_E~regout\,
	datab => \inst3|inst|state.HOLD~regout\,
	datac => \inst3|inst|next_command.DISPLAY_ON~regout\,
	datad => \inst3|inst|state.DISPLAY_CLEAR~regout\,
	combout => \inst3|inst|Selector13~0_combout\);

-- Location: LCFF_X48_Y26_N3
\inst3|inst|next_command.DISPLAY_ON\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector13~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|next_command.DISPLAY_ON~regout\);

-- Location: LCCOMB_X48_Y26_N4
\inst3|inst|state~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|state~32_combout\ = (\inst3|inst|state.HOLD~regout\ & \inst3|inst|next_command.DISPLAY_ON~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|state.HOLD~regout\,
	datad => \inst3|inst|next_command.DISPLAY_ON~regout\,
	combout => \inst3|inst|state~32_combout\);

-- Location: LCFF_X48_Y26_N5
\inst3|inst|state.DISPLAY_ON\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|state~32_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.DISPLAY_ON~regout\);

-- Location: LCCOMB_X48_Y26_N10
\inst3|inst|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector14~0_combout\ = (\inst3|inst|state.DISPLAY_ON~regout\) # ((\inst3|inst|next_command.MODE_SET~regout\ & ((\inst3|inst|state.DROP_LCD_E~regout\) # (\inst3|inst|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.DROP_LCD_E~regout\,
	datab => \inst3|inst|state.HOLD~regout\,
	datac => \inst3|inst|next_command.MODE_SET~regout\,
	datad => \inst3|inst|state.DISPLAY_ON~regout\,
	combout => \inst3|inst|Selector14~0_combout\);

-- Location: LCFF_X48_Y26_N11
\inst3|inst|next_command.MODE_SET\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector14~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|next_command.MODE_SET~regout\);

-- Location: LCCOMB_X48_Y26_N24
\inst3|inst|state~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|state~29_combout\ = (\inst3|inst|state.HOLD~regout\ & \inst3|inst|next_command.MODE_SET~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|state.HOLD~regout\,
	datad => \inst3|inst|next_command.MODE_SET~regout\,
	combout => \inst3|inst|state~29_combout\);

-- Location: LCFF_X48_Y26_N25
\inst3|inst|state.MODE_SET\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|state~29_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.MODE_SET~regout\);

-- Location: LCCOMB_X51_Y27_N18
\inst3|inst|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Equal3~0_combout\ = (\inst3|inst|CHAR_COUNT\(2) & (\inst3|inst|CHAR_COUNT\(1) & (\inst3|inst|CHAR_COUNT\(3) & \inst3|inst|CHAR_COUNT\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CHAR_COUNT\(2),
	datab => \inst3|inst|CHAR_COUNT\(1),
	datac => \inst3|inst|CHAR_COUNT\(3),
	datad => \inst3|inst|CHAR_COUNT\(0),
	combout => \inst3|inst|Equal3~0_combout\);

-- Location: LCCOMB_X49_Y27_N22
\inst3|inst|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Equal3~1_combout\ = (!\inst3|inst|CHAR_COUNT\(4) & \inst3|inst|Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|CHAR_COUNT\(4),
	datad => \inst3|inst|Equal3~0_combout\,
	combout => \inst3|inst|Equal3~1_combout\);

-- Location: LCCOMB_X49_Y26_N8
\inst3|inst|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector16~0_combout\ = (\inst3|inst|LCD_RS~0_combout\ & (\inst3|inst|state.Print_String~regout\ & ((\inst3|inst|Equal3~1_combout\)))) # (!\inst3|inst|LCD_RS~0_combout\ & ((\inst3|inst|next_command.LINE2~regout\) # 
-- ((\inst3|inst|state.Print_String~regout\ & \inst3|inst|Equal3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|LCD_RS~0_combout\,
	datab => \inst3|inst|state.Print_String~regout\,
	datac => \inst3|inst|next_command.LINE2~regout\,
	datad => \inst3|inst|Equal3~1_combout\,
	combout => \inst3|inst|Selector16~0_combout\);

-- Location: LCFF_X49_Y26_N9
\inst3|inst|next_command.LINE2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector16~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|next_command.LINE2~regout\);

-- Location: LCCOMB_X49_Y26_N30
\inst3|inst|state~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|state~30_combout\ = (\inst3|inst|next_command.LINE2~regout\ & \inst3|inst|state.HOLD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|next_command.LINE2~regout\,
	datad => \inst3|inst|state.HOLD~regout\,
	combout => \inst3|inst|state~30_combout\);

-- Location: LCFF_X49_Y26_N31
\inst3|inst|state.LINE2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|state~30_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.LINE2~regout\);

-- Location: LCCOMB_X48_Y26_N14
\inst3|inst|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector4~0_combout\ = (!\inst3|inst|state.RETURN_HOME~regout\ & (!\inst3|inst|state.MODE_SET~regout\ & !\inst3|inst|state.LINE2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|state.RETURN_HOME~regout\,
	datac => \inst3|inst|state.MODE_SET~regout\,
	datad => \inst3|inst|state.LINE2~regout\,
	combout => \inst3|inst|Selector4~0_combout\);

-- Location: LCCOMB_X49_Y26_N10
\inst3|inst|Selector15~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector15~5_combout\ = ((\inst3|inst|next_command.Print_String~regout\ & ((\inst3|inst|state.HOLD~regout\) # (\inst3|inst|state.DROP_LCD_E~regout\)))) # (!\inst3|inst|Selector4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.HOLD~regout\,
	datab => \inst3|inst|next_command.Print_String~regout\,
	datac => \inst3|inst|state.DROP_LCD_E~regout\,
	datad => \inst3|inst|Selector4~0_combout\,
	combout => \inst3|inst|Selector15~5_combout\);

-- Location: LCCOMB_X50_Y26_N12
\inst3|inst|Selector15~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector15~6_combout\ = (\inst3|inst|Selector15~5_combout\) # ((\inst3|inst|Selector15~4_combout\ & ((\inst3|inst|CHAR_COUNT\(4)) # (!\inst3|inst|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Equal3~0_combout\,
	datab => \inst3|inst|Selector15~5_combout\,
	datac => \inst3|inst|CHAR_COUNT\(4),
	datad => \inst3|inst|Selector15~4_combout\,
	combout => \inst3|inst|Selector15~6_combout\);

-- Location: LCFF_X50_Y26_N13
\inst3|inst|next_command.Print_String\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector15~6_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|next_command.Print_String~regout\);

-- Location: LCCOMB_X49_Y26_N24
\inst3|inst|state~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|state~28_combout\ = (\inst3|inst|next_command.Print_String~regout\ & \inst3|inst|state.HOLD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|next_command.Print_String~regout\,
	datad => \inst3|inst|state.HOLD~regout\,
	combout => \inst3|inst|state~28_combout\);

-- Location: LCFF_X49_Y26_N25
\inst3|inst|state.Print_String\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|state~28_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.Print_String~regout\);

-- Location: LCCOMB_X50_Y26_N28
\inst3|inst|Selector15~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector15~4_combout\ = (!\inst3|inst|Equal4~0_combout\ & (\inst3|inst|state.Print_String~regout\ & ((!\inst3|inst|Equal2~1_combout\) # (!\inst3|inst|Equal2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Equal4~0_combout\,
	datab => \inst3|inst|state.Print_String~regout\,
	datac => \inst3|inst|Equal2~0_combout\,
	datad => \inst3|inst|Equal2~1_combout\,
	combout => \inst3|inst|Selector15~4_combout\);

-- Location: LCCOMB_X50_Y26_N26
\inst3|inst|Add2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Add2~3_combout\ = (\inst3|inst|Add2~2_combout\ & ((\inst3|inst|CHAR_COUNT\(0)) # ((\inst3|inst|Add2~0_combout\ & \inst3|inst|Selector15~4_combout\)))) # (!\inst3|inst|Add2~2_combout\ & (\inst3|inst|Add2~0_combout\ & 
-- ((\inst3|inst|Selector15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Add2~2_combout\,
	datab => \inst3|inst|Add2~0_combout\,
	datac => \inst3|inst|CHAR_COUNT\(0),
	datad => \inst3|inst|Selector15~4_combout\,
	combout => \inst3|inst|Add2~3_combout\);

-- Location: LCFF_X50_Y26_N27
\inst3|inst|CHAR_COUNT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Add2~3_combout\,
	ena => \reset~~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CHAR_COUNT\(0));

-- Location: LCCOMB_X49_Y26_N4
\inst3|inst|Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector2~2_combout\ = (\inst3|inst|state.RETURN_HOME~regout\) # ((\inst3|inst|state.LINE2~regout\) # ((\inst3|inst|state.Print_String~regout\ & \inst3|inst1|altsyncram_component|auto_generated|q_a\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.Print_String~regout\,
	datab => \inst3|inst1|altsyncram_component|auto_generated|q_a\(7),
	datac => \inst3|inst|state.RETURN_HOME~regout\,
	datad => \inst3|inst|state.LINE2~regout\,
	combout => \inst3|inst|Selector2~2_combout\);

-- Location: LCCOMB_X48_Y26_N6
\inst3|inst|Selector2~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector2~3_combout\ = (\inst3|inst|Selector2~2_combout\) # ((\inst3|inst|DATA_BUS_VALUE\(7) & ((\inst3|inst|state.DROP_LCD_E~regout\) # (\inst3|inst|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.DROP_LCD_E~regout\,
	datab => \inst3|inst|state.HOLD~regout\,
	datac => \inst3|inst|DATA_BUS_VALUE\(7),
	datad => \inst3|inst|Selector2~2_combout\,
	combout => \inst3|inst|Selector2~3_combout\);

-- Location: LCFF_X48_Y26_N7
\inst3|inst|DATA_BUS_VALUE[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector2~3_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|DATA_BUS_VALUE\(7));

-- Location: LCCOMB_X37_Y26_N16
\inst3|inst|LCD_RW_INT~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|LCD_RW_INT~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst3|inst|LCD_RW_INT~feeder_combout\);

-- Location: LCFF_X37_Y26_N17
\inst3|inst|LCD_RW_INT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|LCD_RW_INT~feeder_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	ena => \inst3|inst|LCD_RS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|LCD_RW_INT~regout\);

-- Location: LCCOMB_X49_Y26_N2
\inst3|inst|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector3~0_combout\ = (\inst3|inst1|altsyncram_component|auto_generated|q_a\(5)) # ((\inst3|inst1|altsyncram_component|auto_generated|q_a\(7)) # (\inst3|inst1|altsyncram_component|auto_generated|q_a\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst1|altsyncram_component|auto_generated|q_a\(5),
	datac => \inst3|inst1|altsyncram_component|auto_generated|q_a\(7),
	datad => \inst3|inst1|altsyncram_component|auto_generated|q_a\(4),
	combout => \inst3|inst|Selector3~0_combout\);

-- Location: LCCOMB_X51_Y26_N2
\inst3|inst|Next_Char[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Next_Char[2]~5_combout\ = (\inst3|inst|CHAR_COUNT\(3) & ((\inst3|inst|CHAR_COUNT\(0)) # (\inst1|altsyncram_component|auto_generated|q_a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|CHAR_COUNT\(0),
	datac => \inst1|altsyncram_component|auto_generated|q_a\(6),
	datad => \inst3|inst|CHAR_COUNT\(3),
	combout => \inst3|inst|Next_Char[2]~5_combout\);

-- Location: LCCOMB_X51_Y26_N20
\inst3|inst|Next_Char[2]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Next_Char[2]~6_combout\ = (\inst3|inst|CHAR_COUNT\(0) & ((\inst3|inst|Next_Char[2]~5_combout\ & ((\inst1|altsyncram_component|auto_generated|q_a\(2)))) # (!\inst3|inst|Next_Char[2]~5_combout\ & (\inst5|dffs\(2))))) # 
-- (!\inst3|inst|CHAR_COUNT\(0) & (((\inst3|inst|Next_Char[2]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|dffs\(2),
	datab => \inst3|inst|CHAR_COUNT\(0),
	datac => \inst1|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst3|inst|Next_Char[2]~5_combout\,
	combout => \inst3|inst|Next_Char[2]~6_combout\);

-- Location: LCCOMB_X51_Y26_N10
\inst3|inst|Next_Char[2]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Next_Char[2]~7_combout\ = (\inst3|inst|Equal0~0_combout\ & (((\inst3|inst|Next_Char[2]~6_combout\) # (!\inst3|inst|Next_Char[3]~0_combout\)))) # (!\inst3|inst|Equal0~0_combout\ & (\inst3|inst1|altsyncram_component|auto_generated|q_a\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst1|altsyncram_component|auto_generated|q_a\(2),
	datab => \inst3|inst|Next_Char[3]~0_combout\,
	datac => \inst3|inst|Next_Char[2]~6_combout\,
	datad => \inst3|inst|Equal0~0_combout\,
	combout => \inst3|inst|Next_Char[2]~7_combout\);

-- Location: LCCOMB_X50_Y26_N2
\inst3|inst|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|LessThan1~0_combout\ = ((!\inst3|inst|Next_Char[2]~7_combout\ & !\inst3|inst|Next_Char[1]~10_combout\)) # (!\inst3|inst|Next_Char[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|Next_Char[2]~7_combout\,
	datac => \inst3|inst|Next_Char[3]~4_combout\,
	datad => \inst3|inst|Next_Char[1]~10_combout\,
	combout => \inst3|inst|LessThan1~0_combout\);

-- Location: LCCOMB_X49_Y26_N12
\inst3|inst|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector3~1_combout\ = (\inst3|inst|state.Print_String~regout\ & ((\inst3|inst1|altsyncram_component|auto_generated|q_a\(6)) # ((!\inst3|inst|Selector3~0_combout\ & !\inst3|inst|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.Print_String~regout\,
	datab => \inst3|inst|Selector3~0_combout\,
	datac => \inst3|inst1|altsyncram_component|auto_generated|q_a\(6),
	datad => \inst3|inst|LessThan1~0_combout\,
	combout => \inst3|inst|Selector3~1_combout\);

-- Location: LCCOMB_X49_Y26_N22
\inst3|inst|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector3~2_combout\ = (\inst3|inst|state.LINE2~regout\) # ((\inst3|inst|Selector3~1_combout\) # ((!\inst3|inst|LCD_RS~0_combout\ & \inst3|inst|DATA_BUS_VALUE\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|LCD_RS~0_combout\,
	datab => \inst3|inst|state.LINE2~regout\,
	datac => \inst3|inst|DATA_BUS_VALUE\(6),
	datad => \inst3|inst|Selector3~1_combout\,
	combout => \inst3|inst|Selector3~2_combout\);

-- Location: LCFF_X49_Y26_N23
\inst3|inst|DATA_BUS_VALUE[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector3~2_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|DATA_BUS_VALUE\(6));

-- Location: LCCOMB_X48_Y26_N16
\inst3|inst|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector4~2_combout\ = (\inst3|inst|Selector4~1_combout\ & (!\inst3|inst|state.DISPLAY_CLEAR~regout\ & (\inst3|inst|Selector4~0_combout\ & !\inst3|inst|state.Print_String~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Selector4~1_combout\,
	datab => \inst3|inst|state.DISPLAY_CLEAR~regout\,
	datac => \inst3|inst|Selector4~0_combout\,
	datad => \inst3|inst|state.Print_String~regout\,
	combout => \inst3|inst|Selector4~2_combout\);

-- Location: LCCOMB_X49_Y26_N14
\inst3|inst|Selector4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector4~3_combout\ = (\inst3|inst|state.Print_String~regout\ & \inst3|inst1|altsyncram_component|auto_generated|q_a\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.Print_String~regout\,
	datad => \inst3|inst1|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst3|inst|Selector4~3_combout\);

-- Location: LCCOMB_X49_Y26_N0
\inst3|inst|Selector4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector4~4_combout\ = (\inst3|inst|state.Print_String~regout\ & (!\inst3|inst1|altsyncram_component|auto_generated|q_a\(6) & (!\inst3|inst1|altsyncram_component|auto_generated|q_a\(7) & \inst3|inst|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.Print_String~regout\,
	datab => \inst3|inst1|altsyncram_component|auto_generated|q_a\(6),
	datac => \inst3|inst1|altsyncram_component|auto_generated|q_a\(7),
	datad => \inst3|inst|LessThan1~0_combout\,
	combout => \inst3|inst|Selector4~4_combout\);

-- Location: LCCOMB_X49_Y26_N28
\inst3|inst|Selector4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector4~5_combout\ = (!\inst3|inst|Selector4~2_combout\ & (!\inst3|inst|Selector4~3_combout\ & ((\inst3|inst1|altsyncram_component|auto_generated|q_a\(4)) # (!\inst3|inst|Selector4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst1|altsyncram_component|auto_generated|q_a\(4),
	datab => \inst3|inst|Selector4~2_combout\,
	datac => \inst3|inst|Selector4~3_combout\,
	datad => \inst3|inst|Selector4~4_combout\,
	combout => \inst3|inst|Selector4~5_combout\);

-- Location: LCFF_X49_Y26_N29
\inst3|inst|DATA_BUS_VALUE[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector4~5_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	ena => \inst3|inst|LCD_RS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|DATA_BUS_VALUE\(5));

-- Location: LCCOMB_X48_Y26_N30
\inst3|inst|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector5~0_combout\ = (\inst3|inst1|altsyncram_component|auto_generated|q_a\(4) & \inst3|inst|state.Print_String~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst1|altsyncram_component|auto_generated|q_a\(4),
	datad => \inst3|inst|state.Print_String~regout\,
	combout => \inst3|inst|Selector5~0_combout\);

-- Location: LCCOMB_X49_Y26_N6
\inst3|inst|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector5~1_combout\ = (!\inst3|inst|Selector4~2_combout\ & (!\inst3|inst|Selector5~0_combout\ & ((\inst3|inst1|altsyncram_component|auto_generated|q_a\(5)) # (!\inst3|inst|Selector4~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Selector4~2_combout\,
	datab => \inst3|inst1|altsyncram_component|auto_generated|q_a\(5),
	datac => \inst3|inst|Selector5~0_combout\,
	datad => \inst3|inst|Selector4~4_combout\,
	combout => \inst3|inst|Selector5~1_combout\);

-- Location: LCFF_X49_Y26_N7
\inst3|inst|DATA_BUS_VALUE[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector5~1_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	ena => \inst3|inst|LCD_RS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|DATA_BUS_VALUE\(4));

-- Location: LCCOMB_X51_Y26_N6
\inst3|inst|DATA_BUS_VALUE~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|DATA_BUS_VALUE~0_combout\ = (((!\inst3|inst|Next_Char[2]~7_combout\ & !\inst3|inst|Next_Char[1]~10_combout\)) # (!\inst3|inst|Equal0~0_combout\)) # (!\inst3|inst|Next_Char[3]~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Next_Char[2]~7_combout\,
	datab => \inst3|inst|Next_Char[3]~4_combout\,
	datac => \inst3|inst|Equal0~0_combout\,
	datad => \inst3|inst|Next_Char[1]~10_combout\,
	combout => \inst3|inst|DATA_BUS_VALUE~0_combout\);

-- Location: LCCOMB_X50_Y26_N10
\inst3|inst|Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector6~2_combout\ = (!\inst3|inst|Selector6~1_combout\ & (((!\inst3|inst|DATA_BUS_VALUE~0_combout\) # (!\inst3|inst|Next_Char[3]~4_combout\)) # (!\inst3|inst|state.Print_String~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Selector6~1_combout\,
	datab => \inst3|inst|state.Print_String~regout\,
	datac => \inst3|inst|Next_Char[3]~4_combout\,
	datad => \inst3|inst|DATA_BUS_VALUE~0_combout\,
	combout => \inst3|inst|Selector6~2_combout\);

-- Location: LCFF_X50_Y26_N11
\inst3|inst|DATA_BUS_VALUE[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector6~2_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|DATA_BUS_VALUE\(3));

-- Location: LCCOMB_X47_Y26_N12
\inst3|inst|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector7~0_combout\ = (\inst3|inst|state.DISPLAY_ON~regout\) # ((\inst3|inst|state.MODE_SET~regout\) # ((!\inst3|inst|LCD_RS~0_combout\ & \inst3|inst|DATA_BUS_VALUE\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.DISPLAY_ON~regout\,
	datab => \inst3|inst|state.MODE_SET~regout\,
	datac => \inst3|inst|LCD_RS~0_combout\,
	datad => \inst3|inst|DATA_BUS_VALUE\(2),
	combout => \inst3|inst|Selector7~0_combout\);

-- Location: LCCOMB_X51_Y26_N12
\inst3|inst|Mux3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Mux3~1_combout\ = (\inst3|inst|Mux3~0_combout\ & (((\inst1|altsyncram_component|auto_generated|q_a\(0))) # (!\inst3|inst|CHAR_COUNT\(3)))) # (!\inst3|inst|Mux3~0_combout\ & (\inst3|inst|CHAR_COUNT\(3) & 
-- (\inst1|altsyncram_component|auto_generated|q_a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Mux3~0_combout\,
	datab => \inst3|inst|CHAR_COUNT\(3),
	datac => \inst1|altsyncram_component|auto_generated|q_a\(4),
	datad => \inst1|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst3|inst|Mux3~1_combout\);

-- Location: LCCOMB_X50_Y26_N20
\inst3|inst|Next_Char[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Next_Char[0]~11_combout\ = (\inst3|inst|Equal0~0_combout\ & ((\inst3|inst|CHAR_COUNT\(1)) # ((\inst3|inst|CHAR_COUNT\(2)) # (!\inst3|inst|CHAR_COUNT\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CHAR_COUNT\(1),
	datab => \inst3|inst|CHAR_COUNT\(2),
	datac => \inst3|inst|CHAR_COUNT\(4),
	datad => \inst3|inst|Equal0~0_combout\,
	combout => \inst3|inst|Next_Char[0]~11_combout\);

-- Location: LCCOMB_X50_Y26_N30
\inst3|inst|Next_Char[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Next_Char[0]~12_combout\ = (\inst3|inst|Next_Char[0]~11_combout\) # ((\inst3|inst|Equal0~0_combout\ & ((\inst3|inst|Mux3~1_combout\))) # (!\inst3|inst|Equal0~0_combout\ & (\inst3|inst1|altsyncram_component|auto_generated|q_a\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst1|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst3|inst|Mux3~1_combout\,
	datac => \inst3|inst|Next_Char[0]~11_combout\,
	datad => \inst3|inst|Equal0~0_combout\,
	combout => \inst3|inst|Next_Char[0]~12_combout\);

-- Location: LCCOMB_X51_Y26_N22
\inst3|inst|Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector7~1_combout\ = (\inst3|inst|Next_Char[1]~10_combout\) # ((\inst3|inst|Next_Char[0]~12_combout\) # (\inst3|inst|DATA_BUS_VALUE~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|Next_Char[1]~10_combout\,
	datac => \inst3|inst|Next_Char[0]~12_combout\,
	datad => \inst3|inst|DATA_BUS_VALUE~0_combout\,
	combout => \inst3|inst|Selector7~1_combout\);

-- Location: LCCOMB_X51_Y26_N16
\inst3|inst|Selector7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector7~2_combout\ = (\inst3|inst|Selector7~0_combout\) # ((\inst3|inst|state.Print_String~regout\ & (\inst3|inst|Next_Char[2]~7_combout\ $ (!\inst3|inst|Selector7~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Next_Char[2]~7_combout\,
	datab => \inst3|inst|Selector7~0_combout\,
	datac => \inst3|inst|state.Print_String~regout\,
	datad => \inst3|inst|Selector7~1_combout\,
	combout => \inst3|inst|Selector7~2_combout\);

-- Location: LCFF_X51_Y26_N17
\inst3|inst|DATA_BUS_VALUE[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector7~2_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|DATA_BUS_VALUE\(2));

-- Location: LCCOMB_X50_Y26_N0
\inst3|inst|Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector8~1_combout\ = \inst3|inst|Next_Char[1]~10_combout\ $ (((\inst3|inst|Next_Char[0]~12_combout\) # (\inst3|inst|DATA_BUS_VALUE~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|Next_Char[0]~12_combout\,
	datac => \inst3|inst|Next_Char[1]~10_combout\,
	datad => \inst3|inst|DATA_BUS_VALUE~0_combout\,
	combout => \inst3|inst|Selector8~1_combout\);

-- Location: LCCOMB_X50_Y26_N4
\inst3|inst|Selector8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector8~2_combout\ = (\inst3|inst|Selector8~0_combout\) # ((\inst3|inst|state.Print_String~regout\ & !\inst3|inst|Selector8~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Selector8~0_combout\,
	datab => \inst3|inst|state.Print_String~regout\,
	datad => \inst3|inst|Selector8~1_combout\,
	combout => \inst3|inst|Selector8~2_combout\);

-- Location: LCFF_X50_Y26_N5
\inst3|inst|DATA_BUS_VALUE[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector8~2_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|DATA_BUS_VALUE\(1));

-- Location: LCCOMB_X49_Y26_N18
\inst3|inst|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector9~0_combout\ = (\inst3|inst|state.DISPLAY_CLEAR~regout\) # ((\inst3|inst|DATA_BUS_VALUE\(0) & ((\inst3|inst|state.HOLD~regout\) # (\inst3|inst|state.DROP_LCD_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.HOLD~regout\,
	datab => \inst3|inst|state.DROP_LCD_E~regout\,
	datac => \inst3|inst|DATA_BUS_VALUE\(0),
	datad => \inst3|inst|state.DISPLAY_CLEAR~regout\,
	combout => \inst3|inst|Selector9~0_combout\);

-- Location: LCCOMB_X50_Y26_N18
\inst3|inst|Selector9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector9~1_combout\ = (\inst3|inst|Equal0~0_combout\ & ((\inst3|inst|Next_Char[0]~12_combout\ $ (!\inst3|inst|LessThan1~0_combout\)))) # (!\inst3|inst|Equal0~0_combout\ & (\inst3|inst1|altsyncram_component|auto_generated|q_a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst1|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst3|inst|Next_Char[0]~12_combout\,
	datac => \inst3|inst|Equal0~0_combout\,
	datad => \inst3|inst|LessThan1~0_combout\,
	combout => \inst3|inst|Selector9~1_combout\);

-- Location: LCCOMB_X49_Y26_N16
\inst3|inst|Selector9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector9~2_combout\ = (\inst3|inst|Selector9~0_combout\) # ((\inst3|inst|state.Print_String~regout\ & \inst3|inst|Selector9~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|Selector9~0_combout\,
	datac => \inst3|inst|state.Print_String~regout\,
	datad => \inst3|inst|Selector9~1_combout\,
	combout => \inst3|inst|Selector9~2_combout\);

-- Location: LCFF_X49_Y26_N17
\inst3|inst|DATA_BUS_VALUE[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector9~2_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|DATA_BUS_VALUE\(0));

-- Location: LCCOMB_X48_Y26_N20
\inst3|inst|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector1~0_combout\ = (\inst3|inst|state.Print_String~regout\) # ((\inst3|inst|LCD_RS~regout\ & ((\inst3|inst|state.DROP_LCD_E~regout\) # (\inst3|inst|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.DROP_LCD_E~regout\,
	datab => \inst3|inst|state.HOLD~regout\,
	datac => \inst3|inst|LCD_RS~regout\,
	datad => \inst3|inst|state.Print_String~regout\,
	combout => \inst3|inst|Selector1~0_combout\);

-- Location: LCFF_X48_Y26_N21
\inst3|inst|LCD_RS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector1~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|LCD_RS~regout\);

-- Location: LCCOMB_X47_Y26_N8
\inst3|inst|LCD_E~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|LCD_E~0_combout\ = (\inst3|inst|state.HOLD~regout\ & (\inst3|inst|LCD_E~regout\)) # (!\inst3|inst|state.HOLD~regout\ & ((\inst3|inst|state.DROP_LCD_E~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.HOLD~regout\,
	datac => \inst3|inst|LCD_E~regout\,
	datad => \inst3|inst|state.DROP_LCD_E~regout\,
	combout => \inst3|inst|LCD_E~0_combout\);

-- Location: LCFF_X47_Y26_N9
\inst3|inst|LCD_E\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|LCD_E~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|LCD_E~regout\);

-- Location: PIN_H3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DBUS[7]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|inst|DATA_BUS_VALUE\(7),
	oe => \inst3|inst|LCD_RW_INT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => DBUS(7));

-- Location: PIN_H4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DBUS[6]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|inst|DATA_BUS_VALUE\(6),
	oe => \inst3|inst|LCD_RW_INT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => DBUS(6));

-- Location: PIN_J3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DBUS[5]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|inst|ALT_INV_DATA_BUS_VALUE\(5),
	oe => \inst3|inst|LCD_RW_INT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => DBUS(5));

-- Location: PIN_J4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DBUS[4]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|inst|ALT_INV_DATA_BUS_VALUE\(4),
	oe => \inst3|inst|LCD_RW_INT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => DBUS(4));

-- Location: PIN_H2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DBUS[3]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|inst|ALT_INV_DATA_BUS_VALUE\(3),
	oe => \inst3|inst|LCD_RW_INT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => DBUS(3));

-- Location: PIN_H1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DBUS[2]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|inst|DATA_BUS_VALUE\(2),
	oe => \inst3|inst|LCD_RW_INT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => DBUS(2));

-- Location: PIN_J2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DBUS[1]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|inst|DATA_BUS_VALUE\(1),
	oe => \inst3|inst|LCD_RW_INT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => DBUS(1));

-- Location: PIN_J1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\DBUS[0]~I\ : cycloneii_io
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
	operation_mode => "bidir",
	output_async_reset => "none",
	output_power_up => "low",
	output_register_mode => "none",
	output_sync_reset => "none")
-- pragma translate_on
PORT MAP (
	datain => \inst3|inst|DATA_BUS_VALUE\(0),
	oe => \inst3|inst|LCD_RW_INT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	padio => DBUS(0));

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
	datain => \inst7|ALT_INV_state.Waiting~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Complete);

-- Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_RS~I\ : cycloneii_io
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
	datain => \inst3|inst|LCD_RS~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_RS);

-- Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_E~I\ : cycloneii_io
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
	datain => \inst3|inst|ALT_INV_LCD_E~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_E);

-- Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_RW~I\ : cycloneii_io
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
	datain => \inst3|inst|ALT_INV_LCD_RW_INT~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_RW);

-- Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_ONOFF~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_ONOFF);

-- Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
\LCD_BLONOFF~I\ : cycloneii_io
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
	datain => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_LCD_BLONOFF);

-- Location: PIN_H26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst1|altsyncram_component|auto_generated|q_a\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(7));

-- Location: PIN_K19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst1|altsyncram_component|auto_generated|q_a\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(6));

-- Location: PIN_H25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst1|altsyncram_component|auto_generated|q_a\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(5));

-- Location: PIN_K18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst1|altsyncram_component|auto_generated|q_a\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(4));

-- Location: PIN_H19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst1|altsyncram_component|auto_generated|q_a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(3));

-- Location: PIN_J23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst1|altsyncram_component|auto_generated|q_a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(2));

-- Location: PIN_J24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst1|altsyncram_component|auto_generated|q_a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(1));

-- Location: PIN_K24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst1|altsyncram_component|auto_generated|q_a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(0));
END structure;


