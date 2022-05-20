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

-- DATE "05/20/2022 12:56:58"

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
	LCD_RS : OUT std_logic;
	\reset~\ : IN std_logic;
	CLK50 : IN std_logic;
	DBUS : INOUT std_logic_vector(7 DOWNTO 0);
	Launch : IN std_logic;
	B : IN std_logic_vector(7 DOWNTO 0);
	A : IN std_logic_vector(7 DOWNTO 0);
	\CLK~\ : IN std_logic;
	LCD_E : OUT std_logic;
	LCD_RW : OUT std_logic;
	LCD_ONOFF : OUT std_logic;
	LCD_BLONOFF : OUT std_logic;
	Complete : OUT std_logic;
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
-- LCD_RS	=>  Location: PIN_K1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_E	=>  Location: PIN_K3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_RW	=>  Location: PIN_K4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_ONOFF	=>  Location: PIN_L4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- LCD_BLONOFF	=>  Location: PIN_K2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Complete	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[7]	=>  Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[6]	=>  Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[5]	=>  Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[4]	=>  Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[3]	=>  Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[2]	=>  Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[1]	=>  Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[0]	=>  Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reset~	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Launch	=>  Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[5]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[7]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[6]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK~	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL ww_LCD_RS : std_logic;
SIGNAL \ww_reset~\ : std_logic;
SIGNAL ww_CLK50 : std_logic;
SIGNAL ww_Launch : std_logic;
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL \ww_CLK~\ : std_logic;
SIGNAL ww_LCD_E : std_logic;
SIGNAL ww_LCD_RW : std_logic;
SIGNAL ww_LCD_ONOFF : std_logic;
SIGNAL ww_LCD_BLONOFF : std_logic;
SIGNAL ww_Complete : std_logic;
SIGNAL ww_Data : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst3|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|inst|CLK_400HZ~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|count[6]~21_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[0]~20_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[8]~37_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[15]~51_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[18]~57_combout\ : std_logic;
SIGNAL \inst3|inst|Add2~4_combout\ : std_logic;
SIGNAL \inst|Selector5~6_combout\ : std_logic;
SIGNAL \inst|state.GetB~regout\ : std_logic;
SIGNAL \inst|Selector5~9_combout\ : std_logic;
SIGNAL \inst|WR~combout\ : std_logic;
SIGNAL \inst|Selector6~0_combout\ : std_logic;
SIGNAL \inst|state.SendAddrB_r~regout\ : std_logic;
SIGNAL \inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst3|inst|Selector15~0_combout\ : std_logic;
SIGNAL \inst3|inst|state.MODE_SET~regout\ : std_logic;
SIGNAL \inst|state~20_combout\ : std_logic;
SIGNAL \inst3|inst|Selector3~1_combout\ : std_logic;
SIGNAL \inst3|inst|Next_Char[1]~4_combout\ : std_logic;
SIGNAL \inst3|inst|Next_Char[3]~7_combout\ : std_logic;
SIGNAL \inst3|inst|state.DISPLAY_ON~regout\ : std_logic;
SIGNAL \inst3|inst|Selector4~1_combout\ : std_logic;
SIGNAL \inst3|inst|Selector6~0_combout\ : std_logic;
SIGNAL \inst3|inst|Selector6~1_combout\ : std_logic;
SIGNAL \inst3|inst|Selector7~0_combout\ : std_logic;
SIGNAL \inst3|inst|Selector9~0_combout\ : std_logic;
SIGNAL \inst3|inst|Selector9~1_combout\ : std_logic;
SIGNAL \inst3|inst|next_command.MODE_SET~regout\ : std_logic;
SIGNAL \inst3|inst|state~29_combout\ : std_logic;
SIGNAL \inst3|inst|next_command.DISPLAY_ON~regout\ : std_logic;
SIGNAL \inst3|inst|state~32_combout\ : std_logic;
SIGNAL \inst3|inst|Selector14~0_combout\ : std_logic;
SIGNAL \inst3|inst|Selector13~0_combout\ : std_logic;
SIGNAL \CLK~~combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[0]~21\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[1]~22_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[14]~50\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[15]~52\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[16]~54\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[17]~55_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[17]~56\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[18]~58\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[19]~59_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[16]~53_combout\ : std_logic;
SIGNAL \inst3|inst|LessThan0~4_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[6]~33_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[9]~39_combout\ : std_logic;
SIGNAL \inst3|inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[2]~24_combout\ : std_logic;
SIGNAL \inst3|inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst3|inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[16]~26_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[1]~23\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[2]~25\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[3]~27_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[3]~28\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[4]~29_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[4]~30\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[5]~31_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[5]~32\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[6]~34\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[7]~35_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[7]~36\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[8]~38\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[9]~40\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[10]~41_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[10]~42\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[11]~43_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[11]~44\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[12]~45_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[12]~46\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[13]~48\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[14]~49_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[13]~47_combout\ : std_logic;
SIGNAL \inst3|inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_400HZ~0_combout\ : std_logic;
SIGNAL \reset~~combout\ : std_logic;
SIGNAL \inst3|inst|CLK_400HZ~regout\ : std_logic;
SIGNAL \inst3|inst|CLK_400HZ~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|inst|LCD_RS~0_combout\ : std_logic;
SIGNAL \reset~~clk_delay_ctrl_clkout\ : std_logic;
SIGNAL \reset~~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|inst|state.DROP_LCD_E~regout\ : std_logic;
SIGNAL \inst3|inst|state.HOLD~regout\ : std_logic;
SIGNAL \inst3|inst|Selector17~0_combout\ : std_logic;
SIGNAL \inst3|inst|Add2~0_combout\ : std_logic;
SIGNAL \inst3|inst|Add2~1\ : std_logic;
SIGNAL \inst3|inst|Add2~2_combout\ : std_logic;
SIGNAL \inst3|inst|Add2~15_combout\ : std_logic;
SIGNAL \inst3|inst|state.RESET1~feeder_combout\ : std_logic;
SIGNAL \inst3|inst|state.RESET1~regout\ : std_logic;
SIGNAL \inst3|inst|Add2~10_combout\ : std_logic;
SIGNAL \inst3|inst|Add2~14_combout\ : std_logic;
SIGNAL \inst3|inst|Add2~3\ : std_logic;
SIGNAL \inst3|inst|Add2~5\ : std_logic;
SIGNAL \inst3|inst|Add2~6_combout\ : std_logic;
SIGNAL \inst3|inst|Add2~13_combout\ : std_logic;
SIGNAL \inst3|inst|Add2~7\ : std_logic;
SIGNAL \inst3|inst|Add2~8_combout\ : std_logic;
SIGNAL \inst3|inst|Add2~11_combout\ : std_logic;
SIGNAL \inst3|inst|Equal2~0_combout\ : std_logic;
SIGNAL \inst3|inst|Equal2~1_combout\ : std_logic;
SIGNAL \inst3|inst|process_1~0_combout\ : std_logic;
SIGNAL \inst3|inst|Selector15~1_combout\ : std_logic;
SIGNAL \inst3|inst|Add2~12_combout\ : std_logic;
SIGNAL \inst3|inst|Equal3~0_combout\ : std_logic;
SIGNAL \inst3|inst|Equal3~1_combout\ : std_logic;
SIGNAL \inst3|inst|Selector17~1_combout\ : std_logic;
SIGNAL \inst3|inst|next_command.RETURN_HOME~regout\ : std_logic;
SIGNAL \inst3|inst|state~31_combout\ : std_logic;
SIGNAL \inst3|inst|state.RETURN_HOME~regout\ : std_logic;
SIGNAL \inst3|inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst3|inst|Selector15~2_combout\ : std_logic;
SIGNAL \inst3|inst|next_command.Print_String~regout\ : std_logic;
SIGNAL \inst3|inst|state~28_combout\ : std_logic;
SIGNAL \inst3|inst|state.Print_String~regout\ : std_logic;
SIGNAL \inst3|inst|Selector16~0_combout\ : std_logic;
SIGNAL \inst3|inst|next_command.LINE2~regout\ : std_logic;
SIGNAL \inst3|inst|state~30_combout\ : std_logic;
SIGNAL \inst3|inst|state.LINE2~regout\ : std_logic;
SIGNAL \inst3|inst|Selector2~2_combout\ : std_logic;
SIGNAL \inst3|inst|Selector2~3_combout\ : std_logic;
SIGNAL \inst3|inst|LCD_RW_INT~feeder_combout\ : std_logic;
SIGNAL \inst3|inst|LCD_RW_INT~regout\ : std_logic;
SIGNAL \inst3|inst|Selector3~2_combout\ : std_logic;
SIGNAL \inst3|inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst3|inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|inst|Next_Char[3]~0_combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ : std_logic;
SIGNAL \CLK50~combout\ : std_logic;
SIGNAL \CLK50~clkctrl_outclk\ : std_logic;
SIGNAL \inst|count[0]~8_combout\ : std_logic;
SIGNAL \inst|Selector6~1_combout\ : std_logic;
SIGNAL \inst|Flag~regout\ : std_logic;
SIGNAL \inst|state~21_combout\ : std_logic;
SIGNAL \inst|state.SendAddrB_w~regout\ : std_logic;
SIGNAL \inst|state.WriteB~regout\ : std_logic;
SIGNAL \inst|Selector0~0_combout\ : std_logic;
SIGNAL \inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst|state.SendAddrA_r~regout\ : std_logic;
SIGNAL \inst|Selector2~0_combout\ : std_logic;
SIGNAL \inst|state.GetA~regout\ : std_logic;
SIGNAL \inst|delay~0_combout\ : std_logic;
SIGNAL \inst|delay~regout\ : std_logic;
SIGNAL \inst|Cnt~0_combout\ : std_logic;
SIGNAL \inst|count[0]~9\ : std_logic;
SIGNAL \inst|count[1]~11\ : std_logic;
SIGNAL \inst|count[2]~14\ : std_logic;
SIGNAL \inst|count[3]~15_combout\ : std_logic;
SIGNAL \inst|count[0]~12_combout\ : std_logic;
SIGNAL \inst|count[2]~13_combout\ : std_logic;
SIGNAL \inst|Selector5~4_combout\ : std_logic;
SIGNAL \inst|Selector5~3_combout\ : std_logic;
SIGNAL \inst|count[3]~16\ : std_logic;
SIGNAL \inst|count[4]~17_combout\ : std_logic;
SIGNAL \inst|Selector5~5_combout\ : std_logic;
SIGNAL \inst|Selector5~7_combout\ : std_logic;
SIGNAL \inst|state~18_combout\ : std_logic;
SIGNAL \inst|state.CheckFlag~regout\ : std_logic;
SIGNAL \inst|Cnt~1_combout\ : std_logic;
SIGNAL \inst4|$00000|auto_generated|result_node[0]~0_combout\ : std_logic;
SIGNAL \inst|count[1]~10_combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ : std_logic;
SIGNAL \inst4|$00000|auto_generated|result_node[1]~1_combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ : std_logic;
SIGNAL \inst4|$00000|auto_generated|result_node[3]~3_combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ : std_logic;
SIGNAL \inst4|$00000|auto_generated|result_node[4]~4_combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ : std_logic;
SIGNAL \inst|count[4]~18\ : std_logic;
SIGNAL \inst|count[5]~19_combout\ : std_logic;
SIGNAL \inst4|$00000|auto_generated|result_node[5]~5_combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ : std_logic;
SIGNAL \inst4|$00000|auto_generated|result_node[6]~6_combout\ : std_logic;
SIGNAL \inst|count[5]~20\ : std_logic;
SIGNAL \inst|count[6]~22\ : std_logic;
SIGNAL \inst|count[7]~23_combout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ : std_logic;
SIGNAL \inst4|$00000|auto_generated|result_node[7]~7_combout\ : std_logic;
SIGNAL \inst|state.SendAddrA_w~regout\ : std_logic;
SIGNAL \inst|state.WriteA~regout\ : std_logic;
SIGNAL \inst|dataA[7]~0_combout\ : std_logic;
SIGNAL \inst|DataOut[7]~0_combout\ : std_logic;
SIGNAL \inst|dataB[7]~0_combout\ : std_logic;
SIGNAL \inst|DataOut[6]~1_combout\ : std_logic;
SIGNAL \inst|DataOut[5]~2_combout\ : std_logic;
SIGNAL \inst|DataOut[4]~3_combout\ : std_logic;
SIGNAL \inst|DataOut[3]~4_combout\ : std_logic;
SIGNAL \inst|DataOut[2]~5_combout\ : std_logic;
SIGNAL \inst|DataOut[1]~6_combout\ : std_logic;
SIGNAL \inst|DataOut[0]~7_combout\ : std_logic;
SIGNAL \inst|LessThan0~1_cout\ : std_logic;
SIGNAL \inst|LessThan0~3_cout\ : std_logic;
SIGNAL \inst|LessThan0~5_cout\ : std_logic;
SIGNAL \inst|LessThan0~7_cout\ : std_logic;
SIGNAL \inst|LessThan0~9_cout\ : std_logic;
SIGNAL \inst|LessThan0~11_cout\ : std_logic;
SIGNAL \inst|LessThan0~13_cout\ : std_logic;
SIGNAL \inst|LessThan0~14_combout\ : std_logic;
SIGNAL \inst|Selector4~0_combout\ : std_logic;
SIGNAL \inst|state.CheckLoop~regout\ : std_logic;
SIGNAL \inst|state~19_combout\ : std_logic;
SIGNAL \inst|state.Compare~regout\ : std_logic;
SIGNAL \Launch~combout\ : std_logic;
SIGNAL \inst|Selector5~8_combout\ : std_logic;
SIGNAL \inst|Selector5~10_combout\ : std_logic;
SIGNAL \inst|Selector0~1_combout\ : std_logic;
SIGNAL \inst|state.Waiting~regout\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ : std_logic;
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ : std_logic;
SIGNAL \inst4|$00000|auto_generated|result_node[2]~2_combout\ : std_logic;
SIGNAL \inst3|inst|Next_Char[2]~1_combout\ : std_logic;
SIGNAL \inst3|inst|Next_Char[2]~2_combout\ : std_logic;
SIGNAL \inst3|inst|Next_Char[2]~3_combout\ : std_logic;
SIGNAL \inst3|inst|Next_Char[3]~8_combout\ : std_logic;
SIGNAL \inst3|inst|Next_Char[3]~9_combout\ : std_logic;
SIGNAL \inst3|inst|Next_Char[1]~5_combout\ : std_logic;
SIGNAL \inst3|inst|Next_Char[1]~6_combout\ : std_logic;
SIGNAL \inst3|inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst3|inst|Selector3~3_combout\ : std_logic;
SIGNAL \inst3|inst|Selector18~0_combout\ : std_logic;
SIGNAL \inst3|inst|next_command.RESET2~regout\ : std_logic;
SIGNAL \inst3|inst|state~37_combout\ : std_logic;
SIGNAL \inst3|inst|state.RESET2~regout\ : std_logic;
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
SIGNAL \inst3|inst|Selector4~2_combout\ : std_logic;
SIGNAL \inst3|inst|Selector4~3_combout\ : std_logic;
SIGNAL \inst3|inst|Selector4~4_combout\ : std_logic;
SIGNAL \inst3|inst|Selector5~0_combout\ : std_logic;
SIGNAL \inst3|inst|Selector5~1_combout\ : std_logic;
SIGNAL \inst3|inst|Selector8~0_combout\ : std_logic;
SIGNAL \inst3|inst|Selector6~2_combout\ : std_logic;
SIGNAL \inst3|inst|Next_Char[0]~10_combout\ : std_logic;
SIGNAL \inst3|inst|Next_Char[0]~11_combout\ : std_logic;
SIGNAL \inst3|inst|Next_Char[0]~12_combout\ : std_logic;
SIGNAL \inst3|inst|Selector7~1_combout\ : std_logic;
SIGNAL \inst3|inst|Selector7~2_combout\ : std_logic;
SIGNAL \inst3|inst|Selector8~1_combout\ : std_logic;
SIGNAL \inst3|inst|Selector8~2_combout\ : std_logic;
SIGNAL \inst3|inst|Selector9~2_combout\ : std_logic;
SIGNAL \inst3|inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst3|inst|LCD_RS~regout\ : std_logic;
SIGNAL \inst3|inst|LCD_E~0_combout\ : std_logic;
SIGNAL \inst3|inst|LCD_E~regout\ : std_logic;
SIGNAL \inst|count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst2|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|inst|DATA_BUS_VALUE\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|inst|CLK_COUNT_400HZ\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst|dataA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst6|dffs\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|dataB\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|inst1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst1|LPM_COUNTER_component|auto_generated|safe_q\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|inst|CHAR_COUNT\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_reset~~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_CLK~~combout\ : std_logic;
SIGNAL \ALT_INV_reset~~combout\ : std_logic;
SIGNAL \inst3|inst|ALT_INV_DATA_BUS_VALUE\ : std_logic_vector(5 DOWNTO 3);
SIGNAL \inst|ALT_INV_state.Waiting~regout\ : std_logic;
SIGNAL \inst3|inst|ALT_INV_LCD_RW_INT~regout\ : std_logic;
SIGNAL \inst3|inst|ALT_INV_LCD_E~regout\ : std_logic;

