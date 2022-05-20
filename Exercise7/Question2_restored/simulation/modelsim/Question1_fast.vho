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

-- DATE "05/20/2022 12:18:14"

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
	\CLK~\ : IN std_logic;
	Launch : IN std_logic;
	B : IN std_logic_vector(7 DOWNTO 0);
	A : IN std_logic_vector(7 DOWNTO 0);
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
-- Data[7]	=>  Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[6]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[5]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[4]	=>  Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[3]	=>  Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[2]	=>  Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[1]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- Data[0]	=>  Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
-- reset~	=>  Location: PIN_N23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[0]	=>  Location: PIN_N25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[1]	=>  Location: PIN_N26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[2]	=>  Location: PIN_P25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[3]	=>  Location: PIN_AE14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[4]	=>  Location: PIN_AF13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[5]	=>  Location: PIN_AD13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[6]	=>  Location: PIN_AC13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- B[7]	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- Launch	=>  Location: PIN_V2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK~	=>  Location: PIN_G26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- CLK50	=>  Location: PIN_N2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[1]	=>  Location: PIN_A13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[0]	=>  Location: PIN_B13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[3]	=>  Location: PIN_P1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[2]	=>  Location: PIN_N1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[5]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[4]	=>  Location: PIN_P2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[7]	=>  Location: PIN_U4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- A[6]	=>  Location: PIN_U3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


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
SIGNAL \ww_CLK~\ : std_logic;
SIGNAL ww_Launch : std_logic;
SIGNAL ww_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_LCD_E : std_logic;
SIGNAL ww_LCD_RW : std_logic;
SIGNAL ww_LCD_ONOFF : std_logic;
SIGNAL ww_LCD_BLONOFF : std_logic;
SIGNAL ww_Complete : std_logic;
SIGNAL ww_Data : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst3|inst1|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|inst|CLK_400HZ~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK50~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst3|inst|CLK_COUNT_400HZ[0]~20_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[2]~24_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[6]~32_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[13]~46_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[18]~57_combout\ : std_logic;
SIGNAL \inst|BS|Selector0~0_combout\ : std_logic;
SIGNAL \inst|BS|Selector5~4_combout\ : std_logic;
SIGNAL \inst|BS|WR~combout\ : std_logic;
SIGNAL \inst3|inst|Selector4~2_combout\ : std_logic;
SIGNAL \inst3|inst|Selector3~1_combout\ : std_logic;
SIGNAL \inst3|inst|Next_Char[1]~3_combout\ : std_logic;
SIGNAL \inst3|inst|state.DISPLAY_OFF~regout\ : std_logic;
SIGNAL \inst3|inst|state.RESET1~regout\ : std_logic;
SIGNAL \inst3|inst|state.FUNC_SET~regout\ : std_logic;
SIGNAL \inst3|inst|Selector6~1_combout\ : std_logic;
SIGNAL \inst3|inst|Next_Char[0]~7_combout\ : std_logic;
SIGNAL \inst3|inst|Selector9~0_combout\ : std_logic;
SIGNAL \inst3|inst|Add2~10_combout\ : std_logic;
SIGNAL \inst3|inst|next_command.DISPLAY_CLEAR~regout\ : std_logic;
SIGNAL \inst3|inst|next_command.DISPLAY_OFF~regout\ : std_logic;
SIGNAL \inst3|inst|state~34_combout\ : std_logic;
SIGNAL \inst3|inst|next_command.FUNC_SET~regout\ : std_logic;
SIGNAL \inst3|inst|state~36_combout\ : std_logic;
SIGNAL \inst3|inst|Selector21~0_combout\ : std_logic;
SIGNAL \inst3|inst|Selector20~0_combout\ : std_logic;
SIGNAL \inst3|inst|Selector12~0_combout\ : std_logic;
SIGNAL \Launch~combout\ : std_logic;
SIGNAL \CLK50~combout\ : std_logic;
SIGNAL \CLK50~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|inst|state.RESET1~feeder_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[0]~21\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[1]~22_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[7]~35\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[8]~36_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[8]~37\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[9]~39\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[10]~40_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[10]~41\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[11]~42_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[11]~43\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[12]~44_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[12]~45\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[13]~47\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[14]~48_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[14]~49\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[15]~52\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[16]~54\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[17]~55_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[17]~56\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[18]~58\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[19]~59_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[16]~53_combout\ : std_logic;
SIGNAL \inst3|inst|LessThan0~5_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[15]~51_combout\ : std_logic;
SIGNAL \inst3|inst|LessThan0~0_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[4]~50_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[1]~23\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[2]~25\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[3]~26_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[3]~27\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[4]~29\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[5]~30_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[5]~31\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[6]~33\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[7]~34_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[9]~38_combout\ : std_logic;
SIGNAL \inst3|inst|LessThan0~3_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_COUNT_400HZ[4]~28_combout\ : std_logic;
SIGNAL \inst3|inst|LessThan0~2_combout\ : std_logic;
SIGNAL \inst3|inst|LessThan0~1_combout\ : std_logic;
SIGNAL \inst3|inst|LessThan0~4_combout\ : std_logic;
SIGNAL \inst3|inst|CLK_400HZ~0_combout\ : std_logic;
SIGNAL \reset~~combout\ : std_logic;
SIGNAL \inst3|inst|CLK_400HZ~regout\ : std_logic;
SIGNAL \inst3|inst|CLK_400HZ~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|inst|LCD_RS~0_combout\ : std_logic;
SIGNAL \reset~~clk_delay_ctrl_clkout\ : std_logic;
SIGNAL \reset~~clkctrl_outclk\ : std_logic;
SIGNAL \inst3|inst|state.DROP_LCD_E~regout\ : std_logic;
SIGNAL \inst3|inst|state.HOLD~feeder_combout\ : std_logic;
SIGNAL \inst3|inst|state.HOLD~regout\ : std_logic;
SIGNAL \inst3|inst|Add2~0_combout\ : std_logic;
SIGNAL \inst3|inst|Add2~1\ : std_logic;
SIGNAL \inst3|inst|Add2~2_combout\ : std_logic;
SIGNAL \inst3|inst|Add2~15_combout\ : std_logic;
SIGNAL \inst3|inst|Add2~3\ : std_logic;
SIGNAL \inst3|inst|Add2~4_combout\ : std_logic;
SIGNAL \inst3|inst|Add2~14_combout\ : std_logic;
SIGNAL \inst3|inst|Add2~5\ : std_logic;
SIGNAL \inst3|inst|Add2~7\ : std_logic;
SIGNAL \inst3|inst|Add2~8_combout\ : std_logic;
SIGNAL \inst3|inst|Add2~11_combout\ : std_logic;
SIGNAL \inst3|inst|Add2~6_combout\ : std_logic;
SIGNAL \inst3|inst|Add2~13_combout\ : std_logic;
SIGNAL \inst3|inst|Equal2~0_combout\ : std_logic;
SIGNAL \inst3|inst|Equal2~1_combout\ : std_logic;
SIGNAL \inst3|inst|process_1~0_combout\ : std_logic;
SIGNAL \inst3|inst|Selector15~1_combout\ : std_logic;
SIGNAL \inst3|inst|Add2~12_combout\ : std_logic;
SIGNAL \inst3|inst|Selector17~0_combout\ : std_logic;
SIGNAL \inst3|inst|Equal3~0_combout\ : std_logic;
SIGNAL \inst3|inst|Equal3~1_combout\ : std_logic;
SIGNAL \inst3|inst|Selector17~1_combout\ : std_logic;
SIGNAL \inst3|inst|next_command.RETURN_HOME~regout\ : std_logic;
SIGNAL \inst3|inst|state~31_combout\ : std_logic;
SIGNAL \inst3|inst|state.RETURN_HOME~regout\ : std_logic;
SIGNAL \inst3|inst|Selector15~0_combout\ : std_logic;
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
SIGNAL \inst3|inst|Selector3~0_combout\ : std_logic;
SIGNAL \inst3|inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|inst|Selector3~2_combout\ : std_logic;
SIGNAL \CLK~~combout\ : std_logic;
SIGNAL \inst|BS|count[0]~8_combout\ : std_logic;
SIGNAL \inst|BS|dataA[7]~0_combout\ : std_logic;
SIGNAL \inst|BS|count[0]~9\ : std_logic;
SIGNAL \inst|BS|count[1]~10_combout\ : std_logic;
SIGNAL \inst|BS|Selector5~9_combout\ : std_logic;
SIGNAL \inst|BS|Selector6~0_combout\ : std_logic;
SIGNAL \inst|BS|Selector6~1_combout\ : std_logic;
SIGNAL \inst|BS|Flag~regout\ : std_logic;
SIGNAL \inst|BS|Selector0~1_combout\ : std_logic;
SIGNAL \inst|BS|state.Waiting~regout\ : std_logic;
SIGNAL \inst|BS|Selector5~8_combout\ : std_logic;
SIGNAL \inst|BS|Selector5~10_combout\ : std_logic;
SIGNAL \inst|BS|state~19_combout\ : std_logic;
SIGNAL \inst|BS|state.Compare~regout\ : std_logic;
SIGNAL \inst|BS|count[7]~12_combout\ : std_logic;
SIGNAL \inst|BS|count[1]~11\ : std_logic;
SIGNAL \inst|BS|count[2]~13_combout\ : std_logic;
SIGNAL \inst|BS|count[2]~14\ : std_logic;
SIGNAL \inst|BS|count[3]~15_combout\ : std_logic;
SIGNAL \inst|BS|count[3]~16\ : std_logic;
SIGNAL \inst|BS|count[4]~18\ : std_logic;
SIGNAL \inst|BS|count[5]~19_combout\ : std_logic;
SIGNAL \inst|BS|count[5]~20\ : std_logic;
SIGNAL \inst|BS|count[6]~21_combout\ : std_logic;
SIGNAL \inst|BS|count[6]~22\ : std_logic;
SIGNAL \inst|BS|count[7]~23_combout\ : std_logic;
SIGNAL \inst|BS|state~21_combout\ : std_logic;
SIGNAL \inst|BS|state.SendAddrB_w~regout\ : std_logic;
SIGNAL \inst|BS|state.WriteB~regout\ : std_logic;
SIGNAL \inst|BS|state.SendAddrA_w~regout\ : std_logic;
SIGNAL \inst|BS|state.WriteA~regout\ : std_logic;
SIGNAL \inst|BS|DataOut[6]~1_combout\ : std_logic;
SIGNAL \inst|BS|dataB[7]~0_combout\ : std_logic;
SIGNAL \inst|BS|DataOut[7]~0_combout\ : std_logic;
SIGNAL \inst|BS|DataOut[5]~2_combout\ : std_logic;
SIGNAL \inst|BS|DataOut[4]~3_combout\ : std_logic;
SIGNAL \inst|BS|DataOut[3]~4_combout\ : std_logic;
SIGNAL \inst|BS|DataOut[2]~5_combout\ : std_logic;
SIGNAL \inst|BS|DataOut[1]~6_combout\ : std_logic;
SIGNAL \inst|BS|LessThan0~1_cout\ : std_logic;
SIGNAL \inst|BS|LessThan0~3_cout\ : std_logic;
SIGNAL \inst|BS|LessThan0~5_cout\ : std_logic;
SIGNAL \inst|BS|LessThan0~7_cout\ : std_logic;
SIGNAL \inst|BS|LessThan0~9_cout\ : std_logic;
SIGNAL \inst|BS|LessThan0~11_cout\ : std_logic;
SIGNAL \inst|BS|LessThan0~13_cout\ : std_logic;
SIGNAL \inst|BS|LessThan0~14_combout\ : std_logic;
SIGNAL \inst|BS|Selector4~0_combout\ : std_logic;
SIGNAL \inst|BS|state.CheckLoop~regout\ : std_logic;
SIGNAL \inst|BS|state~20_combout\ : std_logic;
SIGNAL \inst|BS|state.SendAddrB_r~regout\ : std_logic;
SIGNAL \inst|BS|Selector3~0_combout\ : std_logic;
SIGNAL \inst|BS|state.GetB~regout\ : std_logic;
SIGNAL \inst|BS|delay~0_combout\ : std_logic;
SIGNAL \inst|BS|delay~regout\ : std_logic;
SIGNAL \inst|BS|Selector1~0_combout\ : std_logic;
SIGNAL \inst|BS|state.SendAddrA_r~regout\ : std_logic;
SIGNAL \inst|BS|Selector2~0_combout\ : std_logic;
SIGNAL \inst|BS|state.GetA~regout\ : std_logic;
SIGNAL \inst|BS|Cnt~0_combout\ : std_logic;
SIGNAL \inst|BS|count[4]~17_combout\ : std_logic;
SIGNAL \inst|BS|Selector5~5_combout\ : std_logic;
SIGNAL \inst|BS|Selector5~3_combout\ : std_logic;
SIGNAL \inst|BS|Selector5~6_combout\ : std_logic;
SIGNAL \inst|BS|Selector5~7_combout\ : std_logic;
SIGNAL \inst|BS|state~18_combout\ : std_logic;
SIGNAL \inst|BS|state.CheckFlag~regout\ : std_logic;
SIGNAL \inst|BS|Cnt~1_combout\ : std_logic;
SIGNAL \inst|BS|DataOut[0]~7_combout\ : std_logic;
SIGNAL \inst3|inst|Next_Char[3]~5_combout\ : std_logic;
SIGNAL \inst3|inst|Next_Char[3]~6_combout\ : std_logic;
SIGNAL \inst3|inst|Next_Char[3]~1_combout\ : std_logic;
SIGNAL \inst3|inst|Next_Char[1]~4_combout\ : std_logic;
SIGNAL \inst3|inst|Next_Char[2]~0_combout\ : std_logic;
SIGNAL \inst3|inst|Next_Char[2]~2_combout\ : std_logic;
SIGNAL \inst3|inst|LessThan1~0_combout\ : std_logic;
SIGNAL \inst3|inst|Selector3~3_combout\ : std_logic;
SIGNAL \inst3|inst|Selector13~0_combout\ : std_logic;
SIGNAL \inst3|inst|next_command.DISPLAY_ON~regout\ : std_logic;
SIGNAL \inst3|inst|state~33_combout\ : std_logic;
SIGNAL \inst3|inst|state.DISPLAY_ON~regout\ : std_logic;
SIGNAL \inst3|inst|Selector14~0_combout\ : std_logic;
SIGNAL \inst3|inst|next_command.MODE_SET~regout\ : std_logic;
SIGNAL \inst3|inst|state~29_combout\ : std_logic;
SIGNAL \inst3|inst|state.MODE_SET~regout\ : std_logic;
SIGNAL \inst3|inst|Selector4~3_combout\ : std_logic;
SIGNAL \inst3|inst|state~32_combout\ : std_logic;
SIGNAL \inst3|inst|state.DISPLAY_CLEAR~regout\ : std_logic;
SIGNAL \inst3|inst|Selector4~4_combout\ : std_logic;
SIGNAL \inst3|inst|Selector4~5_combout\ : std_logic;
SIGNAL \inst3|inst|Selector4~6_combout\ : std_logic;
SIGNAL \inst3|inst|Selector5~2_combout\ : std_logic;
SIGNAL \inst3|inst|Selector5~3_combout\ : std_logic;
SIGNAL \inst3|inst|Selector6~0_combout\ : std_logic;
SIGNAL \inst3|inst|Selector18~0_combout\ : std_logic;
SIGNAL \inst3|inst|next_command.RESET2~regout\ : std_logic;
SIGNAL \inst3|inst|state~37_combout\ : std_logic;
SIGNAL \inst3|inst|state.RESET2~regout\ : std_logic;
SIGNAL \inst3|inst|Selector19~0_combout\ : std_logic;
SIGNAL \inst3|inst|next_command.RESET3~regout\ : std_logic;
SIGNAL \inst3|inst|state~35_combout\ : std_logic;
SIGNAL \inst3|inst|state.RESET3~regout\ : std_logic;
SIGNAL \inst3|inst|Next_Char[0]~8_combout\ : std_logic;
SIGNAL \inst3|inst|Add1~0_combout\ : std_logic;
SIGNAL \inst3|inst|Selector6~2_combout\ : std_logic;
SIGNAL \inst3|inst|Selector6~3_combout\ : std_logic;
SIGNAL \inst3|inst|Selector6~4_combout\ : std_logic;
SIGNAL \inst3|inst|Selector7~0_combout\ : std_logic;
SIGNAL \inst3|inst|Selector7~1_combout\ : std_logic;
SIGNAL \inst3|inst|Selector7~2_combout\ : std_logic;
SIGNAL \inst3|inst|Selector8~0_combout\ : std_logic;
SIGNAL \inst3|inst|Selector8~1_combout\ : std_logic;
SIGNAL \inst3|inst|Selector9~1_combout\ : std_logic;
SIGNAL \inst3|inst|Selector9~2_combout\ : std_logic;
SIGNAL \inst3|inst|Selector1~0_combout\ : std_logic;
SIGNAL \inst3|inst|LCD_RS~regout\ : std_logic;
SIGNAL \inst3|inst|LCD_E~0_combout\ : std_logic;
SIGNAL \inst3|inst|LCD_E~regout\ : std_logic;
SIGNAL \inst|BS|dataB\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|BS|dataA\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|BS|count\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|RAM|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \B~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \A~combout\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|inst1|altsyncram_component|auto_generated|q_a\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|inst|CLK_COUNT_400HZ\ : std_logic_vector(19 DOWNTO 0);
SIGNAL \inst3|inst|DATA_BUS_VALUE\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst3|inst|CHAR_COUNT\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_reset~~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_CLK~~combout\ : std_logic;
SIGNAL \ALT_INV_reset~~combout\ : std_logic;
SIGNAL \inst3|inst|ALT_INV_DATA_BUS_VALUE\ : std_logic_vector(5 DOWNTO 3);
SIGNAL \inst|BS|ALT_INV_state.Waiting~regout\ : std_logic;
SIGNAL \inst3|inst|ALT_INV_LCD_RW_INT~regout\ : std_logic;
SIGNAL \inst3|inst|ALT_INV_LCD_E~regout\ : std_logic;

BEGIN

LCD_RS <= ww_LCD_RS;
\ww_reset~\ <= \reset~\;
ww_CLK50 <= CLK50;
\ww_CLK~\ <= \CLK~\;
ww_Launch <= Launch;
ww_B <= B;
ww_A <= A;
LCD_E <= ww_LCD_E;
LCD_RW <= ww_LCD_RW;
LCD_ONOFF <= ww_LCD_ONOFF;
LCD_BLONOFF <= ww_LCD_BLONOFF;
Complete <= ww_Complete;
Data <= ww_Data;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (\inst|BS|DataOut[7]~0_combout\ & \inst|BS|DataOut[6]~1_combout\ & \inst|BS|DataOut[5]~2_combout\ & \inst|BS|DataOut[4]~3_combout\ & \inst|BS|DataOut[3]~4_combout\ & 
\inst|BS|DataOut[2]~5_combout\ & \inst|BS|DataOut[1]~6_combout\ & \inst|BS|DataOut[0]~7_combout\);

\inst|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\inst|BS|count\(7) & \inst|BS|count\(6) & \inst|BS|count\(5) & \inst|BS|count\(4) & \inst|BS|count\(3) & \inst|BS|count\(2) & \inst|BS|count\(1) & 
\inst|BS|count\(0));

\inst|RAM|altsyncram_component|auto_generated|q_a\(0) <= \inst|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\inst|RAM|altsyncram_component|auto_generated|q_a\(1) <= \inst|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\inst|RAM|altsyncram_component|auto_generated|q_a\(2) <= \inst|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\inst|RAM|altsyncram_component|auto_generated|q_a\(3) <= \inst|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\inst|RAM|altsyncram_component|auto_generated|q_a\(4) <= \inst|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\inst|RAM|altsyncram_component|auto_generated|q_a\(5) <= \inst|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\inst|RAM|altsyncram_component|auto_generated|q_a\(6) <= \inst|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\inst|RAM|altsyncram_component|auto_generated|q_a\(7) <= \inst|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

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
\inst|BS|ALT_INV_state.Waiting~regout\ <= NOT \inst|BS|state.Waiting~regout\;
\inst3|inst|ALT_INV_LCD_RW_INT~regout\ <= NOT \inst3|inst|LCD_RW_INT~regout\;
\inst3|inst|ALT_INV_LCD_E~regout\ <= NOT \inst3|inst|LCD_E~regout\;

-- Location: LCFF_X41_Y29_N7
\inst3|inst|CLK_COUNT_400HZ[13]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[13]~46_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(13));

-- Location: LCFF_X41_Y30_N17
\inst3|inst|CLK_COUNT_400HZ[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[2]~24_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(2));

-- Location: LCFF_X41_Y30_N25
\inst3|inst|CLK_COUNT_400HZ[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[6]~32_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(6));

-- Location: LCFF_X41_Y29_N17
\inst3|inst|CLK_COUNT_400HZ[18]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[18]~57_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(18));

-- Location: LCFF_X41_Y30_N13
\inst3|inst|CLK_COUNT_400HZ[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[0]~20_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(0));

-- Location: LCCOMB_X41_Y30_N12
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

-- Location: LCCOMB_X41_Y30_N16
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

-- Location: LCCOMB_X41_Y30_N24
\inst3|inst|CLK_COUNT_400HZ[6]~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[6]~32_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(6) & (\inst3|inst|CLK_COUNT_400HZ[5]~31\ $ (GND))) # (!\inst3|inst|CLK_COUNT_400HZ\(6) & (!\inst3|inst|CLK_COUNT_400HZ[5]~31\ & VCC))
-- \inst3|inst|CLK_COUNT_400HZ[6]~33\ = CARRY((\inst3|inst|CLK_COUNT_400HZ\(6) & !\inst3|inst|CLK_COUNT_400HZ[5]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CLK_COUNT_400HZ\(6),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[5]~31\,
	combout => \inst3|inst|CLK_COUNT_400HZ[6]~32_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[6]~33\);

-- Location: LCCOMB_X41_Y29_N6
\inst3|inst|CLK_COUNT_400HZ[13]~46\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[13]~46_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(13) & (!\inst3|inst|CLK_COUNT_400HZ[12]~45\)) # (!\inst3|inst|CLK_COUNT_400HZ\(13) & ((\inst3|inst|CLK_COUNT_400HZ[12]~45\) # (GND)))
-- \inst3|inst|CLK_COUNT_400HZ[13]~47\ = CARRY((!\inst3|inst|CLK_COUNT_400HZ[12]~45\) # (!\inst3|inst|CLK_COUNT_400HZ\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CLK_COUNT_400HZ\(13),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[12]~45\,
	combout => \inst3|inst|CLK_COUNT_400HZ[13]~46_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[13]~47\);

-- Location: LCCOMB_X41_Y29_N16
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

-- Location: LCCOMB_X29_Y26_N14
\inst|BS|Selector0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|Selector0~0_combout\ = (\inst|BS|state.CheckFlag~regout\) # (!\inst|BS|state.Waiting~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|BS|state.CheckFlag~regout\,
	datad => \inst|BS|state.Waiting~regout\,
	combout => \inst|BS|Selector0~0_combout\);

-- Location: LCCOMB_X29_Y26_N2
\inst|BS|Selector5~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|Selector5~4_combout\ = (\inst|BS|count\(2) & (\B~combout\(2) & (\inst|BS|count\(3) $ (!\B~combout\(3))))) # (!\inst|BS|count\(2) & (!\B~combout\(2) & (\inst|BS|count\(3) $ (!\B~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|count\(2),
	datab => \inst|BS|count\(3),
	datac => \B~combout\(3),
	datad => \B~combout\(2),
	combout => \inst|BS|Selector5~4_combout\);

-- Location: LCCOMB_X29_Y26_N26
\inst|BS|WR\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|WR~combout\ = (\inst|BS|state.WriteB~regout\) # (\inst|BS|state.WriteA~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|BS|state.WriteB~regout\,
	datad => \inst|BS|state.WriteA~regout\,
	combout => \inst|BS|WR~combout\);

-- Location: LCCOMB_X25_Y25_N10
\inst3|inst|Selector4~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector4~2_combout\ = (!\inst3|inst|state.MODE_SET~regout\ & (!\inst3|inst|state.RETURN_HOME~regout\ & !\inst3|inst|state.LINE2~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|state.MODE_SET~regout\,
	datac => \inst3|inst|state.RETURN_HOME~regout\,
	datad => \inst3|inst|state.LINE2~regout\,
	combout => \inst3|inst|Selector4~2_combout\);

-- Location: LCCOMB_X24_Y26_N10
\inst3|inst|Selector3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector3~1_combout\ = (\inst3|inst|state.LINE2~regout\) # ((\inst3|inst|DATA_BUS_VALUE\(6) & ((\inst3|inst|state.HOLD~regout\) # (\inst3|inst|state.DROP_LCD_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.LINE2~regout\,
	datab => \inst3|inst|DATA_BUS_VALUE\(6),
	datac => \inst3|inst|state.HOLD~regout\,
	datad => \inst3|inst|state.DROP_LCD_E~regout\,
	combout => \inst3|inst|Selector3~1_combout\);

-- Location: LCCOMB_X25_Y26_N10
\inst3|inst|Next_Char[1]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Next_Char[1]~3_combout\ = (\inst3|inst|CHAR_COUNT\(0) & (\inst|RAM|altsyncram_component|auto_generated|q_a\(1))) # (!\inst3|inst|CHAR_COUNT\(0) & ((\inst|RAM|altsyncram_component|auto_generated|q_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|RAM|altsyncram_component|auto_generated|q_a\(1),
	datac => \inst3|inst|CHAR_COUNT\(0),
	datad => \inst|RAM|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst3|inst|Next_Char[1]~3_combout\);

-- Location: LCFF_X23_Y26_N15
\inst3|inst|state.DISPLAY_OFF\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|state~34_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.DISPLAY_OFF~regout\);

-- Location: LCFF_X23_Y26_N13
\inst3|inst|state.RESET1\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|state.RESET1~feeder_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.RESET1~regout\);

-- Location: LCFF_X23_Y26_N1
\inst3|inst|state.FUNC_SET\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|state~36_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.FUNC_SET~regout\);

-- Location: LCCOMB_X24_Y26_N12
\inst3|inst|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector6~1_combout\ = (\inst3|inst|state.RESET2~regout\) # ((\inst3|inst|state.DISPLAY_ON~regout\) # ((\inst3|inst|state.FUNC_SET~regout\) # (\inst3|inst|state.DISPLAY_OFF~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.RESET2~regout\,
	datab => \inst3|inst|state.DISPLAY_ON~regout\,
	datac => \inst3|inst|state.FUNC_SET~regout\,
	datad => \inst3|inst|state.DISPLAY_OFF~regout\,
	combout => \inst3|inst|Selector6~1_combout\);

-- Location: LCCOMB_X25_Y26_N6
\inst3|inst|Next_Char[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Next_Char[0]~7_combout\ = (\inst3|inst|CHAR_COUNT\(0) & (\inst|RAM|altsyncram_component|auto_generated|q_a\(0))) # (!\inst3|inst|CHAR_COUNT\(0) & ((\inst|RAM|altsyncram_component|auto_generated|q_a\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RAM|altsyncram_component|auto_generated|q_a\(0),
	datab => \inst3|inst|CHAR_COUNT\(0),
	datad => \inst|RAM|altsyncram_component|auto_generated|q_a\(4),
	combout => \inst3|inst|Next_Char[0]~7_combout\);

-- Location: LCCOMB_X24_Y26_N20
\inst3|inst|Selector9~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector9~0_combout\ = (\inst3|inst|state.DISPLAY_CLEAR~regout\) # ((\inst3|inst|DATA_BUS_VALUE\(0) & ((\inst3|inst|state.HOLD~regout\) # (\inst3|inst|state.DROP_LCD_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|DATA_BUS_VALUE\(0),
	datab => \inst3|inst|state.DISPLAY_CLEAR~regout\,
	datac => \inst3|inst|state.HOLD~regout\,
	datad => \inst3|inst|state.DROP_LCD_E~regout\,
	combout => \inst3|inst|Selector9~0_combout\);

-- Location: LCCOMB_X23_Y26_N16
\inst3|inst|Add2~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Add2~10_combout\ = (\inst3|inst|state.RESET1~regout\ & !\inst3|inst|state.Print_String~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.RESET1~regout\,
	datad => \inst3|inst|state.Print_String~regout\,
	combout => \inst3|inst|Add2~10_combout\);

-- Location: LCFF_X23_Y26_N11
\inst3|inst|next_command.DISPLAY_CLEAR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector21~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|next_command.DISPLAY_CLEAR~regout\);

-- Location: LCFF_X23_Y26_N3
\inst3|inst|next_command.DISPLAY_OFF\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector20~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|next_command.DISPLAY_OFF~regout\);

-- Location: LCCOMB_X23_Y26_N14
\inst3|inst|state~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|state~34_combout\ = (\inst3|inst|next_command.DISPLAY_OFF~regout\ & \inst3|inst|state.HOLD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|next_command.DISPLAY_OFF~regout\,
	datad => \inst3|inst|state.HOLD~regout\,
	combout => \inst3|inst|state~34_combout\);

-- Location: LCFF_X23_Y26_N7
\inst3|inst|next_command.FUNC_SET\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector12~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|next_command.FUNC_SET~regout\);

-- Location: LCCOMB_X23_Y26_N0
\inst3|inst|state~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|state~36_combout\ = (\inst3|inst|next_command.FUNC_SET~regout\ & \inst3|inst|state.HOLD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|next_command.FUNC_SET~regout\,
	datad => \inst3|inst|state.HOLD~regout\,
	combout => \inst3|inst|state~36_combout\);

-- Location: LCCOMB_X23_Y26_N10
\inst3|inst|Selector21~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector21~0_combout\ = (\inst3|inst|state.DISPLAY_OFF~regout\) # ((\inst3|inst|next_command.DISPLAY_CLEAR~regout\ & ((\inst3|inst|state.HOLD~regout\) # (\inst3|inst|state.DROP_LCD_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.HOLD~regout\,
	datab => \inst3|inst|state.DISPLAY_OFF~regout\,
	datac => \inst3|inst|next_command.DISPLAY_CLEAR~regout\,
	datad => \inst3|inst|state.DROP_LCD_E~regout\,
	combout => \inst3|inst|Selector21~0_combout\);

-- Location: LCCOMB_X23_Y26_N2
\inst3|inst|Selector20~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector20~0_combout\ = (\inst3|inst|state.FUNC_SET~regout\) # ((\inst3|inst|next_command.DISPLAY_OFF~regout\ & ((\inst3|inst|state.HOLD~regout\) # (\inst3|inst|state.DROP_LCD_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.HOLD~regout\,
	datab => \inst3|inst|state.FUNC_SET~regout\,
	datac => \inst3|inst|next_command.DISPLAY_OFF~regout\,
	datad => \inst3|inst|state.DROP_LCD_E~regout\,
	combout => \inst3|inst|Selector20~0_combout\);