BEGIN

LCD_RS <= ww_LCD_RS;
\ww_reset~\ <= \reset~\;
ww_CLK50 <= CLK50;
ww_Launch <= Launch;
ww_B <= B;
ww_A <= A;
\ww_CLK~\ <= \CLK~\;
LCD_E <= ww_LCD_E;
LCD_RW <= ww_LCD_RW;
LCD_ONOFF <= ww_LCD_ONOFF;
LCD_BLONOFF <= ww_LCD_BLONOFF;
Complete <= ww_Complete;
Data <= ww_Data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\inst|DataOut[7]~0_combout\ & \inst|DataOut[6]~1_combout\ & \inst|DataOut[5]~2_combout\ & \inst|DataOut[4]~3_combout\ & \inst|DataOut[3]~4_combout\ & \inst|DataOut[2]~5_combout\
& \inst|DataOut[1]~6_combout\ & \inst|DataOut[0]~7_combout\);

\inst2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst4|$00000|auto_generated|result_node[7]~7_combout\ & \inst4|$00000|auto_generated|result_node[6]~6_combout\ & \inst4|$00000|auto_generated|result_node[5]~5_combout\ & 
\inst4|$00000|auto_generated|result_node[4]~4_combout\ & \inst4|$00000|auto_generated|result_node[3]~3_combout\ & \inst4|$00000|auto_generated|result_node[2]~2_combout\ & \inst4|$00000|auto_generated|result_node[1]~1_combout\ & 
\inst4|$00000|auto_generated|result_node[0]~0_combout\);

\inst2|altsyncram_component|auto_generated|q_a\(0) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst2|altsyncram_component|auto_generated|q_a\(1) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst2|altsyncram_component|auto_generated|q_a\(2) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst2|altsyncram_component|auto_generated|q_a\(3) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst2|altsyncram_component|auto_generated|q_a\(4) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst2|altsyncram_component|auto_generated|q_a\(5) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst2|altsyncram_component|auto_generated|q_a\(6) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst2|altsyncram_component|auto_generated|q_a\(7) <= \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

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
\ALT_INV_CLK~~combout\ <= NOT \CLK~~combout\;
\ALT_INV_reset~~combout\ <= NOT \reset~~combout\;
\inst3|inst|ALT_INV_DATA_BUS_VALUE\(3) <= NOT \inst3|inst|DATA_BUS_VALUE\(3);
\inst3|inst|ALT_INV_DATA_BUS_VALUE\(4) <= NOT \inst3|inst|DATA_BUS_VALUE\(4);
\inst3|inst|ALT_INV_DATA_BUS_VALUE\(5) <= NOT \inst3|inst|DATA_BUS_VALUE\(5);
\inst|ALT_INV_state.Waiting~regout\ <= NOT \inst|state.Waiting~regout\;
\inst3|inst|ALT_INV_LCD_RW_INT~regout\ <= NOT \inst3|inst|LCD_RW_INT~regout\;
\inst3|inst|ALT_INV_LCD_E~regout\ <= NOT \inst3|inst|LCD_E~regout\;

-- Location: LCFF_X15_Y17_N23
\inst|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst|count[6]~21_combout\,
	sdata => \A~combout\(6),
	sload => \inst|Cnt~1_combout\,
	ena => \inst|count[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(6));

-- Location: LCFF_X12_Y19_N29
\inst3|inst|CLK_COUNT_400HZ[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[8]~37_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(8));

-- Location: LCFF_X12_Y18_N11
\inst3|inst|CLK_COUNT_400HZ[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[15]~51_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(15));

-- Location: LCFF_X12_Y18_N17
\inst3|inst|CLK_COUNT_400HZ[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[18]~57_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(18));

-- Location: LCCOMB_X15_Y17_N22
\inst|count[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|count[6]~21_combout\ = ((\inst|count\(6) $ (\inst|Cnt~0_combout\ $ (\inst|count[5]~20\)))) # (GND)
-- \inst|count[6]~22\ = CARRY((\inst|count\(6) & ((!\inst|count[5]~20\) # (!\inst|Cnt~0_combout\))) # (!\inst|count\(6) & (!\inst|Cnt~0_combout\ & !\inst|count[5]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(6),
	datab => \inst|Cnt~0_combout\,
	datad => VCC,
	cin => \inst|count[5]~20\,
	combout => \inst|count[6]~21_combout\,
	cout => \inst|count[6]~22\);

-- Location: LCFF_X12_Y19_N13
\inst3|inst|CLK_COUNT_400HZ[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[0]~20_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(0));

-- Location: LCCOMB_X12_Y19_N12
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

-- Location: LCCOMB_X12_Y19_N28
\inst3|inst|CLK_COUNT_400HZ[8]~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[8]~37_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(8) & (\inst3|inst|CLK_COUNT_400HZ[7]~36\ $ (GND))) # (!\inst3|inst|CLK_COUNT_400HZ\(8) & (!\inst3|inst|CLK_COUNT_400HZ[7]~36\ & VCC))
-- \inst3|inst|CLK_COUNT_400HZ[8]~38\ = CARRY((\inst3|inst|CLK_COUNT_400HZ\(8) & !\inst3|inst|CLK_COUNT_400HZ[7]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CLK_COUNT_400HZ\(8),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[7]~36\,
	combout => \inst3|inst|CLK_COUNT_400HZ[8]~37_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[8]~38\);

-- Location: LCCOMB_X12_Y18_N10
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

-- Location: LCCOMB_X12_Y18_N16
\inst3|inst|CLK_COUNT_400HZ[18]~57\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[18]~57_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(18) & (\inst3|inst|CLK_COUNT_400HZ[17]~56\ $ (GND))) # (!\inst3|inst|CLK_COUNT_400HZ\(18) & (!\inst3|inst|CLK_COUNT_400HZ[17]~56\ & VCC))
-- \inst3|inst|CLK_COUNT_400HZ[18]~58\ = CARRY((\inst3|inst|CLK_COUNT_400HZ\(18) & !\inst3|inst|CLK_COUNT_400HZ[17]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CLK_COUNT_400HZ\(18),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[17]~56\,
	combout => \inst3|inst|CLK_COUNT_400HZ[18]~57_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[18]~58\);

-- Location: LCCOMB_X12_Y20_N24
\inst3|inst|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Add2~4_combout\ = (\inst3|inst|CHAR_COUNT\(2) & (\inst3|inst|Add2~3\ $ (GND))) # (!\inst3|inst|CHAR_COUNT\(2) & (!\inst3|inst|Add2~3\ & VCC))
-- \inst3|inst|Add2~5\ = CARRY((\inst3|inst|CHAR_COUNT\(2) & !\inst3|inst|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CHAR_COUNT\(2),
	datad => VCC,
	cin => \inst3|inst|Add2~3\,
	combout => \inst3|inst|Add2~4_combout\,
	cout => \inst3|inst|Add2~5\);

-- Location: LCCOMB_X16_Y17_N4
\inst|Selector5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~6_combout\ = (\B~combout\(7) & (\inst|count\(7) & (\B~combout\(6) $ (!\inst|count\(6))))) # (!\B~combout\(7) & (!\inst|count\(7) & (\B~combout\(6) $ (!\inst|count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(7),
	datab => \inst|count\(7),
	datac => \B~combout\(6),
	datad => \inst|count\(6),
	combout => \inst|Selector5~6_combout\);

-- Location: LCFF_X11_Y17_N7
\inst|state.GetB\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst|Selector3~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.GetB~regout\);

-- Location: LCCOMB_X11_Y17_N20
\inst|Selector5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~9_combout\ = (\inst|delay~regout\ & ((\inst|state.GetB~regout\) # (\inst|state.GetA~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.GetB~regout\,
	datab => \inst|delay~regout\,
	datad => \inst|state.GetA~regout\,
	combout => \inst|Selector5~9_combout\);

-- Location: LCFF_X14_Y17_N17
\inst|dataA[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	sdata => \inst2|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	ena => \inst|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dataA\(6));

-- Location: LCFF_X14_Y17_N13
\inst|dataA[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	sdata => \inst2|altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	ena => \inst|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dataA\(4));

-- Location: LCFF_X14_Y17_N11
\inst|dataA[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	sdata => \inst2|altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	ena => \inst|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dataA\(3));

-- Location: LCCOMB_X10_Y17_N12
\inst|WR\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|WR~combout\ = (\inst|state.WriteA~regout\) # (\inst|state.WriteB~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WriteA~regout\,
	datad => \inst|state.WriteB~regout\,
	combout => \inst|WR~combout\);

-- Location: LCCOMB_X15_Y17_N8
\inst|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector6~0_combout\ = (\inst|state.GetA~regout\) # ((\inst|state.GetB~regout\) # ((\inst|state.Waiting~regout\ & !\inst|state.CheckFlag~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.GetA~regout\,
	datab => \inst|state.Waiting~regout\,
	datac => \inst|state.CheckFlag~regout\,
	datad => \inst|state.GetB~regout\,
	combout => \inst|Selector6~0_combout\);

-- Location: LCFF_X11_Y17_N1
\inst|state.SendAddrB_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst|state~20_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.SendAddrB_r~regout\);

-- Location: LCCOMB_X11_Y17_N6
\inst|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector3~0_combout\ = (\inst|state.SendAddrB_r~regout\) # ((\inst|state.GetB~regout\ & !\inst|delay~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.SendAddrB_r~regout\,
	datac => \inst|state.GetB~regout\,
	datad => \inst|delay~regout\,
	combout => \inst|Selector3~0_combout\);

-- Location: LCCOMB_X11_Y21_N14
\inst3|inst|Selector15~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector15~0_combout\ = (\inst3|inst|next_command.Print_String~regout\ & ((\inst3|inst|state.DROP_LCD_E~regout\) # (\inst3|inst|state.HOLD~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|state.DROP_LCD_E~regout\,
	datac => \inst3|inst|state.HOLD~regout\,
	datad => \inst3|inst|next_command.Print_String~regout\,
	combout => \inst3|inst|Selector15~0_combout\);

-- Location: LCFF_X11_Y21_N13
\inst3|inst|state.MODE_SET\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|state~29_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.MODE_SET~regout\);

-- Location: LCCOMB_X11_Y17_N0
\inst|state~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~20_combout\ = (\inst|state.GetA~regout\ & ((\inst|Selector5~10_combout\) # ((\inst|state.CheckLoop~regout\ & \inst|Selector5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.GetA~regout\,
	datab => \inst|state.CheckLoop~regout\,
	datac => \inst|Selector5~10_combout\,
	datad => \inst|Selector5~7_combout\,
	combout => \inst|state~20_combout\);

-- Location: LCCOMB_X11_Y21_N30
\inst3|inst|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector3~1_combout\ = (\inst3|inst|state.LINE2~regout\) # ((\inst3|inst|DATA_BUS_VALUE\(6) & ((\inst3|inst|state.HOLD~regout\) # (\inst3|inst|state.DROP_LCD_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.HOLD~regout\,
	datab => \inst3|inst|state.LINE2~regout\,
	datac => \inst3|inst|DATA_BUS_VALUE\(6),
	datad => \inst3|inst|state.DROP_LCD_E~regout\,
	combout => \inst3|inst|Selector3~1_combout\);

-- Location: LCFF_X12_Y17_N3
\inst6|dffs[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst4|$00000|auto_generated|result_node[1]~1_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|dffs\(1));

-- Location: LCFF_X12_Y17_N23
\inst6|dffs[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst4|$00000|auto_generated|result_node[5]~5_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|dffs\(5));

-- Location: LCCOMB_X11_Y17_N10
\inst3|inst|Next_Char[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Next_Char[1]~4_combout\ = (\inst3|inst|CHAR_COUNT\(3) & (((\inst3|inst|CHAR_COUNT\(0))))) # (!\inst3|inst|CHAR_COUNT\(3) & ((\inst3|inst|CHAR_COUNT\(0) & (\inst6|dffs\(1))) # (!\inst3|inst|CHAR_COUNT\(0) & ((\inst6|dffs\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|dffs\(1),
	datab => \inst3|inst|CHAR_COUNT\(3),
	datac => \inst6|dffs\(5),
	datad => \inst3|inst|CHAR_COUNT\(0),
	combout => \inst3|inst|Next_Char[1]~4_combout\);

-- Location: LCFF_X12_Y17_N31
\inst6|dffs[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst4|$00000|auto_generated|result_node[3]~3_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|dffs\(3));

-- Location: LCFF_X12_Y17_N27
\inst6|dffs[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst4|$00000|auto_generated|result_node[7]~7_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|dffs\(7));

-- Location: LCCOMB_X12_Y21_N10
\inst3|inst|Next_Char[3]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Next_Char[3]~7_combout\ = (\inst3|inst|CHAR_COUNT\(0) & ((\inst6|dffs\(3)) # ((\inst3|inst|CHAR_COUNT\(3))))) # (!\inst3|inst|CHAR_COUNT\(0) & (((\inst6|dffs\(7) & !\inst3|inst|CHAR_COUNT\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst6|dffs\(3),
	datab => \inst6|dffs\(7),
	datac => \inst3|inst|CHAR_COUNT\(0),
	datad => \inst3|inst|CHAR_COUNT\(3),
	combout => \inst3|inst|Next_Char[3]~7_combout\);

-- Location: LCFF_X10_Y21_N27
\inst3|inst|state.DISPLAY_ON\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|state~32_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.DISPLAY_ON~regout\);

-- Location: LCCOMB_X10_Y21_N14
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

-- Location: LCCOMB_X10_Y21_N30
\inst3|inst|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector6~0_combout\ = (\inst3|inst|state.FUNC_SET~regout\) # ((\inst3|inst|state.RESET2~regout\) # ((\inst3|inst|state.RESET3~regout\) # (!\inst3|inst|Selector4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.FUNC_SET~regout\,
	datab => \inst3|inst|state.RESET2~regout\,
	datac => \inst3|inst|Selector4~1_combout\,
	datad => \inst3|inst|state.RESET3~regout\,
	combout => \inst3|inst|Selector6~0_combout\);

-- Location: LCCOMB_X11_Y21_N6
\inst3|inst|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector6~1_combout\ = (\inst3|inst|Selector6~0_combout\) # (((!\inst3|inst|LCD_RS~0_combout\ & !\inst3|inst|DATA_BUS_VALUE\(3))) # (!\inst3|inst|state.RESET1~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|LCD_RS~0_combout\,
	datab => \inst3|inst|DATA_BUS_VALUE\(3),
	datac => \inst3|inst|Selector6~0_combout\,
	datad => \inst3|inst|state.RESET1~regout\,
	combout => \inst3|inst|Selector6~1_combout\);