-- Location: LCCOMB_X23_Y26_N6
\inst3|inst|Selector12~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector12~0_combout\ = (\inst3|inst|state.RESET3~regout\) # ((\inst3|inst|next_command.FUNC_SET~regout\ & ((\inst3|inst|state.HOLD~regout\) # (\inst3|inst|state.DROP_LCD_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.RESET3~regout\,
	datab => \inst3|inst|state.HOLD~regout\,
	datac => \inst3|inst|next_command.FUNC_SET~regout\,
	datad => \inst3|inst|state.DROP_LCD_E~regout\,
	combout => \inst3|inst|Selector12~0_combout\);

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

-- Location: LCCOMB_X23_Y26_N12
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

-- Location: LCCOMB_X41_Y30_N14
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

-- Location: LCCOMB_X41_Y30_N26
\inst3|inst|CLK_COUNT_400HZ[7]~34\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[7]~34_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(7) & (!\inst3|inst|CLK_COUNT_400HZ[6]~33\)) # (!\inst3|inst|CLK_COUNT_400HZ\(7) & ((\inst3|inst|CLK_COUNT_400HZ[6]~33\) # (GND)))
-- \inst3|inst|CLK_COUNT_400HZ[7]~35\ = CARRY((!\inst3|inst|CLK_COUNT_400HZ[6]~33\) # (!\inst3|inst|CLK_COUNT_400HZ\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|CLK_COUNT_400HZ\(7),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[6]~33\,
	combout => \inst3|inst|CLK_COUNT_400HZ[7]~34_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[7]~35\);

-- Location: LCCOMB_X41_Y30_N28
\inst3|inst|CLK_COUNT_400HZ[8]~36\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[8]~36_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(8) & (\inst3|inst|CLK_COUNT_400HZ[7]~35\ $ (GND))) # (!\inst3|inst|CLK_COUNT_400HZ\(8) & (!\inst3|inst|CLK_COUNT_400HZ[7]~35\ & VCC))
-- \inst3|inst|CLK_COUNT_400HZ[8]~37\ = CARRY((\inst3|inst|CLK_COUNT_400HZ\(8) & !\inst3|inst|CLK_COUNT_400HZ[7]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|CLK_COUNT_400HZ\(8),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[7]~35\,
	combout => \inst3|inst|CLK_COUNT_400HZ[8]~36_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[8]~37\);

-- Location: LCFF_X41_Y30_N29
\inst3|inst|CLK_COUNT_400HZ[8]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[8]~36_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(8));

-- Location: LCCOMB_X41_Y30_N30
\inst3|inst|CLK_COUNT_400HZ[9]~38\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[9]~38_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(9) & (!\inst3|inst|CLK_COUNT_400HZ[8]~37\)) # (!\inst3|inst|CLK_COUNT_400HZ\(9) & ((\inst3|inst|CLK_COUNT_400HZ[8]~37\) # (GND)))
-- \inst3|inst|CLK_COUNT_400HZ[9]~39\ = CARRY((!\inst3|inst|CLK_COUNT_400HZ[8]~37\) # (!\inst3|inst|CLK_COUNT_400HZ\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CLK_COUNT_400HZ\(9),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[8]~37\,
	combout => \inst3|inst|CLK_COUNT_400HZ[9]~38_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[9]~39\);

-- Location: LCCOMB_X41_Y29_N0
\inst3|inst|CLK_COUNT_400HZ[10]~40\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[10]~40_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(10) & (\inst3|inst|CLK_COUNT_400HZ[9]~39\ $ (GND))) # (!\inst3|inst|CLK_COUNT_400HZ\(10) & (!\inst3|inst|CLK_COUNT_400HZ[9]~39\ & VCC))
-- \inst3|inst|CLK_COUNT_400HZ[10]~41\ = CARRY((\inst3|inst|CLK_COUNT_400HZ\(10) & !\inst3|inst|CLK_COUNT_400HZ[9]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|CLK_COUNT_400HZ\(10),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[9]~39\,
	combout => \inst3|inst|CLK_COUNT_400HZ[10]~40_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[10]~41\);

-- Location: LCFF_X41_Y29_N1
\inst3|inst|CLK_COUNT_400HZ[10]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[10]~40_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(10));

-- Location: LCCOMB_X41_Y29_N2
\inst3|inst|CLK_COUNT_400HZ[11]~42\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[11]~42_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(11) & (!\inst3|inst|CLK_COUNT_400HZ[10]~41\)) # (!\inst3|inst|CLK_COUNT_400HZ\(11) & ((\inst3|inst|CLK_COUNT_400HZ[10]~41\) # (GND)))
-- \inst3|inst|CLK_COUNT_400HZ[11]~43\ = CARRY((!\inst3|inst|CLK_COUNT_400HZ[10]~41\) # (!\inst3|inst|CLK_COUNT_400HZ\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|CLK_COUNT_400HZ\(11),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[10]~41\,
	combout => \inst3|inst|CLK_COUNT_400HZ[11]~42_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[11]~43\);

-- Location: LCFF_X41_Y29_N3
\inst3|inst|CLK_COUNT_400HZ[11]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[11]~42_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(11));

-- Location: LCCOMB_X41_Y29_N4
\inst3|inst|CLK_COUNT_400HZ[12]~44\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[12]~44_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(12) & (\inst3|inst|CLK_COUNT_400HZ[11]~43\ $ (GND))) # (!\inst3|inst|CLK_COUNT_400HZ\(12) & (!\inst3|inst|CLK_COUNT_400HZ[11]~43\ & VCC))
-- \inst3|inst|CLK_COUNT_400HZ[12]~45\ = CARRY((\inst3|inst|CLK_COUNT_400HZ\(12) & !\inst3|inst|CLK_COUNT_400HZ[11]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|CLK_COUNT_400HZ\(12),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[11]~43\,
	combout => \inst3|inst|CLK_COUNT_400HZ[12]~44_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[12]~45\);

-- Location: LCFF_X41_Y29_N5
\inst3|inst|CLK_COUNT_400HZ[12]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[12]~44_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(12));

-- Location: LCCOMB_X41_Y29_N8
\inst3|inst|CLK_COUNT_400HZ[14]~48\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[14]~48_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(14) & (\inst3|inst|CLK_COUNT_400HZ[13]~47\ $ (GND))) # (!\inst3|inst|CLK_COUNT_400HZ\(14) & (!\inst3|inst|CLK_COUNT_400HZ[13]~47\ & VCC))
-- \inst3|inst|CLK_COUNT_400HZ[14]~49\ = CARRY((\inst3|inst|CLK_COUNT_400HZ\(14) & !\inst3|inst|CLK_COUNT_400HZ[13]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|CLK_COUNT_400HZ\(14),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[13]~47\,
	combout => \inst3|inst|CLK_COUNT_400HZ[14]~48_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[14]~49\);

-- Location: LCFF_X41_Y29_N9
\inst3|inst|CLK_COUNT_400HZ[14]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[14]~48_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(14));

-- Location: LCCOMB_X41_Y29_N10
\inst3|inst|CLK_COUNT_400HZ[15]~51\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[15]~51_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(15) & (!\inst3|inst|CLK_COUNT_400HZ[14]~49\)) # (!\inst3|inst|CLK_COUNT_400HZ\(15) & ((\inst3|inst|CLK_COUNT_400HZ[14]~49\) # (GND)))
-- \inst3|inst|CLK_COUNT_400HZ[15]~52\ = CARRY((!\inst3|inst|CLK_COUNT_400HZ[14]~49\) # (!\inst3|inst|CLK_COUNT_400HZ\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CLK_COUNT_400HZ\(15),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[14]~49\,
	combout => \inst3|inst|CLK_COUNT_400HZ[15]~51_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[15]~52\);

-- Location: LCCOMB_X41_Y29_N12
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

-- Location: LCCOMB_X41_Y29_N14
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

-- Location: LCFF_X41_Y29_N15
\inst3|inst|CLK_COUNT_400HZ[17]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[17]~55_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(17));

-- Location: LCCOMB_X41_Y29_N18
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

-- Location: LCFF_X41_Y29_N19
\inst3|inst|CLK_COUNT_400HZ[19]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[19]~59_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(19));

-- Location: LCFF_X41_Y29_N13
\inst3|inst|CLK_COUNT_400HZ[16]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[16]~53_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(16));

-- Location: LCCOMB_X41_Y29_N20
\inst3|inst|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|LessThan0~5_combout\ = (!\inst3|inst|CLK_COUNT_400HZ\(18) & (!\inst3|inst|CLK_COUNT_400HZ\(19) & (!\inst3|inst|CLK_COUNT_400HZ\(17) & !\inst3|inst|CLK_COUNT_400HZ\(16))))

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
	combout => \inst3|inst|LessThan0~5_combout\);

-- Location: LCFF_X41_Y29_N11
\inst3|inst|CLK_COUNT_400HZ[15]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[15]~51_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(15));

-- Location: LCCOMB_X41_Y29_N28
\inst3|inst|LessThan0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|LessThan0~0_combout\ = (!\inst3|inst|CLK_COUNT_400HZ\(15)) # (!\inst3|inst|CLK_COUNT_400HZ\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|CLK_COUNT_400HZ\(14),
	datad => \inst3|inst|CLK_COUNT_400HZ\(15),
	combout => \inst3|inst|LessThan0~0_combout\);

-- Location: LCCOMB_X41_Y30_N10
\inst3|inst|CLK_COUNT_400HZ[4]~50\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[4]~50_combout\ = (((!\inst3|inst|LessThan0~0_combout\ & !\inst3|inst|LessThan0~4_combout\)) # (!\inst3|inst|LessThan0~5_combout\)) # (!\reset~~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~~combout\,
	datab => \inst3|inst|LessThan0~5_combout\,
	datac => \inst3|inst|LessThan0~0_combout\,
	datad => \inst3|inst|LessThan0~4_combout\,
	combout => \inst3|inst|CLK_COUNT_400HZ[4]~50_combout\);

-- Location: LCFF_X41_Y30_N15
\inst3|inst|CLK_COUNT_400HZ[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[1]~22_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(1));

-- Location: LCCOMB_X41_Y30_N18
\inst3|inst|CLK_COUNT_400HZ[3]~26\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[3]~26_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(3) & (!\inst3|inst|CLK_COUNT_400HZ[2]~25\)) # (!\inst3|inst|CLK_COUNT_400HZ\(3) & ((\inst3|inst|CLK_COUNT_400HZ[2]~25\) # (GND)))
-- \inst3|inst|CLK_COUNT_400HZ[3]~27\ = CARRY((!\inst3|inst|CLK_COUNT_400HZ[2]~25\) # (!\inst3|inst|CLK_COUNT_400HZ\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|CLK_COUNT_400HZ\(3),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[2]~25\,
	combout => \inst3|inst|CLK_COUNT_400HZ[3]~26_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[3]~27\);

-- Location: LCFF_X41_Y30_N19
\inst3|inst|CLK_COUNT_400HZ[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[3]~26_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(3));

-- Location: LCCOMB_X41_Y30_N20
\inst3|inst|CLK_COUNT_400HZ[4]~28\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[4]~28_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(4) & (\inst3|inst|CLK_COUNT_400HZ[3]~27\ $ (GND))) # (!\inst3|inst|CLK_COUNT_400HZ\(4) & (!\inst3|inst|CLK_COUNT_400HZ[3]~27\ & VCC))
-- \inst3|inst|CLK_COUNT_400HZ[4]~29\ = CARRY((\inst3|inst|CLK_COUNT_400HZ\(4) & !\inst3|inst|CLK_COUNT_400HZ[3]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CLK_COUNT_400HZ\(4),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[3]~27\,
	combout => \inst3|inst|CLK_COUNT_400HZ[4]~28_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[4]~29\);

-- Location: LCCOMB_X41_Y30_N22
\inst3|inst|CLK_COUNT_400HZ[5]~30\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_COUNT_400HZ[5]~30_combout\ = (\inst3|inst|CLK_COUNT_400HZ\(5) & (!\inst3|inst|CLK_COUNT_400HZ[4]~29\)) # (!\inst3|inst|CLK_COUNT_400HZ\(5) & ((\inst3|inst|CLK_COUNT_400HZ[4]~29\) # (GND)))
-- \inst3|inst|CLK_COUNT_400HZ[5]~31\ = CARRY((!\inst3|inst|CLK_COUNT_400HZ[4]~29\) # (!\inst3|inst|CLK_COUNT_400HZ\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|CLK_COUNT_400HZ\(5),
	datad => VCC,
	cin => \inst3|inst|CLK_COUNT_400HZ[4]~29\,
	combout => \inst3|inst|CLK_COUNT_400HZ[5]~30_combout\,
	cout => \inst3|inst|CLK_COUNT_400HZ[5]~31\);

-- Location: LCFF_X41_Y30_N23
\inst3|inst|CLK_COUNT_400HZ[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[5]~30_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(5));

-- Location: LCFF_X41_Y30_N27
\inst3|inst|CLK_COUNT_400HZ[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[7]~34_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(7));

-- Location: LCFF_X41_Y30_N31
\inst3|inst|CLK_COUNT_400HZ[9]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[9]~38_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(9));

-- Location: LCCOMB_X41_Y30_N2
\inst3|inst|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|LessThan0~3_combout\ = (!\inst3|inst|CLK_COUNT_400HZ\(6) & (!\inst3|inst|CLK_COUNT_400HZ\(7) & (!\inst3|inst|CLK_COUNT_400HZ\(9) & !\inst3|inst|CLK_COUNT_400HZ\(8))))

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
	combout => \inst3|inst|LessThan0~3_combout\);

-- Location: LCFF_X41_Y30_N21
\inst3|inst|CLK_COUNT_400HZ[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_COUNT_400HZ[4]~28_combout\,
	sclr => \inst3|inst|CLK_COUNT_400HZ[4]~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_COUNT_400HZ\(4));

-- Location: LCCOMB_X41_Y30_N4
\inst3|inst|LessThan0~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|LessThan0~2_combout\ = ((!\inst3|inst|CLK_COUNT_400HZ\(2) & (!\inst3|inst|CLK_COUNT_400HZ\(3) & !\inst3|inst|CLK_COUNT_400HZ\(4)))) # (!\inst3|inst|CLK_COUNT_400HZ\(5))

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
	combout => \inst3|inst|LessThan0~2_combout\);

-- Location: LCCOMB_X41_Y29_N22
\inst3|inst|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|LessThan0~1_combout\ = (((!\inst3|inst|CLK_COUNT_400HZ\(10) & !\inst3|inst|CLK_COUNT_400HZ\(11))) # (!\inst3|inst|CLK_COUNT_400HZ\(12))) # (!\inst3|inst|CLK_COUNT_400HZ\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CLK_COUNT_400HZ\(13),
	datab => \inst3|inst|CLK_COUNT_400HZ\(10),
	datac => \inst3|inst|CLK_COUNT_400HZ\(12),
	datad => \inst3|inst|CLK_COUNT_400HZ\(11),
	combout => \inst3|inst|LessThan0~1_combout\);

-- Location: LCCOMB_X41_Y30_N0
\inst3|inst|LessThan0~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|LessThan0~4_combout\ = (\inst3|inst|LessThan0~1_combout\) # ((!\inst3|inst|CLK_COUNT_400HZ\(11) & (\inst3|inst|LessThan0~3_combout\ & \inst3|inst|LessThan0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CLK_COUNT_400HZ\(11),
	datab => \inst3|inst|LessThan0~3_combout\,
	datac => \inst3|inst|LessThan0~2_combout\,
	datad => \inst3|inst|LessThan0~1_combout\,
	combout => \inst3|inst|LessThan0~4_combout\);