-- Location: LCCOMB_X11_Y21_N0
\inst3|inst|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector7~0_combout\ = (\inst3|inst|state.MODE_SET~regout\) # ((\inst3|inst|state.DISPLAY_ON~regout\) # ((!\inst3|inst|LCD_RS~0_combout\ & \inst3|inst|DATA_BUS_VALUE\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.MODE_SET~regout\,
	datab => \inst3|inst|state.DISPLAY_ON~regout\,
	datac => \inst3|inst|LCD_RS~0_combout\,
	datad => \inst3|inst|DATA_BUS_VALUE\(2),
	combout => \inst3|inst|Selector7~0_combout\);

-- Location: LCCOMB_X15_Y21_N22
\inst3|inst|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector9~0_combout\ = (\inst3|inst|state.Print_String~regout\ & (!\inst3|inst|Equal0~0_combout\ & \inst3|inst1|altsyncram_component|auto_generated|q_a\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|state.Print_String~regout\,
	datac => \inst3|inst|Equal0~0_combout\,
	datad => \inst3|inst1|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst3|inst|Selector9~0_combout\);

-- Location: LCCOMB_X15_Y21_N20
\inst3|inst|Selector9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector9~1_combout\ = (\inst3|inst|state.DISPLAY_CLEAR~regout\) # ((\inst3|inst|Selector9~0_combout\) # ((\inst3|inst|DATA_BUS_VALUE\(0) & !\inst3|inst|LCD_RS~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|DATA_BUS_VALUE\(0),
	datab => \inst3|inst|LCD_RS~0_combout\,
	datac => \inst3|inst|state.DISPLAY_CLEAR~regout\,
	datad => \inst3|inst|Selector9~0_combout\,
	combout => \inst3|inst|Selector9~1_combout\);

-- Location: LCFF_X10_Y21_N29
\inst3|inst|next_command.MODE_SET\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector14~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|next_command.MODE_SET~regout\);

-- Location: LCCOMB_X11_Y21_N12
\inst3|inst|state~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|state~29_combout\ = (\inst3|inst|next_command.MODE_SET~regout\ & \inst3|inst|state.HOLD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|next_command.MODE_SET~regout\,
	datac => \inst3|inst|state.HOLD~regout\,
	combout => \inst3|inst|state~29_combout\);

-- Location: LCFF_X10_Y21_N23
\inst3|inst|next_command.DISPLAY_ON\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector13~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|next_command.DISPLAY_ON~regout\);

-- Location: LCCOMB_X10_Y21_N26
\inst3|inst|state~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|state~32_combout\ = (\inst3|inst|state.HOLD~regout\ & \inst3|inst|next_command.DISPLAY_ON~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.HOLD~regout\,
	datad => \inst3|inst|next_command.DISPLAY_ON~regout\,
	combout => \inst3|inst|state~32_combout\);

-- Location: LCCOMB_X10_Y21_N28
\inst3|inst|Selector14~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector14~0_combout\ = (\inst3|inst|state.DISPLAY_ON~regout\) # ((\inst3|inst|next_command.MODE_SET~regout\ & ((\inst3|inst|state.DROP_LCD_E~regout\) # (\inst3|inst|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.DROP_LCD_E~regout\,
	datab => \inst3|inst|state.DISPLAY_ON~regout\,
	datac => \inst3|inst|next_command.MODE_SET~regout\,
	datad => \inst3|inst|state.HOLD~regout\,
	combout => \inst3|inst|Selector14~0_combout\);

-- Location: LCCOMB_X10_Y21_N22
\inst3|inst|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector13~0_combout\ = (\inst3|inst|state.DISPLAY_CLEAR~regout\) # ((\inst3|inst|next_command.DISPLAY_ON~regout\ & ((\inst3|inst|state.DROP_LCD_E~regout\) # (\inst3|inst|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.DROP_LCD_E~regout\,
	datab => \inst3|inst|state.DISPLAY_CLEAR~regout\,
	datac => \inst3|inst|next_command.DISPLAY_ON~regout\,
	datad => \inst3|inst|state.HOLD~regout\,
	combout => \inst3|inst|Selector13~0_combout\);

-- Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[2]~I\ : cycloneii_io
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
	padio => ww_B(2),
	combout => \B~combout\(2));

-- Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[6]~I\ : cycloneii_io
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
	padio => ww_B(6),
	combout => \B~combout\(6));

-- Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[7]~I\ : cycloneii_io
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
	padio => ww_B(7),
	combout => \B~combout\(7));

-- Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[6]~I\ : cycloneii_io
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
	padio => ww_A(6),
	combout => \A~combout\(6));

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

-- Location: LCCOMB_X12_Y19_N14
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

-- Location: LCCOMB_X12_Y18_N8
\inst3|inst|CLK_COUNT_400HZ[14]~49\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[14]~49_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(14) & (\inst3|inst|CLK_COUNT_400HZ[13]~48\ $ (GND))) # (!\inst3|inst|CLK_COUNT_400HZ\(14) & (!\inst3|inst|CLK_COUNT_400HZ[13]~48\ & VCC))
-- \inst3|inst|CLK_COUNT_400HZ[14]~50\ = CARRY((\inst3|inst|CLK_COUNT_400HZ\(14) & !\inst3|inst|CLK_COUNT_400HZ[13]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|CLK_COUNT_400HZ\(14),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[13]~48\,
	combout => \inst3|inst|CLK_COUNT_400HZ[14]~49_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[14]~50\);

-- Location: LCCOMB_X12_Y18_N12
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

-- Location: LCCOMB_X12_Y18_N14
\inst3|inst|CLK_COUNT_400HZ[17]~55\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[17]~55_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(17) & (!\inst3|inst|CLK_COUNT_400HZ[16]~54\)) # (!\inst3|inst|CLK_COUNT_400HZ\(17) & ((\inst3|inst|CLK_COUNT_400HZ[16]~54\) # (GND)))
-- \inst3|inst|CLK_COUNT_400HZ[17]~56\ = CARRY((!\inst3|inst|CLK_COUNT_400HZ[16]~54\) # (!\inst3|inst|CLK_COUNT_400HZ\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|CLK_COUNT_400HZ\(17),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[16]~54\,
	combout => \inst3|inst|CLK_COUNT_400HZ[17]~55_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[17]~56\);

-- Location: LCFF_X12_Y18_N15
\inst3|inst|CLK_COUNT_400HZ[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[17]~55_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(17));

-- Location: LCCOMB_X12_Y18_N18
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

-- Location: LCFF_X12_Y18_N19
\inst3|inst|CLK_COUNT_400HZ[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[19]~59_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(19));

-- Location: LCFF_X12_Y18_N13
\inst3|inst|CLK_COUNT_400HZ[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[16]~53_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(16));

-- Location: LCCOMB_X12_Y18_N24
\inst3|inst|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|LessThan0~4_combout\ = (!\inst3|inst|CLK_COUNT_400HZ\(18) & (!\inst3|inst|CLK_COUNT_400HZ\(19) & (!\inst3|inst|CLK_COUNT_400HZ\(17) & !\inst3|inst|CLK_COUNT_400HZ\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CLK_COUNT_400HZ\(18),
	datab => \inst3|inst|CLK_COUNT_400HZ\(19),
	datac => \inst3|inst|CLK_COUNT_400HZ\(17),
	datad => \inst3|inst|CLK_COUNT_400HZ\(16),
	combout => \inst3|inst|LessThan0~4_combout\);

-- Location: LCCOMB_X12_Y19_N24
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

-- Location: LCFF_X12_Y19_N25
\inst3|inst|CLK_COUNT_400HZ[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[6]~33_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(6));

-- Location: LCCOMB_X12_Y19_N30
\inst3|inst|CLK_COUNT_400HZ[9]~39\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[9]~39_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(9) & (!\inst3|inst|CLK_COUNT_400HZ[8]~38\)) # (!\inst3|inst|CLK_COUNT_400HZ\(9) & ((\inst3|inst|CLK_COUNT_400HZ[8]~38\) # (GND)))
-- \inst3|inst|CLK_COUNT_400HZ[9]~40\ = CARRY((!\inst3|inst|CLK_COUNT_400HZ[8]~38\) # (!\inst3|inst|CLK_COUNT_400HZ\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CLK_COUNT_400HZ\(9),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[8]~38\,
	combout => \inst3|inst|CLK_COUNT_400HZ[9]~39_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[9]~40\);

-- Location: LCFF_X12_Y19_N31
\inst3|inst|CLK_COUNT_400HZ[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[9]~39_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(9));

-- Location: LCCOMB_X12_Y19_N6
\inst3|inst|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|LessThan0~1_combout\ = (!\inst3|inst|CLK_COUNT_400HZ\(8) & (!\inst3|inst|CLK_COUNT_400HZ\(7) & (!\inst3|inst|CLK_COUNT_400HZ\(6) & !\inst3|inst|CLK_COUNT_400HZ\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CLK_COUNT_400HZ\(8),
	datab => \inst3|inst|CLK_COUNT_400HZ\(7),
	datac => \inst3|inst|CLK_COUNT_400HZ\(6),
	datad => \inst3|inst|CLK_COUNT_400HZ\(9),
	combout => \inst3|inst|LessThan0~1_combout\);

-- Location: LCCOMB_X12_Y19_N16
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

-- Location: LCFF_X12_Y19_N17
\inst3|inst|CLK_COUNT_400HZ[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[2]~24_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(2));

-- Location: LCCOMB_X12_Y19_N8
\inst3|inst|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|LessThan0~0_combout\ = ((!\inst3|inst|CLK_COUNT_400HZ\(3) & (!\inst3|inst|CLK_COUNT_400HZ\(2) & !\inst3|inst|CLK_COUNT_400HZ\(4)))) # (!\inst3|inst|CLK_COUNT_400HZ\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CLK_COUNT_400HZ\(5),
	datab => \inst3|inst|CLK_COUNT_400HZ\(3),
	datac => \inst3|inst|CLK_COUNT_400HZ\(2),
	datad => \inst3|inst|CLK_COUNT_400HZ\(4),
	combout => \inst3|inst|LessThan0~0_combout\);

-- Location: LCCOMB_X12_Y18_N28
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

-- Location: LCCOMB_X12_Y18_N26
\inst3|inst|CLK_COUNT_400HZ[16]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[16]~26_combout\ = (((!\inst3|inst|LessThan0~3_combout\ & !\inst3|inst|LessThan0~2_combout\)) # (!\inst3|inst|LessThan0~4_combout\)) # (!\reset~~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~~combout\,
	datab => \inst3|inst|LessThan0~3_combout\,
	datac => \inst3|inst|LessThan0~4_combout\,
	datad => \inst3|inst|LessThan0~2_combout\,
	combout => \inst3|inst|CLK_COUNT_400HZ[16]~26_combout\);

-- Location: LCFF_X12_Y19_N15
\inst3|inst|CLK_COUNT_400HZ[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[1]~22_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(1));

-- Location: LCCOMB_X12_Y19_N18
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

-- Location: LCFF_X12_Y19_N19
\inst3|inst|CLK_COUNT_400HZ[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[3]~27_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(3));

-- Location: LCCOMB_X12_Y19_N20
\inst3|inst|CLK_COUNT_400HZ[4]~29\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[4]~29_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(4) & (\inst3|inst|CLK_COUNT_400HZ[3]~28\ $ (GND))) # (!\inst3|inst|CLK_COUNT_400HZ\(4) & (!\inst3|inst|CLK_COUNT_400HZ[3]~28\ & VCC))
-- \inst3|inst|CLK_COUNT_400HZ[4]~30\ = CARRY((\inst3|inst|CLK_COUNT_400HZ\(4) & !\inst3|inst|CLK_COUNT_400HZ[3]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|CLK_COUNT_400HZ\(4),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[3]~28\,
	combout => \inst3|inst|CLK_COUNT_400HZ[4]~29_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[4]~30\);

-- Location: LCFF_X12_Y19_N21
\inst3|inst|CLK_COUNT_400HZ[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[4]~29_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(4));

-- Location: LCCOMB_X12_Y19_N22
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

-- Location: LCFF_X12_Y19_N23
\inst3|inst|CLK_COUNT_400HZ[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[5]~31_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(5));

-- Location: LCCOMB_X12_Y19_N26
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

-- Location: LCFF_X12_Y19_N27
\inst3|inst|CLK_COUNT_400HZ[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[7]~35_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(7));

-- Location: LCCOMB_X12_Y18_N0
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

-- Location: LCFF_X12_Y18_N1
\inst3|inst|CLK_COUNT_400HZ[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[10]~41_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(10));

-- Location: LCCOMB_X12_Y18_N2
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

-- Location: LCFF_X12_Y18_N3
\inst3|inst|CLK_COUNT_400HZ[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[11]~43_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(11));

-- Location: LCCOMB_X12_Y18_N4
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

-- Location: LCFF_X12_Y18_N5
\inst3|inst|CLK_COUNT_400HZ[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[12]~45_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(12));

-- Location: LCCOMB_X12_Y18_N6
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

-- Location: LCFF_X12_Y18_N9
\inst3|inst|CLK_COUNT_400HZ[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[14]~49_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(14));

-- Location: LCFF_X12_Y18_N7
\inst3|inst|CLK_COUNT_400HZ[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[13]~47_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(13));

-- Location: LCCOMB_X12_Y18_N30
\inst3|inst|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|LessThan0~3_combout\ = (((!\inst3|inst|CLK_COUNT_400HZ\(13)) # (!\inst3|inst|CLK_COUNT_400HZ\(12))) # (!\inst3|inst|CLK_COUNT_400HZ\(14))) # (!\inst3|inst|CLK_COUNT_400HZ\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CLK_COUNT_400HZ\(15),
	datab => \inst3|inst|CLK_COUNT_400HZ\(14),
	datac => \inst3|inst|CLK_COUNT_400HZ\(12),
	datad => \inst3|inst|CLK_COUNT_400HZ\(13),
	combout => \inst3|inst|LessThan0~3_combout\);

-- Location: LCCOMB_X11_Y18_N12
\inst3|inst|CLK_400HZ~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_400HZ~0_combout\ = \inst3|inst|CLK_400HZ~regout\ $ ((((!\inst3|inst|LessThan0~3_combout\ & !\inst3|inst|LessThan0~2_combout\)) # (!\inst3|inst|LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|LessThan0~4_combout\,
	datab => \inst3|inst|LessThan0~3_combout\,
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

-- Location: LCFF_X11_Y18_N13
\inst3|inst|CLK_400HZ\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_400HZ~0_combout\,
	sclr => \ALT_INV_reset~~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_400HZ~regout\);

-- Location: CLKCTRL_G1
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

-- Location: LCCOMB_X11_Y21_N24
\inst3|inst|LCD_RS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|LCD_RS~0_combout\ = (!\inst3|inst|state.HOLD~regout\ & !\inst3|inst|state.DROP_LCD_E~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.HOLD~regout\,
	datac => \inst3|inst|state.DROP_LCD_E~regout\,
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

-- Location: LCFF_X11_Y21_N25
\inst3|inst|state.DROP_LCD_E\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|LCD_RS~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.DROP_LCD_E~regout\);

-- Location: LCFF_X10_Y21_N15
\inst3|inst|state.HOLD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	sdata => \inst3|inst|state.DROP_LCD_E~regout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.HOLD~regout\);

-- Location: LCCOMB_X11_Y21_N22
\inst3|inst|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector17~0_combout\ = (\inst3|inst|next_command.RETURN_HOME~regout\ & ((\inst3|inst|state.HOLD~regout\) # (\inst3|inst|state.DROP_LCD_E~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|next_command.RETURN_HOME~regout\,
	datac => \inst3|inst|state.HOLD~regout\,
	datad => \inst3|inst|state.DROP_LCD_E~regout\,
	combout => \inst3|inst|Selector17~0_combout\);

-- Location: LCCOMB_X12_Y20_N20
\inst3|inst|Add2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Add2~0_combout\ = \inst3|inst|CHAR_COUNT\(0) $ (VCC)
-- \inst3|inst|Add2~1\ = CARRY(\inst3|inst|CHAR_COUNT\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CHAR_COUNT\(0),
	datad => VCC,
	combout => \inst3|inst|Add2~0_combout\,
	cout => \inst3|inst|Add2~1\);

-- Location: LCCOMB_X12_Y20_N22
\inst3|inst|Add2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Add2~2_combout\ = (\inst3|inst|CHAR_COUNT\(1) & (!\inst3|inst|Add2~1\)) # (!\inst3|inst|CHAR_COUNT\(1) & ((\inst3|inst|Add2~1\) # (GND)))
-- \inst3|inst|Add2~3\ = CARRY((!\inst3|inst|Add2~1\) # (!\inst3|inst|CHAR_COUNT\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|CHAR_COUNT\(1),
	datad => VCC,
	cin => \inst3|inst|Add2~1\,
	combout => \inst3|inst|Add2~2_combout\,
	cout => \inst3|inst|Add2~3\);

-- Location: LCCOMB_X12_Y21_N2
\inst3|inst|Add2~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Add2~15_combout\ = (\inst3|inst|Add2~10_combout\ & ((\inst3|inst|CHAR_COUNT\(1)) # ((\inst3|inst|Add2~2_combout\ & \inst3|inst|Selector15~1_combout\)))) # (!\inst3|inst|Add2~10_combout\ & (\inst3|inst|Add2~2_combout\ & 
-- ((\inst3|inst|Selector15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Add2~10_combout\,
	datab => \inst3|inst|Add2~2_combout\,
	datac => \inst3|inst|CHAR_COUNT\(1),
	datad => \inst3|inst|Selector15~1_combout\,
	combout => \inst3|inst|Add2~15_combout\);

-- Location: LCFF_X12_Y21_N3
\inst3|inst|CHAR_COUNT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Add2~15_combout\,
	ena => \reset~~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CHAR_COUNT\(1));

-- Location: LCCOMB_X15_Y21_N8
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

-- Location: LCFF_X15_Y21_N9
\inst3|inst|state.RESET1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|state.RESET1~feeder_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.RESET1~regout\);

-- Location: LCCOMB_X15_Y21_N26
\inst3|inst|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Add2~10_combout\ = (\inst3|inst|state.RESET1~regout\ & !\inst3|inst|state.Print_String~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|state.RESET1~regout\,
	datac => \inst3|inst|state.Print_String~regout\,
	combout => \inst3|inst|Add2~10_combout\);

-- Location: LCCOMB_X12_Y21_N12
\inst3|inst|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Add2~14_combout\ = (\inst3|inst|Add2~4_combout\ & ((\inst3|inst|Selector15~1_combout\) # ((\inst3|inst|Add2~10_combout\ & \inst3|inst|CHAR_COUNT\(2))))) # (!\inst3|inst|Add2~4_combout\ & (\inst3|inst|Add2~10_combout\ & 
-- (\inst3|inst|CHAR_COUNT\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Add2~4_combout\,
	datab => \inst3|inst|Add2~10_combout\,
	datac => \inst3|inst|CHAR_COUNT\(2),
	datad => \inst3|inst|Selector15~1_combout\,
	combout => \inst3|inst|Add2~14_combout\);

-- Location: LCFF_X12_Y21_N13
\inst3|inst|CHAR_COUNT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Add2~14_combout\,
	ena => \reset~~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CHAR_COUNT\(2));

-- Location: LCCOMB_X12_Y20_N26
\inst3|inst|Add2~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Add2~6_combout\ = (\inst3|inst|CHAR_COUNT\(3) & (!\inst3|inst|Add2~5\)) # (!\inst3|inst|CHAR_COUNT\(3) & ((\inst3|inst|Add2~5\) # (GND)))
-- \inst3|inst|Add2~7\ = CARRY((!\inst3|inst|Add2~5\) # (!\inst3|inst|CHAR_COUNT\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CHAR_COUNT\(3),
	datad => VCC,
	cin => \inst3|inst|Add2~5\,
	combout => \inst3|inst|Add2~6_combout\,
	cout => \inst3|inst|Add2~7\);

-- Location: LCCOMB_X12_Y21_N22
\inst3|inst|Add2~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Add2~13_combout\ = (\inst3|inst|Add2~10_combout\ & ((\inst3|inst|CHAR_COUNT\(3)) # ((\inst3|inst|Add2~6_combout\ & \inst3|inst|Selector15~1_combout\)))) # (!\inst3|inst|Add2~10_combout\ & (\inst3|inst|Add2~6_combout\ & 
-- ((\inst3|inst|Selector15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Add2~10_combout\,
	datab => \inst3|inst|Add2~6_combout\,
	datac => \inst3|inst|CHAR_COUNT\(3),
	datad => \inst3|inst|Selector15~1_combout\,
	combout => \inst3|inst|Add2~13_combout\);

-- Location: LCFF_X12_Y21_N23
\inst3|inst|CHAR_COUNT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Add2~13_combout\,
	ena => \reset~~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CHAR_COUNT\(3));

-- Location: LCCOMB_X12_Y20_N28
\inst3|inst|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Add2~8_combout\ = \inst3|inst|CHAR_COUNT\(4) $ (!\inst3|inst|Add2~7\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|CHAR_COUNT\(4),
	cin => \inst3|inst|Add2~7\,
	combout => \inst3|inst|Add2~8_combout\);

-- Location: LCCOMB_X12_Y21_N26
\inst3|inst|Add2~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Add2~11_combout\ = (\inst3|inst|Add2~10_combout\ & ((\inst3|inst|CHAR_COUNT\(4)) # ((\inst3|inst|Add2~8_combout\ & \inst3|inst|Selector15~1_combout\)))) # (!\inst3|inst|Add2~10_combout\ & (\inst3|inst|Add2~8_combout\ & 
-- ((\inst3|inst|Selector15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Add2~10_combout\,
	datab => \inst3|inst|Add2~8_combout\,
	datac => \inst3|inst|CHAR_COUNT\(4),
	datad => \inst3|inst|Selector15~1_combout\,
	combout => \inst3|inst|Add2~11_combout\);

-- Location: LCFF_X12_Y21_N27
\inst3|inst|CHAR_COUNT[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Add2~11_combout\,
	ena => \reset~~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CHAR_COUNT\(4));

-- Location: M4K_X13_Y21
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

-- Location: LCCOMB_X12_Y21_N8
\inst3|inst|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Equal2~0_combout\ = (!\inst3|inst1|altsyncram_component|auto_generated|q_a\(0) & (\inst3|inst1|altsyncram_component|auto_generated|q_a\(2) & (\inst3|inst1|altsyncram_component|auto_generated|q_a\(1) & 
-- \inst3|inst1|altsyncram_component|auto_generated|q_a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst1|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst3|inst1|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst3|inst1|altsyncram_component|auto_generated|q_a\(1),
	datad => \inst3|inst1|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst3|inst|Equal2~0_combout\);

-- Location: LCCOMB_X12_Y21_N18
\inst3|inst|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Equal2~1_combout\ = (\inst3|inst1|altsyncram_component|auto_generated|q_a\(4) & (\inst3|inst1|altsyncram_component|auto_generated|q_a\(6) & (\inst3|inst1|altsyncram_component|auto_generated|q_a\(7) & 
-- \inst3|inst1|altsyncram_component|auto_generated|q_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst1|altsyncram_component|auto_generated|q_a\(4),
	datab => \inst3|inst1|altsyncram_component|auto_generated|q_a\(6),
	datac => \inst3|inst1|altsyncram_component|auto_generated|q_a\(7),
	datad => \inst3|inst1|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst3|inst|Equal2~1_combout\);

-- Location: LCCOMB_X12_Y21_N0
\inst3|inst|process_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|process_1~0_combout\ = (\inst3|inst|CHAR_COUNT\(4) & ((\inst3|inst|Equal3~0_combout\) # ((\inst3|inst|Equal2~0_combout\ & \inst3|inst|Equal2~1_combout\)))) # (!\inst3|inst|CHAR_COUNT\(4) & (((\inst3|inst|Equal2~0_combout\ & 
-- \inst3|inst|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CHAR_COUNT\(4),
	datab => \inst3|inst|Equal3~0_combout\,
	datac => \inst3|inst|Equal2~0_combout\,
	datad => \inst3|inst|Equal2~1_combout\,
	combout => \inst3|inst|process_1~0_combout\);

-- Location: LCCOMB_X12_Y21_N30
\inst3|inst|Selector15~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector15~1_combout\ = (\inst3|inst|state.Print_String~regout\ & !\inst3|inst|process_1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.Print_String~regout\,
	datad => \inst3|inst|process_1~0_combout\,
	combout => \inst3|inst|Selector15~1_combout\);

-- Location: LCCOMB_X12_Y21_N16
\inst3|inst|Add2~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Add2~12_combout\ = (\inst3|inst|Add2~10_combout\ & ((\inst3|inst|CHAR_COUNT\(0)) # ((\inst3|inst|Add2~0_combout\ & \inst3|inst|Selector15~1_combout\)))) # (!\inst3|inst|Add2~10_combout\ & (\inst3|inst|Add2~0_combout\ & 
-- ((\inst3|inst|Selector15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Add2~10_combout\,
	datab => \inst3|inst|Add2~0_combout\,
	datac => \inst3|inst|CHAR_COUNT\(0),
	datad => \inst3|inst|Selector15~1_combout\,
	combout => \inst3|inst|Add2~12_combout\);

-- Location: LCFF_X12_Y21_N17
\inst3|inst|CHAR_COUNT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Add2~12_combout\,
	ena => \reset~~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CHAR_COUNT\(0));

-- Location: LCCOMB_X12_Y20_N0
\inst3|inst|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Equal3~0_combout\ = (\inst3|inst|CHAR_COUNT\(2) & (\inst3|inst|CHAR_COUNT\(0) & (\inst3|inst|CHAR_COUNT\(3) & \inst3|inst|CHAR_COUNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CHAR_COUNT\(2),
	datab => \inst3|inst|CHAR_COUNT\(0),
	datac => \inst3|inst|CHAR_COUNT\(3),
	datad => \inst3|inst|CHAR_COUNT\(1),
	combout => \inst3|inst|Equal3~0_combout\);

-- Location: LCCOMB_X12_Y21_N4
\inst3|inst|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Equal3~1_combout\ = (\inst3|inst|Equal3~0_combout\ & !\inst3|inst|CHAR_COUNT\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|Equal3~0_combout\,
	datac => \inst3|inst|CHAR_COUNT\(4),
	combout => \inst3|inst|Equal3~1_combout\);

-- Location: LCCOMB_X12_Y21_N14
\inst3|inst|Selector17~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector17~1_combout\ = (\inst3|inst|Selector17~0_combout\) # ((\inst3|inst|state.Print_String~regout\ & (!\inst3|inst|Equal3~1_combout\ & \inst3|inst|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.Print_String~regout\,
	datab => \inst3|inst|Selector17~0_combout\,
	datac => \inst3|inst|Equal3~1_combout\,
	datad => \inst3|inst|process_1~0_combout\,
	combout => \inst3|inst|Selector17~1_combout\);

-- Location: LCFF_X12_Y21_N15
\inst3|inst|next_command.RETURN_HOME\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector17~1_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|next_command.RETURN_HOME~regout\);

-- Location: LCCOMB_X11_Y21_N28
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

-- Location: LCFF_X11_Y21_N29
\inst3|inst|state.RETURN_HOME\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|state~31_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.RETURN_HOME~regout\);

-- Location: LCCOMB_X11_Y21_N18
\inst3|inst|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector4~0_combout\ = (!\inst3|inst|state.MODE_SET~regout\ & (!\inst3|inst|state.LINE2~regout\ & !\inst3|inst|state.RETURN_HOME~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.MODE_SET~regout\,
	datab => \inst3|inst|state.LINE2~regout\,
	datad => \inst3|inst|state.RETURN_HOME~regout\,
	combout => \inst3|inst|Selector4~0_combout\);

-- Location: LCCOMB_X12_Y21_N28
\inst3|inst|Selector15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector15~2_combout\ = (\inst3|inst|Selector15~0_combout\) # (((!\inst3|inst|Equal3~1_combout\ & \inst3|inst|Selector15~1_combout\)) # (!\inst3|inst|Selector4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111110111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Selector15~0_combout\,
	datab => \inst3|inst|Selector4~0_combout\,
	datac => \inst3|inst|Equal3~1_combout\,
	datad => \inst3|inst|Selector15~1_combout\,
	combout => \inst3|inst|Selector15~2_combout\);

-- Location: LCFF_X12_Y21_N29
\inst3|inst|next_command.Print_String\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector15~2_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|next_command.Print_String~regout\);

-- Location: LCCOMB_X11_Y21_N2
\inst3|inst|state~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|state~28_combout\ = (\inst3|inst|state.HOLD~regout\ & \inst3|inst|next_command.Print_String~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|state.HOLD~regout\,
	datad => \inst3|inst|next_command.Print_String~regout\,
	combout => \inst3|inst|state~28_combout\);

-- Location: LCFF_X11_Y21_N3
\inst3|inst|state.Print_String\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|state~28_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.Print_String~regout\);

-- Location: LCCOMB_X11_Y21_N10
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

-- Location: LCFF_X11_Y21_N11
\inst3|inst|next_command.LINE2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector16~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|next_command.LINE2~regout\);

-- Location: LCCOMB_X11_Y21_N26
\inst3|inst|state~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|state~30_combout\ = (\inst3|inst|state.HOLD~regout\ & \inst3|inst|next_command.LINE2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|state.HOLD~regout\,
	datad => \inst3|inst|next_command.LINE2~regout\,
	combout => \inst3|inst|state~30_combout\);

-- Location: LCFF_X11_Y21_N27
\inst3|inst|state.LINE2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|state~30_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.LINE2~regout\);

-- Location: LCCOMB_X11_Y21_N20
\inst3|inst|Selector2~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector2~2_combout\ = (\inst3|inst|state.RETURN_HOME~regout\) # ((\inst3|inst|state.LINE2~regout\) # ((\inst3|inst1|altsyncram_component|auto_generated|q_a\(7) & \inst3|inst|state.Print_String~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.RETURN_HOME~regout\,
	datab => \inst3|inst|state.LINE2~regout\,
	datac => \inst3|inst1|altsyncram_component|auto_generated|q_a\(7),
	datad => \inst3|inst|state.Print_String~regout\,
	combout => \inst3|inst|Selector2~2_combout\);

-- Location: LCCOMB_X10_Y21_N16
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

-- Location: LCFF_X10_Y21_N17
\inst3|inst|DATA_BUS_VALUE[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector2~3_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|DATA_BUS_VALUE\(7));

-- Location: LCCOMB_X15_Y21_N28
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

-- Location: LCFF_X15_Y21_N29
\inst3|inst|LCD_RW_INT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|LCD_RW_INT~feeder_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	ena => \inst3|inst|LCD_RS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|LCD_RW_INT~regout\);

-- Location: LCCOMB_X15_Y21_N30
\inst3|inst|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector3~2_combout\ = (\inst3|inst|Equal0~0_combout\ & \inst3|inst|state.Print_String~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Equal0~0_combout\,
	datac => \inst3|inst|state.Print_String~regout\,
	combout => \inst3|inst|Selector3~2_combout\);

-- Location: LCCOMB_X15_Y21_N0
\inst3|inst|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector3~0_combout\ = (\inst3|inst|state.Print_String~regout\ & \inst3|inst1|altsyncram_component|auto_generated|q_a\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|state.Print_String~regout\,
	datad => \inst3|inst1|altsyncram_component|auto_generated|q_a\(6),
	combout => \inst3|inst|Selector3~0_combout\);

-- Location: LCCOMB_X14_Y21_N0
\inst3|inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Equal0~0_combout\ = (!\inst3|inst1|altsyncram_component|auto_generated|q_a\(5) & (!\inst3|inst1|altsyncram_component|auto_generated|q_a\(7) & (!\inst3|inst1|altsyncram_component|auto_generated|q_a\(4) & 
-- !\inst3|inst1|altsyncram_component|auto_generated|q_a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst1|altsyncram_component|auto_generated|q_a\(5),
	datab => \inst3|inst1|altsyncram_component|auto_generated|q_a\(7),
	datac => \inst3|inst1|altsyncram_component|auto_generated|q_a\(4),
	datad => \inst3|inst1|altsyncram_component|auto_generated|q_a\(6),
	combout => \inst3|inst|Equal0~0_combout\);

-- Location: LCCOMB_X14_Y21_N14
\inst3|inst|Next_Char[3]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Next_Char[3]~0_combout\ = (\inst3|inst|Equal0~0_combout\ & ((\inst3|inst|CHAR_COUNT\(1)) # ((\inst3|inst|CHAR_COUNT\(2)) # (!\inst3|inst|CHAR_COUNT\(4)))))

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
	combout => \inst3|inst|Next_Char[3]~0_combout\);

-- Location: LCCOMB_X12_Y17_N4
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\ = \inst1|LPM_COUNTER_component|auto_generated|safe_q\(0) $ (VCC)
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\ = CARRY(\inst1|LPM_COUNTER_component|auto_generated|safe_q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => VCC,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	cout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\);

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

-- Location: LCCOMB_X15_Y17_N10
\inst|count[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|count[0]~8_combout\ = \inst|count\(0) $ (VCC)
-- \inst|count[0]~9\ = CARRY(\inst|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(0),
	datad => VCC,
	combout => \inst|count[0]~8_combout\,
	cout => \inst|count[0]~9\);

-- Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[0]~I\ : cycloneii_io
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
	padio => ww_A(0),
	combout => \A~combout\(0));

-- Location: LCCOMB_X15_Y17_N28
\inst|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector6~1_combout\ = (\inst|state.Compare~regout\ & (((\inst|Flag~regout\) # (\inst|LessThan0~14_combout\)))) # (!\inst|state.Compare~regout\ & (\inst|Selector6~0_combout\ & (\inst|Flag~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector6~0_combout\,
	datab => \inst|state.Compare~regout\,
	datac => \inst|Flag~regout\,
	datad => \inst|LessThan0~14_combout\,
	combout => \inst|Selector6~1_combout\);

-- Location: LCFF_X15_Y17_N29
\inst|Flag\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|Flag~regout\);

-- Location: LCCOMB_X11_Y17_N24
\inst|state~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~21_combout\ = (\inst|state.Compare~regout\ & ((\inst|Selector5~10_combout\) # ((\inst|Selector5~7_combout\ & \inst|state.CheckLoop~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector5~7_combout\,
	datab => \inst|Selector5~10_combout\,
	datac => \inst|state.CheckLoop~regout\,
	datad => \inst|state.Compare~regout\,
	combout => \inst|state~21_combout\);

-- Location: LCFF_X11_Y17_N25
\inst|state.SendAddrB_w\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst|state~21_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.SendAddrB_w~regout\);

-- Location: LCFF_X11_Y17_N17
\inst|state.WriteB\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	sdata => \inst|state.SendAddrB_w~regout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WriteB~regout\);

-- Location: LCCOMB_X11_Y17_N28
\inst|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector0~0_combout\ = (\inst|state.CheckFlag~regout\) # (!\inst|state.Waiting~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.CheckFlag~regout\,
	datad => \inst|state.Waiting~regout\,
	combout => \inst|Selector0~0_combout\);

-- Location: LCCOMB_X11_Y17_N18
\inst|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector1~0_combout\ = (\inst|Selector5~10_combout\ & (((\inst|Selector0~0_combout\)))) # (!\inst|Selector5~10_combout\ & (\inst|state.CheckLoop~regout\ & ((\inst|Selector0~0_combout\) # (!\inst|Selector5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector5~7_combout\,
	datab => \inst|Selector5~10_combout\,
	datac => \inst|state.CheckLoop~regout\,
	datad => \inst|Selector0~0_combout\,
	combout => \inst|Selector1~0_combout\);

-- Location: LCFF_X11_Y17_N19
\inst|state.SendAddrA_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst|Selector1~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.SendAddrA_r~regout\);

-- Location: LCCOMB_X11_Y17_N8
\inst|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector2~0_combout\ = (\inst|state.SendAddrA_r~regout\) # ((\inst|state.GetA~regout\ & !\inst|delay~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.SendAddrA_r~regout\,
	datac => \inst|state.GetA~regout\,
	datad => \inst|delay~regout\,
	combout => \inst|Selector2~0_combout\);

-- Location: LCFF_X11_Y17_N9
\inst|state.GetA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst|Selector2~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.GetA~regout\);

-- Location: LCCOMB_X11_Y17_N30
\inst|delay~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|delay~0_combout\ = \inst|delay~regout\ $ (((\inst|state.GetB~regout\) # (\inst|state.GetA~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.GetB~regout\,
	datac => \inst|delay~regout\,
	datad => \inst|state.GetA~regout\,
	combout => \inst|delay~0_combout\);

-- Location: LCFF_X11_Y17_N31
\inst|delay\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst|delay~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|delay~regout\);

-- Location: LCCOMB_X15_Y17_N2
\inst|Cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Cnt~0_combout\ = (\inst|state.WriteB~regout\) # ((\inst|state.GetA~regout\ & \inst|delay~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.GetA~regout\,
	datac => \inst|state.WriteB~regout\,
	datad => \inst|delay~regout\,
	combout => \inst|Cnt~0_combout\);

-- Location: LCCOMB_X15_Y17_N12
\inst|count[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|count[1]~10_combout\ = (\inst|count\(1) & ((\inst|Cnt~0_combout\ & (!\inst|count[0]~9\)) # (!\inst|Cnt~0_combout\ & (\inst|count[0]~9\ & VCC)))) # (!\inst|count\(1) & ((\inst|Cnt~0_combout\ & ((\inst|count[0]~9\) # (GND))) # (!\inst|Cnt~0_combout\ & 
-- (!\inst|count[0]~9\))))
-- \inst|count[1]~11\ = CARRY((\inst|count\(1) & (\inst|Cnt~0_combout\ & !\inst|count[0]~9\)) # (!\inst|count\(1) & ((\inst|Cnt~0_combout\) # (!\inst|count[0]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(1),
	datab => \inst|Cnt~0_combout\,
	datad => VCC,
	cin => \inst|count[0]~9\,
	combout => \inst|count[1]~10_combout\,
	cout => \inst|count[1]~11\);

-- Location: LCCOMB_X15_Y17_N14
\inst|count[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|count[2]~13_combout\ = ((\inst|count\(2) $ (\inst|Cnt~0_combout\ $ (\inst|count[1]~11\)))) # (GND)
-- \inst|count[2]~14\ = CARRY((\inst|count\(2) & ((!\inst|count[1]~11\) # (!\inst|Cnt~0_combout\))) # (!\inst|count\(2) & (!\inst|Cnt~0_combout\ & !\inst|count[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(2),
	datab => \inst|Cnt~0_combout\,
	datad => VCC,
	cin => \inst|count[1]~11\,
	combout => \inst|count[2]~13_combout\,
	cout => \inst|count[2]~14\);

-- Location: LCCOMB_X15_Y17_N16
\inst|count[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|count[3]~15_combout\ = (\inst|count\(3) & ((\inst|Cnt~0_combout\ & (!\inst|count[2]~14\)) # (!\inst|Cnt~0_combout\ & (\inst|count[2]~14\ & VCC)))) # (!\inst|count\(3) & ((\inst|Cnt~0_combout\ & ((\inst|count[2]~14\) # (GND))) # 
-- (!\inst|Cnt~0_combout\ & (!\inst|count[2]~14\))))
-- \inst|count[3]~16\ = CARRY((\inst|count\(3) & (\inst|Cnt~0_combout\ & !\inst|count[2]~14\)) # (!\inst|count\(3) & ((\inst|Cnt~0_combout\) # (!\inst|count[2]~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(3),
	datab => \inst|Cnt~0_combout\,
	datad => VCC,
	cin => \inst|count[2]~14\,
	combout => \inst|count[3]~15_combout\,
	cout => \inst|count[3]~16\);

-- Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[3]~I\ : cycloneii_io
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
	padio => ww_A(3),
	combout => \A~combout\(3));

-- Location: LCCOMB_X15_Y17_N26
\inst|count[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|count[0]~12_combout\ = (\inst|Cnt~1_combout\) # ((\inst|Cnt~0_combout\) # ((\inst|state.Compare~regout\ & \inst|LessThan0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Cnt~1_combout\,
	datab => \inst|Cnt~0_combout\,
	datac => \inst|state.Compare~regout\,
	datad => \inst|LessThan0~14_combout\,
	combout => \inst|count[0]~12_combout\);

-- Location: LCFF_X15_Y17_N17
\inst|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst|count[3]~15_combout\,
	sdata => \A~combout\(3),
	sload => \inst|Cnt~1_combout\,
	ena => \inst|count[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(3));

-- Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[3]~I\ : cycloneii_io
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
	padio => ww_B(3),
	combout => \B~combout\(3));

-- Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[2]~I\ : cycloneii_io
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
	padio => ww_A(2),
	combout => \A~combout\(2));

-- Location: LCFF_X15_Y17_N15
\inst|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst|count[2]~13_combout\,
	sdata => \A~combout\(2),
	sload => \inst|Cnt~1_combout\,
	ena => \inst|count[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(2));

-- Location: LCCOMB_X16_Y17_N24
\inst|Selector5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~4_combout\ = (\B~combout\(2) & (\inst|count\(2) & (\inst|count\(3) $ (!\B~combout\(3))))) # (!\B~combout\(2) & (!\inst|count\(2) & (\inst|count\(3) $ (!\B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(2),
	datab => \inst|count\(3),
	datac => \B~combout\(3),
	datad => \inst|count\(2),
	combout => \inst|Selector5~4_combout\);

-- Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[0]~I\ : cycloneii_io
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
	padio => ww_B(0),
	combout => \B~combout\(0));

-- Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[1]~I\ : cycloneii_io
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
	padio => ww_B(1),
	combout => \B~combout\(1));

-- Location: LCCOMB_X15_Y17_N4
\inst|Selector5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~3_combout\ = (\inst|count\(1) & (\B~combout\(1) & (\B~combout\(0) $ (!\inst|count\(0))))) # (!\inst|count\(1) & (!\B~combout\(1) & (\B~combout\(0) $ (!\inst|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(1),
	datab => \B~combout\(0),
	datac => \B~combout\(1),
	datad => \inst|count\(0),
	combout => \inst|Selector5~3_combout\);

-- Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[5]~I\ : cycloneii_io
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
	padio => ww_B(5),
	combout => \B~combout\(5));

-- Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B[4]~I\ : cycloneii_io
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
	padio => ww_B(4),
	combout => \B~combout\(4));

-- Location: LCCOMB_X15_Y17_N18
\inst|count[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|count[4]~17_combout\ = ((\inst|count\(4) $ (\inst|Cnt~0_combout\ $ (\inst|count[3]~16\)))) # (GND)
-- \inst|count[4]~18\ = CARRY((\inst|count\(4) & ((!\inst|count[3]~16\) # (!\inst|Cnt~0_combout\))) # (!\inst|count\(4) & (!\inst|Cnt~0_combout\ & !\inst|count[3]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(4),
	datab => \inst|Cnt~0_combout\,
	datad => VCC,
	cin => \inst|count[3]~16\,
	combout => \inst|count[4]~17_combout\,
	cout => \inst|count[4]~18\);

-- Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[4]~I\ : cycloneii_io
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
	padio => ww_A(4),
	combout => \A~combout\(4));

-- Location: LCFF_X15_Y17_N19
\inst|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst|count[4]~17_combout\,
	sdata => \A~combout\(4),
	sload => \inst|Cnt~1_combout\,
	ena => \inst|count[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(4));

-- Location: LCCOMB_X16_Y17_N30
\inst|Selector5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~5_combout\ = (\inst|count\(5) & (\B~combout\(5) & (\B~combout\(4) $ (!\inst|count\(4))))) # (!\inst|count\(5) & (!\B~combout\(5) & (\B~combout\(4) $ (!\inst|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(5),
	datab => \B~combout\(5),
	datac => \B~combout\(4),
	datad => \inst|count\(4),
	combout => \inst|Selector5~5_combout\);

-- Location: LCCOMB_X15_Y17_N6
\inst|Selector5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~7_combout\ = (\inst|Selector5~6_combout\ & (\inst|Selector5~4_combout\ & (\inst|Selector5~3_combout\ & \inst|Selector5~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector5~6_combout\,
	datab => \inst|Selector5~4_combout\,
	datac => \inst|Selector5~3_combout\,
	datad => \inst|Selector5~5_combout\,
	combout => \inst|Selector5~7_combout\);

-- Location: LCCOMB_X11_Y17_N26
\inst|state~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~18_combout\ = (\inst|state.CheckLoop~regout\ & ((\inst|Selector5~10_combout\) # (\inst|Selector5~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.CheckLoop~regout\,
	datac => \inst|Selector5~10_combout\,
	datad => \inst|Selector5~7_combout\,
	combout => \inst|state~18_combout\);

-- Location: LCFF_X11_Y17_N27
\inst|state.CheckFlag\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst|state~18_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.CheckFlag~regout\);

-- Location: LCCOMB_X15_Y17_N0
\inst|Cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Cnt~1_combout\ = ((\inst|Flag~regout\ & \inst|state.CheckFlag~regout\)) # (!\inst|state.Waiting~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Flag~regout\,
	datac => \inst|state.CheckFlag~regout\,
	datad => \inst|state.Waiting~regout\,
	combout => \inst|Cnt~1_combout\);

-- Location: LCFF_X15_Y17_N11
\inst|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst|count[0]~8_combout\,
	sdata => \A~combout\(0),
	sload => \inst|Cnt~1_combout\,
	ena => \inst|count[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(0));

-- Location: LCCOMB_X12_Y17_N28
\inst4|$00000|auto_generated|result_node[0]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|$00000|auto_generated|result_node[0]~0_combout\ = (\inst|state.Waiting~regout\ & ((\inst|count\(0)))) # (!\inst|state.Waiting~regout\ & (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.Waiting~regout\,
	datac => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(0),
	datad => \inst|count\(0),
	combout => \inst4|$00000|auto_generated|result_node[0]~0_combout\);

-- Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[1]~I\ : cycloneii_io
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
	padio => ww_A(1),
	combout => \A~combout\(1));

-- Location: LCFF_X15_Y17_N13
\inst|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst|count[1]~10_combout\,
	sdata => \A~combout\(1),
	sload => \inst|Cnt~1_combout\,
	ena => \inst|count[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(1));

-- Location: LCCOMB_X12_Y17_N6
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\ = (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(1) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\)) # 
-- (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(1) & ((\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (GND)))
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ = CARRY((!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\) # (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(1),
	datad => VCC,
	cin => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~COUT\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	cout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\);

-- Location: LCFF_X12_Y17_N7
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~combout\,
	aclr => \inst|state.Waiting~regout\,
	ena => \inst|ALT_INV_state.Waiting~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(1));

-- Location: LCCOMB_X12_Y17_N2
\inst4|$00000|auto_generated|result_node[1]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|$00000|auto_generated|result_node[1]~1_combout\ = (\inst|state.Waiting~regout\ & (\inst|count\(1))) # (!\inst|state.Waiting~regout\ & ((\inst1|LPM_COUNTER_component|auto_generated|safe_q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.Waiting~regout\,
	datac => \inst|count\(1),
	datad => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(1),
	combout => \inst4|$00000|auto_generated|result_node[1]~1_combout\);

-- Location: LCCOMB_X12_Y17_N8
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\ = (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(2) & (\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ $ (GND))) # 
-- (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(2) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\ & VCC))
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\ = CARRY((\inst1|LPM_COUNTER_component|auto_generated|safe_q\(2) & !\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => VCC,
	cin => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita1~COUT\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	cout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\);

-- Location: LCCOMB_X12_Y17_N10
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\ = (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(3) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\)) # 
-- (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(3) & ((\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (GND)))
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ = CARRY((!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\) # (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(3),
	datad => VCC,
	cin => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~COUT\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	cout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\);

-- Location: LCFF_X12_Y17_N11
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~combout\,
	aclr => \inst|state.Waiting~regout\,
	ena => \inst|ALT_INV_state.Waiting~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(3));