-- Location: LCCOMB_X40_Y30_N4
\inst3|inst|CLK_400HZ~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|CLK_400HZ~0_combout\ = \inst3|inst|CLK_400HZ~regout\ $ ((((!\inst3|inst|LessThan0~4_combout\ & !\inst3|inst|LessThan0~0_combout\)) # (!\inst3|inst|LessThan0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|LessThan0~5_combout\,
	datab => \inst3|inst|LessThan0~4_combout\,
	datac => \inst3|inst|CLK_400HZ~regout\,
	datad => \inst3|inst|LessThan0~0_combout\,
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

-- Location: LCFF_X40_Y30_N5
\inst3|inst|CLK_400HZ\ : cycloneii_lcell_ff
PORT MAP (
	clk => \CLK50~clkctrl_outclk\,
	datain => \inst3|inst|CLK_400HZ~0_combout\,
	sclr => \ALT_INV_reset~~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CLK_400HZ~regout\);

-- Location: CLKCTRL_G10
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

-- Location: LCCOMB_X24_Y26_N8
\inst3|inst|LCD_RS~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|LCD_RS~0_combout\ = (!\inst3|inst|state.HOLD~regout\ & !\inst3|inst|state.DROP_LCD_E~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|state.HOLD~regout\,
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

-- Location: LCFF_X24_Y26_N23
\inst3|inst|state.DROP_LCD_E\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	sdata => \inst3|inst|LCD_RS~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.DROP_LCD_E~regout\);

-- Location: LCCOMB_X23_Y26_N18
\inst3|inst|state.HOLD~feeder\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|state.HOLD~feeder_combout\ = \inst3|inst|state.DROP_LCD_E~regout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst|state.DROP_LCD_E~regout\,
	combout => \inst3|inst|state.HOLD~feeder_combout\);

-- Location: LCFF_X23_Y26_N19
\inst3|inst|state.HOLD\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|state.HOLD~feeder_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.HOLD~regout\);

-- Location: LCCOMB_X28_Y25_N22
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

-- Location: LCCOMB_X28_Y25_N24
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

-- Location: LCCOMB_X27_Y25_N26
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

-- Location: LCFF_X27_Y25_N27
\inst3|inst|CHAR_COUNT[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Add2~15_combout\,
	ena => \reset~~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CHAR_COUNT\(1));