-- Location: LCCOMB_X12_Y17_N30
\inst4|$00000|auto_generated|result_node[3]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|$00000|auto_generated|result_node[3]~3_combout\ = (\inst|state.Waiting~regout\ & (\inst|count\(3))) # (!\inst|state.Waiting~regout\ & ((\inst1|LPM_COUNTER_component|auto_generated|safe_q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.Waiting~regout\,
	datab => \inst|count\(3),
	datad => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(3),
	combout => \inst4|$00000|auto_generated|result_node[3]~3_combout\);

-- Location: LCCOMB_X12_Y17_N12
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\ = (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(4) & (\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ $ (GND))) # 
-- (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(4) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\ & VCC))
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\ = CARRY((\inst1|LPM_COUNTER_component|auto_generated|safe_q\(4) & !\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(4),
	datad => VCC,
	cin => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita3~COUT\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	cout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\);

-- Location: LCFF_X12_Y17_N13
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita4~combout\,
	aclr => \inst|state.Waiting~regout\,
	ena => \inst|ALT_INV_state.Waiting~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(4));

-- Location: LCCOMB_X12_Y17_N20
\inst4|$00000|auto_generated|result_node[4]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|$00000|auto_generated|result_node[4]~4_combout\ = (\inst|state.Waiting~regout\ & (\inst|count\(4))) # (!\inst|state.Waiting~regout\ & ((\inst1|LPM_COUNTER_component|auto_generated|safe_q\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.Waiting~regout\,
	datac => \inst|count\(4),
	datad => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(4),
	combout => \inst4|$00000|auto_generated|result_node[4]~4_combout\);

-- Location: LCCOMB_X12_Y17_N14
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\ = (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(5) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\)) # 
-- (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(5) & ((\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (GND)))
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ = CARRY((!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\) # (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => VCC,
	cin => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita4~COUT\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	cout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\);

-- Location: LCFF_X12_Y17_N15
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita5~combout\,
	aclr => \inst|state.Waiting~regout\,
	ena => \inst|ALT_INV_state.Waiting~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(5));

-- Location: LCCOMB_X15_Y17_N20
\inst|count[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|count[5]~19_combout\ = (\inst|count\(5) & ((\inst|Cnt~0_combout\ & (!\inst|count[4]~18\)) # (!\inst|Cnt~0_combout\ & (\inst|count[4]~18\ & VCC)))) # (!\inst|count\(5) & ((\inst|Cnt~0_combout\ & ((\inst|count[4]~18\) # (GND))) # 
-- (!\inst|Cnt~0_combout\ & (!\inst|count[4]~18\))))
-- \inst|count[5]~20\ = CARRY((\inst|count\(5) & (\inst|Cnt~0_combout\ & !\inst|count[4]~18\)) # (!\inst|count\(5) & ((\inst|Cnt~0_combout\) # (!\inst|count[4]~18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(5),
	datab => \inst|Cnt~0_combout\,
	datad => VCC,
	cin => \inst|count[4]~18\,
	combout => \inst|count[5]~19_combout\,
	cout => \inst|count[5]~20\);

-- Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[5]~I\ : cycloneii_io
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
	padio => ww_A(5),
	combout => \A~combout\(5));

-- Location: LCFF_X15_Y17_N21
\inst|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst|count[5]~19_combout\,
	sdata => \A~combout\(5),
	sload => \inst|Cnt~1_combout\,
	ena => \inst|count[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(5));

-- Location: LCCOMB_X12_Y17_N22
\inst4|$00000|auto_generated|result_node[5]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|$00000|auto_generated|result_node[5]~5_combout\ = (\inst|state.Waiting~regout\ & ((\inst|count\(5)))) # (!\inst|state.Waiting~regout\ & (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.Waiting~regout\,
	datac => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(5),
	datad => \inst|count\(5),
	combout => \inst4|$00000|auto_generated|result_node[5]~5_combout\);

-- Location: LCCOMB_X12_Y17_N16
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\ = (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(6) & (\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ $ (GND))) # 
-- (!\inst1|LPM_COUNTER_component|auto_generated|safe_q\(6) & (!\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\ & VCC))
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ = CARRY((\inst1|LPM_COUNTER_component|auto_generated|safe_q\(6) & !\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datad => VCC,
	cin => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita5~COUT\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	cout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\);

-- Location: LCFF_X12_Y17_N17
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita6~combout\,
	aclr => \inst|state.Waiting~regout\,
	ena => \inst|ALT_INV_state.Waiting~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(6));

-- Location: LCCOMB_X12_Y17_N24
\inst4|$00000|auto_generated|result_node[6]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|$00000|auto_generated|result_node[6]~6_combout\ = (\inst|state.Waiting~regout\ & (\inst|count\(6))) # (!\inst|state.Waiting~regout\ & ((\inst1|LPM_COUNTER_component|auto_generated|safe_q\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(6),
	datac => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(6),
	datad => \inst|state.Waiting~regout\,
	combout => \inst4|$00000|auto_generated|result_node[6]~6_combout\);

-- Location: LCCOMB_X15_Y17_N24
\inst|count[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|count[7]~23_combout\ = \inst|count\(7) $ (\inst|Cnt~0_combout\ $ (!\inst|count[6]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(7),
	datab => \inst|Cnt~0_combout\,
	cin => \inst|count[6]~22\,
	combout => \inst|count[7]~23_combout\);

-- Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A[7]~I\ : cycloneii_io
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
	padio => ww_A(7),
	combout => \A~combout\(7));

-- Location: LCFF_X15_Y17_N25
\inst|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst|count[7]~23_combout\,
	sdata => \A~combout\(7),
	sload => \inst|Cnt~1_combout\,
	ena => \inst|count[0]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|count\(7));

-- Location: LCCOMB_X12_Y17_N18
\inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\ = \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\ $ (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(7),
	cin => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita6~COUT\,
	combout => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\);

-- Location: LCFF_X12_Y17_N19
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita7~combout\,
	aclr => \inst|state.Waiting~regout\,
	ena => \inst|ALT_INV_state.Waiting~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(7));

-- Location: LCCOMB_X12_Y17_N26
\inst4|$00000|auto_generated|result_node[7]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|$00000|auto_generated|result_node[7]~7_combout\ = (\inst|state.Waiting~regout\ & (\inst|count\(7))) # (!\inst|state.Waiting~regout\ & ((\inst1|LPM_COUNTER_component|auto_generated|safe_q\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.Waiting~regout\,
	datac => \inst|count\(7),
	datad => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(7),
	combout => \inst4|$00000|auto_generated|result_node[7]~7_combout\);

-- Location: LCFF_X11_Y17_N21
\inst|state.SendAddrA_w\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	sdata => \inst|state.WriteB~regout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.SendAddrA_w~regout\);

-- Location: LCFF_X11_Y17_N29
\inst|state.WriteA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	sdata => \inst|state.SendAddrA_w~regout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.WriteA~regout\);

-- Location: LCCOMB_X15_Y17_N30
\inst|dataA[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|dataA[7]~0_combout\ = (\inst|state.GetA~regout\ & \inst|delay~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.GetA~regout\,
	datad => \inst|delay~regout\,
	combout => \inst|dataA[7]~0_combout\);

-- Location: LCFF_X14_Y17_N19
\inst|dataA[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	sdata => \inst2|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	ena => \inst|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dataA\(7));

-- Location: LCCOMB_X14_Y17_N0
\inst|DataOut[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|DataOut[7]~0_combout\ = (\inst|state.SendAddrA_w~regout\ & (((\inst|dataA\(7))))) # (!\inst|state.SendAddrA_w~regout\ & ((\inst|state.WriteA~regout\ & ((\inst|dataA\(7)))) # (!\inst|state.WriteA~regout\ & (\inst|dataB\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.SendAddrA_w~regout\,
	datab => \inst|state.WriteA~regout\,
	datac => \inst|dataB\(7),
	datad => \inst|dataA\(7),
	combout => \inst|DataOut[7]~0_combout\);

-- Location: M4K_X13_Y17
\inst2|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F303132333435363738393A3B3C3D3E3F404142434445464748494A4B4C4D4E4F505152535455565758595A5B5C5D5E5F606162636465666768696A6B6C6D6E6F707172737475767778797A7B7C7D7E7F808182838485868788898A8B8C8D8E8F909192939495969798999A9B9C9D9E9FA0A1A2A3A4A5A6A7A8A9AAABACADAEAFB0B1B2B3B4B5B6B7B8B9BABBBCBDBEBFC0C1C2C3C4C5C6C7C8C9CACBCCCDCECFD0D1D2D3D4D5D6D7D8D9DADBDCDDDEDFE0E1E2E3E4E5E6E7E8E9EAEBECEDEEEFF0F1F2F3F4F5F6F7F8F9FAFBFCFDFEFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "RAM256x8.mif",
	init_file_layout => "port_a",
	logical_ram_name => "RAM265x8:inst2|altsyncram:altsyncram_component|altsyncram_rtc1:auto_generated|ALTSYNCRAM",
	operation_mode => "single_port",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clear => "none",
	port_a_byte_enable_clock => "none",
	port_a_data_in_clear => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 8,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_write_enable_clear => "none",
	port_b_address_width => 8,
	port_b_data_width => 8,
	ram_block_type => "M4K",
	safe_write => "err_on_2clk")