-- Location: LCCOMB_X28_Y25_N26
\inst3|inst|Add2~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Add2~4_combout\ = (\inst3|inst|CHAR_COUNT\(2) & (\inst3|inst|Add2~3\ $ (GND))) # (!\inst3|inst|CHAR_COUNT\(2) & (!\inst3|inst|Add2~3\ & VCC))
-- \inst3|inst|Add2~5\ = CARRY((\inst3|inst|CHAR_COUNT\(2) & !\inst3|inst|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|CHAR_COUNT\(2),
	datad => VCC,
	cin => \inst3|inst|Add2~3\,
	combout => \inst3|inst|Add2~4_combout\,
	cout => \inst3|inst|Add2~5\);

-- Location: LCCOMB_X27_Y25_N24
\inst3|inst|Add2~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Add2~14_combout\ = (\inst3|inst|Add2~10_combout\ & ((\inst3|inst|CHAR_COUNT\(2)) # ((\inst3|inst|Add2~4_combout\ & \inst3|inst|Selector15~1_combout\)))) # (!\inst3|inst|Add2~10_combout\ & (\inst3|inst|Add2~4_combout\ & 
-- ((\inst3|inst|Selector15~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Add2~10_combout\,
	datab => \inst3|inst|Add2~4_combout\,
	datac => \inst3|inst|CHAR_COUNT\(2),
	datad => \inst3|inst|Selector15~1_combout\,
	combout => \inst3|inst|Add2~14_combout\);

-- Location: LCFF_X27_Y25_N25
\inst3|inst|CHAR_COUNT[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Add2~14_combout\,
	ena => \reset~~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CHAR_COUNT\(2));

-- Location: LCCOMB_X28_Y25_N28
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

-- Location: LCCOMB_X28_Y25_N30
\inst3|inst|Add2~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Add2~8_combout\ = \inst3|inst|Add2~7\ $ (!\inst3|inst|CHAR_COUNT\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|inst|CHAR_COUNT\(4),
	cin => \inst3|inst|Add2~7\,
	combout => \inst3|inst|Add2~8_combout\);

-- Location: LCCOMB_X27_Y25_N10
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

-- Location: LCFF_X27_Y25_N11
\inst3|inst|CHAR_COUNT[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Add2~11_combout\,
	ena => \reset~~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CHAR_COUNT\(4));

-- Location: LCCOMB_X27_Y25_N30
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

-- Location: LCFF_X27_Y25_N31
\inst3|inst|CHAR_COUNT[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Add2~13_combout\,
	ena => \reset~~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CHAR_COUNT\(3));

-- Location: M4K_X26_Y25
\inst3|inst1|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"2020202020200000202020202020202020202020415441442053534552444441",
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

-- Location: LCCOMB_X27_Y25_N8
\inst3|inst|Equal2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Equal2~0_combout\ = (\inst3|inst1|altsyncram_component|auto_generated|q_a\(3) & (\inst3|inst1|altsyncram_component|auto_generated|q_a\(1) & (!\inst3|inst1|altsyncram_component|auto_generated|q_a\(0) & 
-- \inst3|inst1|altsyncram_component|auto_generated|q_a\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst1|altsyncram_component|auto_generated|q_a\(3),
	datab => \inst3|inst1|altsyncram_component|auto_generated|q_a\(1),
	datac => \inst3|inst1|altsyncram_component|auto_generated|q_a\(0),
	datad => \inst3|inst1|altsyncram_component|auto_generated|q_a\(2),
	combout => \inst3|inst|Equal2~0_combout\);

-- Location: LCCOMB_X27_Y25_N22
\inst3|inst|Equal2~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Equal2~1_combout\ = (\inst3|inst1|altsyncram_component|auto_generated|q_a\(4) & (\inst3|inst1|altsyncram_component|auto_generated|q_a\(5) & (\inst3|inst1|altsyncram_component|auto_generated|q_a\(7) & 
-- \inst3|inst1|altsyncram_component|auto_generated|q_a\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst1|altsyncram_component|auto_generated|q_a\(4),
	datab => \inst3|inst1|altsyncram_component|auto_generated|q_a\(5),
	datac => \inst3|inst1|altsyncram_component|auto_generated|q_a\(7),
	datad => \inst3|inst1|altsyncram_component|auto_generated|q_a\(6),
	combout => \inst3|inst|Equal2~1_combout\);

-- Location: LCCOMB_X27_Y25_N6
\inst3|inst|process_1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|process_1~0_combout\ = (\inst3|inst|Equal3~0_combout\ & ((\inst3|inst|CHAR_COUNT\(4)) # ((\inst3|inst|Equal2~0_combout\ & \inst3|inst|Equal2~1_combout\)))) # (!\inst3|inst|Equal3~0_combout\ & (((\inst3|inst|Equal2~0_combout\ & 
-- \inst3|inst|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Equal3~0_combout\,
	datab => \inst3|inst|CHAR_COUNT\(4),
	datac => \inst3|inst|Equal2~0_combout\,
	datad => \inst3|inst|Equal2~1_combout\,
	combout => \inst3|inst|process_1~0_combout\);

-- Location: LCCOMB_X27_Y25_N28
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

-- Location: LCCOMB_X27_Y25_N16
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

-- Location: LCFF_X27_Y25_N17
\inst3|inst|CHAR_COUNT[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Add2~12_combout\,
	ena => \reset~~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|CHAR_COUNT\(0));

-- Location: LCCOMB_X24_Y25_N12
\inst3|inst|Selector17~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector17~0_combout\ = (\inst3|inst|next_command.RETURN_HOME~regout\ & ((\inst3|inst|state.DROP_LCD_E~regout\) # (\inst3|inst|state.HOLD~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|state.DROP_LCD_E~regout\,
	datac => \inst3|inst|state.HOLD~regout\,
	datad => \inst3|inst|next_command.RETURN_HOME~regout\,
	combout => \inst3|inst|Selector17~0_combout\);

-- Location: LCCOMB_X27_Y25_N20
\inst3|inst|Equal3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Equal3~0_combout\ = (\inst3|inst|CHAR_COUNT\(0) & (\inst3|inst|CHAR_COUNT\(3) & (\inst3|inst|CHAR_COUNT\(2) & \inst3|inst|CHAR_COUNT\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CHAR_COUNT\(0),
	datab => \inst3|inst|CHAR_COUNT\(3),
	datac => \inst3|inst|CHAR_COUNT\(2),
	datad => \inst3|inst|CHAR_COUNT\(1),
	combout => \inst3|inst|Equal3~0_combout\);

-- Location: LCCOMB_X27_Y25_N14
\inst3|inst|Equal3~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Equal3~1_combout\ = (\inst3|inst|Equal3~0_combout\ & !\inst3|inst|CHAR_COUNT\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|Equal3~0_combout\,
	datad => \inst3|inst|CHAR_COUNT\(4),
	combout => \inst3|inst|Equal3~1_combout\);

-- Location: LCCOMB_X27_Y25_N18
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

-- Location: LCFF_X27_Y25_N19
\inst3|inst|next_command.RETURN_HOME\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector17~1_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|next_command.RETURN_HOME~regout\);

-- Location: LCCOMB_X25_Y25_N24
\inst3|inst|state~31\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|state~31_combout\ = (\inst3|inst|state.HOLD~regout\ & \inst3|inst|next_command.RETURN_HOME~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|state.HOLD~regout\,
	datad => \inst3|inst|next_command.RETURN_HOME~regout\,
	combout => \inst3|inst|state~31_combout\);

-- Location: LCFF_X25_Y25_N25
\inst3|inst|state.RETURN_HOME\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|state~31_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.RETURN_HOME~regout\);

-- Location: LCCOMB_X27_Y25_N4
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

-- Location: LCCOMB_X27_Y25_N2
\inst3|inst|Selector15~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector15~2_combout\ = ((\inst3|inst|Selector15~0_combout\) # ((!\inst3|inst|Equal3~1_combout\ & \inst3|inst|Selector15~1_combout\))) # (!\inst3|inst|Selector4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Selector4~2_combout\,
	datab => \inst3|inst|Selector15~0_combout\,
	datac => \inst3|inst|Equal3~1_combout\,
	datad => \inst3|inst|Selector15~1_combout\,
	combout => \inst3|inst|Selector15~2_combout\);

-- Location: LCFF_X27_Y25_N3
\inst3|inst|next_command.Print_String\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector15~2_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|next_command.Print_String~regout\);

-- Location: LCCOMB_X27_Y25_N12
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

-- Location: LCFF_X27_Y25_N13
\inst3|inst|state.Print_String\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|state~28_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.Print_String~regout\);

-- Location: LCCOMB_X25_Y25_N22
\inst3|inst|Selector16~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector16~0_combout\ = (\inst3|inst|Equal3~1_combout\ & ((\inst3|inst|state.Print_String~regout\) # ((!\inst3|inst|LCD_RS~0_combout\ & \inst3|inst|next_command.LINE2~regout\)))) # (!\inst3|inst|Equal3~1_combout\ & 
-- (!\inst3|inst|LCD_RS~0_combout\ & (\inst3|inst|next_command.LINE2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Equal3~1_combout\,
	datab => \inst3|inst|LCD_RS~0_combout\,
	datac => \inst3|inst|next_command.LINE2~regout\,
	datad => \inst3|inst|state.Print_String~regout\,
	combout => \inst3|inst|Selector16~0_combout\);

-- Location: LCFF_X25_Y25_N23
\inst3|inst|next_command.LINE2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector16~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|next_command.LINE2~regout\);

-- Location: LCCOMB_X25_Y25_N6
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

-- Location: LCFF_X25_Y25_N7
\inst3|inst|state.LINE2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|state~30_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.LINE2~regout\);

-- Location: LCCOMB_X25_Y25_N28
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

-- Location: LCCOMB_X25_Y25_N26
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

-- Location: LCFF_X25_Y25_N27
\inst3|inst|DATA_BUS_VALUE[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector2~3_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|DATA_BUS_VALUE\(7));

-- Location: LCCOMB_X24_Y26_N24
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

-- Location: LCFF_X24_Y26_N25
\inst3|inst|LCD_RW_INT\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|LCD_RW_INT~feeder_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	ena => \inst3|inst|LCD_RS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|LCD_RW_INT~regout\);

-- Location: LCCOMB_X25_Y25_N18
\inst3|inst|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector3~0_combout\ = (\inst3|inst1|altsyncram_component|auto_generated|q_a\(6) & \inst3|inst|state.Print_String~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst1|altsyncram_component|auto_generated|q_a\(6),
	datad => \inst3|inst|state.Print_String~regout\,
	combout => \inst3|inst|Selector3~0_combout\);

-- Location: LCCOMB_X25_Y25_N0
\inst3|inst|Equal0~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Equal0~0_combout\ = (!\inst3|inst1|altsyncram_component|auto_generated|q_a\(4) & (!\inst3|inst1|altsyncram_component|auto_generated|q_a\(6) & (!\inst3|inst1|altsyncram_component|auto_generated|q_a\(7) & 
-- !\inst3|inst1|altsyncram_component|auto_generated|q_a\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst1|altsyncram_component|auto_generated|q_a\(4),
	datab => \inst3|inst1|altsyncram_component|auto_generated|q_a\(6),
	datac => \inst3|inst1|altsyncram_component|auto_generated|q_a\(7),
	datad => \inst3|inst1|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst3|inst|Equal0~0_combout\);

-- Location: LCCOMB_X24_Y26_N4
\inst3|inst|Selector3~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector3~2_combout\ = (\inst3|inst|state.Print_String~regout\ & \inst3|inst|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|state.Print_String~regout\,
	datad => \inst3|inst|Equal0~0_combout\,
	combout => \inst3|inst|Selector3~2_combout\);

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

-- Location: LCCOMB_X28_Y26_N10
\inst|BS|count[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|count[0]~8_combout\ = \inst|BS|count\(0) $ (VCC)
-- \inst|BS|count[0]~9\ = CARRY(\inst|BS|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|count\(0),
	datad => VCC,
	combout => \inst|BS|count[0]~8_combout\,
	cout => \inst|BS|count[0]~9\);

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

-- Location: LCCOMB_X30_Y26_N12
\inst|BS|dataA[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|dataA[7]~0_combout\ = (\inst|BS|delay~regout\ & \inst|BS|state.GetA~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|BS|delay~regout\,
	datad => \inst|BS|state.GetA~regout\,
	combout => \inst|BS|dataA[7]~0_combout\);

-- Location: LCFF_X27_Y26_N19
\inst|BS|dataA[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst|RAM|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	ena => \inst|BS|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|dataA\(7));

-- Location: LCCOMB_X28_Y26_N12
\inst|BS|count[1]~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|count[1]~10_combout\ = (\inst|BS|count\(1) & ((\inst|BS|Cnt~0_combout\ & (!\inst|BS|count[0]~9\)) # (!\inst|BS|Cnt~0_combout\ & (\inst|BS|count[0]~9\ & VCC)))) # (!\inst|BS|count\(1) & ((\inst|BS|Cnt~0_combout\ & ((\inst|BS|count[0]~9\) # (GND))) 
-- # (!\inst|BS|Cnt~0_combout\ & (!\inst|BS|count[0]~9\))))
-- \inst|BS|count[1]~11\ = CARRY((\inst|BS|count\(1) & (\inst|BS|Cnt~0_combout\ & !\inst|BS|count[0]~9\)) # (!\inst|BS|count\(1) & ((\inst|BS|Cnt~0_combout\) # (!\inst|BS|count[0]~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|count\(1),
	datab => \inst|BS|Cnt~0_combout\,
	datad => VCC,
	cin => \inst|BS|count[0]~9\,
	combout => \inst|BS|count[1]~10_combout\,
	cout => \inst|BS|count[1]~11\);

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

-- Location: LCCOMB_X29_Y26_N10
\inst|BS|Selector5~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|Selector5~9_combout\ = (\inst|BS|delay~regout\ & ((\inst|BS|state.GetB~regout\) # (\inst|BS|state.GetA~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|delay~regout\,
	datab => \inst|BS|state.GetB~regout\,
	datad => \inst|BS|state.GetA~regout\,
	combout => \inst|BS|Selector5~9_combout\);

-- Location: LCCOMB_X29_Y26_N28
\inst|BS|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|Selector6~0_combout\ = (\inst|BS|state.GetA~regout\) # ((\inst|BS|state.GetB~regout\) # ((\inst|BS|state.Waiting~regout\ & !\inst|BS|state.CheckFlag~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|state.Waiting~regout\,
	datab => \inst|BS|state.CheckFlag~regout\,
	datac => \inst|BS|state.GetA~regout\,
	datad => \inst|BS|state.GetB~regout\,
	combout => \inst|BS|Selector6~0_combout\);

-- Location: LCCOMB_X29_Y26_N8
\inst|BS|Selector6~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|Selector6~1_combout\ = (\inst|BS|state.Compare~regout\ & (((\inst|BS|Flag~regout\) # (\inst|BS|LessThan0~14_combout\)))) # (!\inst|BS|state.Compare~regout\ & (\inst|BS|Selector6~0_combout\ & (\inst|BS|Flag~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|state.Compare~regout\,
	datab => \inst|BS|Selector6~0_combout\,
	datac => \inst|BS|Flag~regout\,
	datad => \inst|BS|LessThan0~14_combout\,
	combout => \inst|BS|Selector6~1_combout\);

-- Location: LCFF_X29_Y26_N9
\inst|BS|Flag\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst|BS|Selector6~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|Flag~regout\);

-- Location: LCCOMB_X29_Y26_N12
\inst|BS|Selector0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|Selector0~1_combout\ = ((\inst|BS|Selector5~10_combout\) # ((\inst|BS|Selector5~7_combout\ & \inst|BS|state.CheckLoop~regout\))) # (!\inst|BS|Selector0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|Selector0~0_combout\,
	datab => \inst|BS|Selector5~7_combout\,
	datac => \inst|BS|state.CheckLoop~regout\,
	datad => \inst|BS|Selector5~10_combout\,
	combout => \inst|BS|Selector0~1_combout\);

-- Location: LCFF_X29_Y26_N13
\inst|BS|state.Waiting\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst|BS|Selector0~1_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|state.Waiting~regout\);

-- Location: LCCOMB_X29_Y26_N6
\inst|BS|Selector5~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|Selector5~8_combout\ = (\Launch~combout\ & (((\inst|BS|state.CheckFlag~regout\ & \inst|BS|Flag~regout\)) # (!\inst|BS|state.Waiting~regout\))) # (!\Launch~combout\ & (\inst|BS|state.CheckFlag~regout\ & (\inst|BS|Flag~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Launch~combout\,
	datab => \inst|BS|state.CheckFlag~regout\,
	datac => \inst|BS|Flag~regout\,
	datad => \inst|BS|state.Waiting~regout\,
	combout => \inst|BS|Selector5~8_combout\);

-- Location: LCCOMB_X28_Y26_N28
\inst|BS|Selector5~10\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|Selector5~10_combout\ = (\inst|BS|Selector5~9_combout\) # ((\inst|BS|Selector5~8_combout\) # ((\inst|BS|state.Compare~regout\ & \inst|BS|LessThan0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|state.Compare~regout\,
	datab => \inst|BS|Selector5~9_combout\,
	datac => \inst|BS|LessThan0~14_combout\,
	datad => \inst|BS|Selector5~8_combout\,
	combout => \inst|BS|Selector5~10_combout\);

-- Location: LCCOMB_X29_Y26_N16
\inst|BS|state~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|state~19_combout\ = (\inst|BS|state.GetB~regout\ & ((\inst|BS|Selector5~10_combout\) # ((\inst|BS|Selector5~7_combout\ & \inst|BS|state.CheckLoop~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|state.GetB~regout\,
	datab => \inst|BS|Selector5~7_combout\,
	datac => \inst|BS|state.CheckLoop~regout\,
	datad => \inst|BS|Selector5~10_combout\,
	combout => \inst|BS|state~19_combout\);

-- Location: LCFF_X29_Y26_N17
\inst|BS|state.Compare\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst|BS|state~19_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|state.Compare~regout\);

-- Location: LCCOMB_X28_Y26_N6
\inst|BS|count[7]~12\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|count[7]~12_combout\ = (\inst|BS|Cnt~0_combout\) # ((\inst|BS|Cnt~1_combout\) # ((\inst|BS|LessThan0~14_combout\ & \inst|BS|state.Compare~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|LessThan0~14_combout\,
	datab => \inst|BS|Cnt~0_combout\,
	datac => \inst|BS|state.Compare~regout\,
	datad => \inst|BS|Cnt~1_combout\,
	combout => \inst|BS|count[7]~12_combout\);

-- Location: LCFF_X28_Y26_N13
\inst|BS|count[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst|BS|count[1]~10_combout\,
	sdata => \A~combout\(1),
	sload => \inst|BS|Cnt~1_combout\,
	ena => \inst|BS|count[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|count\(1));

-- Location: LCCOMB_X28_Y26_N14
\inst|BS|count[2]~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|count[2]~13_combout\ = ((\inst|BS|count\(2) $ (\inst|BS|Cnt~0_combout\ $ (\inst|BS|count[1]~11\)))) # (GND)
-- \inst|BS|count[2]~14\ = CARRY((\inst|BS|count\(2) & ((!\inst|BS|count[1]~11\) # (!\inst|BS|Cnt~0_combout\))) # (!\inst|BS|count\(2) & (!\inst|BS|Cnt~0_combout\ & !\inst|BS|count[1]~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|count\(2),
	datab => \inst|BS|Cnt~0_combout\,
	datad => VCC,
	cin => \inst|BS|count[1]~11\,
	combout => \inst|BS|count[2]~13_combout\,
	cout => \inst|BS|count[2]~14\);

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

-- Location: LCFF_X28_Y26_N15
\inst|BS|count[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst|BS|count[2]~13_combout\,
	sdata => \A~combout\(2),
	sload => \inst|BS|Cnt~1_combout\,
	ena => \inst|BS|count[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|count\(2));

-- Location: LCCOMB_X28_Y26_N16
\inst|BS|count[3]~15\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|count[3]~15_combout\ = (\inst|BS|count\(3) & ((\inst|BS|Cnt~0_combout\ & (!\inst|BS|count[2]~14\)) # (!\inst|BS|Cnt~0_combout\ & (\inst|BS|count[2]~14\ & VCC)))) # (!\inst|BS|count\(3) & ((\inst|BS|Cnt~0_combout\ & ((\inst|BS|count[2]~14\) # 
-- (GND))) # (!\inst|BS|Cnt~0_combout\ & (!\inst|BS|count[2]~14\))))
-- \inst|BS|count[3]~16\ = CARRY((\inst|BS|count\(3) & (\inst|BS|Cnt~0_combout\ & !\inst|BS|count[2]~14\)) # (!\inst|BS|count\(3) & ((\inst|BS|Cnt~0_combout\) # (!\inst|BS|count[2]~14\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|count\(3),
	datab => \inst|BS|Cnt~0_combout\,
	datad => VCC,
	cin => \inst|BS|count[2]~14\,
	combout => \inst|BS|count[3]~15_combout\,
	cout => \inst|BS|count[3]~16\);

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

-- Location: LCFF_X28_Y26_N17
\inst|BS|count[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst|BS|count[3]~15_combout\,
	sdata => \A~combout\(3),
	sload => \inst|BS|Cnt~1_combout\,
	ena => \inst|BS|count[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|count\(3));

-- Location: LCCOMB_X28_Y26_N18
\inst|BS|count[4]~17\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|count[4]~17_combout\ = ((\inst|BS|count\(4) $ (\inst|BS|Cnt~0_combout\ $ (\inst|BS|count[3]~16\)))) # (GND)
-- \inst|BS|count[4]~18\ = CARRY((\inst|BS|count\(4) & ((!\inst|BS|count[3]~16\) # (!\inst|BS|Cnt~0_combout\))) # (!\inst|BS|count\(4) & (!\inst|BS|Cnt~0_combout\ & !\inst|BS|count[3]~16\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|count\(4),
	datab => \inst|BS|Cnt~0_combout\,
	datad => VCC,
	cin => \inst|BS|count[3]~16\,
	combout => \inst|BS|count[4]~17_combout\,
	cout => \inst|BS|count[4]~18\);

-- Location: LCCOMB_X28_Y26_N20
\inst|BS|count[5]~19\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|count[5]~19_combout\ = (\inst|BS|count\(5) & ((\inst|BS|Cnt~0_combout\ & (!\inst|BS|count[4]~18\)) # (!\inst|BS|Cnt~0_combout\ & (\inst|BS|count[4]~18\ & VCC)))) # (!\inst|BS|count\(5) & ((\inst|BS|Cnt~0_combout\ & ((\inst|BS|count[4]~18\) # 
-- (GND))) # (!\inst|BS|Cnt~0_combout\ & (!\inst|BS|count[4]~18\))))
-- \inst|BS|count[5]~20\ = CARRY((\inst|BS|count\(5) & (\inst|BS|Cnt~0_combout\ & !\inst|BS|count[4]~18\)) # (!\inst|BS|count\(5) & ((\inst|BS|Cnt~0_combout\) # (!\inst|BS|count[4]~18\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|count\(5),
	datab => \inst|BS|Cnt~0_combout\,
	datad => VCC,
	cin => \inst|BS|count[4]~18\,
	combout => \inst|BS|count[5]~19_combout\,
	cout => \inst|BS|count[5]~20\);

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

-- Location: LCFF_X28_Y26_N21
\inst|BS|count[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst|BS|count[5]~19_combout\,
	sdata => \A~combout\(5),
	sload => \inst|BS|Cnt~1_combout\,
	ena => \inst|BS|count[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|count\(5));

-- Location: LCCOMB_X28_Y26_N22
\inst|BS|count[6]~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|count[6]~21_combout\ = ((\inst|BS|count\(6) $ (\inst|BS|Cnt~0_combout\ $ (\inst|BS|count[5]~20\)))) # (GND)
-- \inst|BS|count[6]~22\ = CARRY((\inst|BS|count\(6) & ((!\inst|BS|count[5]~20\) # (!\inst|BS|Cnt~0_combout\))) # (!\inst|BS|count\(6) & (!\inst|BS|Cnt~0_combout\ & !\inst|BS|count[5]~20\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|count\(6),
	datab => \inst|BS|Cnt~0_combout\,
	datad => VCC,
	cin => \inst|BS|count[5]~20\,
	combout => \inst|BS|count[6]~21_combout\,
	cout => \inst|BS|count[6]~22\);

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

-- Location: LCFF_X28_Y26_N23
\inst|BS|count[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst|BS|count[6]~21_combout\,
	sdata => \A~combout\(6),
	sload => \inst|BS|Cnt~1_combout\,
	ena => \inst|BS|count[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|count\(6));

-- Location: LCCOMB_X28_Y26_N24
\inst|BS|count[7]~23\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|count[7]~23_combout\ = \inst|BS|count\(7) $ (\inst|BS|count[6]~22\ $ (!\inst|BS|Cnt~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|count\(7),
	datad => \inst|BS|Cnt~0_combout\,
	cin => \inst|BS|count[6]~22\,
	combout => \inst|BS|count[7]~23_combout\);

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

-- Location: LCFF_X28_Y26_N25
\inst|BS|count[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst|BS|count[7]~23_combout\,
	sdata => \A~combout\(7),
	sload => \inst|BS|Cnt~1_combout\,
	ena => \inst|BS|count[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|count\(7));

-- Location: LCCOMB_X29_Y26_N4
\inst|BS|state~21\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|state~21_combout\ = (\inst|BS|state.Compare~regout\ & ((\inst|BS|Selector5~10_combout\) # ((\inst|BS|Selector5~7_combout\ & \inst|BS|state.CheckLoop~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|state.Compare~regout\,
	datab => \inst|BS|Selector5~7_combout\,
	datac => \inst|BS|state.CheckLoop~regout\,
	datad => \inst|BS|Selector5~10_combout\,
	combout => \inst|BS|state~21_combout\);

-- Location: LCFF_X29_Y26_N5
\inst|BS|state.SendAddrB_w\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst|BS|state~21_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|state.SendAddrB_w~regout\);

-- Location: LCFF_X29_Y26_N15
\inst|BS|state.WriteB\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst|BS|state.SendAddrB_w~regout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|state.WriteB~regout\);

-- Location: LCFF_X29_Y26_N27
\inst|BS|state.SendAddrA_w\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst|BS|state.WriteB~regout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|state.SendAddrA_w~regout\);

-- Location: LCFF_X29_Y26_N11
\inst|BS|state.WriteA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst|BS|state.SendAddrA_w~regout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|state.WriteA~regout\);

-- Location: LCFF_X27_Y26_N17
\inst|BS|dataA[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst|RAM|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	ena => \inst|BS|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|dataA\(6));

-- Location: LCCOMB_X27_Y26_N2
\inst|BS|DataOut[6]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|DataOut[6]~1_combout\ = (\inst|BS|state.SendAddrA_w~regout\ & (\inst|BS|dataA\(6))) # (!\inst|BS|state.SendAddrA_w~regout\ & ((\inst|BS|state.WriteA~regout\ & (\inst|BS|dataA\(6))) # (!\inst|BS|state.WriteA~regout\ & ((\inst|BS|dataB\(6))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|state.SendAddrA_w~regout\,
	datab => \inst|BS|dataA\(6),
	datac => \inst|BS|dataB\(6),
	datad => \inst|BS|state.WriteA~regout\,
	combout => \inst|BS|DataOut[6]~1_combout\);

-- Location: LCCOMB_X30_Y26_N18
\inst|BS|dataB[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|dataB[7]~0_combout\ = (\inst|BS|delay~regout\ & \inst|BS|state.GetB~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|BS|delay~regout\,
	datad => \inst|BS|state.GetB~regout\,
	combout => \inst|BS|dataB[7]~0_combout\);

-- Location: LCFF_X27_Y26_N21
\inst|BS|dataB[7]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst|RAM|altsyncram_component|auto_generated|q_a\(7),
	sload => VCC,
	ena => \inst|BS|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|dataB\(7));

-- Location: LCCOMB_X27_Y26_N20
\inst|BS|DataOut[7]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|DataOut[7]~0_combout\ = (\inst|BS|state.SendAddrA_w~regout\ & (\inst|BS|dataA\(7))) # (!\inst|BS|state.SendAddrA_w~regout\ & ((\inst|BS|state.WriteA~regout\ & (\inst|BS|dataA\(7))) # (!\inst|BS|state.WriteA~regout\ & ((\inst|BS|dataB\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|state.SendAddrA_w~regout\,
	datab => \inst|BS|dataA\(7),
	datac => \inst|BS|dataB\(7),
	datad => \inst|BS|state.WriteA~regout\,
	combout => \inst|BS|DataOut[7]~0_combout\);

-- Location: M4K_X26_Y26
\inst|RAM|altsyncram_component|auto_generated|ram_block1a0\ : cycloneii_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000102030405060708090A0B0C0D0E0F101112131415161718191A1B1C1D1E1F202122232425262728292A2B2C2D2E2F303132333435363738393A3B3C3D3E3F404142434445464748494A4B4C4D4E4F505152535455565758595A5B5C5D5E5F606162636465666768696A6B6C6D6E6F707172737475767778797A7B7C7D7E7F808182838485868788898A8B8C8D8E8F909192939495969798999A9B9C9D9E9FA0A1A2A3A4A5A6A7A8A9AAABACADAEAFB0B1B2B3B4B5B6B7B8B9BABBBCBDBEBFC0C1C2C3C4C5C6C7C8C9CACBCCCDCECFD0D1D2D3D4D5D6D7D8D9DADBDCDDDEDFE0E1E2E3E4E5E6E7E8E9EAEBECEDEEEFF0F1F2F3F4F5F6F7F8F9FAFBFCFDFEFF",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "RAM256x8.mif",
	init_file_layout => "port_a",
	logical_ram_name => "Sorter:inst|RAM265x8:RAM|altsyncram:altsyncram_component|altsyncram_rtc1:auto_generated|ALTSYNCRAM",
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
	portawe => \inst|BS|WR~combout\,
	clk0 => \ALT_INV_CLK~~combout\,
	portadatain => \inst|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \inst|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst|RAM|altsyncram_component|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCFF_X27_Y26_N15
\inst|BS|dataA[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst|RAM|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	ena => \inst|BS|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|dataA\(5));

-- Location: LCFF_X27_Y26_N25
\inst|BS|dataB[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst|RAM|altsyncram_component|auto_generated|q_a\(5),
	sload => VCC,
	ena => \inst|BS|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|dataB\(5));

-- Location: LCCOMB_X27_Y26_N24
\inst|BS|DataOut[5]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|DataOut[5]~2_combout\ = (\inst|BS|state.SendAddrA_w~regout\ & (\inst|BS|dataA\(5))) # (!\inst|BS|state.SendAddrA_w~regout\ & ((\inst|BS|state.WriteA~regout\ & (\inst|BS|dataA\(5))) # (!\inst|BS|state.WriteA~regout\ & ((\inst|BS|dataB\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|state.SendAddrA_w~regout\,
	datab => \inst|BS|dataA\(5),
	datac => \inst|BS|dataB\(5),
	datad => \inst|BS|state.WriteA~regout\,
	combout => \inst|BS|DataOut[5]~2_combout\);

-- Location: LCFF_X27_Y26_N13
\inst|BS|dataA[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst|RAM|altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	ena => \inst|BS|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|dataA\(4));

-- Location: LCFF_X27_Y26_N27
\inst|BS|dataB[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst|RAM|altsyncram_component|auto_generated|q_a\(4),
	sload => VCC,
	ena => \inst|BS|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|dataB\(4));

-- Location: LCCOMB_X27_Y26_N26
\inst|BS|DataOut[4]~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|DataOut[4]~3_combout\ = (\inst|BS|state.SendAddrA_w~regout\ & (\inst|BS|dataA\(4))) # (!\inst|BS|state.SendAddrA_w~regout\ & ((\inst|BS|state.WriteA~regout\ & (\inst|BS|dataA\(4))) # (!\inst|BS|state.WriteA~regout\ & ((\inst|BS|dataB\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|state.SendAddrA_w~regout\,
	datab => \inst|BS|dataA\(4),
	datac => \inst|BS|dataB\(4),
	datad => \inst|BS|state.WriteA~regout\,
	combout => \inst|BS|DataOut[4]~3_combout\);

-- Location: LCFF_X27_Y26_N1
\inst|BS|dataB[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst|RAM|altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	ena => \inst|BS|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|dataB\(3));

-- Location: LCFF_X27_Y26_N11
\inst|BS|dataA[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst|RAM|altsyncram_component|auto_generated|q_a\(3),
	sload => VCC,
	ena => \inst|BS|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|dataA\(3));

-- Location: LCCOMB_X27_Y26_N0
\inst|BS|DataOut[3]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|DataOut[3]~4_combout\ = (\inst|BS|state.SendAddrA_w~regout\ & (((\inst|BS|dataA\(3))))) # (!\inst|BS|state.SendAddrA_w~regout\ & ((\inst|BS|state.WriteA~regout\ & ((\inst|BS|dataA\(3)))) # (!\inst|BS|state.WriteA~regout\ & (\inst|BS|dataB\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|state.SendAddrA_w~regout\,
	datab => \inst|BS|state.WriteA~regout\,
	datac => \inst|BS|dataB\(3),
	datad => \inst|BS|dataA\(3),
	combout => \inst|BS|DataOut[3]~4_combout\);

-- Location: LCFF_X27_Y26_N9
\inst|BS|dataA[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst|RAM|altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	ena => \inst|BS|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|dataA\(2));

-- Location: LCFF_X27_Y26_N31
\inst|BS|dataB[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst|RAM|altsyncram_component|auto_generated|q_a\(2),
	sload => VCC,
	ena => \inst|BS|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|dataB\(2));

-- Location: LCCOMB_X27_Y26_N30
\inst|BS|DataOut[2]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|DataOut[2]~5_combout\ = (\inst|BS|state.SendAddrA_w~regout\ & (\inst|BS|dataA\(2))) # (!\inst|BS|state.SendAddrA_w~regout\ & ((\inst|BS|state.WriteA~regout\ & (\inst|BS|dataA\(2))) # (!\inst|BS|state.WriteA~regout\ & ((\inst|BS|dataB\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|state.SendAddrA_w~regout\,
	datab => \inst|BS|dataA\(2),
	datac => \inst|BS|dataB\(2),
	datad => \inst|BS|state.WriteA~regout\,
	combout => \inst|BS|DataOut[2]~5_combout\);

-- Location: LCFF_X27_Y26_N7
\inst|BS|dataA[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst|RAM|altsyncram_component|auto_generated|q_a\(1),
	sload => VCC,
	ena => \inst|BS|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|dataA\(1));

-- Location: LCFF_X27_Y26_N29
\inst|BS|dataB[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst|RAM|altsyncram_component|auto_generated|q_a\(1),
	sload => VCC,
	ena => \inst|BS|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|dataB\(1));

-- Location: LCCOMB_X27_Y26_N28
\inst|BS|DataOut[1]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|DataOut[1]~6_combout\ = (\inst|BS|state.SendAddrA_w~regout\ & (\inst|BS|dataA\(1))) # (!\inst|BS|state.SendAddrA_w~regout\ & ((\inst|BS|state.WriteA~regout\ & (\inst|BS|dataA\(1))) # (!\inst|BS|state.WriteA~regout\ & ((\inst|BS|dataB\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|state.SendAddrA_w~regout\,
	datab => \inst|BS|dataA\(1),
	datac => \inst|BS|dataB\(1),
	datad => \inst|BS|state.WriteA~regout\,
	combout => \inst|BS|DataOut[1]~6_combout\);

-- Location: LCFF_X27_Y26_N3
\inst|BS|dataB[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst|RAM|altsyncram_component|auto_generated|q_a\(6),
	sload => VCC,
	ena => \inst|BS|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|dataB\(6));

-- Location: LCFF_X27_Y26_N23
\inst|BS|dataB[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst|RAM|altsyncram_component|auto_generated|q_a\(0),
	sload => VCC,
	ena => \inst|BS|dataB[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|dataB\(0));

-- Location: LCCOMB_X27_Y26_N4
\inst|BS|LessThan0~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|LessThan0~1_cout\ = CARRY((\inst|BS|dataA\(0) & !\inst|BS|dataB\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|dataA\(0),
	datab => \inst|BS|dataB\(0),
	datad => VCC,
	cout => \inst|BS|LessThan0~1_cout\);

-- Location: LCCOMB_X27_Y26_N6
\inst|BS|LessThan0~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|LessThan0~3_cout\ = CARRY((\inst|BS|dataA\(1) & (\inst|BS|dataB\(1) & !\inst|BS|LessThan0~1_cout\)) # (!\inst|BS|dataA\(1) & ((\inst|BS|dataB\(1)) # (!\inst|BS|LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|dataA\(1),
	datab => \inst|BS|dataB\(1),
	datad => VCC,
	cin => \inst|BS|LessThan0~1_cout\,
	cout => \inst|BS|LessThan0~3_cout\);

-- Location: LCCOMB_X27_Y26_N8
\inst|BS|LessThan0~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|LessThan0~5_cout\ = CARRY((\inst|BS|dataA\(2) & ((!\inst|BS|LessThan0~3_cout\) # (!\inst|BS|dataB\(2)))) # (!\inst|BS|dataA\(2) & (!\inst|BS|dataB\(2) & !\inst|BS|LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|dataA\(2),
	datab => \inst|BS|dataB\(2),
	datad => VCC,
	cin => \inst|BS|LessThan0~3_cout\,
	cout => \inst|BS|LessThan0~5_cout\);

-- Location: LCCOMB_X27_Y26_N10
\inst|BS|LessThan0~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|LessThan0~7_cout\ = CARRY((\inst|BS|dataA\(3) & (\inst|BS|dataB\(3) & !\inst|BS|LessThan0~5_cout\)) # (!\inst|BS|dataA\(3) & ((\inst|BS|dataB\(3)) # (!\inst|BS|LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|dataA\(3),
	datab => \inst|BS|dataB\(3),
	datad => VCC,
	cin => \inst|BS|LessThan0~5_cout\,
	cout => \inst|BS|LessThan0~7_cout\);

-- Location: LCCOMB_X27_Y26_N12
\inst|BS|LessThan0~9\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|LessThan0~9_cout\ = CARRY((\inst|BS|dataA\(4) & ((!\inst|BS|LessThan0~7_cout\) # (!\inst|BS|dataB\(4)))) # (!\inst|BS|dataA\(4) & (!\inst|BS|dataB\(4) & !\inst|BS|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|dataA\(4),
	datab => \inst|BS|dataB\(4),
	datad => VCC,
	cin => \inst|BS|LessThan0~7_cout\,
	cout => \inst|BS|LessThan0~9_cout\);

-- Location: LCCOMB_X27_Y26_N14
\inst|BS|LessThan0~11\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|LessThan0~11_cout\ = CARRY((\inst|BS|dataB\(5) & ((!\inst|BS|LessThan0~9_cout\) # (!\inst|BS|dataA\(5)))) # (!\inst|BS|dataB\(5) & (!\inst|BS|dataA\(5) & !\inst|BS|LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|dataB\(5),
	datab => \inst|BS|dataA\(5),
	datad => VCC,
	cin => \inst|BS|LessThan0~9_cout\,
	cout => \inst|BS|LessThan0~11_cout\);

-- Location: LCCOMB_X27_Y26_N16
\inst|BS|LessThan0~13\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|LessThan0~13_cout\ = CARRY((\inst|BS|dataA\(6) & ((!\inst|BS|LessThan0~11_cout\) # (!\inst|BS|dataB\(6)))) # (!\inst|BS|dataA\(6) & (!\inst|BS|dataB\(6) & !\inst|BS|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|dataA\(6),
	datab => \inst|BS|dataB\(6),
	datad => VCC,
	cin => \inst|BS|LessThan0~11_cout\,
	cout => \inst|BS|LessThan0~13_cout\);

-- Location: LCCOMB_X27_Y26_N18
\inst|BS|LessThan0~14\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|LessThan0~14_combout\ = (\inst|BS|dataB\(7) & (\inst|BS|LessThan0~13_cout\ & \inst|BS|dataA\(7))) # (!\inst|BS|dataB\(7) & ((\inst|BS|LessThan0~13_cout\) # (\inst|BS|dataA\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101010000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|dataB\(7),
	datad => \inst|BS|dataA\(7),
	cin => \inst|BS|LessThan0~13_cout\,
	combout => \inst|BS|LessThan0~14_combout\);

-- Location: LCCOMB_X29_Y26_N20
\inst|BS|Selector4~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|Selector4~0_combout\ = (\inst|BS|state.WriteA~regout\) # ((\inst|BS|state.Compare~regout\ & !\inst|BS|LessThan0~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|state.Compare~regout\,
	datac => \inst|BS|LessThan0~14_combout\,
	datad => \inst|BS|state.WriteA~regout\,
	combout => \inst|BS|Selector4~0_combout\);

-- Location: LCFF_X29_Y26_N21
\inst|BS|state.CheckLoop\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst|BS|Selector4~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|state.CheckLoop~regout\);

-- Location: LCCOMB_X29_Y26_N22
\inst|BS|state~20\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|state~20_combout\ = (\inst|BS|state.GetA~regout\ & ((\inst|BS|Selector5~10_combout\) # ((\inst|BS|Selector5~7_combout\ & \inst|BS|state.CheckLoop~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|state.GetA~regout\,
	datab => \inst|BS|Selector5~7_combout\,
	datac => \inst|BS|state.CheckLoop~regout\,
	datad => \inst|BS|Selector5~10_combout\,
	combout => \inst|BS|state~20_combout\);

-- Location: LCFF_X29_Y26_N23
\inst|BS|state.SendAddrB_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst|BS|state~20_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|state.SendAddrB_r~regout\);

-- Location: LCCOMB_X30_Y26_N28
\inst|BS|Selector3~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|Selector3~0_combout\ = (\inst|BS|state.SendAddrB_r~regout\) # ((!\inst|BS|delay~regout\ & \inst|BS|state.GetB~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|BS|delay~regout\,
	datac => \inst|BS|state.GetB~regout\,
	datad => \inst|BS|state.SendAddrB_r~regout\,
	combout => \inst|BS|Selector3~0_combout\);

-- Location: LCFF_X30_Y26_N29
\inst|BS|state.GetB\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst|BS|Selector3~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|state.GetB~regout\);

-- Location: LCCOMB_X30_Y26_N4
\inst|BS|delay~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|delay~0_combout\ = \inst|BS|delay~regout\ $ (((\inst|BS|state.GetA~regout\) # (\inst|BS|state.GetB~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|BS|state.GetA~regout\,
	datac => \inst|BS|delay~regout\,
	datad => \inst|BS|state.GetB~regout\,
	combout => \inst|BS|delay~0_combout\);

-- Location: LCFF_X30_Y26_N5
\inst|BS|delay\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst|BS|delay~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|delay~regout\);

-- Location: LCCOMB_X29_Y26_N18
\inst|BS|Selector1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|Selector1~0_combout\ = (\inst|BS|Selector5~10_combout\ & (\inst|BS|Selector0~0_combout\)) # (!\inst|BS|Selector5~10_combout\ & (\inst|BS|state.CheckLoop~regout\ & ((\inst|BS|Selector0~0_combout\) # (!\inst|BS|Selector5~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|Selector0~0_combout\,
	datab => \inst|BS|Selector5~7_combout\,
	datac => \inst|BS|state.CheckLoop~regout\,
	datad => \inst|BS|Selector5~10_combout\,
	combout => \inst|BS|Selector1~0_combout\);

-- Location: LCFF_X29_Y26_N19
\inst|BS|state.SendAddrA_r\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst|BS|Selector1~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|state.SendAddrA_r~regout\);

-- Location: LCCOMB_X30_Y26_N30
\inst|BS|Selector2~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|Selector2~0_combout\ = (\inst|BS|state.SendAddrA_r~regout\) # ((!\inst|BS|delay~regout\ & \inst|BS|state.GetA~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|BS|delay~regout\,
	datac => \inst|BS|state.GetA~regout\,
	datad => \inst|BS|state.SendAddrA_r~regout\,
	combout => \inst|BS|Selector2~0_combout\);

-- Location: LCFF_X30_Y26_N31
\inst|BS|state.GetA\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst|BS|Selector2~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|state.GetA~regout\);

-- Location: LCCOMB_X29_Y26_N30
\inst|BS|Cnt~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|Cnt~0_combout\ = (\inst|BS|state.WriteB~regout\) # ((\inst|BS|state.GetA~regout\ & \inst|BS|delay~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|BS|state.GetA~regout\,
	datac => \inst|BS|state.WriteB~regout\,
	datad => \inst|BS|delay~regout\,
	combout => \inst|BS|Cnt~0_combout\);

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

-- Location: LCFF_X28_Y26_N19
\inst|BS|count[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst|BS|count[4]~17_combout\,
	sdata => \A~combout\(4),
	sload => \inst|BS|Cnt~1_combout\,
	ena => \inst|BS|count[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|count\(4));

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

-- Location: LCCOMB_X28_Y26_N2
\inst|BS|Selector5~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|Selector5~5_combout\ = (\B~combout\(4) & (\inst|BS|count\(4) & (\inst|BS|count\(5) $ (!\B~combout\(5))))) # (!\B~combout\(4) & (!\inst|BS|count\(4) & (\inst|BS|count\(5) $ (!\B~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(4),
	datab => \inst|BS|count\(4),
	datac => \inst|BS|count\(5),
	datad => \B~combout\(5),
	combout => \inst|BS|Selector5~5_combout\);

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

-- Location: LCCOMB_X28_Y26_N8
\inst|BS|Selector5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|Selector5~3_combout\ = (\inst|BS|count\(0) & (\B~combout\(0) & (\B~combout\(1) $ (!\inst|BS|count\(1))))) # (!\inst|BS|count\(0) & (!\B~combout\(0) & (\B~combout\(1) $ (!\inst|BS|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|count\(0),
	datab => \B~combout\(0),
	datac => \B~combout\(1),
	datad => \inst|BS|count\(1),
	combout => \inst|BS|Selector5~3_combout\);

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

-- Location: LCCOMB_X28_Y26_N0
\inst|BS|Selector5~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|Selector5~6_combout\ = (\B~combout\(7) & (\inst|BS|count\(7) & (\inst|BS|count\(6) $ (!\B~combout\(6))))) # (!\B~combout\(7) & (!\inst|BS|count\(7) & (\inst|BS|count\(6) $ (!\B~combout\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B~combout\(7),
	datab => \inst|BS|count\(6),
	datac => \inst|BS|count\(7),
	datad => \B~combout\(6),
	combout => \inst|BS|Selector5~6_combout\);

-- Location: LCCOMB_X28_Y26_N26
\inst|BS|Selector5~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|Selector5~7_combout\ = (\inst|BS|Selector5~4_combout\ & (\inst|BS|Selector5~5_combout\ & (\inst|BS|Selector5~3_combout\ & \inst|BS|Selector5~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|Selector5~4_combout\,
	datab => \inst|BS|Selector5~5_combout\,
	datac => \inst|BS|Selector5~3_combout\,
	datad => \inst|BS|Selector5~6_combout\,
	combout => \inst|BS|Selector5~7_combout\);

-- Location: LCCOMB_X29_Y26_N0
\inst|BS|state~18\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|state~18_combout\ = (\inst|BS|state.CheckLoop~regout\ & ((\inst|BS|Selector5~7_combout\) # (\inst|BS|Selector5~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|BS|Selector5~7_combout\,
	datac => \inst|BS|state.CheckLoop~regout\,
	datad => \inst|BS|Selector5~10_combout\,
	combout => \inst|BS|state~18_combout\);

-- Location: LCFF_X29_Y26_N1
\inst|BS|state.CheckFlag\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst|BS|state~18_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|state.CheckFlag~regout\);

-- Location: LCCOMB_X29_Y26_N24
\inst|BS|Cnt~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|Cnt~1_combout\ = ((\inst|BS|state.CheckFlag~regout\ & \inst|BS|Flag~regout\)) # (!\inst|BS|state.Waiting~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|BS|state.CheckFlag~regout\,
	datac => \inst|BS|Flag~regout\,
	datad => \inst|BS|state.Waiting~regout\,
	combout => \inst|BS|Cnt~1_combout\);

-- Location: LCFF_X28_Y26_N11
\inst|BS|count[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	datain => \inst|BS|count[0]~8_combout\,
	sdata => \A~combout\(0),
	sload => \inst|BS|Cnt~1_combout\,
	ena => \inst|BS|count[7]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|count\(0));

-- Location: LCFF_X27_Y26_N5
\inst|BS|dataA[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \ALT_INV_CLK~~combout\,
	sdata => \inst|RAM|altsyncram_component|auto_generated|q_a\(0),
	sload => VCC,
	ena => \inst|BS|dataA[7]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst|BS|dataA\(0));

-- Location: LCCOMB_X27_Y26_N22
\inst|BS|DataOut[0]~7\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst|BS|DataOut[0]~7_combout\ = (\inst|BS|state.SendAddrA_w~regout\ & (\inst|BS|dataA\(0))) # (!\inst|BS|state.SendAddrA_w~regout\ & ((\inst|BS|state.WriteA~regout\ & (\inst|BS|dataA\(0))) # (!\inst|BS|state.WriteA~regout\ & ((\inst|BS|dataB\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|BS|state.SendAddrA_w~regout\,
	datab => \inst|BS|dataA\(0),
	datac => \inst|BS|dataB\(0),
	datad => \inst|BS|state.WriteA~regout\,
	combout => \inst|BS|DataOut[0]~7_combout\);

-- Location: LCCOMB_X25_Y26_N30
\inst3|inst|Next_Char[3]~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Next_Char[3]~5_combout\ = (\inst3|inst|CHAR_COUNT\(0) & ((\inst|RAM|altsyncram_component|auto_generated|q_a\(3)))) # (!\inst3|inst|CHAR_COUNT\(0) & (\inst|RAM|altsyncram_component|auto_generated|q_a\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|CHAR_COUNT\(0),
	datac => \inst|RAM|altsyncram_component|auto_generated|q_a\(7),
	datad => \inst|RAM|altsyncram_component|auto_generated|q_a\(3),
	combout => \inst3|inst|Next_Char[3]~5_combout\);

-- Location: LCCOMB_X25_Y26_N0
\inst3|inst|Next_Char[3]~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Next_Char[3]~6_combout\ = (\inst3|inst|Equal0~0_combout\ & (((\inst3|inst|Next_Char[3]~5_combout\)) # (!\inst3|inst|Next_Char[3]~1_combout\))) # (!\inst3|inst|Equal0~0_combout\ & (((\inst3|inst1|altsyncram_component|auto_generated|q_a\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Next_Char[3]~1_combout\,
	datab => \inst3|inst|Next_Char[3]~5_combout\,
	datac => \inst3|inst1|altsyncram_component|auto_generated|q_a\(3),
	datad => \inst3|inst|Equal0~0_combout\,
	combout => \inst3|inst|Next_Char[3]~6_combout\);

-- Location: LCCOMB_X27_Y25_N0
\inst3|inst|Next_Char[3]~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Next_Char[3]~1_combout\ = (\inst3|inst|CHAR_COUNT\(4) & (!\inst3|inst|CHAR_COUNT\(1) & (!\inst3|inst|CHAR_COUNT\(2) & \inst3|inst|CHAR_COUNT\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|CHAR_COUNT\(4),
	datab => \inst3|inst|CHAR_COUNT\(1),
	datac => \inst3|inst|CHAR_COUNT\(2),
	datad => \inst3|inst|CHAR_COUNT\(3),
	combout => \inst3|inst|Next_Char[3]~1_combout\);

-- Location: LCCOMB_X25_Y26_N12
\inst3|inst|Next_Char[1]~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Next_Char[1]~4_combout\ = (\inst3|inst|Equal0~0_combout\ & ((\inst3|inst|Next_Char[1]~3_combout\) # ((!\inst3|inst|Next_Char[3]~1_combout\)))) # (!\inst3|inst|Equal0~0_combout\ & (((\inst3|inst1|altsyncram_component|auto_generated|q_a\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Next_Char[1]~3_combout\,
	datab => \inst3|inst1|altsyncram_component|auto_generated|q_a\(1),
	datac => \inst3|inst|Next_Char[3]~1_combout\,
	datad => \inst3|inst|Equal0~0_combout\,
	combout => \inst3|inst|Next_Char[1]~4_combout\);

-- Location: LCCOMB_X25_Y26_N14
\inst3|inst|Next_Char[2]~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Next_Char[2]~0_combout\ = (\inst3|inst|CHAR_COUNT\(0) & ((\inst|RAM|altsyncram_component|auto_generated|q_a\(2)))) # (!\inst3|inst|CHAR_COUNT\(0) & (\inst|RAM|altsyncram_component|auto_generated|q_a\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|RAM|altsyncram_component|auto_generated|q_a\(6),
	datac => \inst|RAM|altsyncram_component|auto_generated|q_a\(2),
	datad => \inst3|inst|CHAR_COUNT\(0),
	combout => \inst3|inst|Next_Char[2]~0_combout\);

-- Location: LCCOMB_X25_Y26_N24
\inst3|inst|Next_Char[2]~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Next_Char[2]~2_combout\ = (\inst3|inst|Equal0~0_combout\ & (((\inst3|inst|Next_Char[2]~0_combout\)) # (!\inst3|inst|Next_Char[3]~1_combout\))) # (!\inst3|inst|Equal0~0_combout\ & (((\inst3|inst1|altsyncram_component|auto_generated|q_a\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Next_Char[3]~1_combout\,
	datab => \inst3|inst1|altsyncram_component|auto_generated|q_a\(2),
	datac => \inst3|inst|Next_Char[2]~0_combout\,
	datad => \inst3|inst|Equal0~0_combout\,
	combout => \inst3|inst|Next_Char[2]~2_combout\);

-- Location: LCCOMB_X24_Y26_N18
\inst3|inst|LessThan1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|LessThan1~0_combout\ = ((!\inst3|inst|Next_Char[1]~4_combout\ & !\inst3|inst|Next_Char[2]~2_combout\)) # (!\inst3|inst|Next_Char[3]~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|Next_Char[3]~6_combout\,
	datac => \inst3|inst|Next_Char[1]~4_combout\,
	datad => \inst3|inst|Next_Char[2]~2_combout\,
	combout => \inst3|inst|LessThan1~0_combout\);

-- Location: LCCOMB_X24_Y26_N30
\inst3|inst|Selector3~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector3~3_combout\ = (\inst3|inst|Selector3~1_combout\) # ((\inst3|inst|Selector3~0_combout\) # ((\inst3|inst|Selector3~2_combout\ & !\inst3|inst|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Selector3~1_combout\,
	datab => \inst3|inst|Selector3~0_combout\,
	datac => \inst3|inst|Selector3~2_combout\,
	datad => \inst3|inst|LessThan1~0_combout\,
	combout => \inst3|inst|Selector3~3_combout\);

-- Location: LCFF_X24_Y26_N31
\inst3|inst|DATA_BUS_VALUE[6]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector3~3_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|DATA_BUS_VALUE\(6));

-- Location: LCCOMB_X23_Y26_N8
\inst3|inst|Selector13~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector13~0_combout\ = (\inst3|inst|state.DISPLAY_CLEAR~regout\) # ((\inst3|inst|next_command.DISPLAY_ON~regout\ & ((\inst3|inst|state.HOLD~regout\) # (\inst3|inst|state.DROP_LCD_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.DISPLAY_CLEAR~regout\,
	datab => \inst3|inst|state.HOLD~regout\,
	datac => \inst3|inst|next_command.DISPLAY_ON~regout\,
	datad => \inst3|inst|state.DROP_LCD_E~regout\,
	combout => \inst3|inst|Selector13~0_combout\);

-- Location: LCFF_X23_Y26_N9
\inst3|inst|next_command.DISPLAY_ON\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector13~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|next_command.DISPLAY_ON~regout\);

-- Location: LCCOMB_X24_Y26_N28
\inst3|inst|state~33\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|state~33_combout\ = (\inst3|inst|state.HOLD~regout\ & \inst3|inst|next_command.DISPLAY_ON~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|inst|state.HOLD~regout\,
	datad => \inst3|inst|next_command.DISPLAY_ON~regout\,
	combout => \inst3|inst|state~33_combout\);

-- Location: LCFF_X24_Y26_N29
\inst3|inst|state.DISPLAY_ON\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|state~33_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.DISPLAY_ON~regout\);

-- Location: LCCOMB_X25_Y25_N12
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

-- Location: LCFF_X25_Y25_N13
\inst3|inst|next_command.MODE_SET\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector14~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|next_command.MODE_SET~regout\);

-- Location: LCCOMB_X25_Y25_N8
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

-- Location: LCFF_X25_Y25_N9
\inst3|inst|state.MODE_SET\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|state~29_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.MODE_SET~regout\);

-- Location: LCCOMB_X25_Y25_N30
\inst3|inst|Selector4~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector4~3_combout\ = (!\inst3|inst|state.LINE2~regout\ & (!\inst3|inst|state.MODE_SET~regout\ & (!\inst3|inst|state.RETURN_HOME~regout\ & !\inst3|inst|state.Print_String~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.LINE2~regout\,
	datab => \inst3|inst|state.MODE_SET~regout\,
	datac => \inst3|inst|state.RETURN_HOME~regout\,
	datad => \inst3|inst|state.Print_String~regout\,
	combout => \inst3|inst|Selector4~3_combout\);

-- Location: LCCOMB_X23_Y26_N28
\inst3|inst|state~32\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|state~32_combout\ = (\inst3|inst|next_command.DISPLAY_CLEAR~regout\ & \inst3|inst|state.HOLD~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|next_command.DISPLAY_CLEAR~regout\,
	datad => \inst3|inst|state.HOLD~regout\,
	combout => \inst3|inst|state~32_combout\);

-- Location: LCFF_X23_Y26_N29
\inst3|inst|state.DISPLAY_CLEAR\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|state~32_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.DISPLAY_CLEAR~regout\);

-- Location: LCCOMB_X24_Y26_N22
\inst3|inst|Selector4~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector4~4_combout\ = (!\inst3|inst|state.DISPLAY_OFF~regout\ & (!\inst3|inst|state.DISPLAY_CLEAR~regout\ & !\inst3|inst|state.DISPLAY_ON~regout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.DISPLAY_OFF~regout\,
	datab => \inst3|inst|state.DISPLAY_CLEAR~regout\,
	datad => \inst3|inst|state.DISPLAY_ON~regout\,
	combout => \inst3|inst|Selector4~4_combout\);

-- Location: LCCOMB_X25_Y25_N16
\inst3|inst|Selector4~5\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector4~5_combout\ = (\inst3|inst|state.Print_String~regout\ & ((\inst3|inst1|altsyncram_component|auto_generated|q_a\(5)) # ((\inst3|inst|Selector4~3_combout\ & \inst3|inst|Selector4~4_combout\)))) # (!\inst3|inst|state.Print_String~regout\ 
-- & (\inst3|inst|Selector4~3_combout\ & (\inst3|inst|Selector4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.Print_String~regout\,
	datab => \inst3|inst|Selector4~3_combout\,
	datac => \inst3|inst|Selector4~4_combout\,
	datad => \inst3|inst1|altsyncram_component|auto_generated|q_a\(5),
	combout => \inst3|inst|Selector4~5_combout\);

-- Location: LCCOMB_X24_Y26_N0
\inst3|inst|Selector4~6\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector4~6_combout\ = (!\inst3|inst|Selector4~5_combout\ & (((!\inst3|inst|LessThan1~0_combout\) # (!\inst3|inst|Equal0~0_combout\)) # (!\inst3|inst|state.Print_String~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.Print_String~regout\,
	datab => \inst3|inst|Equal0~0_combout\,
	datac => \inst3|inst|Selector4~5_combout\,
	datad => \inst3|inst|LessThan1~0_combout\,
	combout => \inst3|inst|Selector4~6_combout\);

-- Location: LCFF_X24_Y26_N1
\inst3|inst|DATA_BUS_VALUE[5]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector4~6_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	ena => \inst3|inst|LCD_RS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|DATA_BUS_VALUE\(5));

-- Location: LCCOMB_X25_Y25_N14
\inst3|inst|Selector5~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector5~2_combout\ = (\inst3|inst|state.Print_String~regout\ & ((\inst3|inst1|altsyncram_component|auto_generated|q_a\(4)) # ((\inst3|inst|Selector4~3_combout\ & \inst3|inst|Selector4~4_combout\)))) # (!\inst3|inst|state.Print_String~regout\ 
-- & (\inst3|inst|Selector4~3_combout\ & (\inst3|inst|Selector4~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.Print_String~regout\,
	datab => \inst3|inst|Selector4~3_combout\,
	datac => \inst3|inst|Selector4~4_combout\,
	datad => \inst3|inst1|altsyncram_component|auto_generated|q_a\(4),
	combout => \inst3|inst|Selector5~2_combout\);

-- Location: LCCOMB_X24_Y26_N6
\inst3|inst|Selector5~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector5~3_combout\ = (!\inst3|inst|Selector5~2_combout\ & (((!\inst3|inst|LessThan1~0_combout\) # (!\inst3|inst|Equal0~0_combout\)) # (!\inst3|inst|state.Print_String~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.Print_String~regout\,
	datab => \inst3|inst|Equal0~0_combout\,
	datac => \inst3|inst|Selector5~2_combout\,
	datad => \inst3|inst|LessThan1~0_combout\,
	combout => \inst3|inst|Selector5~3_combout\);

-- Location: LCFF_X24_Y26_N7
\inst3|inst|DATA_BUS_VALUE[4]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector5~3_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	ena => \inst3|inst|LCD_RS~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|DATA_BUS_VALUE\(4));

-- Location: LCCOMB_X24_Y26_N26
\inst3|inst|Selector6~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector6~0_combout\ = ((!\inst3|inst|DATA_BUS_VALUE\(3) & ((\inst3|inst|state.HOLD~regout\) # (\inst3|inst|state.DROP_LCD_E~regout\)))) # (!\inst3|inst|state.RESET1~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.RESET1~regout\,
	datab => \inst3|inst|DATA_BUS_VALUE\(3),
	datac => \inst3|inst|state.HOLD~regout\,
	datad => \inst3|inst|state.DROP_LCD_E~regout\,
	combout => \inst3|inst|Selector6~0_combout\);

-- Location: LCCOMB_X23_Y26_N20
\inst3|inst|Selector18~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector18~0_combout\ = (\inst3|inst|state.RESET1~regout\ & ((\inst3|inst|next_command.RESET2~regout\) # ((!\inst3|inst|state.HOLD~regout\ & !\inst3|inst|state.DROP_LCD_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.RESET1~regout\,
	datab => \inst3|inst|state.HOLD~regout\,
	datac => \inst3|inst|next_command.RESET2~regout\,
	datad => \inst3|inst|state.DROP_LCD_E~regout\,
	combout => \inst3|inst|Selector18~0_combout\);

-- Location: LCFF_X23_Y26_N21
\inst3|inst|next_command.RESET2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector18~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|next_command.RESET2~regout\);

-- Location: LCCOMB_X23_Y26_N30
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

-- Location: LCFF_X23_Y26_N31
\inst3|inst|state.RESET2\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|state~37_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.RESET2~regout\);

-- Location: LCCOMB_X23_Y26_N24
\inst3|inst|Selector19~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector19~0_combout\ = (\inst3|inst|state.RESET2~regout\) # ((\inst3|inst|next_command.RESET3~regout\ & ((\inst3|inst|state.HOLD~regout\) # (\inst3|inst|state.DROP_LCD_E~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.HOLD~regout\,
	datab => \inst3|inst|state.RESET2~regout\,
	datac => \inst3|inst|next_command.RESET3~regout\,
	datad => \inst3|inst|state.DROP_LCD_E~regout\,
	combout => \inst3|inst|Selector19~0_combout\);

-- Location: LCFF_X23_Y26_N25
\inst3|inst|next_command.RESET3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector19~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|next_command.RESET3~regout\);

-- Location: LCCOMB_X23_Y26_N26
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

-- Location: LCFF_X23_Y26_N27
\inst3|inst|state.RESET3\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|state~35_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|state.RESET3~regout\);

-- Location: LCCOMB_X25_Y26_N20
\inst3|inst|Next_Char[0]~8\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Next_Char[0]~8_combout\ = (\inst3|inst|Equal0~0_combout\ & ((\inst3|inst|Next_Char[0]~7_combout\) # ((!\inst3|inst|Next_Char[3]~1_combout\)))) # (!\inst3|inst|Equal0~0_combout\ & (((\inst3|inst1|altsyncram_component|auto_generated|q_a\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Next_Char[0]~7_combout\,
	datab => \inst3|inst1|altsyncram_component|auto_generated|q_a\(0),
	datac => \inst3|inst|Next_Char[3]~1_combout\,
	datad => \inst3|inst|Equal0~0_combout\,
	combout => \inst3|inst|Next_Char[0]~8_combout\);

-- Location: LCCOMB_X25_Y26_N26
\inst3|inst|Add1~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Add1~0_combout\ = \inst3|inst|Next_Char[3]~6_combout\ $ (((\inst3|inst|Next_Char[2]~2_combout\) # ((\inst3|inst|Next_Char[0]~8_combout\) # (\inst3|inst|Next_Char[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Next_Char[2]~2_combout\,
	datab => \inst3|inst|Next_Char[3]~6_combout\,
	datac => \inst3|inst|Next_Char[0]~8_combout\,
	datad => \inst3|inst|Next_Char[1]~4_combout\,
	combout => \inst3|inst|Add1~0_combout\);

-- Location: LCCOMB_X25_Y26_N28
\inst3|inst|Selector6~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector6~2_combout\ = (\inst3|inst|Equal0~0_combout\ & (\inst3|inst|Next_Char[3]~6_combout\ & ((\inst3|inst|Next_Char[2]~2_combout\) # (\inst3|inst|Next_Char[1]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Equal0~0_combout\,
	datab => \inst3|inst|Next_Char[3]~6_combout\,
	datac => \inst3|inst|Next_Char[2]~2_combout\,
	datad => \inst3|inst|Next_Char[1]~4_combout\,
	combout => \inst3|inst|Selector6~2_combout\);

-- Location: LCCOMB_X25_Y26_N18
\inst3|inst|Selector6~3\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector6~3_combout\ = (\inst3|inst|state.Print_String~regout\ & ((\inst3|inst|Selector6~2_combout\ & (\inst3|inst|Add1~0_combout\)) # (!\inst3|inst|Selector6~2_combout\ & ((\inst3|inst|Next_Char[3]~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.Print_String~regout\,
	datab => \inst3|inst|Add1~0_combout\,
	datac => \inst3|inst|Next_Char[3]~6_combout\,
	datad => \inst3|inst|Selector6~2_combout\,
	combout => \inst3|inst|Selector6~3_combout\);

-- Location: LCCOMB_X25_Y26_N16
\inst3|inst|Selector6~4\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector6~4_combout\ = (!\inst3|inst|Selector6~1_combout\ & (!\inst3|inst|Selector6~0_combout\ & (!\inst3|inst|state.RESET3~regout\ & !\inst3|inst|Selector6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Selector6~1_combout\,
	datab => \inst3|inst|Selector6~0_combout\,
	datac => \inst3|inst|state.RESET3~regout\,
	datad => \inst3|inst|Selector6~3_combout\,
	combout => \inst3|inst|Selector6~4_combout\);

-- Location: LCFF_X25_Y26_N17
\inst3|inst|DATA_BUS_VALUE[3]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector6~4_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|DATA_BUS_VALUE\(3));

-- Location: LCCOMB_X24_Y26_N2
\inst3|inst|Selector7~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector7~0_combout\ = (\inst3|inst|state.MODE_SET~regout\) # ((\inst3|inst|state.DISPLAY_ON~regout\) # ((!\inst3|inst|LCD_RS~0_combout\ & \inst3|inst|DATA_BUS_VALUE\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.MODE_SET~regout\,
	datab => \inst3|inst|LCD_RS~0_combout\,
	datac => \inst3|inst|DATA_BUS_VALUE\(2),
	datad => \inst3|inst|state.DISPLAY_ON~regout\,
	combout => \inst3|inst|Selector7~0_combout\);

-- Location: LCCOMB_X25_Y26_N4
\inst3|inst|Selector7~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector7~1_combout\ = (\inst3|inst|Next_Char[1]~4_combout\) # ((\inst3|inst|Next_Char[0]~8_combout\) # (!\inst3|inst|Selector6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Next_Char[1]~4_combout\,
	datac => \inst3|inst|Next_Char[0]~8_combout\,
	datad => \inst3|inst|Selector6~2_combout\,
	combout => \inst3|inst|Selector7~1_combout\);

-- Location: LCCOMB_X25_Y26_N2
\inst3|inst|Selector7~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector7~2_combout\ = (\inst3|inst|Selector7~0_combout\) # ((\inst3|inst|state.Print_String~regout\ & (\inst3|inst|Selector7~1_combout\ & \inst3|inst|Next_Char[2]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.Print_String~regout\,
	datab => \inst3|inst|Selector7~0_combout\,
	datac => \inst3|inst|Selector7~1_combout\,
	datad => \inst3|inst|Next_Char[2]~2_combout\,
	combout => \inst3|inst|Selector7~2_combout\);

-- Location: LCFF_X25_Y26_N3
\inst3|inst|DATA_BUS_VALUE[2]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector7~2_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|DATA_BUS_VALUE\(2));

-- Location: LCCOMB_X25_Y26_N22
\inst3|inst|Selector8~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector8~0_combout\ = (\inst3|inst|state.Print_String~regout\ & (\inst3|inst|Next_Char[1]~4_combout\ $ (((!\inst3|inst|Next_Char[0]~8_combout\ & \inst3|inst|Selector6~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Next_Char[1]~4_combout\,
	datab => \inst3|inst|state.Print_String~regout\,
	datac => \inst3|inst|Next_Char[0]~8_combout\,
	datad => \inst3|inst|Selector6~2_combout\,
	combout => \inst3|inst|Selector8~0_combout\);

-- Location: LCCOMB_X25_Y26_N8
\inst3|inst|Selector8~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector8~1_combout\ = (\inst3|inst|state.MODE_SET~regout\) # ((\inst3|inst|Selector8~0_combout\) # ((!\inst3|inst|LCD_RS~0_combout\ & \inst3|inst|DATA_BUS_VALUE\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|state.MODE_SET~regout\,
	datab => \inst3|inst|LCD_RS~0_combout\,
	datac => \inst3|inst|DATA_BUS_VALUE\(1),
	datad => \inst3|inst|Selector8~0_combout\,
	combout => \inst3|inst|Selector8~1_combout\);

-- Location: LCFF_X25_Y26_N9
\inst3|inst|DATA_BUS_VALUE[1]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector8~1_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|DATA_BUS_VALUE\(1));

-- Location: LCCOMB_X24_Y26_N14
\inst3|inst|Selector9~1\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector9~1_combout\ = (\inst3|inst|Selector9~0_combout\) # ((\inst3|inst|state.Print_String~regout\ & (\inst3|inst1|altsyncram_component|auto_generated|q_a\(0) & !\inst3|inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Selector9~0_combout\,
	datab => \inst3|inst|state.Print_String~regout\,
	datac => \inst3|inst1|altsyncram_component|auto_generated|q_a\(0),
	datad => \inst3|inst|Equal0~0_combout\,
	combout => \inst3|inst|Selector9~1_combout\);

-- Location: LCCOMB_X24_Y26_N16
\inst3|inst|Selector9~2\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|Selector9~2_combout\ = (\inst3|inst|Selector9~1_combout\) # ((\inst3|inst|Selector3~2_combout\ & (\inst3|inst|Next_Char[0]~8_combout\ $ (!\inst3|inst|LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|inst|Next_Char[0]~8_combout\,
	datab => \inst3|inst|Selector3~2_combout\,
	datac => \inst3|inst|Selector9~1_combout\,
	datad => \inst3|inst|LessThan1~0_combout\,
	combout => \inst3|inst|Selector9~2_combout\);

-- Location: LCFF_X24_Y26_N17
\inst3|inst|DATA_BUS_VALUE[0]\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector9~2_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|DATA_BUS_VALUE\(0));

-- Location: LCCOMB_X25_Y25_N20
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

-- Location: LCFF_X25_Y25_N21
\inst3|inst|LCD_RS\ : cycloneii_lcell_ff
PORT MAP (
	clk => \inst3|inst|CLK_400HZ~clkctrl_outclk\,
	datain => \inst3|inst|Selector1~0_combout\,
	aclr => \ALT_INV_reset~~clkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \inst3|inst|LCD_RS~regout\);

-- Location: LCCOMB_X23_Y26_N4
\inst3|inst|LCD_E~0\ : cycloneii_lcell_comb
-- Equation(s):
-- \inst3|inst|LCD_E~0_combout\ = (\inst3|inst|state.HOLD~regout\ & (\inst3|inst|LCD_E~regout\)) # (!\inst3|inst|state.HOLD~regout\ & ((\inst3|inst|state.DROP_LCD_E~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|inst|state.HOLD~regout\,
	datac => \inst3|inst|LCD_E~regout\,
	datad => \inst3|inst|state.DROP_LCD_E~regout\,
	combout => \inst3|inst|LCD_E~0_combout\);

-- Location: LCFF_X23_Y26_N5
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
	datain => \inst|BS|ALT_INV_state.Waiting~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Complete);

-- Location: PIN_G12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst|RAM|altsyncram_component|auto_generated|q_a\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(7));

-- Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst|RAM|altsyncram_component|auto_generated|q_a\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(6));

-- Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst|RAM|altsyncram_component|auto_generated|q_a\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(5));

-- Location: PIN_J11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst|RAM|altsyncram_component|auto_generated|q_a\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(4));

-- Location: PIN_J14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst|RAM|altsyncram_component|auto_generated|q_a\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(3));

-- Location: PIN_J10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst|RAM|altsyncram_component|auto_generated|q_a\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(2));

-- Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst|RAM|altsyncram_component|auto_generated|q_a\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(1));

-- Location: PIN_J13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 24mA
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
	datain => \inst|RAM|altsyncram_component|auto_generated|q_a\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	devoe => ww_devoe,
	oe => VCC,
	padio => ww_Data(0));
END structure;