-- pragma translate_on
PORT MAP (
	portawe => \inst|WR~combout\,
	clk0 => \CLK50~clkctrl_outclk\,
	portadatain => \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst2|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X11_Y17_N16
\inst|dataB[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|dataB[7]~0_combout\ = (\inst|state.GetB~regout\ & \inst|delay~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.GetB~regout\,
	datad => \inst|delay~regout\,
	combout => \inst|dataB[7]~0_combout\);

-- Location: LCFF_X14_Y17_N3
\inst|dataB[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	sdata => \inst2|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	ena => \inst|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dataB\(6));

-- Location: LCCOMB_X14_Y17_N2
\inst|DataOut[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|DataOut[6]~1_combout\ = (\inst|state.SendAddrA_w~regout\ & (\inst|dataA\(6))) # (!\inst|state.SendAddrA_w~regout\ & ((\inst|state.WriteA~regout\ & (\inst|dataA\(6))) # (!\inst|state.WriteA~regout\ & ((\inst|dataB\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataA\(6),
	datab => \inst|state.SendAddrA_w~regout\,
	datac => \inst|dataB\(6),
	datad => \inst|state.WriteA~regout\,
	combout => \inst|DataOut[6]~1_combout\);

-- Location: LCFF_X14_Y17_N21
\inst|dataB[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	sdata => \inst2|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	ena => \inst|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dataB\(5));

-- Location: LCFF_X14_Y17_N31
\inst|dataA[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	sdata => \inst2|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	ena => \inst|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dataA\(5));

-- Location: LCCOMB_X14_Y17_N20
\inst|DataOut[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|DataOut[5]~2_combout\ = (\inst|state.SendAddrA_w~regout\ & (((\inst|dataA\(5))))) # (!\inst|state.SendAddrA_w~regout\ & ((\inst|state.WriteA~regout\ & ((\inst|dataA\(5)))) # (!\inst|state.WriteA~regout\ & (\inst|dataB\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.SendAddrA_w~regout\,
	datab => \inst|state.WriteA~regout\,
	datac => \inst|dataB\(5),
	datad => \inst|dataA\(5),
	combout => \inst|DataOut[5]~2_combout\);

-- Location: LCFF_X14_Y17_N29
\inst|dataB[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	sdata => \inst2|altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	ena => \inst|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dataB\(4));

-- Location: LCCOMB_X14_Y17_N28
\inst|DataOut[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|DataOut[4]~3_combout\ = (\inst|state.SendAddrA_w~regout\ & (\inst|dataA\(4))) # (!\inst|state.SendAddrA_w~regout\ & ((\inst|state.WriteA~regout\ & (\inst|dataA\(4))) # (!\inst|state.WriteA~regout\ & ((\inst|dataB\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataA\(4),
	datab => \inst|state.SendAddrA_w~regout\,
	datac => \inst|dataB\(4),
	datad => \inst|state.WriteA~regout\,
	combout => \inst|DataOut[4]~3_combout\);

-- Location: LCFF_X14_Y17_N23
\inst|dataB[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	sdata => \inst2|altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	ena => \inst|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dataB\(3));

-- Location: LCCOMB_X14_Y17_N22
\inst|DataOut[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|DataOut[3]~4_combout\ = (\inst|state.SendAddrA_w~regout\ & (\inst|dataA\(3))) # (!\inst|state.SendAddrA_w~regout\ & ((\inst|state.WriteA~regout\ & (\inst|dataA\(3))) # (!\inst|state.WriteA~regout\ & ((\inst|dataB\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataA\(3),
	datab => \inst|state.SendAddrA_w~regout\,
	datac => \inst|dataB\(3),
	datad => \inst|state.WriteA~regout\,
	combout => \inst|DataOut[3]~4_combout\);

-- Location: LCFF_X14_Y17_N9
\inst|dataA[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	sdata => \inst2|altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	ena => \inst|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dataA\(2));

-- Location: LCFF_X14_Y17_N25
\inst|dataB[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	sdata => \inst2|altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	ena => \inst|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dataB\(2));

-- Location: LCCOMB_X14_Y17_N24
\inst|DataOut[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|DataOut[2]~5_combout\ = (\inst|state.SendAddrA_w~regout\ & (\inst|dataA\(2))) # (!\inst|state.SendAddrA_w~regout\ & ((\inst|state.WriteA~regout\ & (\inst|dataA\(2))) # (!\inst|state.WriteA~regout\ & ((\inst|dataB\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.SendAddrA_w~regout\,
	datab => \inst|dataA\(2),
	datac => \inst|dataB\(2),
	datad => \inst|state.WriteA~regout\,
	combout => \inst|DataOut[2]~5_combout\);

-- Location: LCFF_X14_Y17_N15
\inst|dataA[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	sdata => \inst2|altsyncram_component|auto_generated|q_a\(1),
	sload => VCC,
	ena => \inst|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dataA\(1));

-- Location: LCFF_X14_Y17_N7
\inst|dataB[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	sdata => \inst2|altsyncram_component|auto_generated|q_a\(1),
	sload => VCC,
	ena => \inst|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dataB\(1));

-- Location: LCCOMB_X10_Y17_N26
\inst|DataOut[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|DataOut[1]~6_combout\ = (\inst|state.WriteA~regout\ & (((\inst|dataA\(1))))) # (!\inst|state.WriteA~regout\ & ((\inst|state.SendAddrA_w~regout\ & (\inst|dataA\(1))) # (!\inst|state.SendAddrA_w~regout\ & ((\inst|dataB\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.WriteA~regout\,
	datab => \inst|state.SendAddrA_w~regout\,
	datac => \inst|dataA\(1),
	datad => \inst|dataB\(1),
	combout => \inst|DataOut[1]~6_combout\);

-- Location: LCFF_X14_Y17_N5
\inst|dataA[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	sdata => \inst2|altsyncram_component|auto_generated|q_a\(0),
	sload => VCC,
	ena => \inst|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dataA\(0));

-- Location: LCFF_X14_Y17_N27
\inst|dataB[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	sdata => \inst2|altsyncram_component|auto_generated|q_a\(0),
	sload => VCC,
	ena => \inst|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dataB\(0));

-- Location: LCCOMB_X14_Y17_N26
\inst|DataOut[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|DataOut[0]~7_combout\ = (\inst|state.SendAddrA_w~regout\ & (\inst|dataA\(0))) # (!\inst|state.SendAddrA_w~regout\ & ((\inst|state.WriteA~regout\ & (\inst|dataA\(0))) # (!\inst|state.WriteA~regout\ & ((\inst|dataB\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.SendAddrA_w~regout\,
	datab => \inst|dataA\(0),
	datac => \inst|dataB\(0),
	datad => \inst|state.WriteA~regout\,
	combout => \inst|DataOut[0]~7_combout\);

-- Location: LCFF_X14_Y17_N1
\inst|dataB[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	sdata => \inst2|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	ena => \inst|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|dataB\(7));

-- Location: LCCOMB_X14_Y17_N4
\inst|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~1_cout\ = CARRY((!\inst|dataB\(0) & \inst|dataA\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataB\(0),
	datab => \inst|dataA\(0),
	datad => VCC,
	cout => \inst|LessThan0~1_cout\);

-- Location: LCCOMB_X14_Y17_N6
\inst|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~3_cout\ = CARRY((\inst|dataB\(1) & ((!\inst|LessThan0~1_cout\) # (!\inst|dataA\(1)))) # (!\inst|dataB\(1) & (!\inst|dataA\(1) & !\inst|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataB\(1),
	datab => \inst|dataA\(1),
	datad => VCC,
	cin => \inst|LessThan0~1_cout\,
	cout => \inst|LessThan0~3_cout\);

-- Location: LCCOMB_X14_Y17_N8
\inst|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~5_cout\ = CARRY((\inst|dataB\(2) & (\inst|dataA\(2) & !\inst|LessThan0~3_cout\)) # (!\inst|dataB\(2) & ((\inst|dataA\(2)) # (!\inst|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataB\(2),
	datab => \inst|dataA\(2),
	datad => VCC,
	cin => \inst|LessThan0~3_cout\,
	cout => \inst|LessThan0~5_cout\);

-- Location: LCCOMB_X14_Y17_N10
\inst|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~7_cout\ = CARRY((\inst|dataA\(3) & (\inst|dataB\(3) & !\inst|LessThan0~5_cout\)) # (!\inst|dataA\(3) & ((\inst|dataB\(3)) # (!\inst|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataA\(3),
	datab => \inst|dataB\(3),
	datad => VCC,
	cin => \inst|LessThan0~5_cout\,
	cout => \inst|LessThan0~7_cout\);

-- Location: LCCOMB_X14_Y17_N12
\inst|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~9_cout\ = CARRY((\inst|dataA\(4) & ((!\inst|LessThan0~7_cout\) # (!\inst|dataB\(4)))) # (!\inst|dataA\(4) & (!\inst|dataB\(4) & !\inst|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataA\(4),
	datab => \inst|dataB\(4),
	datad => VCC,
	cin => \inst|LessThan0~7_cout\,
	cout => \inst|LessThan0~9_cout\);

-- Location: LCCOMB_X14_Y17_N14
\inst|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~11_cout\ = CARRY((\inst|dataB\(5) & ((!\inst|LessThan0~9_cout\) # (!\inst|dataA\(5)))) # (!\inst|dataB\(5) & (!\inst|dataA\(5) & !\inst|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataB\(5),
	datab => \inst|dataA\(5),
	datad => VCC,
	cin => \inst|LessThan0~9_cout\,
	cout => \inst|LessThan0~11_cout\);

-- Location: LCCOMB_X14_Y17_N16
\inst|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~13_cout\ = CARRY((\inst|dataA\(6) & ((!\inst|LessThan0~11_cout\) # (!\inst|dataB\(6)))) # (!\inst|dataA\(6) & (!\inst|dataB\(6) & !\inst|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|dataA\(6),
	datab => \inst|dataB\(6),
	datad => VCC,
	cin => \inst|LessThan0~11_cout\,
	cout => \inst|LessThan0~13_cout\);

-- Location: LCCOMB_X14_Y17_N18
\inst|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|LessThan0~14_combout\ = (\inst|dataB\(7) & (\inst|LessThan0~13_cout\ & \inst|dataA\(7))) # (!\inst|dataB\(7) & ((\inst|LessThan0~13_cout\) # (\inst|dataA\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|dataB\(7),
	datad => \inst|dataA\(7),
	cin => \inst|LessThan0~13_cout\,
	combout => \inst|LessThan0~14_combout\);

-- Location: LCCOMB_X11_Y17_N14
\inst|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector4~0_combout\ = (\inst|state.WriteA~regout\) # ((\inst|state.Compare~regout\ & !\inst|LessThan0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|state.Compare~regout\,
	datac => \inst|LessThan0~14_combout\,
	datad => \inst|state.WriteA~regout\,
	combout => \inst|Selector4~0_combout\);

-- Location: LCFF_X11_Y17_N15
\inst|state.CheckLoop\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst|Selector4~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.CheckLoop~regout\);

-- Location: LCCOMB_X11_Y17_N12
\inst|state~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|state~19_combout\ = (\inst|state.GetB~regout\ & ((\inst|Selector5~10_combout\) # ((\inst|state.CheckLoop~regout\ & \inst|Selector5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.GetB~regout\,
	datab => \inst|state.CheckLoop~regout\,
	datac => \inst|Selector5~10_combout\,
	datad => \inst|Selector5~7_combout\,
	combout => \inst|state~19_combout\);

-- Location: LCFF_X11_Y17_N13
\inst|state.Compare\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst|state~19_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.Compare~regout\);

-- Location: PIN_P23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
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

-- Location: LCCOMB_X11_Y17_N22
\inst|Selector5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~8_combout\ = (\inst|Flag~regout\ & ((\inst|state.CheckFlag~regout\) # ((!\Launch~combout\ & !\inst|state.Waiting~regout\)))) # (!\inst|Flag~regout\ & (((!\Launch~combout\ & !\inst|state.Waiting~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Flag~regout\,
	datab => \inst|state.CheckFlag~regout\,
	datac => \Launch~combout\,
	datad => \inst|state.Waiting~regout\,
	combout => \inst|Selector5~8_combout\);

-- Location: LCCOMB_X11_Y17_N4
\inst|Selector5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector5~10_combout\ = (\inst|Selector5~9_combout\) # ((\inst|Selector5~8_combout\) # ((\inst|state.Compare~regout\ & \inst|LessThan0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector5~9_combout\,
	datab => \inst|state.Compare~regout\,
	datac => \inst|LessThan0~14_combout\,
	datad => \inst|Selector5~8_combout\,
	combout => \inst|Selector5~10_combout\);

-- Location: LCCOMB_X11_Y17_N2
\inst|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|Selector0~1_combout\ = (\inst|Selector5~10_combout\) # (((\inst|Selector5~7_combout\ & \inst|state.CheckLoop~regout\)) # (!\inst|Selector0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Selector5~7_combout\,
	datab => \inst|Selector5~10_combout\,
	datac => \inst|state.CheckLoop~regout\,
	datad => \inst|Selector0~0_combout\,
	combout => \inst|Selector0~1_combout\);

-- Location: LCFF_X11_Y17_N3
\inst|state.Waiting\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst|Selector0~1_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|state.Waiting~regout\);

-- Location: LCFF_X12_Y17_N5
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita0~combout\,
	aclr => \inst|state.Waiting~regout\,
	ena => \inst|ALT_INV_state.Waiting~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(0));

-- Location: LCFF_X12_Y17_N9
\inst1|LPM_COUNTER_component|auto_generated|counter_reg_bit1a[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst1|LPM_COUNTER_component|auto_generated|counter_comb_bita2~combout\,
	aclr => \inst|state.Waiting~regout\,
	ena => \inst|ALT_INV_state.Waiting~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(2));

-- Location: LCCOMB_X12_Y17_N0
\inst4|$00000|auto_generated|result_node[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst4|$00000|auto_generated|result_node[2]~2_combout\ = (\inst|state.Waiting~regout\ & ((\inst|count\(2)))) # (!\inst|state.Waiting~regout\ & (\inst1|LPM_COUNTER_component|auto_generated|safe_q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|state.Waiting~regout\,
	datac => \inst1|LPM_COUNTER_component|auto_generated|safe_q\(2),
	datad => \inst|count\(2),
	combout => \inst4|$00000|auto_generated|result_node[2]~2_combout\);

-- Location: LCFF_X12_Y17_N1
\inst6|dffs[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst4|$00000|auto_generated|result_node[2]~2_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|dffs\(2));

-- Location: LCFF_X12_Y17_N25
\inst6|dffs[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst4|$00000|auto_generated|result_node[6]~6_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|dffs\(6));

-- Location: LCCOMB_X14_Y21_N12
\inst3|inst|Next_Char[2]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Next_Char[2]~1_combout\ = (\inst3|inst|CHAR_COUNT\(0) & (\inst3|inst|CHAR_COUNT\(3))) # (!\inst3|inst|CHAR_COUNT\(0) & ((\inst3|inst|CHAR_COUNT\(3) & (\inst2|altsyncram_component|auto_generated|q_a\(6))) # (!\inst3|inst|CHAR_COUNT\(3) & 
-- ((\inst6|dffs\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CHAR_COUNT\(0),
	datab => \inst3|inst|CHAR_COUNT\(3),
	datac => \inst2|altsyncram_component|auto_generated|q_a\(6),
	datad => \inst6|dffs\(6),
	combout => \inst3|inst|Next_Char[2]~1_combout\);

-- Location: LCCOMB_X14_Y21_N10
\inst3|inst|Next_Char[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Next_Char[2]~2_combout\ = (\inst3|inst|CHAR_COUNT\(0) & ((\inst3|inst|Next_Char[2]~1_combout\ & (\inst2|altsyncram_component|auto_generated|q_a\(2))) # (!\inst3|inst|Next_Char[2]~1_combout\ & ((\inst6|dffs\(2)))))) # 
-- (!\inst3|inst|CHAR_COUNT\(0) & (((\inst3|inst|Next_Char[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|altsyncram_component|auto_generated|q_a\(2),
	datab => \inst6|dffs\(2),
	datac => \inst3|inst|CHAR_COUNT\(0),
	datad => \inst3|inst|Next_Char[2]~1_combout\,
	combout => \inst3|inst|Next_Char[2]~2_combout\);

-- Location: LCCOMB_X14_Y21_N4
\inst3|inst|Next_Char[2]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Next_Char[2]~3_combout\ = (\inst3|inst|Next_Char[3]~0_combout\) # ((\inst3|inst|Equal0~0_combout\ & ((\inst3|inst|Next_Char[2]~2_combout\))) # (!\inst3|inst|Equal0~0_combout\ & (\inst3|inst1|altsyncram_component|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst1|altsyncram_component|auto_generated|q_a\(2),
	datab => \inst3|inst|Equal0~0_combout\,
	datac => \inst3|inst|Next_Char[3]~0_combout\,
	datad => \inst3|inst|Next_Char[2]~2_combout\,
	combout => \inst3|inst|Next_Char[2]~3_combout\);

-- Location: LCCOMB_X12_Y21_N20
\inst3|inst|Next_Char[3]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Next_Char[3]~8_combout\ = (\inst3|inst|Next_Char[3]~7_combout\ & (((\inst2|altsyncram_component|auto_generated|q_a\(3))) # (!\inst3|inst|CHAR_COUNT\(3)))) # (!\inst3|inst|Next_Char[3]~7_combout\ & (\inst3|inst|CHAR_COUNT\(3) & 
-- (\inst2|altsyncram_component|auto_generated|q_a\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Next_Char[3]~7_combout\,
	datab => \inst3|inst|CHAR_COUNT\(3),
	datac => \inst2|altsyncram_component|auto_generated|q_a\(7),
	datad => \inst2|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst3|inst|Next_Char[3]~8_combout\);

-- Location: LCCOMB_X14_Y21_N24
\inst3|inst|Next_Char[3]~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Next_Char[3]~9_combout\ = (\inst3|inst|Next_Char[3]~0_combout\) # ((\inst3|inst|Equal0~0_combout\ & ((\inst3|inst|Next_Char[3]~8_combout\))) # (!\inst3|inst|Equal0~0_combout\ & (\inst3|inst1|altsyncram_component|auto_generated|q_a\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst1|altsyncram_component|auto_generated|q_a\(3),
	datab => \inst3|inst|Equal0~0_combout\,
	datac => \inst3|inst|Next_Char[3]~0_combout\,
	datad => \inst3|inst|Next_Char[3]~8_combout\,
	combout => \inst3|inst|Next_Char[3]~9_combout\);

-- Location: LCCOMB_X14_Y17_N30
\inst3|inst|Next_Char[1]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Next_Char[1]~5_combout\ = (\inst3|inst|Next_Char[1]~4_combout\ & (((\inst2|altsyncram_component|auto_generated|q_a\(1))) # (!\inst3|inst|CHAR_COUNT\(3)))) # (!\inst3|inst|Next_Char[1]~4_combout\ & (\inst3|inst|CHAR_COUNT\(3) & 
-- (\inst2|altsyncram_component|auto_generated|q_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Next_Char[1]~4_combout\,
	datab => \inst3|inst|CHAR_COUNT\(3),
	datac => \inst2|altsyncram_component|auto_generated|q_a\(5),
	datad => \inst2|altsyncram_component|auto_generated|q_a\(1),
	combout => \inst3|inst|Next_Char[1]~5_combout\);

-- Location: LCCOMB_X14_Y21_N30
\inst3|inst|Next_Char[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Next_Char[1]~6_combout\ = (\inst3|inst|Next_Char[3]~0_combout\) # ((\inst3|inst|Equal0~0_combout\ & ((\inst3|inst|Next_Char[1]~5_combout\))) # (!\inst3|inst|Equal0~0_combout\ & (\inst3|inst1|altsyncram_component|auto_generated|q_a\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst1|altsyncram_component|auto_generated|q_a\(1),
	datab => \inst3|inst|Equal0~0_combout\,
	datac => \inst3|inst|Next_Char[3]~0_combout\,
	datad => \inst3|inst|Next_Char[1]~5_combout\,
	combout => \inst3|inst|Next_Char[1]~6_combout\);

-- Location: LCCOMB_X14_Y21_N18
\inst3|inst|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|LessThan1~0_combout\ = ((!\inst3|inst|Next_Char[2]~3_combout\ & !\inst3|inst|Next_Char[1]~6_combout\)) # (!\inst3|inst|Next_Char[3]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|Next_Char[2]~3_combout\,
	datac => \inst3|inst|Next_Char[3]~9_combout\,
	datad => \inst3|inst|Next_Char[1]~6_combout\,
	combout => \inst3|inst|LessThan1~0_combout\);

-- Location: LCCOMB_X14_Y21_N16
\inst3|inst|Selector3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector3~3_combout\ = (\inst3|inst|Selector3~1_combout\) # ((\inst3|inst|Selector3~0_combout\) # ((\inst3|inst|Selector3~2_combout\ & !\inst3|inst|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Selector3~1_combout\,
	datab => \inst3|inst|Selector3~2_combout\,
	datac => \inst3|inst|Selector3~0_combout\,
	datad => \inst3|inst|LessThan1~0_combout\,
	combout => \inst3|inst|Selector3~3_combout\);

-- Location: LCFF_X14_Y21_N17
\inst3|inst|DATA_BUS_VALUE[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector3~3_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|DATA_BUS_VALUE\(6));

-- Location: LCCOMB_X11_Y21_N4
\inst3|inst|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector18~0_combout\ = (\inst3|inst|state.RESET1~regout\ & ((\inst3|inst|next_command.RESET2~regout\) # ((!\inst3|inst|state.HOLD~regout\ & !\inst3|inst|state.DROP_LCD_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.HOLD~regout\,
	datab => \inst3|inst|state.DROP_LCD_E~regout\,
	datac => \inst3|inst|next_command.RESET2~regout\,
	datad => \inst3|inst|state.RESET1~regout\,
	combout => \inst3|inst|Selector18~0_combout\);

-- Location: LCFF_X11_Y21_N5
\inst3|inst|next_command.RESET2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector18~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|next_command.RESET2~regout\);

-- Location: LCCOMB_X10_Y21_N4
\inst3|inst|state~37\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|state~37_combout\ = (\inst3|inst|state.HOLD~regout\ & !\inst3|inst|next_command.RESET2~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.HOLD~regout\,
	datad => \inst3|inst|next_command.RESET2~regout\,
	combout => \inst3|inst|state~37_combout\);

-- Location: LCFF_X10_Y21_N5
\inst3|inst|state.RESET2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|state~37_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.RESET2~regout\);

-- Location: LCCOMB_X10_Y21_N20
\inst3|inst|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector19~0_combout\ = (\inst3|inst|state.RESET2~regout\) # ((\inst3|inst|next_command.RESET3~regout\ & ((\inst3|inst|state.DROP_LCD_E~regout\) # (\inst3|inst|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.DROP_LCD_E~regout\,
	datab => \inst3|inst|state.RESET2~regout\,
	datac => \inst3|inst|next_command.RESET3~regout\,
	datad => \inst3|inst|state.HOLD~regout\,
	combout => \inst3|inst|Selector19~0_combout\);

-- Location: LCFF_X10_Y21_N21
\inst3|inst|next_command.RESET3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector19~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|next_command.RESET3~regout\);

-- Location: LCCOMB_X10_Y21_N0
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

-- Location: LCFF_X10_Y21_N1
\inst3|inst|state.RESET3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|state~35_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.RESET3~regout\);

-- Location: LCCOMB_X10_Y21_N18
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

-- Location: LCFF_X10_Y21_N19
\inst3|inst|next_command.FUNC_SET\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector12~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|next_command.FUNC_SET~regout\);

-- Location: LCCOMB_X10_Y21_N10
\inst3|inst|state~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|state~36_combout\ = (\inst3|inst|next_command.FUNC_SET~regout\ & \inst3|inst|state.HOLD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|next_command.FUNC_SET~regout\,
	datad => \inst3|inst|state.HOLD~regout\,
	combout => \inst3|inst|state~36_combout\);

-- Location: LCFF_X10_Y21_N11
\inst3|inst|state.FUNC_SET\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|state~36_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.FUNC_SET~regout\);

-- Location: LCCOMB_X10_Y21_N24
\inst3|inst|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector20~0_combout\ = (\inst3|inst|state.FUNC_SET~regout\) # ((\inst3|inst|next_command.DISPLAY_OFF~regout\ & ((\inst3|inst|state.DROP_LCD_E~regout\) # (\inst3|inst|state.HOLD~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.DROP_LCD_E~regout\,
	datab => \inst3|inst|state.HOLD~regout\,
	datac => \inst3|inst|next_command.DISPLAY_OFF~regout\,
	datad => \inst3|inst|state.FUNC_SET~regout\,
	combout => \inst3|inst|Selector20~0_combout\);

-- Location: LCFF_X10_Y21_N25
\inst3|inst|next_command.DISPLAY_OFF\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector20~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|next_command.DISPLAY_OFF~regout\);

-- Location: LCCOMB_X10_Y21_N8
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

-- Location: LCFF_X10_Y21_N9
\inst3|inst|state.DISPLAY_OFF\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|state~33_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.DISPLAY_OFF~regout\);

-- Location: LCCOMB_X10_Y21_N6
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

-- Location: LCFF_X10_Y21_N7
\inst3|inst|next_command.DISPLAY_CLEAR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector21~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|next_command.DISPLAY_CLEAR~regout\);

-- Location: LCCOMB_X10_Y21_N2
\inst3|inst|state~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|state~34_combout\ = (\inst3|inst|state.HOLD~regout\ & \inst3|inst|next_command.DISPLAY_CLEAR~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.HOLD~regout\,
	datad => \inst3|inst|next_command.DISPLAY_CLEAR~regout\,
	combout => \inst3|inst|state~34_combout\);

-- Location: LCFF_X10_Y21_N3
\inst3|inst|state.DISPLAY_CLEAR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|state~34_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.DISPLAY_CLEAR~regout\);

-- Location: LCCOMB_X11_Y21_N8
\inst3|inst|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector4~2_combout\ = (\inst3|inst|Selector4~1_combout\ & (\inst3|inst|Selector4~0_combout\ & (!\inst3|inst|state.DISPLAY_CLEAR~regout\ & !\inst3|inst|state.Print_String~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Selector4~1_combout\,
	datab => \inst3|inst|Selector4~0_combout\,
	datac => \inst3|inst|state.DISPLAY_CLEAR~regout\,
	datad => \inst3|inst|state.Print_String~regout\,
	combout => \inst3|inst|Selector4~2_combout\);

-- Location: LCCOMB_X15_Y21_N24
\inst3|inst|Selector4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector4~3_combout\ = (\inst3|inst|state.Print_String~regout\ & ((\inst3|inst|Equal0~0_combout\) # (\inst3|inst1|altsyncram_component|auto_generated|q_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Equal0~0_combout\,
	datab => \inst3|inst|state.Print_String~regout\,
	datac => \inst3|inst1|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst3|inst|Selector4~3_combout\);

-- Location: LCCOMB_X15_Y21_N10
\inst3|inst|Selector4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector4~4_combout\ = (!\inst3|inst|Selector4~2_combout\ & (((!\inst3|inst1|altsyncram_component|auto_generated|q_a\(5) & !\inst3|inst|LessThan1~0_combout\)) # (!\inst3|inst|Selector4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst1|altsyncram_component|auto_generated|q_a\(5),
	datab => \inst3|inst|Selector4~2_combout\,
	datac => \inst3|inst|Selector4~3_combout\,
	datad => \inst3|inst|LessThan1~0_combout\,
	combout => \inst3|inst|Selector4~4_combout\);

-- Location: LCFF_X15_Y21_N11
\inst3|inst|DATA_BUS_VALUE[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector4~4_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	ena => \inst3|inst|LCD_RS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|DATA_BUS_VALUE\(5));

-- Location: LCCOMB_X15_Y21_N14
\inst3|inst|Selector5~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector5~0_combout\ = (\inst3|inst|state.Print_String~regout\ & ((\inst3|inst|Equal0~0_combout\) # (\inst3|inst1|altsyncram_component|auto_generated|q_a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Equal0~0_combout\,
	datab => \inst3|inst|state.Print_String~regout\,
	datac => \inst3|inst1|altsyncram_component|auto_generated|q_a\(4),
	combout => \inst3|inst|Selector5~0_combout\);

-- Location: LCCOMB_X15_Y21_N4
\inst3|inst|Selector5~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector5~1_combout\ = (!\inst3|inst|Selector4~2_combout\ & (((!\inst3|inst1|altsyncram_component|auto_generated|q_a\(4) & !\inst3|inst|LessThan1~0_combout\)) # (!\inst3|inst|Selector5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst1|altsyncram_component|auto_generated|q_a\(4),
	datab => \inst3|inst|Selector4~2_combout\,
	datac => \inst3|inst|Selector5~0_combout\,
	datad => \inst3|inst|LessThan1~0_combout\,
	combout => \inst3|inst|Selector5~1_combout\);

-- Location: LCFF_X15_Y21_N5
\inst3|inst|DATA_BUS_VALUE[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector5~1_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	ena => \inst3|inst|LCD_RS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|DATA_BUS_VALUE\(4));

-- Location: LCCOMB_X14_Y21_N20
\inst3|inst|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector8~0_combout\ = (\inst3|inst|Next_Char[3]~9_combout\ & (\inst3|inst|Equal0~0_combout\ & ((\inst3|inst|Next_Char[2]~3_combout\) # (\inst3|inst|Next_Char[1]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Next_Char[3]~9_combout\,
	datab => \inst3|inst|Equal0~0_combout\,
	datac => \inst3|inst|Next_Char[2]~3_combout\,
	datad => \inst3|inst|Next_Char[1]~6_combout\,
	combout => \inst3|inst|Selector8~0_combout\);

-- Location: LCCOMB_X14_Y21_N2
\inst3|inst|Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector6~2_combout\ = (!\inst3|inst|Selector6~1_combout\ & (((\inst3|inst|Selector8~0_combout\) # (!\inst3|inst|Next_Char[3]~9_combout\)) # (!\inst3|inst|state.Print_String~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Selector6~1_combout\,
	datab => \inst3|inst|state.Print_String~regout\,
	datac => \inst3|inst|Selector8~0_combout\,
	datad => \inst3|inst|Next_Char[3]~9_combout\,
	combout => \inst3|inst|Selector6~2_combout\);

-- Location: LCFF_X14_Y21_N3
\inst3|inst|DATA_BUS_VALUE[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector6~2_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|DATA_BUS_VALUE\(3));

-- Location: LCFF_X12_Y17_N29
\inst6|dffs[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst4|$00000|auto_generated|result_node[0]~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|dffs\(0));

-- Location: LCFF_X12_Y17_N21
\inst6|dffs[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst4|$00000|auto_generated|result_node[4]~4_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst6|dffs\(4));

-- Location: LCCOMB_X12_Y21_N6
\inst3|inst|Next_Char[0]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Next_Char[0]~10_combout\ = (\inst3|inst|CHAR_COUNT\(0) & (\inst3|inst|CHAR_COUNT\(3))) # (!\inst3|inst|CHAR_COUNT\(0) & ((\inst3|inst|CHAR_COUNT\(3) & ((\inst2|altsyncram_component|auto_generated|q_a\(4)))) # (!\inst3|inst|CHAR_COUNT\(3) & 
-- (\inst6|dffs\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CHAR_COUNT\(0),
	datab => \inst3|inst|CHAR_COUNT\(3),
	datac => \inst6|dffs\(4),
	datad => \inst2|altsyncram_component|auto_generated|q_a\(4),
	combout => \inst3|inst|Next_Char[0]~10_combout\);

-- Location: LCCOMB_X12_Y21_N24
\inst3|inst|Next_Char[0]~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Next_Char[0]~11_combout\ = (\inst3|inst|CHAR_COUNT\(0) & ((\inst3|inst|Next_Char[0]~10_combout\ & ((\inst2|altsyncram_component|auto_generated|q_a\(0)))) # (!\inst3|inst|Next_Char[0]~10_combout\ & (\inst6|dffs\(0))))) # 
-- (!\inst3|inst|CHAR_COUNT\(0) & (((\inst3|inst|Next_Char[0]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CHAR_COUNT\(0),
	datab => \inst6|dffs\(0),
	datac => \inst2|altsyncram_component|auto_generated|q_a\(0),
	datad => \inst3|inst|Next_Char[0]~10_combout\,
	combout => \inst3|inst|Next_Char[0]~11_combout\);

-- Location: LCCOMB_X14_Y21_N6
\inst3|inst|Next_Char[0]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Next_Char[0]~12_combout\ = (\inst3|inst|Next_Char[3]~0_combout\) # ((\inst3|inst|Equal0~0_combout\ & (\inst3|inst|Next_Char[0]~11_combout\)) # (!\inst3|inst|Equal0~0_combout\ & ((\inst3|inst1|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Equal0~0_combout\,
	datab => \inst3|inst|Next_Char[3]~0_combout\,
	datac => \inst3|inst|Next_Char[0]~11_combout\,
	datad => \inst3|inst1|altsyncram_component|auto_generated|q_a\(0),
	combout => \inst3|inst|Next_Char[0]~12_combout\);

-- Location: LCCOMB_X14_Y21_N28
\inst3|inst|Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector7~1_combout\ = (\inst3|inst|Next_Char[1]~6_combout\) # ((\inst3|inst|Next_Char[0]~12_combout\) # (!\inst3|inst|Selector8~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|Next_Char[1]~6_combout\,
	datac => \inst3|inst|Selector8~0_combout\,
	datad => \inst3|inst|Next_Char[0]~12_combout\,
	combout => \inst3|inst|Selector7~1_combout\);

-- Location: LCCOMB_X14_Y21_N8
\inst3|inst|Selector7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector7~2_combout\ = (\inst3|inst|Selector7~0_combout\) # ((\inst3|inst|state.Print_String~regout\ & (\inst3|inst|Next_Char[2]~3_combout\ & \inst3|inst|Selector7~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Selector7~0_combout\,
	datab => \inst3|inst|state.Print_String~regout\,
	datac => \inst3|inst|Next_Char[2]~3_combout\,
	datad => \inst3|inst|Selector7~1_combout\,
	combout => \inst3|inst|Selector7~2_combout\);

-- Location: LCFF_X14_Y21_N9
\inst3|inst|DATA_BUS_VALUE[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector7~2_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|DATA_BUS_VALUE\(2));

-- Location: LCCOMB_X14_Y21_N22
\inst3|inst|Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector8~1_combout\ = (\inst3|inst|state.Print_String~regout\ & (\inst3|inst|Next_Char[1]~6_combout\ $ (((\inst3|inst|Selector8~0_combout\ & !\inst3|inst|Next_Char[0]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.Print_String~regout\,
	datab => \inst3|inst|Next_Char[1]~6_combout\,
	datac => \inst3|inst|Selector8~0_combout\,
	datad => \inst3|inst|Next_Char[0]~12_combout\,
	combout => \inst3|inst|Selector8~1_combout\);

-- Location: LCCOMB_X14_Y21_N26
\inst3|inst|Selector8~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector8~2_combout\ = (\inst3|inst|state.MODE_SET~regout\) # ((\inst3|inst|Selector8~1_combout\) # ((!\inst3|inst|LCD_RS~0_combout\ & \inst3|inst|DATA_BUS_VALUE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.MODE_SET~regout\,
	datab => \inst3|inst|LCD_RS~0_combout\,
	datac => \inst3|inst|DATA_BUS_VALUE\(1),
	datad => \inst3|inst|Selector8~1_combout\,
	combout => \inst3|inst|Selector8~2_combout\);

-- Location: LCFF_X14_Y21_N27
\inst3|inst|DATA_BUS_VALUE[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector8~2_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|DATA_BUS_VALUE\(1));

-- Location: LCCOMB_X15_Y21_N6
\inst3|inst|Selector9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector9~2_combout\ = (\inst3|inst|Selector9~1_combout\) # ((\inst3|inst|Selector3~2_combout\ & (\inst3|inst|Next_Char[0]~12_combout\ $ (!\inst3|inst|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Selector9~1_combout\,
	datab => \inst3|inst|Selector3~2_combout\,
	datac => \inst3|inst|Next_Char[0]~12_combout\,
	datad => \inst3|inst|LessThan1~0_combout\,
	combout => \inst3|inst|Selector9~2_combout\);

-- Location: LCFF_X15_Y21_N7
\inst3|inst|DATA_BUS_VALUE[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector9~2_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|DATA_BUS_VALUE\(0));

-- Location: LCCOMB_X11_Y21_N16
\inst3|inst|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector1~0_combout\ = (\inst3|inst|state.Print_String~regout\) # ((\inst3|inst|LCD_RS~regout\ & ((\inst3|inst|state.HOLD~regout\) # (\inst3|inst|state.DROP_LCD_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.HOLD~regout\,
	datab => \inst3|inst|state.DROP_LCD_E~regout\,
	datac => \inst3|inst|LCD_RS~regout\,
	datad => \inst3|inst|state.Print_String~regout\,
	combout => \inst3|inst|Selector1~0_combout\);

-- Location: LCFF_X11_Y21_N17
\inst3|inst|LCD_RS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector1~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|LCD_RS~regout\);

-- Location: LCCOMB_X10_Y21_N12
\inst3|inst|LCD_E~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|LCD_E~0_combout\ = (\inst3|inst|state.HOLD~regout\ & ((\inst3|inst|LCD_E~regout\))) # (!\inst3|inst|state.HOLD~regout\ & (\inst3|inst|state.DROP_LCD_E~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.DROP_LCD_E~regout\,
	datac => \inst3|inst|LCD_E~regout\,
	datad => \inst3|inst|state.HOLD~regout\,
	combout => \inst3|inst|LCD_E~0_combout\);

-- Location: LCFF_X10_Y21_N13
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
	datain => \inst|ALT_INV_state.Waiting~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Complete);

-- Location: PIN_T9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst2|altsyncram_component|auto_generated|q_a\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(7));

-- Location: PIN_P4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst2|altsyncram_component|auto_generated|q_a\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(6));

-- Location: PIN_P3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst2|altsyncram_component|auto_generated|q_a\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(5));

-- Location: PIN_R3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst2|altsyncram_component|auto_generated|q_a\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(4));

-- Location: PIN_T10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst2|altsyncram_component|auto_generated|q_a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(3));

-- Location: PIN_R4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst2|altsyncram_component|auto_generated|q_a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(2));

-- Location: PIN_R2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst2|altsyncram_component|auto_generated|q_a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(1));

-- Location: PIN_R5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst2|altsyncram_component|auto_generated|q_a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(0));
END structure;


