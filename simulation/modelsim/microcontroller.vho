-- Copyright (C) 2022  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.0 Build 915 10/25/2022 SC Lite Edition"

-- DATE "04/06/2023 21:59:00"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	uart IS
    PORT (
	data_in : IN std_logic_vector(31 DOWNTO 0);
	tx_start : IN std_logic;
	clk : IN std_logic;
	uart_rx_line : IN std_logic;
	uart_tx_line : OUT std_logic;
	tx_busy : OUT std_logic;
	rx_busy : OUT std_logic;
	tx_done : OUT std_logic;
	rx_done : OUT std_logic;
	data_out : OUT std_logic_vector(7 DOWNTO 0);
	data_out_32 : OUT std_logic_vector(31 DOWNTO 0);
	rx_mode_32 : IN std_logic
	);
END uart;

-- Design Ports Information
-- uart_tx_line	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_busy	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_busy	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_done	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_done	=>  Location: PIN_N22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[0]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[1]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[2]	=>  Location: PIN_Y20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[3]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[4]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[5]	=>  Location: PIN_W19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[6]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out[7]	=>  Location: PIN_V20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_32[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_32[1]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_32[2]	=>  Location: PIN_P14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_32[3]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_32[4]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_32[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_32[6]	=>  Location: PIN_U20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_32[7]	=>  Location: PIN_V22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_32[8]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_32[9]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_32[10]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_32[11]	=>  Location: PIN_R20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_32[12]	=>  Location: PIN_H21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_32[13]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_32[14]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_32[15]	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_32[16]	=>  Location: PIN_U22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_32[17]	=>  Location: PIN_T20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_32[18]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_32[19]	=>  Location: PIN_T19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_32[20]	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_32[21]	=>  Location: PIN_R18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_32[22]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_32[23]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_32[24]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_32[25]	=>  Location: PIN_Y21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_32[26]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_32[27]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_32[28]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_32[29]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_32[30]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_out_32[31]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[20]	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[21]	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[19]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[22]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[13]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[12]	=>  Location: PIN_U15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[11]	=>  Location: PIN_AB19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[14]	=>  Location: PIN_AB20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[5]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[4]	=>  Location: PIN_V15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[3]	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[6]	=>  Location: PIN_AB15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[28]	=>  Location: PIN_Y18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[29]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[27]	=>  Location: PIN_Y14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[30]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[23]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[15]	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[7]	=>  Location: PIN_V13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[31]	=>  Location: PIN_P12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[8]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[16]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[0]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[24]	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[10]	=>  Location: PIN_AA13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[18]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[2]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[26]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[17]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[9]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[1]	=>  Location: PIN_W16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_in[25]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rx_mode_32	=>  Location: PIN_T21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- uart_rx_line	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- tx_start	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF uart IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_data_in : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_tx_start : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_uart_rx_line : std_logic;
SIGNAL ww_uart_tx_line : std_logic;
SIGNAL ww_tx_busy : std_logic;
SIGNAL ww_rx_busy : std_logic;
SIGNAL ww_tx_done : std_logic;
SIGNAL ww_rx_done : std_logic;
SIGNAL ww_data_out : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_data_out_32 : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_rx_mode_32 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \uart_tx_line~output_o\ : std_logic;
SIGNAL \tx_busy~output_o\ : std_logic;
SIGNAL \rx_busy~output_o\ : std_logic;
SIGNAL \tx_done~output_o\ : std_logic;
SIGNAL \rx_done~output_o\ : std_logic;
SIGNAL \data_out[0]~output_o\ : std_logic;
SIGNAL \data_out[1]~output_o\ : std_logic;
SIGNAL \data_out[2]~output_o\ : std_logic;
SIGNAL \data_out[3]~output_o\ : std_logic;
SIGNAL \data_out[4]~output_o\ : std_logic;
SIGNAL \data_out[5]~output_o\ : std_logic;
SIGNAL \data_out[6]~output_o\ : std_logic;
SIGNAL \data_out[7]~output_o\ : std_logic;
SIGNAL \data_out_32[0]~output_o\ : std_logic;
SIGNAL \data_out_32[1]~output_o\ : std_logic;
SIGNAL \data_out_32[2]~output_o\ : std_logic;
SIGNAL \data_out_32[3]~output_o\ : std_logic;
SIGNAL \data_out_32[4]~output_o\ : std_logic;
SIGNAL \data_out_32[5]~output_o\ : std_logic;
SIGNAL \data_out_32[6]~output_o\ : std_logic;
SIGNAL \data_out_32[7]~output_o\ : std_logic;
SIGNAL \data_out_32[8]~output_o\ : std_logic;
SIGNAL \data_out_32[9]~output_o\ : std_logic;
SIGNAL \data_out_32[10]~output_o\ : std_logic;
SIGNAL \data_out_32[11]~output_o\ : std_logic;
SIGNAL \data_out_32[12]~output_o\ : std_logic;
SIGNAL \data_out_32[13]~output_o\ : std_logic;
SIGNAL \data_out_32[14]~output_o\ : std_logic;
SIGNAL \data_out_32[15]~output_o\ : std_logic;
SIGNAL \data_out_32[16]~output_o\ : std_logic;
SIGNAL \data_out_32[17]~output_o\ : std_logic;
SIGNAL \data_out_32[18]~output_o\ : std_logic;
SIGNAL \data_out_32[19]~output_o\ : std_logic;
SIGNAL \data_out_32[20]~output_o\ : std_logic;
SIGNAL \data_out_32[21]~output_o\ : std_logic;
SIGNAL \data_out_32[22]~output_o\ : std_logic;
SIGNAL \data_out_32[23]~output_o\ : std_logic;
SIGNAL \data_out_32[24]~output_o\ : std_logic;
SIGNAL \data_out_32[25]~output_o\ : std_logic;
SIGNAL \data_out_32[26]~output_o\ : std_logic;
SIGNAL \data_out_32[27]~output_o\ : std_logic;
SIGNAL \data_out_32[28]~output_o\ : std_logic;
SIGNAL \data_out_32[29]~output_o\ : std_logic;
SIGNAL \data_out_32[30]~output_o\ : std_logic;
SIGNAL \data_out_32[31]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \tx_u|index~1_combout\ : std_logic;
SIGNAL \tx_u|count[0]~32_combout\ : std_logic;
SIGNAL \tx_u|LessThan0~0_combout\ : std_logic;
SIGNAL \tx_u|count[18]~69\ : std_logic;
SIGNAL \tx_u|count[19]~70_combout\ : std_logic;
SIGNAL \tx_start~input_o\ : std_logic;
SIGNAL \tx_u|LessThan1~0_combout\ : std_logic;
SIGNAL \tx_u|word~2_combout\ : std_logic;
SIGNAL \tx_u|word[2]~1_combout\ : std_logic;
SIGNAL \tx_u|word~0_combout\ : std_logic;
SIGNAL \tx_u|tx_flag~1_combout\ : std_logic;
SIGNAL \tx_u|tx_flag~2_combout\ : std_logic;
SIGNAL \tx_u|tx_flag~q\ : std_logic;
SIGNAL \tx_u|count[19]~71\ : std_logic;
SIGNAL \tx_u|count[20]~72_combout\ : std_logic;
SIGNAL \tx_u|count[20]~73\ : std_logic;
SIGNAL \tx_u|count[21]~74_combout\ : std_logic;
SIGNAL \tx_u|count[21]~75\ : std_logic;
SIGNAL \tx_u|count[22]~76_combout\ : std_logic;
SIGNAL \tx_u|count[22]~77\ : std_logic;
SIGNAL \tx_u|count[23]~78_combout\ : std_logic;
SIGNAL \tx_u|count[23]~79\ : std_logic;
SIGNAL \tx_u|count[24]~80_combout\ : std_logic;
SIGNAL \tx_u|count[24]~81\ : std_logic;
SIGNAL \tx_u|count[25]~82_combout\ : std_logic;
SIGNAL \tx_u|count[25]~83\ : std_logic;
SIGNAL \tx_u|count[26]~84_combout\ : std_logic;
SIGNAL \tx_u|count[26]~85\ : std_logic;
SIGNAL \tx_u|count[27]~86_combout\ : std_logic;
SIGNAL \tx_u|count[27]~87\ : std_logic;
SIGNAL \tx_u|count[28]~88_combout\ : std_logic;
SIGNAL \tx_u|count[28]~89\ : std_logic;
SIGNAL \tx_u|count[29]~90_combout\ : std_logic;
SIGNAL \tx_u|count[29]~91\ : std_logic;
SIGNAL \tx_u|count[30]~92_combout\ : std_logic;
SIGNAL \tx_u|count[30]~93\ : std_logic;
SIGNAL \tx_u|count[31]~94_combout\ : std_logic;
SIGNAL \tx_u|Equal3~5_combout\ : std_logic;
SIGNAL \tx_u|Equal3~6_combout\ : std_logic;
SIGNAL \tx_u|Equal3~7_combout\ : std_logic;
SIGNAL \tx_u|Equal3~8_combout\ : std_logic;
SIGNAL \tx_u|LessThan0~1_combout\ : std_logic;
SIGNAL \tx_u|count[0]~33\ : std_logic;
SIGNAL \tx_u|count[1]~34_combout\ : std_logic;
SIGNAL \tx_u|count[1]~35\ : std_logic;
SIGNAL \tx_u|count[2]~36_combout\ : std_logic;
SIGNAL \tx_u|count[2]~37\ : std_logic;
SIGNAL \tx_u|count[3]~38_combout\ : std_logic;
SIGNAL \tx_u|count[3]~39\ : std_logic;
SIGNAL \tx_u|count[4]~40_combout\ : std_logic;
SIGNAL \tx_u|count[4]~41\ : std_logic;
SIGNAL \tx_u|count[5]~42_combout\ : std_logic;
SIGNAL \tx_u|count[5]~43\ : std_logic;
SIGNAL \tx_u|count[6]~44_combout\ : std_logic;
SIGNAL \tx_u|count[6]~45\ : std_logic;
SIGNAL \tx_u|count[7]~46_combout\ : std_logic;
SIGNAL \tx_u|count[7]~47\ : std_logic;
SIGNAL \tx_u|count[8]~48_combout\ : std_logic;
SIGNAL \tx_u|count[8]~49\ : std_logic;
SIGNAL \tx_u|count[9]~50_combout\ : std_logic;
SIGNAL \tx_u|count[9]~51\ : std_logic;
SIGNAL \tx_u|count[10]~52_combout\ : std_logic;
SIGNAL \tx_u|count[10]~53\ : std_logic;
SIGNAL \tx_u|count[11]~54_combout\ : std_logic;
SIGNAL \tx_u|count[11]~55\ : std_logic;
SIGNAL \tx_u|count[12]~56_combout\ : std_logic;
SIGNAL \tx_u|count[12]~57\ : std_logic;
SIGNAL \tx_u|count[13]~58_combout\ : std_logic;
SIGNAL \tx_u|count[13]~59\ : std_logic;
SIGNAL \tx_u|count[14]~60_combout\ : std_logic;
SIGNAL \tx_u|count[14]~61\ : std_logic;
SIGNAL \tx_u|count[15]~62_combout\ : std_logic;
SIGNAL \tx_u|count[15]~63\ : std_logic;
SIGNAL \tx_u|count[16]~64_combout\ : std_logic;
SIGNAL \tx_u|count[16]~65\ : std_logic;
SIGNAL \tx_u|count[17]~66_combout\ : std_logic;
SIGNAL \tx_u|count[17]~67\ : std_logic;
SIGNAL \tx_u|count[18]~68_combout\ : std_logic;
SIGNAL \tx_u|Equal3~3_combout\ : std_logic;
SIGNAL \tx_u|Equal3~0_combout\ : std_logic;
SIGNAL \tx_u|Equal3~1_combout\ : std_logic;
SIGNAL \tx_u|Equal3~2_combout\ : std_logic;
SIGNAL \tx_u|Equal3~4_combout\ : std_logic;
SIGNAL \tx_u|Equal3~9_combout\ : std_logic;
SIGNAL \tx_u|tx_done~0_combout\ : std_logic;
SIGNAL \tx_u|tx_done~1_combout\ : std_logic;
SIGNAL \tx_u|index~2_combout\ : std_logic;
SIGNAL \tx_u|index~0_combout\ : std_logic;
SIGNAL \tx_u|index~3_combout\ : std_logic;
SIGNAL \data_in[22]~input_o\ : std_logic;
SIGNAL \data_in[20]~input_o\ : std_logic;
SIGNAL \data_in[19]~input_o\ : std_logic;
SIGNAL \data_in[21]~input_o\ : std_logic;
SIGNAL \tx_u|Mux0~0_combout\ : std_logic;
SIGNAL \tx_u|Mux0~1_combout\ : std_logic;
SIGNAL \data_in[30]~input_o\ : std_logic;
SIGNAL \data_in[29]~input_o\ : std_logic;
SIGNAL \data_in[27]~input_o\ : std_logic;
SIGNAL \tx_u|Mux0~7_combout\ : std_logic;
SIGNAL \data_in[28]~input_o\ : std_logic;
SIGNAL \tx_u|Mux0~8_combout\ : std_logic;
SIGNAL \data_in[5]~input_o\ : std_logic;
SIGNAL \data_in[3]~input_o\ : std_logic;
SIGNAL \data_in[4]~input_o\ : std_logic;
SIGNAL \tx_u|Mux0~4_combout\ : std_logic;
SIGNAL \data_in[6]~input_o\ : std_logic;
SIGNAL \tx_u|Mux0~5_combout\ : std_logic;
SIGNAL \data_in[13]~input_o\ : std_logic;
SIGNAL \data_in[14]~input_o\ : std_logic;
SIGNAL \data_in[12]~input_o\ : std_logic;
SIGNAL \data_in[11]~input_o\ : std_logic;
SIGNAL \tx_u|Mux0~2_combout\ : std_logic;
SIGNAL \tx_u|Mux0~3_combout\ : std_logic;
SIGNAL \tx_u|Mux0~6_combout\ : std_logic;
SIGNAL \tx_u|Mux0~9_combout\ : std_logic;
SIGNAL \data_in[10]~input_o\ : std_logic;
SIGNAL \data_in[26]~input_o\ : std_logic;
SIGNAL \data_in[18]~input_o\ : std_logic;
SIGNAL \data_in[2]~input_o\ : std_logic;
SIGNAL \tx_u|data_full~4_combout\ : std_logic;
SIGNAL \tx_u|data_full~5_combout\ : std_logic;
SIGNAL \data_in[25]~input_o\ : std_logic;
SIGNAL \data_in[17]~input_o\ : std_logic;
SIGNAL \data_in[9]~input_o\ : std_logic;
SIGNAL \data_in[1]~input_o\ : std_logic;
SIGNAL \tx_u|data_full~6_combout\ : std_logic;
SIGNAL \tx_u|data_full~7_combout\ : std_logic;
SIGNAL \tx_u|tx~1_combout\ : std_logic;
SIGNAL \data_in[8]~input_o\ : std_logic;
SIGNAL \data_in[24]~input_o\ : std_logic;
SIGNAL \data_in[0]~input_o\ : std_logic;
SIGNAL \data_in[16]~input_o\ : std_logic;
SIGNAL \tx_u|data_full~2_combout\ : std_logic;
SIGNAL \tx_u|data_full~3_combout\ : std_logic;
SIGNAL \data_in[31]~input_o\ : std_logic;
SIGNAL \data_in[23]~input_o\ : std_logic;
SIGNAL \data_in[15]~input_o\ : std_logic;
SIGNAL \data_in[7]~input_o\ : std_logic;
SIGNAL \tx_u|data_full~0_combout\ : std_logic;
SIGNAL \tx_u|data_full~1_combout\ : std_logic;
SIGNAL \tx_u|tx~0_combout\ : std_logic;
SIGNAL \tx_u|tx~2_combout\ : std_logic;
SIGNAL \tx_u|tx~3_combout\ : std_logic;
SIGNAL \tx_u|Equal3~10_combout\ : std_logic;
SIGNAL \tx_u|tx~4_combout\ : std_logic;
SIGNAL \tx_u|tx~q\ : std_logic;
SIGNAL \tx_u|tx_flag~0_combout\ : std_logic;
SIGNAL \tx_u|tx_busy~0_combout\ : std_logic;
SIGNAL \tx_u|tx_busy~q\ : std_logic;
SIGNAL \rx_u|count[0]~32_combout\ : std_logic;
SIGNAL \uart_rx_line~input_o\ : std_logic;
SIGNAL \rx_u|index~2_combout\ : std_logic;
SIGNAL \rx_u|rx_flag~0_combout\ : std_logic;
SIGNAL \rx_u|rx_flag~q\ : std_logic;
SIGNAL \rx_u|Equal0~9_combout\ : std_logic;
SIGNAL \rx_u|count[29]~92\ : std_logic;
SIGNAL \rx_u|count[30]~93_combout\ : std_logic;
SIGNAL \rx_u|count[30]~94\ : std_logic;
SIGNAL \rx_u|count[31]~95_combout\ : std_logic;
SIGNAL \rx_u|Equal0~10_combout\ : std_logic;
SIGNAL \rx_u|Equal0~3_combout\ : std_logic;
SIGNAL \rx_u|Equal0~2_combout\ : std_logic;
SIGNAL \rx_u|Equal0~1_combout\ : std_logic;
SIGNAL \rx_u|Equal0~0_combout\ : std_logic;
SIGNAL \rx_u|Equal0~4_combout\ : std_logic;
SIGNAL \rx_u|data_out_32[4]~0_combout\ : std_logic;
SIGNAL \rx_u|index~0_combout\ : std_logic;
SIGNAL \rx_u|index~1_combout\ : std_logic;
SIGNAL \rx_u|index~3_combout\ : std_logic;
SIGNAL \rx_u|Decoder0~1_combout\ : std_logic;
SIGNAL \rx_u|data_full~2_combout\ : std_logic;
SIGNAL \rx_u|Decoder0~0_combout\ : std_logic;
SIGNAL \rx_u|data_full~0_combout\ : std_logic;
SIGNAL \rx_u|process_0~0_combout\ : std_logic;
SIGNAL \rx_u|Equal0~6_combout\ : std_logic;
SIGNAL \rx_u|Equal0~5_combout\ : std_logic;
SIGNAL \rx_u|Equal0~11_combout\ : std_logic;
SIGNAL \rx_u|LessThan0~0_combout\ : std_logic;
SIGNAL \rx_u|count[20]~42_combout\ : std_logic;
SIGNAL \rx_u|count[0]~33\ : std_logic;
SIGNAL \rx_u|count[1]~34_combout\ : std_logic;
SIGNAL \rx_u|count[1]~35\ : std_logic;
SIGNAL \rx_u|count[2]~36_combout\ : std_logic;
SIGNAL \rx_u|count[2]~37\ : std_logic;
SIGNAL \rx_u|count[3]~38_combout\ : std_logic;
SIGNAL \rx_u|count[3]~39\ : std_logic;
SIGNAL \rx_u|count[4]~40_combout\ : std_logic;
SIGNAL \rx_u|count[4]~41\ : std_logic;
SIGNAL \rx_u|count[5]~43_combout\ : std_logic;
SIGNAL \rx_u|count[5]~44\ : std_logic;
SIGNAL \rx_u|count[6]~45_combout\ : std_logic;
SIGNAL \rx_u|count[6]~46\ : std_logic;
SIGNAL \rx_u|count[7]~47_combout\ : std_logic;
SIGNAL \rx_u|count[7]~48\ : std_logic;
SIGNAL \rx_u|count[8]~49_combout\ : std_logic;
SIGNAL \rx_u|count[8]~50\ : std_logic;
SIGNAL \rx_u|count[9]~51_combout\ : std_logic;
SIGNAL \rx_u|count[9]~52\ : std_logic;
SIGNAL \rx_u|count[10]~53_combout\ : std_logic;
SIGNAL \rx_u|count[10]~54\ : std_logic;
SIGNAL \rx_u|count[11]~55_combout\ : std_logic;
SIGNAL \rx_u|count[11]~56\ : std_logic;
SIGNAL \rx_u|count[12]~57_combout\ : std_logic;
SIGNAL \rx_u|count[12]~58\ : std_logic;
SIGNAL \rx_u|count[13]~59_combout\ : std_logic;
SIGNAL \rx_u|count[13]~60\ : std_logic;
SIGNAL \rx_u|count[14]~61_combout\ : std_logic;
SIGNAL \rx_u|count[14]~62\ : std_logic;
SIGNAL \rx_u|count[15]~63_combout\ : std_logic;
SIGNAL \rx_u|count[15]~64\ : std_logic;
SIGNAL \rx_u|count[16]~65_combout\ : std_logic;
SIGNAL \rx_u|count[16]~66\ : std_logic;
SIGNAL \rx_u|count[17]~67_combout\ : std_logic;
SIGNAL \rx_u|count[17]~68\ : std_logic;
SIGNAL \rx_u|count[18]~69_combout\ : std_logic;
SIGNAL \rx_u|count[18]~70\ : std_logic;
SIGNAL \rx_u|count[19]~71_combout\ : std_logic;
SIGNAL \rx_u|count[19]~72\ : std_logic;
SIGNAL \rx_u|count[20]~73_combout\ : std_logic;
SIGNAL \rx_u|count[20]~74\ : std_logic;
SIGNAL \rx_u|count[21]~75_combout\ : std_logic;
SIGNAL \rx_u|count[21]~76\ : std_logic;
SIGNAL \rx_u|count[22]~77_combout\ : std_logic;
SIGNAL \rx_u|count[22]~78\ : std_logic;
SIGNAL \rx_u|count[23]~79_combout\ : std_logic;
SIGNAL \rx_u|count[23]~80\ : std_logic;
SIGNAL \rx_u|count[24]~81_combout\ : std_logic;
SIGNAL \rx_u|count[24]~82\ : std_logic;
SIGNAL \rx_u|count[25]~83_combout\ : std_logic;
SIGNAL \rx_u|count[25]~84\ : std_logic;
SIGNAL \rx_u|count[26]~85_combout\ : std_logic;
SIGNAL \rx_u|count[26]~86\ : std_logic;
SIGNAL \rx_u|count[27]~87_combout\ : std_logic;
SIGNAL \rx_u|count[27]~88\ : std_logic;
SIGNAL \rx_u|count[28]~89_combout\ : std_logic;
SIGNAL \rx_u|count[28]~90\ : std_logic;
SIGNAL \rx_u|count[29]~91_combout\ : std_logic;
SIGNAL \rx_u|Equal0~7_combout\ : std_logic;
SIGNAL \rx_u|Equal0~8_combout\ : std_logic;
SIGNAL \rx_u|LessThan1~0_combout\ : std_logic;
SIGNAL \rx_u|rx_busy~0_combout\ : std_logic;
SIGNAL \rx_u|rx_busy~feeder_combout\ : std_logic;
SIGNAL \rx_u|rx_busy~q\ : std_logic;
SIGNAL \tx_u|tx_done~q\ : std_logic;
SIGNAL \rx_mode_32~input_o\ : std_logic;
SIGNAL \rx_u|Decoder1~0_combout\ : std_logic;
SIGNAL \rx_u|word[0]~0_combout\ : std_logic;
SIGNAL \rx_u|word[1]~1_combout\ : std_logic;
SIGNAL \rx_u|rx_done~0_combout\ : std_logic;
SIGNAL \rx_u|rx_done~1_combout\ : std_logic;
SIGNAL \rx_u|rx_done~q\ : std_logic;
SIGNAL \rx_u|Decoder0~2_combout\ : std_logic;
SIGNAL \rx_u|data_full~1_combout\ : std_logic;
SIGNAL \rx_u|data_out~0_combout\ : std_logic;
SIGNAL \rx_u|data_out[0]~1_combout\ : std_logic;
SIGNAL \rx_u|Decoder0~3_combout\ : std_logic;
SIGNAL \rx_u|data_full~3_combout\ : std_logic;
SIGNAL \rx_u|data_out~2_combout\ : std_logic;
SIGNAL \rx_u|Decoder0~4_combout\ : std_logic;
SIGNAL \rx_u|data_full~4_combout\ : std_logic;
SIGNAL \rx_u|data_out~3_combout\ : std_logic;
SIGNAL \rx_u|Decoder0~5_combout\ : std_logic;
SIGNAL \rx_u|data_full~5_combout\ : std_logic;
SIGNAL \rx_u|data_out~4_combout\ : std_logic;
SIGNAL \rx_u|Decoder0~6_combout\ : std_logic;
SIGNAL \rx_u|data_full~6_combout\ : std_logic;
SIGNAL \rx_u|data_out~5_combout\ : std_logic;
SIGNAL \rx_u|Decoder0~7_combout\ : std_logic;
SIGNAL \rx_u|data_full~7_combout\ : std_logic;
SIGNAL \rx_u|data_out~6_combout\ : std_logic;
SIGNAL \rx_u|Decoder0~8_combout\ : std_logic;
SIGNAL \rx_u|data_full~8_combout\ : std_logic;
SIGNAL \rx_u|data_out~7_combout\ : std_logic;
SIGNAL \rx_u|Decoder0~9_combout\ : std_logic;
SIGNAL \rx_u|data_full~9_combout\ : std_logic;
SIGNAL \rx_u|data_out~8_combout\ : std_logic;
SIGNAL \rx_u|data_out_32[0]~feeder_combout\ : std_logic;
SIGNAL \rx_u|Decoder1~1_combout\ : std_logic;
SIGNAL \rx_u|data_out_32[1]~feeder_combout\ : std_logic;
SIGNAL \rx_u|data_out_32[2]~feeder_combout\ : std_logic;
SIGNAL \rx_u|data_out_32[5]~feeder_combout\ : std_logic;
SIGNAL \rx_u|data_out_32[6]~feeder_combout\ : std_logic;
SIGNAL \rx_u|data_out_32[7]~feeder_combout\ : std_logic;
SIGNAL \rx_u|Decoder1~2_combout\ : std_logic;
SIGNAL \rx_u|data_out_32[9]~feeder_combout\ : std_logic;
SIGNAL \rx_u|data_out_32[10]~feeder_combout\ : std_logic;
SIGNAL \rx_u|data_out_32[11]~feeder_combout\ : std_logic;
SIGNAL \rx_u|data_out_32[12]~feeder_combout\ : std_logic;
SIGNAL \rx_u|data_out_32[13]~feeder_combout\ : std_logic;
SIGNAL \rx_u|data_out_32[14]~feeder_combout\ : std_logic;
SIGNAL \rx_u|data_out_32[15]~feeder_combout\ : std_logic;
SIGNAL \rx_u|data_out_32[16]~feeder_combout\ : std_logic;
SIGNAL \rx_u|Decoder1~3_combout\ : std_logic;
SIGNAL \rx_u|data_out_32[17]~feeder_combout\ : std_logic;
SIGNAL \rx_u|data_out_32[18]~feeder_combout\ : std_logic;
SIGNAL \rx_u|data_out_32[19]~feeder_combout\ : std_logic;
SIGNAL \rx_u|data_out_32[20]~feeder_combout\ : std_logic;
SIGNAL \rx_u|data_out_32[21]~feeder_combout\ : std_logic;
SIGNAL \rx_u|data_out_32[23]~feeder_combout\ : std_logic;
SIGNAL \rx_u|Decoder1~4_combout\ : std_logic;
SIGNAL \rx_u|data_out_32[25]~feeder_combout\ : std_logic;
SIGNAL \rx_u|data_out_32[26]~feeder_combout\ : std_logic;
SIGNAL \rx_u|data_out_32[27]~feeder_combout\ : std_logic;
SIGNAL \rx_u|data_out_32[28]~feeder_combout\ : std_logic;
SIGNAL \rx_u|data_out_32[29]~feeder_combout\ : std_logic;
SIGNAL \rx_u|data_out_32[30]~feeder_combout\ : std_logic;
SIGNAL \rx_u|data_out_32[31]~feeder_combout\ : std_logic;
SIGNAL \tx_u|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \rx_u|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \tx_u|word\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \rx_u|data_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \rx_u|data_out_32\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \rx_u|data_full\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \tx_u|index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rx_u|index\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rx_u|word\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \rx_u|ALT_INV_rx_flag~q\ : std_logic;
SIGNAL \tx_u|ALT_INV_tx_flag~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_data_in <= data_in;
ww_tx_start <= tx_start;
ww_clk <= clk;
ww_uart_rx_line <= uart_rx_line;
uart_tx_line <= ww_uart_tx_line;
tx_busy <= ww_tx_busy;
rx_busy <= ww_rx_busy;
tx_done <= ww_tx_done;
rx_done <= ww_rx_done;
data_out <= ww_data_out;
data_out_32 <= ww_data_out_32;
ww_rx_mode_32 <= rx_mode_32;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\rx_u|ALT_INV_rx_flag~q\ <= NOT \rx_u|rx_flag~q\;
\tx_u|ALT_INV_tx_flag~q\ <= NOT \tx_u|tx_flag~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y48_N20
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X40_Y0_N16
\uart_tx_line~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tx_u|tx~q\,
	devoe => ww_devoe,
	o => \uart_tx_line~output_o\);

-- Location: IOOBUF_X58_Y0_N30
\tx_busy~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tx_u|tx_busy~q\,
	devoe => ww_devoe,
	o => \tx_busy~output_o\);

-- Location: IOOBUF_X78_Y23_N9
\rx_busy~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|rx_busy~q\,
	devoe => ww_devoe,
	o => \rx_busy~output_o\);

-- Location: IOOBUF_X56_Y0_N30
\tx_done~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \tx_u|tx_done~q\,
	devoe => ww_devoe,
	o => \tx_done~output_o\);

-- Location: IOOBUF_X78_Y23_N2
\rx_done~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|rx_done~q\,
	devoe => ww_devoe,
	o => \rx_done~output_o\);

-- Location: IOOBUF_X78_Y29_N16
\data_out[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out\(0),
	devoe => ww_devoe,
	o => \data_out[0]~output_o\);

-- Location: IOOBUF_X78_Y18_N16
\data_out[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out\(1),
	devoe => ww_devoe,
	o => \data_out[1]~output_o\);

-- Location: IOOBUF_X78_Y16_N9
\data_out[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out\(2),
	devoe => ww_devoe,
	o => \data_out[2]~output_o\);

-- Location: IOOBUF_X78_Y17_N9
\data_out[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out\(3),
	devoe => ww_devoe,
	o => \data_out[3]~output_o\);

-- Location: IOOBUF_X78_Y29_N23
\data_out[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out\(4),
	devoe => ww_devoe,
	o => \data_out[4]~output_o\);

-- Location: IOOBUF_X78_Y16_N24
\data_out[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out\(5),
	devoe => ww_devoe,
	o => \data_out[5]~output_o\);

-- Location: IOOBUF_X78_Y30_N2
\data_out[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out\(6),
	devoe => ww_devoe,
	o => \data_out[6]~output_o\);

-- Location: IOOBUF_X78_Y17_N23
\data_out[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out\(7),
	devoe => ww_devoe,
	o => \data_out[7]~output_o\);

-- Location: IOOBUF_X78_Y31_N16
\data_out_32[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out_32\(0),
	devoe => ww_devoe,
	o => \data_out_32[0]~output_o\);

-- Location: IOOBUF_X78_Y18_N23
\data_out_32[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out_32\(1),
	devoe => ww_devoe,
	o => \data_out_32[1]~output_o\);

-- Location: IOOBUF_X78_Y23_N16
\data_out_32[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out_32\(2),
	devoe => ww_devoe,
	o => \data_out_32[2]~output_o\);

-- Location: IOOBUF_X78_Y18_N2
\data_out_32[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out_32\(3),
	devoe => ww_devoe,
	o => \data_out_32[3]~output_o\);

-- Location: IOOBUF_X78_Y30_N23
\data_out_32[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out_32\(4),
	devoe => ww_devoe,
	o => \data_out_32[4]~output_o\);

-- Location: IOOBUF_X78_Y30_N9
\data_out_32[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out_32\(5),
	devoe => ww_devoe,
	o => \data_out_32[5]~output_o\);

-- Location: IOOBUF_X78_Y17_N16
\data_out_32[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out_32\(6),
	devoe => ww_devoe,
	o => \data_out_32[6]~output_o\);

-- Location: IOOBUF_X78_Y17_N2
\data_out_32[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out_32\(7),
	devoe => ww_devoe,
	o => \data_out_32[7]~output_o\);

-- Location: IOOBUF_X78_Y25_N9
\data_out_32[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out_32\(8),
	devoe => ww_devoe,
	o => \data_out_32[8]~output_o\);

-- Location: IOOBUF_X78_Y24_N16
\data_out_32[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out_32\(9),
	devoe => ww_devoe,
	o => \data_out_32[9]~output_o\);

-- Location: IOOBUF_X78_Y25_N23
\data_out_32[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out_32\(10),
	devoe => ww_devoe,
	o => \data_out_32[10]~output_o\);

-- Location: IOOBUF_X78_Y20_N2
\data_out_32[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out_32\(11),
	devoe => ww_devoe,
	o => \data_out_32[11]~output_o\);

-- Location: IOOBUF_X78_Y29_N2
\data_out_32[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out_32\(12),
	devoe => ww_devoe,
	o => \data_out_32[12]~output_o\);

-- Location: IOOBUF_X78_Y21_N23
\data_out_32[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out_32\(13),
	devoe => ww_devoe,
	o => \data_out_32[13]~output_o\);

-- Location: IOOBUF_X78_Y21_N9
\data_out_32[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out_32\(14),
	devoe => ww_devoe,
	o => \data_out_32[14]~output_o\);

-- Location: IOOBUF_X78_Y25_N16
\data_out_32[15]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out_32\(15),
	devoe => ww_devoe,
	o => \data_out_32[15]~output_o\);

-- Location: IOOBUF_X78_Y21_N16
\data_out_32[16]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out_32\(16),
	devoe => ww_devoe,
	o => \data_out_32[16]~output_o\);

-- Location: IOOBUF_X78_Y20_N9
\data_out_32[17]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out_32\(17),
	devoe => ww_devoe,
	o => \data_out_32[17]~output_o\);

-- Location: IOOBUF_X78_Y24_N9
\data_out_32[18]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out_32\(18),
	devoe => ww_devoe,
	o => \data_out_32[18]~output_o\);

-- Location: IOOBUF_X78_Y20_N24
\data_out_32[19]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out_32\(19),
	devoe => ww_devoe,
	o => \data_out_32[19]~output_o\);

-- Location: IOOBUF_X78_Y21_N2
\data_out_32[20]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out_32\(20),
	devoe => ww_devoe,
	o => \data_out_32[20]~output_o\);

-- Location: IOOBUF_X78_Y24_N24
\data_out_32[21]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out_32\(21),
	devoe => ww_devoe,
	o => \data_out_32[21]~output_o\);

-- Location: IOOBUF_X78_Y25_N2
\data_out_32[22]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out_32\(22),
	devoe => ww_devoe,
	o => \data_out_32[22]~output_o\);

-- Location: IOOBUF_X78_Y20_N16
\data_out_32[23]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out_32\(23),
	devoe => ww_devoe,
	o => \data_out_32[23]~output_o\);

-- Location: IOOBUF_X78_Y31_N2
\data_out_32[24]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out_32\(24),
	devoe => ww_devoe,
	o => \data_out_32[24]~output_o\);

-- Location: IOOBUF_X78_Y16_N2
\data_out_32[25]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out_32\(25),
	devoe => ww_devoe,
	o => \data_out_32[25]~output_o\);

-- Location: IOOBUF_X78_Y29_N9
\data_out_32[26]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out_32\(26),
	devoe => ww_devoe,
	o => \data_out_32[26]~output_o\);

-- Location: IOOBUF_X78_Y30_N16
\data_out_32[27]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out_32\(27),
	devoe => ww_devoe,
	o => \data_out_32[27]~output_o\);

-- Location: IOOBUF_X78_Y33_N16
\data_out_32[28]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out_32\(28),
	devoe => ww_devoe,
	o => \data_out_32[28]~output_o\);

-- Location: IOOBUF_X78_Y31_N23
\data_out_32[29]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out_32\(29),
	devoe => ww_devoe,
	o => \data_out_32[29]~output_o\);

-- Location: IOOBUF_X78_Y23_N23
\data_out_32[30]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out_32\(30),
	devoe => ww_devoe,
	o => \data_out_32[30]~output_o\);

-- Location: IOOBUF_X78_Y16_N16
\data_out_32[31]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \rx_u|data_out_32\(31),
	devoe => ww_devoe,
	o => \data_out_32[31]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\clk~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G3
\clk~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X51_Y4_N20
\tx_u|index~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|index~1_combout\ = (!\tx_u|index\(0) & (((!\tx_u|index\(2) & !\tx_u|index\(1))) # (!\tx_u|index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|index\(2),
	datab => \tx_u|index\(1),
	datac => \tx_u|index\(0),
	datad => \tx_u|index\(3),
	combout => \tx_u|index~1_combout\);

-- Location: LCCOMB_X49_Y7_N0
\tx_u|count[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|count[0]~32_combout\ = \tx_u|count\(0) $ (VCC)
-- \tx_u|count[0]~33\ = CARRY(\tx_u|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_u|count\(0),
	datad => VCC,
	combout => \tx_u|count[0]~32_combout\,
	cout => \tx_u|count[0]~33\);

-- Location: LCCOMB_X50_Y7_N0
\tx_u|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|LessThan0~0_combout\ = (\tx_u|count\(3) & ((\tx_u|count\(1)) # (\tx_u|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|count\(1),
	datab => \tx_u|count\(2),
	datad => \tx_u|count\(3),
	combout => \tx_u|LessThan0~0_combout\);

-- Location: LCCOMB_X49_Y6_N4
\tx_u|count[18]~68\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|count[18]~68_combout\ = (\tx_u|count\(18) & (\tx_u|count[17]~67\ $ (GND))) # (!\tx_u|count\(18) & (!\tx_u|count[17]~67\ & VCC))
-- \tx_u|count[18]~69\ = CARRY((\tx_u|count\(18) & !\tx_u|count[17]~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|count\(18),
	datad => VCC,
	cin => \tx_u|count[17]~67\,
	combout => \tx_u|count[18]~68_combout\,
	cout => \tx_u|count[18]~69\);

-- Location: LCCOMB_X49_Y6_N6
\tx_u|count[19]~70\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|count[19]~70_combout\ = (\tx_u|count\(19) & (!\tx_u|count[18]~69\)) # (!\tx_u|count\(19) & ((\tx_u|count[18]~69\) # (GND)))
-- \tx_u|count[19]~71\ = CARRY((!\tx_u|count[18]~69\) # (!\tx_u|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx_u|count\(19),
	datad => VCC,
	cin => \tx_u|count[18]~69\,
	combout => \tx_u|count[19]~70_combout\,
	cout => \tx_u|count[19]~71\);

-- Location: IOIBUF_X51_Y0_N29
\tx_start~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_tx_start,
	o => \tx_start~input_o\);

-- Location: LCCOMB_X51_Y4_N8
\tx_u|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|LessThan1~0_combout\ = (\tx_u|index\(3) & ((\tx_u|index\(2)) # ((\tx_u|index\(1)) # (\tx_u|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|index\(2),
	datab => \tx_u|index\(1),
	datac => \tx_u|index\(3),
	datad => \tx_u|index\(0),
	combout => \tx_u|LessThan1~0_combout\);

-- Location: LCCOMB_X51_Y7_N24
\tx_u|word~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|word~2_combout\ = (\tx_u|LessThan1~0_combout\ & (!\tx_u|word\(0) & \tx_u|tx_done~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_u|LessThan1~0_combout\,
	datac => \tx_u|word\(0),
	datad => \tx_u|tx_done~1_combout\,
	combout => \tx_u|word~2_combout\);

-- Location: LCCOMB_X51_Y7_N6
\tx_u|word[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|word[2]~1_combout\ = (\tx_u|tx_flag~q\ & (((\tx_u|LessThan1~0_combout\ & \tx_u|tx_done~1_combout\)))) # (!\tx_u|tx_flag~q\ & (\tx_start~input_o\ $ (((\tx_u|LessThan1~0_combout\ & \tx_u|tx_done~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|tx_flag~q\,
	datab => \tx_start~input_o\,
	datac => \tx_u|LessThan1~0_combout\,
	datad => \tx_u|tx_done~1_combout\,
	combout => \tx_u|word[2]~1_combout\);

-- Location: FF_X51_Y7_N25
\tx_u|word[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|word~2_combout\,
	ena => \tx_u|word[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|word\(0));

-- Location: LCCOMB_X51_Y7_N22
\tx_u|word~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|word~0_combout\ = (\tx_u|LessThan1~0_combout\ & (\tx_u|tx_done~1_combout\ & (\tx_u|word\(0) $ (\tx_u|word\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|word\(0),
	datab => \tx_u|LessThan1~0_combout\,
	datac => \tx_u|word\(1),
	datad => \tx_u|tx_done~1_combout\,
	combout => \tx_u|word~0_combout\);

-- Location: FF_X51_Y7_N23
\tx_u|word[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|word~0_combout\,
	ena => \tx_u|word[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|word\(1));

-- Location: LCCOMB_X51_Y4_N16
\tx_u|tx_flag~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|tx_flag~1_combout\ = (\tx_u|word\(1) & (\tx_u|word\(0) & (\tx_u|tx_done~1_combout\ & \tx_u|LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|word\(1),
	datab => \tx_u|word\(0),
	datac => \tx_u|tx_done~1_combout\,
	datad => \tx_u|LessThan1~0_combout\,
	combout => \tx_u|tx_flag~1_combout\);

-- Location: LCCOMB_X51_Y4_N26
\tx_u|tx_flag~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|tx_flag~2_combout\ = (!\tx_u|tx_flag~1_combout\ & ((\tx_start~input_o\) # (\tx_u|tx_flag~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_start~input_o\,
	datac => \tx_u|tx_flag~q\,
	datad => \tx_u|tx_flag~1_combout\,
	combout => \tx_u|tx_flag~2_combout\);

-- Location: FF_X51_Y4_N27
\tx_u|tx_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|tx_flag~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|tx_flag~q\);

-- Location: FF_X50_Y7_N15
\tx_u|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tx_u|count[19]~70_combout\,
	sclr => \tx_u|LessThan0~1_combout\,
	sload => VCC,
	ena => \tx_u|tx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|count\(19));

-- Location: LCCOMB_X49_Y6_N8
\tx_u|count[20]~72\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|count[20]~72_combout\ = (\tx_u|count\(20) & (\tx_u|count[19]~71\ $ (GND))) # (!\tx_u|count\(20) & (!\tx_u|count[19]~71\ & VCC))
-- \tx_u|count[20]~73\ = CARRY((\tx_u|count\(20) & !\tx_u|count[19]~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx_u|count\(20),
	datad => VCC,
	cin => \tx_u|count[19]~71\,
	combout => \tx_u|count[20]~72_combout\,
	cout => \tx_u|count[20]~73\);

-- Location: FF_X49_Y6_N9
\tx_u|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|count[20]~72_combout\,
	sclr => \tx_u|LessThan0~1_combout\,
	ena => \tx_u|tx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|count\(20));

-- Location: LCCOMB_X49_Y6_N10
\tx_u|count[21]~74\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|count[21]~74_combout\ = (\tx_u|count\(21) & (!\tx_u|count[20]~73\)) # (!\tx_u|count\(21) & ((\tx_u|count[20]~73\) # (GND)))
-- \tx_u|count[21]~75\ = CARRY((!\tx_u|count[20]~73\) # (!\tx_u|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx_u|count\(21),
	datad => VCC,
	cin => \tx_u|count[20]~73\,
	combout => \tx_u|count[21]~74_combout\,
	cout => \tx_u|count[21]~75\);

-- Location: FF_X50_Y7_N5
\tx_u|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tx_u|count[21]~74_combout\,
	sclr => \tx_u|LessThan0~1_combout\,
	sload => VCC,
	ena => \tx_u|tx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|count\(21));

-- Location: LCCOMB_X49_Y6_N12
\tx_u|count[22]~76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|count[22]~76_combout\ = (\tx_u|count\(22) & (\tx_u|count[21]~75\ $ (GND))) # (!\tx_u|count\(22) & (!\tx_u|count[21]~75\ & VCC))
-- \tx_u|count[22]~77\ = CARRY((\tx_u|count\(22) & !\tx_u|count[21]~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|count\(22),
	datad => VCC,
	cin => \tx_u|count[21]~75\,
	combout => \tx_u|count[22]~76_combout\,
	cout => \tx_u|count[22]~77\);

-- Location: FF_X49_Y6_N13
\tx_u|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|count[22]~76_combout\,
	sclr => \tx_u|LessThan0~1_combout\,
	ena => \tx_u|tx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|count\(22));

-- Location: LCCOMB_X49_Y6_N14
\tx_u|count[23]~78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|count[23]~78_combout\ = (\tx_u|count\(23) & (!\tx_u|count[22]~77\)) # (!\tx_u|count\(23) & ((\tx_u|count[22]~77\) # (GND)))
-- \tx_u|count[23]~79\ = CARRY((!\tx_u|count[22]~77\) # (!\tx_u|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx_u|count\(23),
	datad => VCC,
	cin => \tx_u|count[22]~77\,
	combout => \tx_u|count[23]~78_combout\,
	cout => \tx_u|count[23]~79\);

-- Location: FF_X49_Y6_N15
\tx_u|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|count[23]~78_combout\,
	sclr => \tx_u|LessThan0~1_combout\,
	ena => \tx_u|tx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|count\(23));

-- Location: LCCOMB_X49_Y6_N16
\tx_u|count[24]~80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|count[24]~80_combout\ = (\tx_u|count\(24) & (\tx_u|count[23]~79\ $ (GND))) # (!\tx_u|count\(24) & (!\tx_u|count[23]~79\ & VCC))
-- \tx_u|count[24]~81\ = CARRY((\tx_u|count\(24) & !\tx_u|count[23]~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx_u|count\(24),
	datad => VCC,
	cin => \tx_u|count[23]~79\,
	combout => \tx_u|count[24]~80_combout\,
	cout => \tx_u|count[24]~81\);

-- Location: FF_X49_Y6_N17
\tx_u|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|count[24]~80_combout\,
	sclr => \tx_u|LessThan0~1_combout\,
	ena => \tx_u|tx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|count\(24));

-- Location: LCCOMB_X49_Y6_N18
\tx_u|count[25]~82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|count[25]~82_combout\ = (\tx_u|count\(25) & (!\tx_u|count[24]~81\)) # (!\tx_u|count\(25) & ((\tx_u|count[24]~81\) # (GND)))
-- \tx_u|count[25]~83\ = CARRY((!\tx_u|count[24]~81\) # (!\tx_u|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx_u|count\(25),
	datad => VCC,
	cin => \tx_u|count[24]~81\,
	combout => \tx_u|count[25]~82_combout\,
	cout => \tx_u|count[25]~83\);

-- Location: FF_X49_Y6_N19
\tx_u|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|count[25]~82_combout\,
	sclr => \tx_u|LessThan0~1_combout\,
	ena => \tx_u|tx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|count\(25));

-- Location: LCCOMB_X49_Y6_N20
\tx_u|count[26]~84\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|count[26]~84_combout\ = (\tx_u|count\(26) & (\tx_u|count[25]~83\ $ (GND))) # (!\tx_u|count\(26) & (!\tx_u|count[25]~83\ & VCC))
-- \tx_u|count[26]~85\ = CARRY((\tx_u|count\(26) & !\tx_u|count[25]~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx_u|count\(26),
	datad => VCC,
	cin => \tx_u|count[25]~83\,
	combout => \tx_u|count[26]~84_combout\,
	cout => \tx_u|count[26]~85\);

-- Location: FF_X49_Y6_N21
\tx_u|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|count[26]~84_combout\,
	sclr => \tx_u|LessThan0~1_combout\,
	ena => \tx_u|tx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|count\(26));

-- Location: LCCOMB_X49_Y6_N22
\tx_u|count[27]~86\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|count[27]~86_combout\ = (\tx_u|count\(27) & (!\tx_u|count[26]~85\)) # (!\tx_u|count\(27) & ((\tx_u|count[26]~85\) # (GND)))
-- \tx_u|count[27]~87\ = CARRY((!\tx_u|count[26]~85\) # (!\tx_u|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|count\(27),
	datad => VCC,
	cin => \tx_u|count[26]~85\,
	combout => \tx_u|count[27]~86_combout\,
	cout => \tx_u|count[27]~87\);

-- Location: FF_X49_Y6_N23
\tx_u|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|count[27]~86_combout\,
	sclr => \tx_u|LessThan0~1_combout\,
	ena => \tx_u|tx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|count\(27));

-- Location: LCCOMB_X49_Y6_N24
\tx_u|count[28]~88\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|count[28]~88_combout\ = (\tx_u|count\(28) & (\tx_u|count[27]~87\ $ (GND))) # (!\tx_u|count\(28) & (!\tx_u|count[27]~87\ & VCC))
-- \tx_u|count[28]~89\ = CARRY((\tx_u|count\(28) & !\tx_u|count[27]~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx_u|count\(28),
	datad => VCC,
	cin => \tx_u|count[27]~87\,
	combout => \tx_u|count[28]~88_combout\,
	cout => \tx_u|count[28]~89\);

-- Location: FF_X49_Y6_N25
\tx_u|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|count[28]~88_combout\,
	sclr => \tx_u|LessThan0~1_combout\,
	ena => \tx_u|tx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|count\(28));

-- Location: LCCOMB_X49_Y6_N26
\tx_u|count[29]~90\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|count[29]~90_combout\ = (\tx_u|count\(29) & (!\tx_u|count[28]~89\)) # (!\tx_u|count\(29) & ((\tx_u|count[28]~89\) # (GND)))
-- \tx_u|count[29]~91\ = CARRY((!\tx_u|count[28]~89\) # (!\tx_u|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|count\(29),
	datad => VCC,
	cin => \tx_u|count[28]~89\,
	combout => \tx_u|count[29]~90_combout\,
	cout => \tx_u|count[29]~91\);

-- Location: FF_X49_Y6_N27
\tx_u|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|count[29]~90_combout\,
	sclr => \tx_u|LessThan0~1_combout\,
	ena => \tx_u|tx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|count\(29));

-- Location: LCCOMB_X49_Y6_N28
\tx_u|count[30]~92\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|count[30]~92_combout\ = (\tx_u|count\(30) & (\tx_u|count[29]~91\ $ (GND))) # (!\tx_u|count\(30) & (!\tx_u|count[29]~91\ & VCC))
-- \tx_u|count[30]~93\ = CARRY((\tx_u|count\(30) & !\tx_u|count[29]~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx_u|count\(30),
	datad => VCC,
	cin => \tx_u|count[29]~91\,
	combout => \tx_u|count[30]~92_combout\,
	cout => \tx_u|count[30]~93\);

-- Location: FF_X49_Y6_N29
\tx_u|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|count[30]~92_combout\,
	sclr => \tx_u|LessThan0~1_combout\,
	ena => \tx_u|tx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|count\(30));

-- Location: LCCOMB_X49_Y6_N30
\tx_u|count[31]~94\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|count[31]~94_combout\ = \tx_u|count\(31) $ (\tx_u|count[30]~93\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|count\(31),
	cin => \tx_u|count[30]~93\,
	combout => \tx_u|count[31]~94_combout\);

-- Location: FF_X49_Y6_N31
\tx_u|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|count[31]~94_combout\,
	sclr => \tx_u|LessThan0~1_combout\,
	ena => \tx_u|tx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|count\(31));

-- Location: LCCOMB_X50_Y7_N20
\tx_u|Equal3~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|Equal3~5_combout\ = (!\tx_u|count\(23) & (!\tx_u|count\(20) & (!\tx_u|count\(21) & !\tx_u|count\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|count\(23),
	datab => \tx_u|count\(20),
	datac => \tx_u|count\(21),
	datad => \tx_u|count\(22),
	combout => \tx_u|Equal3~5_combout\);

-- Location: LCCOMB_X50_Y7_N22
\tx_u|Equal3~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|Equal3~6_combout\ = (!\tx_u|count\(26) & (!\tx_u|count\(24) & (!\tx_u|count\(25) & !\tx_u|count\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|count\(26),
	datab => \tx_u|count\(24),
	datac => \tx_u|count\(25),
	datad => \tx_u|count\(27),
	combout => \tx_u|Equal3~6_combout\);

-- Location: LCCOMB_X50_Y7_N16
\tx_u|Equal3~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|Equal3~7_combout\ = (!\tx_u|count\(29) & (!\tx_u|count\(30) & !\tx_u|count\(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_u|count\(29),
	datac => \tx_u|count\(30),
	datad => \tx_u|count\(28),
	combout => \tx_u|Equal3~7_combout\);

-- Location: LCCOMB_X50_Y7_N18
\tx_u|Equal3~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|Equal3~8_combout\ = (\tx_u|Equal3~4_combout\ & (\tx_u|Equal3~5_combout\ & (\tx_u|Equal3~6_combout\ & \tx_u|Equal3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|Equal3~4_combout\,
	datab => \tx_u|Equal3~5_combout\,
	datac => \tx_u|Equal3~6_combout\,
	datad => \tx_u|Equal3~7_combout\,
	combout => \tx_u|Equal3~8_combout\);

-- Location: LCCOMB_X50_Y7_N30
\tx_u|LessThan0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|LessThan0~1_combout\ = (!\tx_u|count\(31) & ((\tx_u|LessThan0~0_combout\) # (!\tx_u|Equal3~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_u|LessThan0~0_combout\,
	datac => \tx_u|count\(31),
	datad => \tx_u|Equal3~8_combout\,
	combout => \tx_u|LessThan0~1_combout\);

-- Location: FF_X49_Y7_N1
\tx_u|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|count[0]~32_combout\,
	sclr => \tx_u|LessThan0~1_combout\,
	ena => \tx_u|tx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|count\(0));

-- Location: LCCOMB_X49_Y7_N2
\tx_u|count[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|count[1]~34_combout\ = (\tx_u|count\(1) & (!\tx_u|count[0]~33\)) # (!\tx_u|count\(1) & ((\tx_u|count[0]~33\) # (GND)))
-- \tx_u|count[1]~35\ = CARRY((!\tx_u|count[0]~33\) # (!\tx_u|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx_u|count\(1),
	datad => VCC,
	cin => \tx_u|count[0]~33\,
	combout => \tx_u|count[1]~34_combout\,
	cout => \tx_u|count[1]~35\);

-- Location: FF_X49_Y7_N3
\tx_u|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|count[1]~34_combout\,
	sclr => \tx_u|LessThan0~1_combout\,
	ena => \tx_u|tx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|count\(1));

-- Location: LCCOMB_X49_Y7_N4
\tx_u|count[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|count[2]~36_combout\ = (\tx_u|count\(2) & (\tx_u|count[1]~35\ $ (GND))) # (!\tx_u|count\(2) & (!\tx_u|count[1]~35\ & VCC))
-- \tx_u|count[2]~37\ = CARRY((\tx_u|count\(2) & !\tx_u|count[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx_u|count\(2),
	datad => VCC,
	cin => \tx_u|count[1]~35\,
	combout => \tx_u|count[2]~36_combout\,
	cout => \tx_u|count[2]~37\);

-- Location: FF_X49_Y7_N5
\tx_u|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|count[2]~36_combout\,
	sclr => \tx_u|LessThan0~1_combout\,
	ena => \tx_u|tx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|count\(2));

-- Location: LCCOMB_X49_Y7_N6
\tx_u|count[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|count[3]~38_combout\ = (\tx_u|count\(3) & (!\tx_u|count[2]~37\)) # (!\tx_u|count\(3) & ((\tx_u|count[2]~37\) # (GND)))
-- \tx_u|count[3]~39\ = CARRY((!\tx_u|count[2]~37\) # (!\tx_u|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|count\(3),
	datad => VCC,
	cin => \tx_u|count[2]~37\,
	combout => \tx_u|count[3]~38_combout\,
	cout => \tx_u|count[3]~39\);

-- Location: FF_X49_Y7_N7
\tx_u|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|count[3]~38_combout\,
	sclr => \tx_u|LessThan0~1_combout\,
	ena => \tx_u|tx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|count\(3));

-- Location: LCCOMB_X49_Y7_N8
\tx_u|count[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|count[4]~40_combout\ = (\tx_u|count\(4) & (\tx_u|count[3]~39\ $ (GND))) # (!\tx_u|count\(4) & (!\tx_u|count[3]~39\ & VCC))
-- \tx_u|count[4]~41\ = CARRY((\tx_u|count\(4) & !\tx_u|count[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx_u|count\(4),
	datad => VCC,
	cin => \tx_u|count[3]~39\,
	combout => \tx_u|count[4]~40_combout\,
	cout => \tx_u|count[4]~41\);

-- Location: FF_X49_Y7_N9
\tx_u|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|count[4]~40_combout\,
	sclr => \tx_u|LessThan0~1_combout\,
	ena => \tx_u|tx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|count\(4));

-- Location: LCCOMB_X49_Y7_N10
\tx_u|count[5]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|count[5]~42_combout\ = (\tx_u|count\(5) & (!\tx_u|count[4]~41\)) # (!\tx_u|count\(5) & ((\tx_u|count[4]~41\) # (GND)))
-- \tx_u|count[5]~43\ = CARRY((!\tx_u|count[4]~41\) # (!\tx_u|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|count\(5),
	datad => VCC,
	cin => \tx_u|count[4]~41\,
	combout => \tx_u|count[5]~42_combout\,
	cout => \tx_u|count[5]~43\);

-- Location: FF_X49_Y7_N11
\tx_u|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|count[5]~42_combout\,
	sclr => \tx_u|LessThan0~1_combout\,
	ena => \tx_u|tx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|count\(5));

-- Location: LCCOMB_X49_Y7_N12
\tx_u|count[6]~44\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|count[6]~44_combout\ = (\tx_u|count\(6) & (\tx_u|count[5]~43\ $ (GND))) # (!\tx_u|count\(6) & (!\tx_u|count[5]~43\ & VCC))
-- \tx_u|count[6]~45\ = CARRY((\tx_u|count\(6) & !\tx_u|count[5]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|count\(6),
	datad => VCC,
	cin => \tx_u|count[5]~43\,
	combout => \tx_u|count[6]~44_combout\,
	cout => \tx_u|count[6]~45\);

-- Location: FF_X49_Y7_N13
\tx_u|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|count[6]~44_combout\,
	sclr => \tx_u|LessThan0~1_combout\,
	ena => \tx_u|tx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|count\(6));

-- Location: LCCOMB_X49_Y7_N14
\tx_u|count[7]~46\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|count[7]~46_combout\ = (\tx_u|count\(7) & (!\tx_u|count[6]~45\)) # (!\tx_u|count\(7) & ((\tx_u|count[6]~45\) # (GND)))
-- \tx_u|count[7]~47\ = CARRY((!\tx_u|count[6]~45\) # (!\tx_u|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx_u|count\(7),
	datad => VCC,
	cin => \tx_u|count[6]~45\,
	combout => \tx_u|count[7]~46_combout\,
	cout => \tx_u|count[7]~47\);

-- Location: FF_X49_Y7_N15
\tx_u|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|count[7]~46_combout\,
	sclr => \tx_u|LessThan0~1_combout\,
	ena => \tx_u|tx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|count\(7));

-- Location: LCCOMB_X49_Y7_N16
\tx_u|count[8]~48\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|count[8]~48_combout\ = (\tx_u|count\(8) & (\tx_u|count[7]~47\ $ (GND))) # (!\tx_u|count\(8) & (!\tx_u|count[7]~47\ & VCC))
-- \tx_u|count[8]~49\ = CARRY((\tx_u|count\(8) & !\tx_u|count[7]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx_u|count\(8),
	datad => VCC,
	cin => \tx_u|count[7]~47\,
	combout => \tx_u|count[8]~48_combout\,
	cout => \tx_u|count[8]~49\);

-- Location: FF_X49_Y7_N17
\tx_u|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|count[8]~48_combout\,
	sclr => \tx_u|LessThan0~1_combout\,
	ena => \tx_u|tx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|count\(8));

-- Location: LCCOMB_X49_Y7_N18
\tx_u|count[9]~50\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|count[9]~50_combout\ = (\tx_u|count\(9) & (!\tx_u|count[8]~49\)) # (!\tx_u|count\(9) & ((\tx_u|count[8]~49\) # (GND)))
-- \tx_u|count[9]~51\ = CARRY((!\tx_u|count[8]~49\) # (!\tx_u|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx_u|count\(9),
	datad => VCC,
	cin => \tx_u|count[8]~49\,
	combout => \tx_u|count[9]~50_combout\,
	cout => \tx_u|count[9]~51\);

-- Location: FF_X49_Y7_N19
\tx_u|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|count[9]~50_combout\,
	sclr => \tx_u|LessThan0~1_combout\,
	ena => \tx_u|tx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|count\(9));

-- Location: LCCOMB_X49_Y7_N20
\tx_u|count[10]~52\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|count[10]~52_combout\ = (\tx_u|count\(10) & (\tx_u|count[9]~51\ $ (GND))) # (!\tx_u|count\(10) & (!\tx_u|count[9]~51\ & VCC))
-- \tx_u|count[10]~53\ = CARRY((\tx_u|count\(10) & !\tx_u|count[9]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx_u|count\(10),
	datad => VCC,
	cin => \tx_u|count[9]~51\,
	combout => \tx_u|count[10]~52_combout\,
	cout => \tx_u|count[10]~53\);

-- Location: FF_X49_Y7_N21
\tx_u|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|count[10]~52_combout\,
	sclr => \tx_u|LessThan0~1_combout\,
	ena => \tx_u|tx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|count\(10));

-- Location: LCCOMB_X49_Y7_N22
\tx_u|count[11]~54\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|count[11]~54_combout\ = (\tx_u|count\(11) & (!\tx_u|count[10]~53\)) # (!\tx_u|count\(11) & ((\tx_u|count[10]~53\) # (GND)))
-- \tx_u|count[11]~55\ = CARRY((!\tx_u|count[10]~53\) # (!\tx_u|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|count\(11),
	datad => VCC,
	cin => \tx_u|count[10]~53\,
	combout => \tx_u|count[11]~54_combout\,
	cout => \tx_u|count[11]~55\);

-- Location: FF_X49_Y7_N23
\tx_u|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|count[11]~54_combout\,
	sclr => \tx_u|LessThan0~1_combout\,
	ena => \tx_u|tx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|count\(11));

-- Location: LCCOMB_X49_Y7_N24
\tx_u|count[12]~56\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|count[12]~56_combout\ = (\tx_u|count\(12) & (\tx_u|count[11]~55\ $ (GND))) # (!\tx_u|count\(12) & (!\tx_u|count[11]~55\ & VCC))
-- \tx_u|count[12]~57\ = CARRY((\tx_u|count\(12) & !\tx_u|count[11]~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx_u|count\(12),
	datad => VCC,
	cin => \tx_u|count[11]~55\,
	combout => \tx_u|count[12]~56_combout\,
	cout => \tx_u|count[12]~57\);

-- Location: FF_X49_Y7_N25
\tx_u|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|count[12]~56_combout\,
	sclr => \tx_u|LessThan0~1_combout\,
	ena => \tx_u|tx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|count\(12));

-- Location: LCCOMB_X49_Y7_N26
\tx_u|count[13]~58\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|count[13]~58_combout\ = (\tx_u|count\(13) & (!\tx_u|count[12]~57\)) # (!\tx_u|count\(13) & ((\tx_u|count[12]~57\) # (GND)))
-- \tx_u|count[13]~59\ = CARRY((!\tx_u|count[12]~57\) # (!\tx_u|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|count\(13),
	datad => VCC,
	cin => \tx_u|count[12]~57\,
	combout => \tx_u|count[13]~58_combout\,
	cout => \tx_u|count[13]~59\);

-- Location: FF_X49_Y7_N27
\tx_u|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|count[13]~58_combout\,
	sclr => \tx_u|LessThan0~1_combout\,
	ena => \tx_u|tx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|count\(13));

-- Location: LCCOMB_X49_Y7_N28
\tx_u|count[14]~60\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|count[14]~60_combout\ = (\tx_u|count\(14) & (\tx_u|count[13]~59\ $ (GND))) # (!\tx_u|count\(14) & (!\tx_u|count[13]~59\ & VCC))
-- \tx_u|count[14]~61\ = CARRY((\tx_u|count\(14) & !\tx_u|count[13]~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx_u|count\(14),
	datad => VCC,
	cin => \tx_u|count[13]~59\,
	combout => \tx_u|count[14]~60_combout\,
	cout => \tx_u|count[14]~61\);

-- Location: FF_X49_Y7_N29
\tx_u|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|count[14]~60_combout\,
	sclr => \tx_u|LessThan0~1_combout\,
	ena => \tx_u|tx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|count\(14));

-- Location: LCCOMB_X49_Y7_N30
\tx_u|count[15]~62\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|count[15]~62_combout\ = (\tx_u|count\(15) & (!\tx_u|count[14]~61\)) # (!\tx_u|count\(15) & ((\tx_u|count[14]~61\) # (GND)))
-- \tx_u|count[15]~63\ = CARRY((!\tx_u|count[14]~61\) # (!\tx_u|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|count\(15),
	datad => VCC,
	cin => \tx_u|count[14]~61\,
	combout => \tx_u|count[15]~62_combout\,
	cout => \tx_u|count[15]~63\);

-- Location: FF_X49_Y7_N31
\tx_u|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|count[15]~62_combout\,
	sclr => \tx_u|LessThan0~1_combout\,
	ena => \tx_u|tx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|count\(15));

-- Location: LCCOMB_X49_Y6_N0
\tx_u|count[16]~64\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|count[16]~64_combout\ = (\tx_u|count\(16) & (\tx_u|count[15]~63\ $ (GND))) # (!\tx_u|count\(16) & (!\tx_u|count[15]~63\ & VCC))
-- \tx_u|count[16]~65\ = CARRY((\tx_u|count\(16) & !\tx_u|count[15]~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx_u|count\(16),
	datad => VCC,
	cin => \tx_u|count[15]~63\,
	combout => \tx_u|count[16]~64_combout\,
	cout => \tx_u|count[16]~65\);

-- Location: FF_X49_Y6_N1
\tx_u|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|count[16]~64_combout\,
	sclr => \tx_u|LessThan0~1_combout\,
	ena => \tx_u|tx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|count\(16));

-- Location: LCCOMB_X49_Y6_N2
\tx_u|count[17]~66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|count[17]~66_combout\ = (\tx_u|count\(17) & (!\tx_u|count[16]~65\)) # (!\tx_u|count\(17) & ((\tx_u|count[16]~65\) # (GND)))
-- \tx_u|count[17]~67\ = CARRY((!\tx_u|count[16]~65\) # (!\tx_u|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \tx_u|count\(17),
	datad => VCC,
	cin => \tx_u|count[16]~65\,
	combout => \tx_u|count[17]~66_combout\,
	cout => \tx_u|count[17]~67\);

-- Location: FF_X49_Y6_N3
\tx_u|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|count[17]~66_combout\,
	sclr => \tx_u|LessThan0~1_combout\,
	ena => \tx_u|tx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|count\(17));

-- Location: FF_X50_Y7_N1
\tx_u|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \tx_u|count[18]~68_combout\,
	sclr => \tx_u|LessThan0~1_combout\,
	sload => VCC,
	ena => \tx_u|tx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|count\(18));

-- Location: LCCOMB_X50_Y7_N12
\tx_u|Equal3~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|Equal3~3_combout\ = (!\tx_u|count\(18) & (!\tx_u|count\(19) & (!\tx_u|count\(16) & !\tx_u|count\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|count\(18),
	datab => \tx_u|count\(19),
	datac => \tx_u|count\(16),
	datad => \tx_u|count\(17),
	combout => \tx_u|Equal3~3_combout\);

-- Location: LCCOMB_X50_Y7_N2
\tx_u|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|Equal3~0_combout\ = (!\tx_u|count\(7) & (!\tx_u|count\(4) & (!\tx_u|count\(6) & !\tx_u|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|count\(7),
	datab => \tx_u|count\(4),
	datac => \tx_u|count\(6),
	datad => \tx_u|count\(5),
	combout => \tx_u|Equal3~0_combout\);

-- Location: LCCOMB_X50_Y7_N8
\tx_u|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|Equal3~1_combout\ = (!\tx_u|count\(8) & (!\tx_u|count\(9) & (!\tx_u|count\(10) & !\tx_u|count\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|count\(8),
	datab => \tx_u|count\(9),
	datac => \tx_u|count\(10),
	datad => \tx_u|count\(11),
	combout => \tx_u|Equal3~1_combout\);

-- Location: LCCOMB_X50_Y7_N10
\tx_u|Equal3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|Equal3~2_combout\ = (!\tx_u|count\(13) & (!\tx_u|count\(15) & (!\tx_u|count\(12) & !\tx_u|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|count\(13),
	datab => \tx_u|count\(15),
	datac => \tx_u|count\(12),
	datad => \tx_u|count\(14),
	combout => \tx_u|Equal3~2_combout\);

-- Location: LCCOMB_X50_Y7_N6
\tx_u|Equal3~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|Equal3~4_combout\ = (\tx_u|Equal3~3_combout\ & (\tx_u|Equal3~0_combout\ & (\tx_u|Equal3~1_combout\ & \tx_u|Equal3~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|Equal3~3_combout\,
	datab => \tx_u|Equal3~0_combout\,
	datac => \tx_u|Equal3~1_combout\,
	datad => \tx_u|Equal3~2_combout\,
	combout => \tx_u|Equal3~4_combout\);

-- Location: LCCOMB_X50_Y7_N28
\tx_u|Equal3~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|Equal3~9_combout\ = (!\tx_u|count\(1) & (\tx_u|count\(2) & (!\tx_u|count\(0) & !\tx_u|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|count\(1),
	datab => \tx_u|count\(2),
	datac => \tx_u|count\(0),
	datad => \tx_u|count\(3),
	combout => \tx_u|Equal3~9_combout\);

-- Location: LCCOMB_X50_Y7_N26
\tx_u|tx_done~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|tx_done~0_combout\ = (!\tx_u|count\(31) & (\tx_u|tx_flag~q\ & (\tx_u|Equal3~6_combout\ & \tx_u|Equal3~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|count\(31),
	datab => \tx_u|tx_flag~q\,
	datac => \tx_u|Equal3~6_combout\,
	datad => \tx_u|Equal3~5_combout\,
	combout => \tx_u|tx_done~0_combout\);

-- Location: LCCOMB_X50_Y7_N24
\tx_u|tx_done~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|tx_done~1_combout\ = (\tx_u|Equal3~4_combout\ & (\tx_u|Equal3~9_combout\ & (\tx_u|tx_done~0_combout\ & \tx_u|Equal3~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|Equal3~4_combout\,
	datab => \tx_u|Equal3~9_combout\,
	datac => \tx_u|tx_done~0_combout\,
	datad => \tx_u|Equal3~7_combout\,
	combout => \tx_u|tx_done~1_combout\);

-- Location: FF_X51_Y4_N21
\tx_u|index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|index~1_combout\,
	ena => \tx_u|tx_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|index\(0));

-- Location: LCCOMB_X51_Y4_N14
\tx_u|index~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|index~2_combout\ = (!\tx_u|index\(3) & (\tx_u|index\(1) $ (\tx_u|index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_u|index\(3),
	datac => \tx_u|index\(1),
	datad => \tx_u|index\(0),
	combout => \tx_u|index~2_combout\);

-- Location: FF_X51_Y4_N15
\tx_u|index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|index~2_combout\,
	ena => \tx_u|tx_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|index\(1));

-- Location: LCCOMB_X51_Y4_N30
\tx_u|index~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|index~0_combout\ = (!\tx_u|index\(3) & (\tx_u|index\(2) $ (((\tx_u|index\(1) & \tx_u|index\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|index\(1),
	datab => \tx_u|index\(3),
	datac => \tx_u|index\(2),
	datad => \tx_u|index\(0),
	combout => \tx_u|index~0_combout\);

-- Location: FF_X51_Y4_N31
\tx_u|index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|index~0_combout\,
	ena => \tx_u|tx_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|index\(2));

-- Location: LCCOMB_X51_Y4_N4
\tx_u|index~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|index~3_combout\ = (\tx_u|index\(2) & (\tx_u|index\(1) & (!\tx_u|index\(3) & \tx_u|index\(0)))) # (!\tx_u|index\(2) & (!\tx_u|index\(1) & (\tx_u|index\(3) & !\tx_u|index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|index\(2),
	datab => \tx_u|index\(1),
	datac => \tx_u|index\(3),
	datad => \tx_u|index\(0),
	combout => \tx_u|index~3_combout\);

-- Location: FF_X51_Y4_N5
\tx_u|index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|index~3_combout\,
	ena => \tx_u|tx_done~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|index\(3));

-- Location: IOIBUF_X54_Y0_N22
\data_in[22]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(22),
	o => \data_in[22]~input_o\);

-- Location: IOIBUF_X49_Y0_N22
\data_in[20]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(20),
	o => \data_in[20]~input_o\);

-- Location: IOIBUF_X56_Y0_N15
\data_in[19]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(19),
	o => \data_in[19]~input_o\);

-- Location: IOIBUF_X51_Y0_N22
\data_in[21]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(21),
	o => \data_in[21]~input_o\);

-- Location: LCCOMB_X51_Y4_N24
\tx_u|Mux0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|Mux0~0_combout\ = (\tx_u|index\(0) & (((\tx_u|index\(1))))) # (!\tx_u|index\(0) & ((\tx_u|index\(1) & ((\data_in[21]~input_o\))) # (!\tx_u|index\(1) & (\data_in[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[19]~input_o\,
	datab => \tx_u|index\(0),
	datac => \tx_u|index\(1),
	datad => \data_in[21]~input_o\,
	combout => \tx_u|Mux0~0_combout\);

-- Location: LCCOMB_X50_Y4_N30
\tx_u|Mux0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|Mux0~1_combout\ = (\tx_u|index\(0) & ((\tx_u|Mux0~0_combout\ & (\data_in[22]~input_o\)) # (!\tx_u|Mux0~0_combout\ & ((\data_in[20]~input_o\))))) # (!\tx_u|index\(0) & (((\tx_u|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[22]~input_o\,
	datab => \data_in[20]~input_o\,
	datac => \tx_u|index\(0),
	datad => \tx_u|Mux0~0_combout\,
	combout => \tx_u|Mux0~1_combout\);

-- Location: IOIBUF_X54_Y0_N29
\data_in[30]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(30),
	o => \data_in[30]~input_o\);

-- Location: IOIBUF_X58_Y0_N15
\data_in[29]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(29),
	o => \data_in[29]~input_o\);

-- Location: IOIBUF_X51_Y0_N1
\data_in[27]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(27),
	o => \data_in[27]~input_o\);

-- Location: LCCOMB_X51_Y4_N0
\tx_u|Mux0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|Mux0~7_combout\ = (\tx_u|index\(0) & (((\tx_u|index\(1))))) # (!\tx_u|index\(0) & ((\tx_u|index\(1) & (\data_in[29]~input_o\)) # (!\tx_u|index\(1) & ((\data_in[27]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[29]~input_o\,
	datab => \tx_u|index\(0),
	datac => \tx_u|index\(1),
	datad => \data_in[27]~input_o\,
	combout => \tx_u|Mux0~7_combout\);

-- Location: IOIBUF_X58_Y0_N8
\data_in[28]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(28),
	o => \data_in[28]~input_o\);

-- Location: LCCOMB_X51_Y4_N10
\tx_u|Mux0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|Mux0~8_combout\ = (\tx_u|Mux0~7_combout\ & ((\data_in[30]~input_o\) # ((!\tx_u|index\(0))))) # (!\tx_u|Mux0~7_combout\ & (((\data_in[28]~input_o\ & \tx_u|index\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[30]~input_o\,
	datab => \tx_u|Mux0~7_combout\,
	datac => \data_in[28]~input_o\,
	datad => \tx_u|index\(0),
	combout => \tx_u|Mux0~8_combout\);

-- Location: IOIBUF_X51_Y0_N8
\data_in[5]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(5),
	o => \data_in[5]~input_o\);

-- Location: IOIBUF_X40_Y0_N8
\data_in[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(3),
	o => \data_in[3]~input_o\);

-- Location: IOIBUF_X58_Y0_N1
\data_in[4]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(4),
	o => \data_in[4]~input_o\);

-- Location: LCCOMB_X51_Y4_N22
\tx_u|Mux0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|Mux0~4_combout\ = (\tx_u|index\(1) & (((\tx_u|index\(0))))) # (!\tx_u|index\(1) & ((\tx_u|index\(0) & ((\data_in[4]~input_o\))) # (!\tx_u|index\(0) & (\data_in[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[3]~input_o\,
	datab => \data_in[4]~input_o\,
	datac => \tx_u|index\(1),
	datad => \tx_u|index\(0),
	combout => \tx_u|Mux0~4_combout\);

-- Location: IOIBUF_X51_Y0_N15
\data_in[6]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(6),
	o => \data_in[6]~input_o\);

-- Location: LCCOMB_X51_Y4_N12
\tx_u|Mux0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|Mux0~5_combout\ = (\tx_u|index\(1) & ((\tx_u|Mux0~4_combout\ & ((\data_in[6]~input_o\))) # (!\tx_u|Mux0~4_combout\ & (\data_in[5]~input_o\)))) # (!\tx_u|index\(1) & (((\tx_u|Mux0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[5]~input_o\,
	datab => \tx_u|index\(1),
	datac => \tx_u|Mux0~4_combout\,
	datad => \data_in[6]~input_o\,
	combout => \tx_u|Mux0~5_combout\);

-- Location: IOIBUF_X54_Y0_N8
\data_in[13]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(13),
	o => \data_in[13]~input_o\);

-- Location: IOIBUF_X56_Y0_N1
\data_in[14]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(14),
	o => \data_in[14]~input_o\);

-- Location: IOIBUF_X56_Y0_N22
\data_in[12]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(12),
	o => \data_in[12]~input_o\);

-- Location: IOIBUF_X56_Y0_N8
\data_in[11]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(11),
	o => \data_in[11]~input_o\);

-- Location: LCCOMB_X51_Y4_N18
\tx_u|Mux0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|Mux0~2_combout\ = (\tx_u|index\(1) & (((\tx_u|index\(0))))) # (!\tx_u|index\(1) & ((\tx_u|index\(0) & (\data_in[12]~input_o\)) # (!\tx_u|index\(0) & ((\data_in[11]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[12]~input_o\,
	datab => \data_in[11]~input_o\,
	datac => \tx_u|index\(1),
	datad => \tx_u|index\(0),
	combout => \tx_u|Mux0~2_combout\);

-- Location: LCCOMB_X51_Y4_N28
\tx_u|Mux0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|Mux0~3_combout\ = (\tx_u|index\(1) & ((\tx_u|Mux0~2_combout\ & ((\data_in[14]~input_o\))) # (!\tx_u|Mux0~2_combout\ & (\data_in[13]~input_o\)))) # (!\tx_u|index\(1) & (((\tx_u|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[13]~input_o\,
	datab => \data_in[14]~input_o\,
	datac => \tx_u|index\(1),
	datad => \tx_u|Mux0~2_combout\,
	combout => \tx_u|Mux0~3_combout\);

-- Location: LCCOMB_X51_Y4_N6
\tx_u|Mux0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|Mux0~6_combout\ = (\tx_u|word\(1) & (((\tx_u|word\(0))))) # (!\tx_u|word\(1) & ((\tx_u|word\(0) & ((\tx_u|Mux0~3_combout\))) # (!\tx_u|word\(0) & (\tx_u|Mux0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|Mux0~5_combout\,
	datab => \tx_u|Mux0~3_combout\,
	datac => \tx_u|word\(1),
	datad => \tx_u|word\(0),
	combout => \tx_u|Mux0~6_combout\);

-- Location: LCCOMB_X50_Y4_N8
\tx_u|Mux0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|Mux0~9_combout\ = (\tx_u|word\(1) & ((\tx_u|Mux0~6_combout\ & ((\tx_u|Mux0~8_combout\))) # (!\tx_u|Mux0~6_combout\ & (\tx_u|Mux0~1_combout\)))) # (!\tx_u|word\(1) & (((\tx_u|Mux0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|Mux0~1_combout\,
	datab => \tx_u|Mux0~8_combout\,
	datac => \tx_u|word\(1),
	datad => \tx_u|Mux0~6_combout\,
	combout => \tx_u|Mux0~9_combout\);

-- Location: IOIBUF_X49_Y0_N15
\data_in[10]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(10),
	o => \data_in[10]~input_o\);

-- Location: IOIBUF_X54_Y0_N1
\data_in[26]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(26),
	o => \data_in[26]~input_o\);

-- Location: IOIBUF_X49_Y0_N8
\data_in[18]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(18),
	o => \data_in[18]~input_o\);

-- Location: IOIBUF_X38_Y0_N8
\data_in[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(2),
	o => \data_in[2]~input_o\);

-- Location: LCCOMB_X50_Y4_N0
\tx_u|data_full~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|data_full~4_combout\ = (\tx_u|word\(1) & ((\data_in[18]~input_o\) # ((\tx_u|word\(0))))) # (!\tx_u|word\(1) & (((\data_in[2]~input_o\ & !\tx_u|word\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[18]~input_o\,
	datab => \data_in[2]~input_o\,
	datac => \tx_u|word\(1),
	datad => \tx_u|word\(0),
	combout => \tx_u|data_full~4_combout\);

-- Location: LCCOMB_X50_Y4_N14
\tx_u|data_full~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|data_full~5_combout\ = (\tx_u|word\(0) & ((\tx_u|data_full~4_combout\ & ((\data_in[26]~input_o\))) # (!\tx_u|data_full~4_combout\ & (\data_in[10]~input_o\)))) # (!\tx_u|word\(0) & (((\tx_u|data_full~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[10]~input_o\,
	datab => \tx_u|word\(0),
	datac => \data_in[26]~input_o\,
	datad => \tx_u|data_full~4_combout\,
	combout => \tx_u|data_full~5_combout\);

-- Location: IOIBUF_X40_Y0_N1
\data_in[25]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(25),
	o => \data_in[25]~input_o\);

-- Location: IOIBUF_X46_Y0_N1
\data_in[17]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(17),
	o => \data_in[17]~input_o\);

-- Location: IOIBUF_X58_Y0_N22
\data_in[9]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(9),
	o => \data_in[9]~input_o\);

-- Location: IOIBUF_X60_Y0_N29
\data_in[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(1),
	o => \data_in[1]~input_o\);

-- Location: LCCOMB_X51_Y7_N18
\tx_u|data_full~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|data_full~6_combout\ = (\tx_u|word\(1) & (((\tx_u|word\(0))))) # (!\tx_u|word\(1) & ((\tx_u|word\(0) & (\data_in[9]~input_o\)) # (!\tx_u|word\(0) & ((\data_in[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[9]~input_o\,
	datab => \data_in[1]~input_o\,
	datac => \tx_u|word\(1),
	datad => \tx_u|word\(0),
	combout => \tx_u|data_full~6_combout\);

-- Location: LCCOMB_X50_Y4_N24
\tx_u|data_full~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|data_full~7_combout\ = (\tx_u|word\(1) & ((\tx_u|data_full~6_combout\ & (\data_in[25]~input_o\)) # (!\tx_u|data_full~6_combout\ & ((\data_in[17]~input_o\))))) # (!\tx_u|word\(1) & (((\tx_u|data_full~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[25]~input_o\,
	datab => \data_in[17]~input_o\,
	datac => \tx_u|word\(1),
	datad => \tx_u|data_full~6_combout\,
	combout => \tx_u|data_full~7_combout\);

-- Location: LCCOMB_X50_Y4_N26
\tx_u|tx~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|tx~1_combout\ = (\tx_u|index\(1) & ((\tx_u|index\(0) & (\tx_u|data_full~5_combout\)) # (!\tx_u|index\(0) & ((\tx_u|data_full~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|index\(0),
	datab => \tx_u|index\(1),
	datac => \tx_u|data_full~5_combout\,
	datad => \tx_u|data_full~7_combout\,
	combout => \tx_u|tx~1_combout\);

-- Location: IOIBUF_X38_Y0_N1
\data_in[8]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(8),
	o => \data_in[8]~input_o\);

-- Location: IOIBUF_X49_Y0_N1
\data_in[24]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(24),
	o => \data_in[24]~input_o\);

-- Location: IOIBUF_X46_Y0_N8
\data_in[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(0),
	o => \data_in[0]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
\data_in[16]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(16),
	o => \data_in[16]~input_o\);

-- Location: LCCOMB_X50_Y4_N22
\tx_u|data_full~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|data_full~2_combout\ = (\tx_u|word\(1) & (((\data_in[16]~input_o\) # (\tx_u|word\(0))))) # (!\tx_u|word\(1) & (\data_in[0]~input_o\ & ((!\tx_u|word\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[0]~input_o\,
	datab => \data_in[16]~input_o\,
	datac => \tx_u|word\(1),
	datad => \tx_u|word\(0),
	combout => \tx_u|data_full~2_combout\);

-- Location: LCCOMB_X50_Y4_N4
\tx_u|data_full~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|data_full~3_combout\ = (\tx_u|data_full~2_combout\ & (((\data_in[24]~input_o\) # (!\tx_u|word\(0))))) # (!\tx_u|data_full~2_combout\ & (\data_in[8]~input_o\ & ((\tx_u|word\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[8]~input_o\,
	datab => \data_in[24]~input_o\,
	datac => \tx_u|data_full~2_combout\,
	datad => \tx_u|word\(0),
	combout => \tx_u|data_full~3_combout\);

-- Location: IOIBUF_X40_Y0_N29
\data_in[31]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(31),
	o => \data_in[31]~input_o\);

-- Location: IOIBUF_X38_Y0_N29
\data_in[23]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(23),
	o => \data_in[23]~input_o\);

-- Location: IOIBUF_X54_Y0_N15
\data_in[15]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(15),
	o => \data_in[15]~input_o\);

-- Location: IOIBUF_X49_Y0_N29
\data_in[7]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_data_in(7),
	o => \data_in[7]~input_o\);

-- Location: LCCOMB_X50_Y4_N18
\tx_u|data_full~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|data_full~0_combout\ = (\tx_u|word\(1) & (((\tx_u|word\(0))))) # (!\tx_u|word\(1) & ((\tx_u|word\(0) & (\data_in[15]~input_o\)) # (!\tx_u|word\(0) & ((\data_in[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[15]~input_o\,
	datab => \data_in[7]~input_o\,
	datac => \tx_u|word\(1),
	datad => \tx_u|word\(0),
	combout => \tx_u|data_full~0_combout\);

-- Location: LCCOMB_X50_Y4_N28
\tx_u|data_full~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|data_full~1_combout\ = (\tx_u|word\(1) & ((\tx_u|data_full~0_combout\ & (\data_in[31]~input_o\)) # (!\tx_u|data_full~0_combout\ & ((\data_in[23]~input_o\))))) # (!\tx_u|word\(1) & (((\tx_u|data_full~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \data_in[31]~input_o\,
	datab => \data_in[23]~input_o\,
	datac => \tx_u|word\(1),
	datad => \tx_u|data_full~0_combout\,
	combout => \tx_u|data_full~1_combout\);

-- Location: LCCOMB_X50_Y4_N10
\tx_u|tx~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|tx~0_combout\ = (\tx_u|index\(3) & (((\tx_u|index\(0)) # (\tx_u|data_full~1_combout\)))) # (!\tx_u|index\(3) & (\tx_u|data_full~3_combout\ & (\tx_u|index\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|index\(3),
	datab => \tx_u|data_full~3_combout\,
	datac => \tx_u|index\(0),
	datad => \tx_u|data_full~1_combout\,
	combout => \tx_u|tx~0_combout\);

-- Location: LCCOMB_X50_Y4_N12
\tx_u|tx~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|tx~2_combout\ = (\tx_u|index\(3) & (!\tx_u|index\(1) & ((\tx_u|tx~0_combout\)))) # (!\tx_u|index\(3) & ((\tx_u|tx~1_combout\) # ((!\tx_u|index\(1) & \tx_u|tx~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|index\(3),
	datab => \tx_u|index\(1),
	datac => \tx_u|tx~1_combout\,
	datad => \tx_u|tx~0_combout\,
	combout => \tx_u|tx~2_combout\);

-- Location: LCCOMB_X50_Y4_N2
\tx_u|tx~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|tx~3_combout\ = (\tx_u|index\(2) & (!\tx_u|index\(3) & (\tx_u|Mux0~9_combout\))) # (!\tx_u|index\(2) & (((\tx_u|tx~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|index\(3),
	datab => \tx_u|index\(2),
	datac => \tx_u|Mux0~9_combout\,
	datad => \tx_u|tx~2_combout\,
	combout => \tx_u|tx~3_combout\);

-- Location: LCCOMB_X50_Y7_N4
\tx_u|Equal3~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|Equal3~10_combout\ = (!\tx_u|count\(31) & (\tx_u|Equal3~9_combout\ & \tx_u|Equal3~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|count\(31),
	datab => \tx_u|Equal3~9_combout\,
	datad => \tx_u|Equal3~8_combout\,
	combout => \tx_u|Equal3~10_combout\);

-- Location: LCCOMB_X50_Y4_N20
\tx_u|tx~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|tx~4_combout\ = (\tx_u|Equal3~10_combout\ & (\tx_u|tx~3_combout\)) # (!\tx_u|Equal3~10_combout\ & ((\tx_u|tx~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_u|tx~3_combout\,
	datac => \tx_u|tx~q\,
	datad => \tx_u|Equal3~10_combout\,
	combout => \tx_u|tx~4_combout\);

-- Location: FF_X50_Y4_N21
\tx_u|tx\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|tx~4_combout\,
	asdata => VCC,
	sload => \tx_u|ALT_INV_tx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|tx~q\);

-- Location: LCCOMB_X51_Y7_N28
\tx_u|tx_flag~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|tx_flag~0_combout\ = (\tx_u|word\(0) & \tx_u|word\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \tx_u|word\(0),
	datac => \tx_u|word\(1),
	combout => \tx_u|tx_flag~0_combout\);

-- Location: LCCOMB_X51_Y7_N16
\tx_u|tx_busy~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \tx_u|tx_busy~0_combout\ = (\tx_u|LessThan1~0_combout\ & ((\tx_u|tx_done~1_combout\ & ((!\tx_u|tx_flag~0_combout\))) # (!\tx_u|tx_done~1_combout\ & (\tx_u|tx_flag~q\)))) # (!\tx_u|LessThan1~0_combout\ & (\tx_u|tx_flag~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \tx_u|tx_flag~q\,
	datab => \tx_u|LessThan1~0_combout\,
	datac => \tx_u|tx_flag~0_combout\,
	datad => \tx_u|tx_done~1_combout\,
	combout => \tx_u|tx_busy~0_combout\);

-- Location: FF_X51_Y7_N17
\tx_u|tx_busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|tx_busy~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|tx_busy~q\);

-- Location: LCCOMB_X65_Y24_N0
\rx_u|count[0]~32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|count[0]~32_combout\ = \rx_u|count\(0) $ (VCC)
-- \rx_u|count[0]~33\ = CARRY(\rx_u|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_u|count\(0),
	datad => VCC,
	combout => \rx_u|count[0]~32_combout\,
	cout => \rx_u|count[0]~33\);

-- Location: IOIBUF_X78_Y24_N1
\uart_rx_line~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_uart_rx_line,
	o => \uart_rx_line~input_o\);

-- Location: LCCOMB_X69_Y23_N8
\rx_u|index~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|index~2_combout\ = (!\rx_u|index\(3) & (\rx_u|index\(2) $ (((\rx_u|index\(1) & \rx_u|index\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|index\(1),
	datab => \rx_u|index\(0),
	datac => \rx_u|index\(2),
	datad => \rx_u|index\(3),
	combout => \rx_u|index~2_combout\);

-- Location: LCCOMB_X66_Y23_N2
\rx_u|rx_flag~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|rx_flag~0_combout\ = (\rx_u|rx_flag~q\ & (\rx_u|rx_busy~0_combout\)) # (!\rx_u|rx_flag~q\ & ((!\uart_rx_line~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_u|rx_busy~0_combout\,
	datac => \rx_u|rx_flag~q\,
	datad => \uart_rx_line~input_o\,
	combout => \rx_u|rx_flag~0_combout\);

-- Location: FF_X66_Y23_N3
\rx_u|rx_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|rx_flag~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|rx_flag~q\);

-- Location: LCCOMB_X66_Y24_N14
\rx_u|Equal0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|Equal0~9_combout\ = (!\rx_u|count\(1) & (!\rx_u|count\(3) & (\rx_u|count\(2) & !\rx_u|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|count\(1),
	datab => \rx_u|count\(3),
	datac => \rx_u|count\(2),
	datad => \rx_u|count\(0),
	combout => \rx_u|Equal0~9_combout\);

-- Location: LCCOMB_X65_Y23_N26
\rx_u|count[29]~91\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|count[29]~91_combout\ = (\rx_u|count\(29) & (!\rx_u|count[28]~90\)) # (!\rx_u|count\(29) & ((\rx_u|count[28]~90\) # (GND)))
-- \rx_u|count[29]~92\ = CARRY((!\rx_u|count[28]~90\) # (!\rx_u|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|count\(29),
	datad => VCC,
	cin => \rx_u|count[28]~90\,
	combout => \rx_u|count[29]~91_combout\,
	cout => \rx_u|count[29]~92\);

-- Location: LCCOMB_X65_Y23_N28
\rx_u|count[30]~93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|count[30]~93_combout\ = (\rx_u|count\(30) & (\rx_u|count[29]~92\ $ (GND))) # (!\rx_u|count\(30) & (!\rx_u|count[29]~92\ & VCC))
-- \rx_u|count[30]~94\ = CARRY((\rx_u|count\(30) & !\rx_u|count[29]~92\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx_u|count\(30),
	datad => VCC,
	cin => \rx_u|count[29]~92\,
	combout => \rx_u|count[30]~93_combout\,
	cout => \rx_u|count[30]~94\);

-- Location: FF_X65_Y23_N29
\rx_u|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|count[30]~93_combout\,
	sclr => \rx_u|count[20]~42_combout\,
	ena => \rx_u|rx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|count\(30));

-- Location: LCCOMB_X65_Y23_N30
\rx_u|count[31]~95\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|count[31]~95_combout\ = \rx_u|count\(31) $ (\rx_u|count[30]~94\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|count\(31),
	cin => \rx_u|count[30]~94\,
	combout => \rx_u|count[31]~95_combout\);

-- Location: FF_X65_Y23_N31
\rx_u|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|count[31]~95_combout\,
	sclr => \rx_u|count[20]~42_combout\,
	ena => \rx_u|rx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|count\(31));

-- Location: LCCOMB_X66_Y24_N28
\rx_u|Equal0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|Equal0~10_combout\ = (\rx_u|Equal0~9_combout\ & !\rx_u|count\(31))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_u|Equal0~9_combout\,
	datad => \rx_u|count\(31),
	combout => \rx_u|Equal0~10_combout\);

-- Location: LCCOMB_X66_Y23_N6
\rx_u|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|Equal0~3_combout\ = (!\rx_u|count\(17) & (!\rx_u|count\(18) & (!\rx_u|count\(16) & !\rx_u|count\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|count\(17),
	datab => \rx_u|count\(18),
	datac => \rx_u|count\(16),
	datad => \rx_u|count\(19),
	combout => \rx_u|Equal0~3_combout\);

-- Location: LCCOMB_X66_Y23_N24
\rx_u|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|Equal0~2_combout\ = (!\rx_u|count\(15) & (!\rx_u|count\(12) & (!\rx_u|count\(13) & !\rx_u|count\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|count\(15),
	datab => \rx_u|count\(12),
	datac => \rx_u|count\(13),
	datad => \rx_u|count\(14),
	combout => \rx_u|Equal0~2_combout\);

-- Location: LCCOMB_X66_Y23_N26
\rx_u|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|Equal0~1_combout\ = (!\rx_u|count\(9) & (!\rx_u|count\(8) & (!\rx_u|count\(11) & !\rx_u|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|count\(9),
	datab => \rx_u|count\(8),
	datac => \rx_u|count\(11),
	datad => \rx_u|count\(10),
	combout => \rx_u|Equal0~1_combout\);

-- Location: LCCOMB_X66_Y23_N12
\rx_u|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|Equal0~0_combout\ = (!\rx_u|count\(7) & (!\rx_u|count\(6) & (!\rx_u|count\(4) & !\rx_u|count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|count\(7),
	datab => \rx_u|count\(6),
	datac => \rx_u|count\(4),
	datad => \rx_u|count\(5),
	combout => \rx_u|Equal0~0_combout\);

-- Location: LCCOMB_X66_Y23_N16
\rx_u|Equal0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|Equal0~4_combout\ = (\rx_u|Equal0~3_combout\ & (\rx_u|Equal0~2_combout\ & (\rx_u|Equal0~1_combout\ & \rx_u|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|Equal0~3_combout\,
	datab => \rx_u|Equal0~2_combout\,
	datac => \rx_u|Equal0~1_combout\,
	datad => \rx_u|Equal0~0_combout\,
	combout => \rx_u|Equal0~4_combout\);

-- Location: LCCOMB_X66_Y23_N10
\rx_u|data_out_32[4]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out_32[4]~0_combout\ = (\rx_u|Equal0~8_combout\ & (\rx_u|rx_flag~q\ & (\rx_u|Equal0~10_combout\ & \rx_u|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|Equal0~8_combout\,
	datab => \rx_u|rx_flag~q\,
	datac => \rx_u|Equal0~10_combout\,
	datad => \rx_u|Equal0~4_combout\,
	combout => \rx_u|data_out_32[4]~0_combout\);

-- Location: FF_X69_Y23_N9
\rx_u|index[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|index~2_combout\,
	ena => \rx_u|data_out_32[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|index\(2));

-- Location: LCCOMB_X69_Y23_N4
\rx_u|index~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|index~0_combout\ = (!\rx_u|index\(0) & (((!\rx_u|index\(1) & !\rx_u|index\(2))) # (!\rx_u|index\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|index\(1),
	datab => \rx_u|index\(3),
	datac => \rx_u|index\(0),
	datad => \rx_u|index\(2),
	combout => \rx_u|index~0_combout\);

-- Location: FF_X69_Y23_N5
\rx_u|index[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|index~0_combout\,
	ena => \rx_u|data_out_32[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|index\(0));

-- Location: LCCOMB_X69_Y23_N30
\rx_u|index~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|index~1_combout\ = (!\rx_u|index\(3) & (\rx_u|index\(0) $ (\rx_u|index\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|index\(3),
	datab => \rx_u|index\(0),
	datac => \rx_u|index\(1),
	combout => \rx_u|index~1_combout\);

-- Location: FF_X69_Y23_N31
\rx_u|index[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|index~1_combout\,
	ena => \rx_u|data_out_32[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|index\(1));

-- Location: LCCOMB_X69_Y23_N10
\rx_u|index~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|index~3_combout\ = (\rx_u|index\(1) & (\rx_u|index\(0) & (!\rx_u|index\(3) & \rx_u|index\(2)))) # (!\rx_u|index\(1) & (!\rx_u|index\(0) & (\rx_u|index\(3) & !\rx_u|index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|index\(1),
	datab => \rx_u|index\(0),
	datac => \rx_u|index\(3),
	datad => \rx_u|index\(2),
	combout => \rx_u|index~3_combout\);

-- Location: FF_X69_Y23_N11
\rx_u|index[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|index~3_combout\,
	ena => \rx_u|data_out_32[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|index\(3));

-- Location: LCCOMB_X69_Y23_N26
\rx_u|Decoder0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|Decoder0~1_combout\ = (!\rx_u|index\(3) & (!\rx_u|index\(0) & (!\rx_u|index\(1) & !\rx_u|index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|index\(3),
	datab => \rx_u|index\(0),
	datac => \rx_u|index\(1),
	datad => \rx_u|index\(2),
	combout => \rx_u|Decoder0~1_combout\);

-- Location: LCCOMB_X69_Y23_N24
\rx_u|data_full~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_full~2_combout\ = (\rx_u|Decoder0~1_combout\ & (\uart_rx_line~input_o\)) # (!\rx_u|Decoder0~1_combout\ & ((\rx_u|data_full\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|Decoder0~1_combout\,
	datab => \uart_rx_line~input_o\,
	datac => \rx_u|data_full\(0),
	combout => \rx_u|data_full~2_combout\);

-- Location: FF_X69_Y23_N25
\rx_u|data_full[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_full~2_combout\,
	ena => \rx_u|data_out_32[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_full\(0));

-- Location: FF_X69_Y23_N15
\rx_u|data_full[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_full~0_combout\,
	ena => \rx_u|data_out_32[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_full\(9));

-- Location: LCCOMB_X69_Y23_N0
\rx_u|Decoder0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|Decoder0~0_combout\ = (\rx_u|index\(3) & (\rx_u|index\(0) & (!\rx_u|index\(1) & !\rx_u|index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|index\(3),
	datab => \rx_u|index\(0),
	datac => \rx_u|index\(1),
	datad => \rx_u|index\(2),
	combout => \rx_u|Decoder0~0_combout\);

-- Location: LCCOMB_X69_Y23_N14
\rx_u|data_full~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_full~0_combout\ = (\rx_u|Decoder0~0_combout\ & (\uart_rx_line~input_o\)) # (!\rx_u|Decoder0~0_combout\ & ((\rx_u|data_full\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_line~input_o\,
	datac => \rx_u|data_full\(9),
	datad => \rx_u|Decoder0~0_combout\,
	combout => \rx_u|data_full~0_combout\);

-- Location: LCCOMB_X70_Y23_N16
\rx_u|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|process_0~0_combout\ = (\rx_u|data_full~0_combout\ & ((\rx_u|Decoder0~1_combout\ & (!\uart_rx_line~input_o\)) # (!\rx_u|Decoder0~1_combout\ & ((!\rx_u|data_full\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \uart_rx_line~input_o\,
	datab => \rx_u|data_full\(0),
	datac => \rx_u|Decoder0~1_combout\,
	datad => \rx_u|data_full~0_combout\,
	combout => \rx_u|process_0~0_combout\);

-- Location: LCCOMB_X64_Y23_N12
\rx_u|Equal0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|Equal0~6_combout\ = (!\rx_u|count\(25) & (!\rx_u|count\(24) & (!\rx_u|count\(27) & !\rx_u|count\(26))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|count\(25),
	datab => \rx_u|count\(24),
	datac => \rx_u|count\(27),
	datad => \rx_u|count\(26),
	combout => \rx_u|Equal0~6_combout\);

-- Location: LCCOMB_X66_Y23_N14
\rx_u|Equal0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|Equal0~5_combout\ = (!\rx_u|count\(22) & (!\rx_u|count\(21) & (!\rx_u|count\(23) & !\rx_u|count\(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|count\(22),
	datab => \rx_u|count\(21),
	datac => \rx_u|count\(23),
	datad => \rx_u|count\(20),
	combout => \rx_u|Equal0~5_combout\);

-- Location: LCCOMB_X66_Y23_N28
\rx_u|Equal0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|Equal0~11_combout\ = (\rx_u|Equal0~6_combout\ & (\rx_u|Equal0~7_combout\ & (\rx_u|Equal0~5_combout\ & \rx_u|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|Equal0~6_combout\,
	datab => \rx_u|Equal0~7_combout\,
	datac => \rx_u|Equal0~5_combout\,
	datad => \rx_u|Equal0~4_combout\,
	combout => \rx_u|Equal0~11_combout\);

-- Location: LCCOMB_X66_Y23_N0
\rx_u|LessThan0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|LessThan0~0_combout\ = ((\rx_u|count\(3) & ((\rx_u|count\(2)) # (\rx_u|count\(1))))) # (!\rx_u|Equal0~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|count\(2),
	datab => \rx_u|count\(3),
	datac => \rx_u|count\(1),
	datad => \rx_u|Equal0~11_combout\,
	combout => \rx_u|LessThan0~0_combout\);

-- Location: LCCOMB_X66_Y23_N18
\rx_u|count[20]~42\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|count[20]~42_combout\ = (\rx_u|process_0~0_combout\ & (((!\rx_u|count\(31) & \rx_u|LessThan0~0_combout\)) # (!\rx_u|rx_busy~0_combout\))) # (!\rx_u|process_0~0_combout\ & (!\rx_u|count\(31) & ((\rx_u|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|process_0~0_combout\,
	datab => \rx_u|count\(31),
	datac => \rx_u|rx_busy~0_combout\,
	datad => \rx_u|LessThan0~0_combout\,
	combout => \rx_u|count[20]~42_combout\);

-- Location: FF_X66_Y24_N25
\rx_u|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rx_u|count[0]~32_combout\,
	sclr => \rx_u|count[20]~42_combout\,
	sload => VCC,
	ena => \rx_u|rx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|count\(0));

-- Location: LCCOMB_X65_Y24_N2
\rx_u|count[1]~34\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|count[1]~34_combout\ = (\rx_u|count\(1) & (!\rx_u|count[0]~33\)) # (!\rx_u|count\(1) & ((\rx_u|count[0]~33\) # (GND)))
-- \rx_u|count[1]~35\ = CARRY((!\rx_u|count[0]~33\) # (!\rx_u|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx_u|count\(1),
	datad => VCC,
	cin => \rx_u|count[0]~33\,
	combout => \rx_u|count[1]~34_combout\,
	cout => \rx_u|count[1]~35\);

-- Location: FF_X66_Y24_N27
\rx_u|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rx_u|count[1]~34_combout\,
	sclr => \rx_u|count[20]~42_combout\,
	sload => VCC,
	ena => \rx_u|rx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|count\(1));

-- Location: LCCOMB_X65_Y24_N4
\rx_u|count[2]~36\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|count[2]~36_combout\ = (\rx_u|count\(2) & (\rx_u|count[1]~35\ $ (GND))) # (!\rx_u|count\(2) & (!\rx_u|count[1]~35\ & VCC))
-- \rx_u|count[2]~37\ = CARRY((\rx_u|count\(2) & !\rx_u|count[1]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx_u|count\(2),
	datad => VCC,
	cin => \rx_u|count[1]~35\,
	combout => \rx_u|count[2]~36_combout\,
	cout => \rx_u|count[2]~37\);

-- Location: FF_X65_Y24_N5
\rx_u|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|count[2]~36_combout\,
	sclr => \rx_u|count[20]~42_combout\,
	ena => \rx_u|rx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|count\(2));

-- Location: LCCOMB_X65_Y24_N6
\rx_u|count[3]~38\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|count[3]~38_combout\ = (\rx_u|count\(3) & (!\rx_u|count[2]~37\)) # (!\rx_u|count\(3) & ((\rx_u|count[2]~37\) # (GND)))
-- \rx_u|count[3]~39\ = CARRY((!\rx_u|count[2]~37\) # (!\rx_u|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|count\(3),
	datad => VCC,
	cin => \rx_u|count[2]~37\,
	combout => \rx_u|count[3]~38_combout\,
	cout => \rx_u|count[3]~39\);

-- Location: FF_X66_Y24_N21
\rx_u|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rx_u|count[3]~38_combout\,
	sclr => \rx_u|count[20]~42_combout\,
	sload => VCC,
	ena => \rx_u|rx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|count\(3));

-- Location: LCCOMB_X65_Y24_N8
\rx_u|count[4]~40\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|count[4]~40_combout\ = (\rx_u|count\(4) & (\rx_u|count[3]~39\ $ (GND))) # (!\rx_u|count\(4) & (!\rx_u|count[3]~39\ & VCC))
-- \rx_u|count[4]~41\ = CARRY((\rx_u|count\(4) & !\rx_u|count[3]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx_u|count\(4),
	datad => VCC,
	cin => \rx_u|count[3]~39\,
	combout => \rx_u|count[4]~40_combout\,
	cout => \rx_u|count[4]~41\);

-- Location: FF_X65_Y24_N9
\rx_u|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|count[4]~40_combout\,
	sclr => \rx_u|count[20]~42_combout\,
	ena => \rx_u|rx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|count\(4));

-- Location: LCCOMB_X65_Y24_N10
\rx_u|count[5]~43\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|count[5]~43_combout\ = (\rx_u|count\(5) & (!\rx_u|count[4]~41\)) # (!\rx_u|count\(5) & ((\rx_u|count[4]~41\) # (GND)))
-- \rx_u|count[5]~44\ = CARRY((!\rx_u|count[4]~41\) # (!\rx_u|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|count\(5),
	datad => VCC,
	cin => \rx_u|count[4]~41\,
	combout => \rx_u|count[5]~43_combout\,
	cout => \rx_u|count[5]~44\);

-- Location: FF_X65_Y24_N11
\rx_u|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|count[5]~43_combout\,
	sclr => \rx_u|count[20]~42_combout\,
	ena => \rx_u|rx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|count\(5));

-- Location: LCCOMB_X65_Y24_N12
\rx_u|count[6]~45\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|count[6]~45_combout\ = (\rx_u|count\(6) & (\rx_u|count[5]~44\ $ (GND))) # (!\rx_u|count\(6) & (!\rx_u|count[5]~44\ & VCC))
-- \rx_u|count[6]~46\ = CARRY((\rx_u|count\(6) & !\rx_u|count[5]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|count\(6),
	datad => VCC,
	cin => \rx_u|count[5]~44\,
	combout => \rx_u|count[6]~45_combout\,
	cout => \rx_u|count[6]~46\);

-- Location: FF_X65_Y24_N13
\rx_u|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|count[6]~45_combout\,
	sclr => \rx_u|count[20]~42_combout\,
	ena => \rx_u|rx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|count\(6));

-- Location: LCCOMB_X65_Y24_N14
\rx_u|count[7]~47\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|count[7]~47_combout\ = (\rx_u|count\(7) & (!\rx_u|count[6]~46\)) # (!\rx_u|count\(7) & ((\rx_u|count[6]~46\) # (GND)))
-- \rx_u|count[7]~48\ = CARRY((!\rx_u|count[6]~46\) # (!\rx_u|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx_u|count\(7),
	datad => VCC,
	cin => \rx_u|count[6]~46\,
	combout => \rx_u|count[7]~47_combout\,
	cout => \rx_u|count[7]~48\);

-- Location: FF_X65_Y24_N15
\rx_u|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|count[7]~47_combout\,
	sclr => \rx_u|count[20]~42_combout\,
	ena => \rx_u|rx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|count\(7));

-- Location: LCCOMB_X65_Y24_N16
\rx_u|count[8]~49\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|count[8]~49_combout\ = (\rx_u|count\(8) & (\rx_u|count[7]~48\ $ (GND))) # (!\rx_u|count\(8) & (!\rx_u|count[7]~48\ & VCC))
-- \rx_u|count[8]~50\ = CARRY((\rx_u|count\(8) & !\rx_u|count[7]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx_u|count\(8),
	datad => VCC,
	cin => \rx_u|count[7]~48\,
	combout => \rx_u|count[8]~49_combout\,
	cout => \rx_u|count[8]~50\);

-- Location: FF_X65_Y24_N17
\rx_u|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|count[8]~49_combout\,
	sclr => \rx_u|count[20]~42_combout\,
	ena => \rx_u|rx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|count\(8));

-- Location: LCCOMB_X65_Y24_N18
\rx_u|count[9]~51\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|count[9]~51_combout\ = (\rx_u|count\(9) & (!\rx_u|count[8]~50\)) # (!\rx_u|count\(9) & ((\rx_u|count[8]~50\) # (GND)))
-- \rx_u|count[9]~52\ = CARRY((!\rx_u|count[8]~50\) # (!\rx_u|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx_u|count\(9),
	datad => VCC,
	cin => \rx_u|count[8]~50\,
	combout => \rx_u|count[9]~51_combout\,
	cout => \rx_u|count[9]~52\);

-- Location: FF_X65_Y24_N19
\rx_u|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|count[9]~51_combout\,
	sclr => \rx_u|count[20]~42_combout\,
	ena => \rx_u|rx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|count\(9));

-- Location: LCCOMB_X65_Y24_N20
\rx_u|count[10]~53\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|count[10]~53_combout\ = (\rx_u|count\(10) & (\rx_u|count[9]~52\ $ (GND))) # (!\rx_u|count\(10) & (!\rx_u|count[9]~52\ & VCC))
-- \rx_u|count[10]~54\ = CARRY((\rx_u|count\(10) & !\rx_u|count[9]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx_u|count\(10),
	datad => VCC,
	cin => \rx_u|count[9]~52\,
	combout => \rx_u|count[10]~53_combout\,
	cout => \rx_u|count[10]~54\);

-- Location: FF_X65_Y24_N21
\rx_u|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|count[10]~53_combout\,
	sclr => \rx_u|count[20]~42_combout\,
	ena => \rx_u|rx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|count\(10));

-- Location: LCCOMB_X65_Y24_N22
\rx_u|count[11]~55\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|count[11]~55_combout\ = (\rx_u|count\(11) & (!\rx_u|count[10]~54\)) # (!\rx_u|count\(11) & ((\rx_u|count[10]~54\) # (GND)))
-- \rx_u|count[11]~56\ = CARRY((!\rx_u|count[10]~54\) # (!\rx_u|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|count\(11),
	datad => VCC,
	cin => \rx_u|count[10]~54\,
	combout => \rx_u|count[11]~55_combout\,
	cout => \rx_u|count[11]~56\);

-- Location: FF_X65_Y24_N23
\rx_u|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|count[11]~55_combout\,
	sclr => \rx_u|count[20]~42_combout\,
	ena => \rx_u|rx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|count\(11));

-- Location: LCCOMB_X65_Y24_N24
\rx_u|count[12]~57\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|count[12]~57_combout\ = (\rx_u|count\(12) & (\rx_u|count[11]~56\ $ (GND))) # (!\rx_u|count\(12) & (!\rx_u|count[11]~56\ & VCC))
-- \rx_u|count[12]~58\ = CARRY((\rx_u|count\(12) & !\rx_u|count[11]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx_u|count\(12),
	datad => VCC,
	cin => \rx_u|count[11]~56\,
	combout => \rx_u|count[12]~57_combout\,
	cout => \rx_u|count[12]~58\);

-- Location: FF_X65_Y24_N25
\rx_u|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|count[12]~57_combout\,
	sclr => \rx_u|count[20]~42_combout\,
	ena => \rx_u|rx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|count\(12));

-- Location: LCCOMB_X65_Y24_N26
\rx_u|count[13]~59\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|count[13]~59_combout\ = (\rx_u|count\(13) & (!\rx_u|count[12]~58\)) # (!\rx_u|count\(13) & ((\rx_u|count[12]~58\) # (GND)))
-- \rx_u|count[13]~60\ = CARRY((!\rx_u|count[12]~58\) # (!\rx_u|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|count\(13),
	datad => VCC,
	cin => \rx_u|count[12]~58\,
	combout => \rx_u|count[13]~59_combout\,
	cout => \rx_u|count[13]~60\);

-- Location: FF_X65_Y24_N27
\rx_u|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|count[13]~59_combout\,
	sclr => \rx_u|count[20]~42_combout\,
	ena => \rx_u|rx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|count\(13));

-- Location: LCCOMB_X65_Y24_N28
\rx_u|count[14]~61\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|count[14]~61_combout\ = (\rx_u|count\(14) & (\rx_u|count[13]~60\ $ (GND))) # (!\rx_u|count\(14) & (!\rx_u|count[13]~60\ & VCC))
-- \rx_u|count[14]~62\ = CARRY((\rx_u|count\(14) & !\rx_u|count[13]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx_u|count\(14),
	datad => VCC,
	cin => \rx_u|count[13]~60\,
	combout => \rx_u|count[14]~61_combout\,
	cout => \rx_u|count[14]~62\);

-- Location: FF_X65_Y24_N29
\rx_u|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|count[14]~61_combout\,
	sclr => \rx_u|count[20]~42_combout\,
	ena => \rx_u|rx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|count\(14));

-- Location: LCCOMB_X65_Y24_N30
\rx_u|count[15]~63\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|count[15]~63_combout\ = (\rx_u|count\(15) & (!\rx_u|count[14]~62\)) # (!\rx_u|count\(15) & ((\rx_u|count[14]~62\) # (GND)))
-- \rx_u|count[15]~64\ = CARRY((!\rx_u|count[14]~62\) # (!\rx_u|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|count\(15),
	datad => VCC,
	cin => \rx_u|count[14]~62\,
	combout => \rx_u|count[15]~63_combout\,
	cout => \rx_u|count[15]~64\);

-- Location: FF_X65_Y24_N31
\rx_u|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|count[15]~63_combout\,
	sclr => \rx_u|count[20]~42_combout\,
	ena => \rx_u|rx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|count\(15));

-- Location: LCCOMB_X65_Y23_N0
\rx_u|count[16]~65\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|count[16]~65_combout\ = (\rx_u|count\(16) & (\rx_u|count[15]~64\ $ (GND))) # (!\rx_u|count\(16) & (!\rx_u|count[15]~64\ & VCC))
-- \rx_u|count[16]~66\ = CARRY((\rx_u|count\(16) & !\rx_u|count[15]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx_u|count\(16),
	datad => VCC,
	cin => \rx_u|count[15]~64\,
	combout => \rx_u|count[16]~65_combout\,
	cout => \rx_u|count[16]~66\);

-- Location: FF_X65_Y23_N1
\rx_u|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|count[16]~65_combout\,
	sclr => \rx_u|count[20]~42_combout\,
	ena => \rx_u|rx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|count\(16));

-- Location: LCCOMB_X65_Y23_N2
\rx_u|count[17]~67\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|count[17]~67_combout\ = (\rx_u|count\(17) & (!\rx_u|count[16]~66\)) # (!\rx_u|count\(17) & ((\rx_u|count[16]~66\) # (GND)))
-- \rx_u|count[17]~68\ = CARRY((!\rx_u|count[16]~66\) # (!\rx_u|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx_u|count\(17),
	datad => VCC,
	cin => \rx_u|count[16]~66\,
	combout => \rx_u|count[17]~67_combout\,
	cout => \rx_u|count[17]~68\);

-- Location: FF_X65_Y23_N3
\rx_u|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|count[17]~67_combout\,
	sclr => \rx_u|count[20]~42_combout\,
	ena => \rx_u|rx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|count\(17));

-- Location: LCCOMB_X65_Y23_N4
\rx_u|count[18]~69\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|count[18]~69_combout\ = (\rx_u|count\(18) & (\rx_u|count[17]~68\ $ (GND))) # (!\rx_u|count\(18) & (!\rx_u|count[17]~68\ & VCC))
-- \rx_u|count[18]~70\ = CARRY((\rx_u|count\(18) & !\rx_u|count[17]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx_u|count\(18),
	datad => VCC,
	cin => \rx_u|count[17]~68\,
	combout => \rx_u|count[18]~69_combout\,
	cout => \rx_u|count[18]~70\);

-- Location: FF_X65_Y23_N5
\rx_u|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|count[18]~69_combout\,
	sclr => \rx_u|count[20]~42_combout\,
	ena => \rx_u|rx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|count\(18));

-- Location: LCCOMB_X65_Y23_N6
\rx_u|count[19]~71\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|count[19]~71_combout\ = (\rx_u|count\(19) & (!\rx_u|count[18]~70\)) # (!\rx_u|count\(19) & ((\rx_u|count[18]~70\) # (GND)))
-- \rx_u|count[19]~72\ = CARRY((!\rx_u|count[18]~70\) # (!\rx_u|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|count\(19),
	datad => VCC,
	cin => \rx_u|count[18]~70\,
	combout => \rx_u|count[19]~71_combout\,
	cout => \rx_u|count[19]~72\);

-- Location: FF_X65_Y23_N7
\rx_u|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|count[19]~71_combout\,
	sclr => \rx_u|count[20]~42_combout\,
	ena => \rx_u|rx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|count\(19));

-- Location: LCCOMB_X65_Y23_N8
\rx_u|count[20]~73\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|count[20]~73_combout\ = (\rx_u|count\(20) & (\rx_u|count[19]~72\ $ (GND))) # (!\rx_u|count\(20) & (!\rx_u|count[19]~72\ & VCC))
-- \rx_u|count[20]~74\ = CARRY((\rx_u|count\(20) & !\rx_u|count[19]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx_u|count\(20),
	datad => VCC,
	cin => \rx_u|count[19]~72\,
	combout => \rx_u|count[20]~73_combout\,
	cout => \rx_u|count[20]~74\);

-- Location: FF_X65_Y23_N9
\rx_u|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|count[20]~73_combout\,
	sclr => \rx_u|count[20]~42_combout\,
	ena => \rx_u|rx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|count\(20));

-- Location: LCCOMB_X65_Y23_N10
\rx_u|count[21]~75\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|count[21]~75_combout\ = (\rx_u|count\(21) & (!\rx_u|count[20]~74\)) # (!\rx_u|count\(21) & ((\rx_u|count[20]~74\) # (GND)))
-- \rx_u|count[21]~76\ = CARRY((!\rx_u|count[20]~74\) # (!\rx_u|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|count\(21),
	datad => VCC,
	cin => \rx_u|count[20]~74\,
	combout => \rx_u|count[21]~75_combout\,
	cout => \rx_u|count[21]~76\);

-- Location: FF_X65_Y23_N11
\rx_u|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|count[21]~75_combout\,
	sclr => \rx_u|count[20]~42_combout\,
	ena => \rx_u|rx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|count\(21));

-- Location: LCCOMB_X65_Y23_N12
\rx_u|count[22]~77\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|count[22]~77_combout\ = (\rx_u|count\(22) & (\rx_u|count[21]~76\ $ (GND))) # (!\rx_u|count\(22) & (!\rx_u|count[21]~76\ & VCC))
-- \rx_u|count[22]~78\ = CARRY((\rx_u|count\(22) & !\rx_u|count[21]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|count\(22),
	datad => VCC,
	cin => \rx_u|count[21]~76\,
	combout => \rx_u|count[22]~77_combout\,
	cout => \rx_u|count[22]~78\);

-- Location: FF_X65_Y23_N13
\rx_u|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|count[22]~77_combout\,
	sclr => \rx_u|count[20]~42_combout\,
	ena => \rx_u|rx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|count\(22));

-- Location: LCCOMB_X65_Y23_N14
\rx_u|count[23]~79\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|count[23]~79_combout\ = (\rx_u|count\(23) & (!\rx_u|count[22]~78\)) # (!\rx_u|count\(23) & ((\rx_u|count[22]~78\) # (GND)))
-- \rx_u|count[23]~80\ = CARRY((!\rx_u|count[22]~78\) # (!\rx_u|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx_u|count\(23),
	datad => VCC,
	cin => \rx_u|count[22]~78\,
	combout => \rx_u|count[23]~79_combout\,
	cout => \rx_u|count[23]~80\);

-- Location: FF_X65_Y23_N15
\rx_u|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|count[23]~79_combout\,
	sclr => \rx_u|count[20]~42_combout\,
	ena => \rx_u|rx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|count\(23));

-- Location: LCCOMB_X65_Y23_N16
\rx_u|count[24]~81\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|count[24]~81_combout\ = (\rx_u|count\(24) & (\rx_u|count[23]~80\ $ (GND))) # (!\rx_u|count\(24) & (!\rx_u|count[23]~80\ & VCC))
-- \rx_u|count[24]~82\ = CARRY((\rx_u|count\(24) & !\rx_u|count[23]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx_u|count\(24),
	datad => VCC,
	cin => \rx_u|count[23]~80\,
	combout => \rx_u|count[24]~81_combout\,
	cout => \rx_u|count[24]~82\);

-- Location: FF_X64_Y23_N5
\rx_u|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rx_u|count[24]~81_combout\,
	sclr => \rx_u|count[20]~42_combout\,
	sload => VCC,
	ena => \rx_u|rx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|count\(24));

-- Location: LCCOMB_X65_Y23_N18
\rx_u|count[25]~83\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|count[25]~83_combout\ = (\rx_u|count\(25) & (!\rx_u|count[24]~82\)) # (!\rx_u|count\(25) & ((\rx_u|count[24]~82\) # (GND)))
-- \rx_u|count[25]~84\ = CARRY((!\rx_u|count[24]~82\) # (!\rx_u|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|count\(25),
	datad => VCC,
	cin => \rx_u|count[24]~82\,
	combout => \rx_u|count[25]~83_combout\,
	cout => \rx_u|count[25]~84\);

-- Location: FF_X64_Y23_N11
\rx_u|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rx_u|count[25]~83_combout\,
	sclr => \rx_u|count[20]~42_combout\,
	sload => VCC,
	ena => \rx_u|rx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|count\(25));

-- Location: LCCOMB_X65_Y23_N20
\rx_u|count[26]~85\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|count[26]~85_combout\ = (\rx_u|count\(26) & (\rx_u|count[25]~84\ $ (GND))) # (!\rx_u|count\(26) & (!\rx_u|count[25]~84\ & VCC))
-- \rx_u|count[26]~86\ = CARRY((\rx_u|count\(26) & !\rx_u|count[25]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|count\(26),
	datad => VCC,
	cin => \rx_u|count[25]~84\,
	combout => \rx_u|count[26]~85_combout\,
	cout => \rx_u|count[26]~86\);

-- Location: FF_X64_Y23_N17
\rx_u|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rx_u|count[26]~85_combout\,
	sclr => \rx_u|count[20]~42_combout\,
	sload => VCC,
	ena => \rx_u|rx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|count\(26));

-- Location: LCCOMB_X65_Y23_N22
\rx_u|count[27]~87\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|count[27]~87_combout\ = (\rx_u|count\(27) & (!\rx_u|count[26]~86\)) # (!\rx_u|count\(27) & ((\rx_u|count[26]~86\) # (GND)))
-- \rx_u|count[27]~88\ = CARRY((!\rx_u|count[26]~86\) # (!\rx_u|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|count\(27),
	datad => VCC,
	cin => \rx_u|count[26]~86\,
	combout => \rx_u|count[27]~87_combout\,
	cout => \rx_u|count[27]~88\);

-- Location: FF_X64_Y23_N27
\rx_u|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rx_u|count[27]~87_combout\,
	sclr => \rx_u|count[20]~42_combout\,
	sload => VCC,
	ena => \rx_u|rx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|count\(27));

-- Location: LCCOMB_X65_Y23_N24
\rx_u|count[28]~89\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|count[28]~89_combout\ = (\rx_u|count\(28) & (\rx_u|count[27]~88\ $ (GND))) # (!\rx_u|count\(28) & (!\rx_u|count[27]~88\ & VCC))
-- \rx_u|count[28]~90\ = CARRY((\rx_u|count\(28) & !\rx_u|count[27]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \rx_u|count\(28),
	datad => VCC,
	cin => \rx_u|count[27]~88\,
	combout => \rx_u|count[28]~89_combout\,
	cout => \rx_u|count[28]~90\);

-- Location: FF_X65_Y23_N25
\rx_u|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|count[28]~89_combout\,
	sclr => \rx_u|count[20]~42_combout\,
	ena => \rx_u|rx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|count\(28));

-- Location: FF_X65_Y23_N27
\rx_u|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|count[29]~91_combout\,
	sclr => \rx_u|count[20]~42_combout\,
	ena => \rx_u|rx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|count\(29));

-- Location: LCCOMB_X66_Y23_N20
\rx_u|Equal0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|Equal0~7_combout\ = (!\rx_u|count\(29) & (!\rx_u|count\(28) & !\rx_u|count\(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|count\(29),
	datab => \rx_u|count\(28),
	datad => \rx_u|count\(30),
	combout => \rx_u|Equal0~7_combout\);

-- Location: LCCOMB_X66_Y23_N30
\rx_u|Equal0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|Equal0~8_combout\ = (\rx_u|Equal0~7_combout\ & (\rx_u|Equal0~5_combout\ & \rx_u|Equal0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_u|Equal0~7_combout\,
	datac => \rx_u|Equal0~5_combout\,
	datad => \rx_u|Equal0~6_combout\,
	combout => \rx_u|Equal0~8_combout\);

-- Location: LCCOMB_X69_Y23_N20
\rx_u|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|LessThan1~0_combout\ = ((!\rx_u|index\(1) & (!\rx_u|index\(0) & !\rx_u|index\(2)))) # (!\rx_u|index\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|index\(1),
	datab => \rx_u|index\(0),
	datac => \rx_u|index\(3),
	datad => \rx_u|index\(2),
	combout => \rx_u|LessThan1~0_combout\);

-- Location: LCCOMB_X66_Y23_N8
\rx_u|rx_busy~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|rx_busy~0_combout\ = ((\rx_u|LessThan1~0_combout\) # ((!\rx_u|Equal0~4_combout\) # (!\rx_u|Equal0~10_combout\))) # (!\rx_u|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|Equal0~8_combout\,
	datab => \rx_u|LessThan1~0_combout\,
	datac => \rx_u|Equal0~10_combout\,
	datad => \rx_u|Equal0~4_combout\,
	combout => \rx_u|rx_busy~0_combout\);

-- Location: LCCOMB_X66_Y23_N4
\rx_u|rx_busy~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|rx_busy~feeder_combout\ = \rx_u|rx_busy~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_u|rx_busy~0_combout\,
	combout => \rx_u|rx_busy~feeder_combout\);

-- Location: FF_X66_Y23_N5
\rx_u|rx_busy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|rx_busy~feeder_combout\,
	sclr => \rx_u|ALT_INV_rx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|rx_busy~q\);

-- Location: FF_X51_Y4_N17
\tx_u|tx_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \tx_u|tx_flag~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \tx_u|tx_done~q\);

-- Location: IOIBUF_X78_Y18_N8
\rx_mode_32~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rx_mode_32,
	o => \rx_mode_32~input_o\);

-- Location: LCCOMB_X71_Y23_N18
\rx_u|Decoder1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|Decoder1~0_combout\ = (\rx_mode_32~input_o\ & (!\rx_u|LessThan1~0_combout\ & (\rx_u|process_0~0_combout\ & \rx_u|data_out_32[4]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_mode_32~input_o\,
	datab => \rx_u|LessThan1~0_combout\,
	datac => \rx_u|process_0~0_combout\,
	datad => \rx_u|data_out_32[4]~0_combout\,
	combout => \rx_u|Decoder1~0_combout\);

-- Location: LCCOMB_X74_Y23_N4
\rx_u|word[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|word[0]~0_combout\ = \rx_u|word\(0) $ (\rx_u|Decoder1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_u|word\(0),
	datad => \rx_u|Decoder1~0_combout\,
	combout => \rx_u|word[0]~0_combout\);

-- Location: FF_X74_Y23_N5
\rx_u|word[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|word[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|word\(0));

-- Location: LCCOMB_X74_Y23_N26
\rx_u|word[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|word[1]~1_combout\ = \rx_u|word\(1) $ (((\rx_u|word\(0) & \rx_u|Decoder1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_u|word\(0),
	datac => \rx_u|word\(1),
	datad => \rx_u|Decoder1~0_combout\,
	combout => \rx_u|word[1]~1_combout\);

-- Location: FF_X74_Y23_N27
\rx_u|word[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|word[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|word\(1));

-- Location: LCCOMB_X71_Y23_N24
\rx_u|rx_done~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|rx_done~0_combout\ = ((\rx_u|word\(1) & \rx_u|word\(0))) # (!\rx_mode_32~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_mode_32~input_o\,
	datab => \rx_u|word\(1),
	datad => \rx_u|word\(0),
	combout => \rx_u|rx_done~0_combout\);

-- Location: LCCOMB_X66_Y23_N22
\rx_u|rx_done~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|rx_done~1_combout\ = (\rx_u|rx_done~q\) # ((\rx_u|rx_done~0_combout\ & (!\rx_u|rx_busy~0_combout\ & \rx_u|process_0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|rx_done~0_combout\,
	datab => \rx_u|rx_busy~0_combout\,
	datac => \rx_u|rx_done~q\,
	datad => \rx_u|process_0~0_combout\,
	combout => \rx_u|rx_done~1_combout\);

-- Location: FF_X66_Y23_N23
\rx_u|rx_done\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|rx_done~1_combout\,
	sclr => \rx_u|ALT_INV_rx_flag~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|rx_done~q\);

-- Location: FF_X67_Y23_N5
\rx_u|data_full[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_full~1_combout\,
	ena => \rx_u|data_out_32[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_full\(1));

-- Location: LCCOMB_X67_Y23_N18
\rx_u|Decoder0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|Decoder0~2_combout\ = (!\rx_u|index\(1) & (\rx_u|index\(0) & (!\rx_u|index\(3) & !\rx_u|index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|index\(1),
	datab => \rx_u|index\(0),
	datac => \rx_u|index\(3),
	datad => \rx_u|index\(2),
	combout => \rx_u|Decoder0~2_combout\);

-- Location: LCCOMB_X67_Y23_N4
\rx_u|data_full~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_full~1_combout\ = (\rx_u|Decoder0~2_combout\ & (\uart_rx_line~input_o\)) # (!\rx_u|Decoder0~2_combout\ & ((\rx_u|data_full\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_line~input_o\,
	datac => \rx_u|data_full\(1),
	datad => \rx_u|Decoder0~2_combout\,
	combout => \rx_u|data_full~1_combout\);

-- Location: LCCOMB_X71_Y23_N16
\rx_u|data_out~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out~0_combout\ = (\rx_u|data_full~0_combout\ & (\rx_u|data_full~1_combout\ & !\rx_u|data_full~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_u|data_full~0_combout\,
	datac => \rx_u|data_full~1_combout\,
	datad => \rx_u|data_full~2_combout\,
	combout => \rx_u|data_out~0_combout\);

-- Location: LCCOMB_X71_Y23_N4
\rx_u|data_out[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out[0]~1_combout\ = (\rx_u|rx_flag~q\ & (!\rx_u|LessThan1~0_combout\ & (\rx_u|Equal0~11_combout\ & \rx_u|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|rx_flag~q\,
	datab => \rx_u|LessThan1~0_combout\,
	datac => \rx_u|Equal0~11_combout\,
	datad => \rx_u|Equal0~10_combout\,
	combout => \rx_u|data_out[0]~1_combout\);

-- Location: FF_X71_Y23_N17
\rx_u|data_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_out~0_combout\,
	ena => \rx_u|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out\(0));

-- Location: LCCOMB_X67_Y23_N22
\rx_u|Decoder0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|Decoder0~3_combout\ = (\rx_u|index\(1) & (!\rx_u|index\(0) & (!\rx_u|index\(3) & !\rx_u|index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|index\(1),
	datab => \rx_u|index\(0),
	datac => \rx_u|index\(3),
	datad => \rx_u|index\(2),
	combout => \rx_u|Decoder0~3_combout\);

-- Location: FF_X67_Y23_N21
\rx_u|data_full[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_full~3_combout\,
	ena => \rx_u|data_out_32[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_full\(2));

-- Location: LCCOMB_X67_Y23_N20
\rx_u|data_full~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_full~3_combout\ = (\rx_u|Decoder0~3_combout\ & ((\uart_rx_line~input_o\))) # (!\rx_u|Decoder0~3_combout\ & (\rx_u|data_full\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|Decoder0~3_combout\,
	datac => \rx_u|data_full\(2),
	datad => \uart_rx_line~input_o\,
	combout => \rx_u|data_full~3_combout\);

-- Location: LCCOMB_X71_Y23_N30
\rx_u|data_out~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out~2_combout\ = (\rx_u|data_full~3_combout\ & (\rx_u|data_full~0_combout\ & !\rx_u|data_full~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|data_full~3_combout\,
	datac => \rx_u|data_full~0_combout\,
	datad => \rx_u|data_full~2_combout\,
	combout => \rx_u|data_out~2_combout\);

-- Location: FF_X71_Y23_N31
\rx_u|data_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_out~2_combout\,
	ena => \rx_u|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out\(1));

-- Location: FF_X69_Y23_N23
\rx_u|data_full[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_full~4_combout\,
	ena => \rx_u|data_out_32[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_full\(3));

-- Location: LCCOMB_X69_Y23_N16
\rx_u|Decoder0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|Decoder0~4_combout\ = (\rx_u|index\(1) & (\rx_u|index\(0) & (!\rx_u|index\(3) & !\rx_u|index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|index\(1),
	datab => \rx_u|index\(0),
	datac => \rx_u|index\(3),
	datad => \rx_u|index\(2),
	combout => \rx_u|Decoder0~4_combout\);

-- Location: LCCOMB_X69_Y23_N22
\rx_u|data_full~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_full~4_combout\ = (\rx_u|Decoder0~4_combout\ & (\uart_rx_line~input_o\)) # (!\rx_u|Decoder0~4_combout\ & ((\rx_u|data_full\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_line~input_o\,
	datac => \rx_u|data_full\(3),
	datad => \rx_u|Decoder0~4_combout\,
	combout => \rx_u|data_full~4_combout\);

-- Location: LCCOMB_X71_Y23_N0
\rx_u|data_out~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out~3_combout\ = (\rx_u|data_full~0_combout\ & (!\rx_u|data_full~2_combout\ & \rx_u|data_full~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rx_u|data_full~0_combout\,
	datac => \rx_u|data_full~2_combout\,
	datad => \rx_u|data_full~4_combout\,
	combout => \rx_u|data_out~3_combout\);

-- Location: FF_X71_Y23_N1
\rx_u|data_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_out~3_combout\,
	ena => \rx_u|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out\(2));

-- Location: FF_X67_Y23_N25
\rx_u|data_full[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_full~5_combout\,
	ena => \rx_u|data_out_32[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_full\(4));

-- Location: LCCOMB_X67_Y23_N6
\rx_u|Decoder0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|Decoder0~5_combout\ = (!\rx_u|index\(1) & (!\rx_u|index\(0) & (!\rx_u|index\(3) & \rx_u|index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|index\(1),
	datab => \rx_u|index\(0),
	datac => \rx_u|index\(3),
	datad => \rx_u|index\(2),
	combout => \rx_u|Decoder0~5_combout\);

-- Location: LCCOMB_X67_Y23_N24
\rx_u|data_full~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_full~5_combout\ = (\rx_u|Decoder0~5_combout\ & (\uart_rx_line~input_o\)) # (!\rx_u|Decoder0~5_combout\ & ((\rx_u|data_full\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_line~input_o\,
	datac => \rx_u|data_full\(4),
	datad => \rx_u|Decoder0~5_combout\,
	combout => \rx_u|data_full~5_combout\);

-- Location: LCCOMB_X71_Y23_N14
\rx_u|data_out~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out~4_combout\ = (!\rx_u|data_full~2_combout\ & (\rx_u|data_full~0_combout\ & \rx_u|data_full~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|data_full~2_combout\,
	datab => \rx_u|data_full~0_combout\,
	datac => \rx_u|data_full~5_combout\,
	combout => \rx_u|data_out~4_combout\);

-- Location: FF_X71_Y23_N15
\rx_u|data_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_out~4_combout\,
	ena => \rx_u|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out\(3));

-- Location: FF_X67_Y23_N13
\rx_u|data_full[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_full~6_combout\,
	ena => \rx_u|data_out_32[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_full\(5));

-- Location: LCCOMB_X67_Y23_N2
\rx_u|Decoder0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|Decoder0~6_combout\ = (!\rx_u|index\(1) & (\rx_u|index\(0) & (!\rx_u|index\(3) & \rx_u|index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|index\(1),
	datab => \rx_u|index\(0),
	datac => \rx_u|index\(3),
	datad => \rx_u|index\(2),
	combout => \rx_u|Decoder0~6_combout\);

-- Location: LCCOMB_X67_Y23_N12
\rx_u|data_full~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_full~6_combout\ = (\rx_u|Decoder0~6_combout\ & (\uart_rx_line~input_o\)) # (!\rx_u|Decoder0~6_combout\ & ((\rx_u|data_full\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_line~input_o\,
	datac => \rx_u|data_full\(5),
	datad => \rx_u|Decoder0~6_combout\,
	combout => \rx_u|data_full~6_combout\);

-- Location: LCCOMB_X71_Y23_N8
\rx_u|data_out~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out~5_combout\ = (!\rx_u|data_full~2_combout\ & (\rx_u|data_full~0_combout\ & \rx_u|data_full~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|data_full~2_combout\,
	datab => \rx_u|data_full~0_combout\,
	datac => \rx_u|data_full~6_combout\,
	combout => \rx_u|data_out~5_combout\);

-- Location: FF_X71_Y23_N9
\rx_u|data_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_out~5_combout\,
	ena => \rx_u|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out\(4));

-- Location: FF_X69_Y23_N19
\rx_u|data_full[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_full~7_combout\,
	ena => \rx_u|data_out_32[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_full\(6));

-- Location: LCCOMB_X69_Y23_N28
\rx_u|Decoder0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|Decoder0~7_combout\ = (!\rx_u|index\(3) & (!\rx_u|index\(0) & (\rx_u|index\(1) & \rx_u|index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|index\(3),
	datab => \rx_u|index\(0),
	datac => \rx_u|index\(1),
	datad => \rx_u|index\(2),
	combout => \rx_u|Decoder0~7_combout\);

-- Location: LCCOMB_X69_Y23_N18
\rx_u|data_full~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_full~7_combout\ = (\rx_u|Decoder0~7_combout\ & (\uart_rx_line~input_o\)) # (!\rx_u|Decoder0~7_combout\ & ((\rx_u|data_full\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_line~input_o\,
	datac => \rx_u|data_full\(6),
	datad => \rx_u|Decoder0~7_combout\,
	combout => \rx_u|data_full~7_combout\);

-- Location: LCCOMB_X71_Y23_N6
\rx_u|data_out~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out~6_combout\ = (\rx_u|data_full~7_combout\ & (\rx_u|data_full~0_combout\ & !\rx_u|data_full~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|data_full~7_combout\,
	datab => \rx_u|data_full~0_combout\,
	datac => \rx_u|data_full~2_combout\,
	combout => \rx_u|data_out~6_combout\);

-- Location: FF_X71_Y23_N7
\rx_u|data_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_out~6_combout\,
	ena => \rx_u|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out\(5));

-- Location: FF_X69_Y23_N3
\rx_u|data_full[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_full~8_combout\,
	ena => \rx_u|data_out_32[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_full\(7));

-- Location: LCCOMB_X69_Y23_N12
\rx_u|Decoder0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|Decoder0~8_combout\ = (!\rx_u|index\(3) & (\rx_u|index\(0) & (\rx_u|index\(1) & \rx_u|index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|index\(3),
	datab => \rx_u|index\(0),
	datac => \rx_u|index\(1),
	datad => \rx_u|index\(2),
	combout => \rx_u|Decoder0~8_combout\);

-- Location: LCCOMB_X69_Y23_N2
\rx_u|data_full~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_full~8_combout\ = (\rx_u|Decoder0~8_combout\ & (\uart_rx_line~input_o\)) # (!\rx_u|Decoder0~8_combout\ & ((\rx_u|data_full\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_line~input_o\,
	datac => \rx_u|data_full\(7),
	datad => \rx_u|Decoder0~8_combout\,
	combout => \rx_u|data_full~8_combout\);

-- Location: LCCOMB_X71_Y23_N12
\rx_u|data_out~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out~7_combout\ = (!\rx_u|data_full~2_combout\ & (\rx_u|data_full~0_combout\ & \rx_u|data_full~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|data_full~2_combout\,
	datab => \rx_u|data_full~0_combout\,
	datac => \rx_u|data_full~8_combout\,
	combout => \rx_u|data_out~7_combout\);

-- Location: FF_X71_Y23_N13
\rx_u|data_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_out~7_combout\,
	ena => \rx_u|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out\(6));

-- Location: FF_X67_Y23_N17
\rx_u|data_full[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_full~9_combout\,
	ena => \rx_u|data_out_32[4]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_full\(8));

-- Location: LCCOMB_X67_Y23_N10
\rx_u|Decoder0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|Decoder0~9_combout\ = (!\rx_u|index\(1) & (!\rx_u|index\(0) & (\rx_u|index\(3) & !\rx_u|index\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|index\(1),
	datab => \rx_u|index\(0),
	datac => \rx_u|index\(3),
	datad => \rx_u|index\(2),
	combout => \rx_u|Decoder0~9_combout\);

-- Location: LCCOMB_X67_Y23_N16
\rx_u|data_full~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_full~9_combout\ = (\rx_u|Decoder0~9_combout\ & (\uart_rx_line~input_o\)) # (!\rx_u|Decoder0~9_combout\ & ((\rx_u|data_full\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \uart_rx_line~input_o\,
	datac => \rx_u|data_full\(8),
	datad => \rx_u|Decoder0~9_combout\,
	combout => \rx_u|data_full~9_combout\);

-- Location: LCCOMB_X71_Y23_N2
\rx_u|data_out~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out~8_combout\ = (!\rx_u|data_full~2_combout\ & (\rx_u|data_full~9_combout\ & \rx_u|data_full~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|data_full~2_combout\,
	datab => \rx_u|data_full~9_combout\,
	datac => \rx_u|data_full~0_combout\,
	combout => \rx_u|data_out~8_combout\);

-- Location: FF_X71_Y23_N3
\rx_u|data_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_out~8_combout\,
	ena => \rx_u|data_out[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out\(7));

-- Location: LCCOMB_X70_Y23_N24
\rx_u|data_out_32[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out_32[0]~feeder_combout\ = \rx_u|data_full~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_u|data_full~1_combout\,
	combout => \rx_u|data_out_32[0]~feeder_combout\);

-- Location: LCCOMB_X71_Y23_N26
\rx_u|Decoder1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|Decoder1~1_combout\ = (!\rx_u|word\(0) & (!\rx_u|word\(1) & \rx_u|Decoder1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|word\(0),
	datab => \rx_u|word\(1),
	datad => \rx_u|Decoder1~0_combout\,
	combout => \rx_u|Decoder1~1_combout\);

-- Location: FF_X70_Y23_N25
\rx_u|data_out_32[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_out_32[0]~feeder_combout\,
	ena => \rx_u|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out_32\(0));

-- Location: LCCOMB_X71_Y23_N28
\rx_u|data_out_32[1]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out_32[1]~feeder_combout\ = \rx_u|data_full~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_u|data_full~3_combout\,
	combout => \rx_u|data_out_32[1]~feeder_combout\);

-- Location: FF_X71_Y23_N29
\rx_u|data_out_32[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_out_32[1]~feeder_combout\,
	ena => \rx_u|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out_32\(1));

-- Location: LCCOMB_X70_Y23_N18
\rx_u|data_out_32[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out_32[2]~feeder_combout\ = \rx_u|data_full~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_u|data_full~4_combout\,
	combout => \rx_u|data_out_32[2]~feeder_combout\);

-- Location: FF_X70_Y23_N19
\rx_u|data_out_32[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_out_32[2]~feeder_combout\,
	ena => \rx_u|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out_32\(2));

-- Location: FF_X71_Y23_N27
\rx_u|data_out_32[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rx_u|data_full~5_combout\,
	sload => VCC,
	ena => \rx_u|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out_32\(3));

-- Location: FF_X71_Y23_N25
\rx_u|data_out_32[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rx_u|data_full~6_combout\,
	sload => VCC,
	ena => \rx_u|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out_32\(4));

-- Location: LCCOMB_X71_Y23_N10
\rx_u|data_out_32[5]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out_32[5]~feeder_combout\ = \rx_u|data_full~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_u|data_full~7_combout\,
	combout => \rx_u|data_out_32[5]~feeder_combout\);

-- Location: FF_X71_Y23_N11
\rx_u|data_out_32[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_out_32[5]~feeder_combout\,
	ena => \rx_u|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out_32\(5));

-- Location: LCCOMB_X71_Y23_N20
\rx_u|data_out_32[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out_32[6]~feeder_combout\ = \rx_u|data_full~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_u|data_full~8_combout\,
	combout => \rx_u|data_out_32[6]~feeder_combout\);

-- Location: FF_X71_Y23_N21
\rx_u|data_out_32[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_out_32[6]~feeder_combout\,
	ena => \rx_u|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out_32\(6));

-- Location: LCCOMB_X71_Y23_N22
\rx_u|data_out_32[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out_32[7]~feeder_combout\ = \rx_u|data_full~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_u|data_full~9_combout\,
	combout => \rx_u|data_out_32[7]~feeder_combout\);

-- Location: FF_X71_Y23_N23
\rx_u|data_out_32[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_out_32[7]~feeder_combout\,
	ena => \rx_u|Decoder1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out_32\(7));

-- Location: LCCOMB_X72_Y23_N20
\rx_u|Decoder1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|Decoder1~2_combout\ = (!\rx_u|word\(1) & (\rx_u|word\(0) & \rx_u|Decoder1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|word\(1),
	datab => \rx_u|word\(0),
	datad => \rx_u|Decoder1~0_combout\,
	combout => \rx_u|Decoder1~2_combout\);

-- Location: FF_X72_Y23_N21
\rx_u|data_out_32[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rx_u|data_full~1_combout\,
	sload => VCC,
	ena => \rx_u|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out_32\(8));

-- Location: LCCOMB_X72_Y23_N22
\rx_u|data_out_32[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out_32[9]~feeder_combout\ = \rx_u|data_full~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_u|data_full~3_combout\,
	combout => \rx_u|data_out_32[9]~feeder_combout\);

-- Location: FF_X72_Y23_N23
\rx_u|data_out_32[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_out_32[9]~feeder_combout\,
	ena => \rx_u|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out_32\(9));

-- Location: LCCOMB_X72_Y23_N24
\rx_u|data_out_32[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out_32[10]~feeder_combout\ = \rx_u|data_full~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_u|data_full~4_combout\,
	combout => \rx_u|data_out_32[10]~feeder_combout\);

-- Location: FF_X72_Y23_N25
\rx_u|data_out_32[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_out_32[10]~feeder_combout\,
	ena => \rx_u|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out_32\(10));

-- Location: LCCOMB_X72_Y23_N6
\rx_u|data_out_32[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out_32[11]~feeder_combout\ = \rx_u|data_full~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_u|data_full~5_combout\,
	combout => \rx_u|data_out_32[11]~feeder_combout\);

-- Location: FF_X72_Y23_N7
\rx_u|data_out_32[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_out_32[11]~feeder_combout\,
	ena => \rx_u|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out_32\(11));

-- Location: LCCOMB_X72_Y23_N12
\rx_u|data_out_32[12]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out_32[12]~feeder_combout\ = \rx_u|data_full~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_u|data_full~6_combout\,
	combout => \rx_u|data_out_32[12]~feeder_combout\);

-- Location: FF_X72_Y23_N13
\rx_u|data_out_32[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_out_32[12]~feeder_combout\,
	ena => \rx_u|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out_32\(12));

-- Location: LCCOMB_X72_Y23_N30
\rx_u|data_out_32[13]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out_32[13]~feeder_combout\ = \rx_u|data_full~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_u|data_full~7_combout\,
	combout => \rx_u|data_out_32[13]~feeder_combout\);

-- Location: FF_X72_Y23_N31
\rx_u|data_out_32[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_out_32[13]~feeder_combout\,
	ena => \rx_u|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out_32\(13));

-- Location: LCCOMB_X72_Y23_N8
\rx_u|data_out_32[14]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out_32[14]~feeder_combout\ = \rx_u|data_full~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_u|data_full~8_combout\,
	combout => \rx_u|data_out_32[14]~feeder_combout\);

-- Location: FF_X72_Y23_N9
\rx_u|data_out_32[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_out_32[14]~feeder_combout\,
	ena => \rx_u|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out_32\(14));

-- Location: LCCOMB_X72_Y23_N10
\rx_u|data_out_32[15]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out_32[15]~feeder_combout\ = \rx_u|data_full~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_u|data_full~9_combout\,
	combout => \rx_u|data_out_32[15]~feeder_combout\);

-- Location: FF_X72_Y23_N11
\rx_u|data_out_32[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_out_32[15]~feeder_combout\,
	ena => \rx_u|Decoder1~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out_32\(15));

-- Location: LCCOMB_X72_Y23_N16
\rx_u|data_out_32[16]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out_32[16]~feeder_combout\ = \rx_u|data_full~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_u|data_full~1_combout\,
	combout => \rx_u|data_out_32[16]~feeder_combout\);

-- Location: LCCOMB_X72_Y23_N4
\rx_u|Decoder1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|Decoder1~3_combout\ = (\rx_u|word\(1) & (!\rx_u|word\(0) & \rx_u|Decoder1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|word\(1),
	datab => \rx_u|word\(0),
	datad => \rx_u|Decoder1~0_combout\,
	combout => \rx_u|Decoder1~3_combout\);

-- Location: FF_X72_Y23_N17
\rx_u|data_out_32[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_out_32[16]~feeder_combout\,
	ena => \rx_u|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out_32\(16));

-- Location: LCCOMB_X72_Y23_N14
\rx_u|data_out_32[17]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out_32[17]~feeder_combout\ = \rx_u|data_full~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_u|data_full~3_combout\,
	combout => \rx_u|data_out_32[17]~feeder_combout\);

-- Location: FF_X72_Y23_N15
\rx_u|data_out_32[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_out_32[17]~feeder_combout\,
	ena => \rx_u|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out_32\(17));

-- Location: LCCOMB_X72_Y23_N0
\rx_u|data_out_32[18]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out_32[18]~feeder_combout\ = \rx_u|data_full~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_u|data_full~4_combout\,
	combout => \rx_u|data_out_32[18]~feeder_combout\);

-- Location: FF_X72_Y23_N1
\rx_u|data_out_32[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_out_32[18]~feeder_combout\,
	ena => \rx_u|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out_32\(18));

-- Location: LCCOMB_X72_Y23_N2
\rx_u|data_out_32[19]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out_32[19]~feeder_combout\ = \rx_u|data_full~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_u|data_full~5_combout\,
	combout => \rx_u|data_out_32[19]~feeder_combout\);

-- Location: FF_X72_Y23_N3
\rx_u|data_out_32[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_out_32[19]~feeder_combout\,
	ena => \rx_u|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out_32\(19));

-- Location: LCCOMB_X72_Y23_N28
\rx_u|data_out_32[20]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out_32[20]~feeder_combout\ = \rx_u|data_full~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_u|data_full~6_combout\,
	combout => \rx_u|data_out_32[20]~feeder_combout\);

-- Location: FF_X72_Y23_N29
\rx_u|data_out_32[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_out_32[20]~feeder_combout\,
	ena => \rx_u|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out_32\(20));

-- Location: LCCOMB_X72_Y23_N18
\rx_u|data_out_32[21]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out_32[21]~feeder_combout\ = \rx_u|data_full~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_u|data_full~7_combout\,
	combout => \rx_u|data_out_32[21]~feeder_combout\);

-- Location: FF_X72_Y23_N19
\rx_u|data_out_32[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_out_32[21]~feeder_combout\,
	ena => \rx_u|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out_32\(21));

-- Location: FF_X72_Y23_N5
\rx_u|data_out_32[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rx_u|data_full~8_combout\,
	sload => VCC,
	ena => \rx_u|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out_32\(22));

-- Location: LCCOMB_X72_Y23_N26
\rx_u|data_out_32[23]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out_32[23]~feeder_combout\ = \rx_u|data_full~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_u|data_full~9_combout\,
	combout => \rx_u|data_out_32[23]~feeder_combout\);

-- Location: FF_X72_Y23_N27
\rx_u|data_out_32[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_out_32[23]~feeder_combout\,
	ena => \rx_u|Decoder1~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out_32\(23));

-- Location: LCCOMB_X70_Y23_N12
\rx_u|Decoder1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|Decoder1~4_combout\ = (\rx_u|word\(0) & (\rx_u|word\(1) & \rx_u|Decoder1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rx_u|word\(0),
	datab => \rx_u|word\(1),
	datad => \rx_u|Decoder1~0_combout\,
	combout => \rx_u|Decoder1~4_combout\);

-- Location: FF_X70_Y23_N13
\rx_u|data_out_32[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \rx_u|data_full~1_combout\,
	sload => VCC,
	ena => \rx_u|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out_32\(24));

-- Location: LCCOMB_X70_Y23_N6
\rx_u|data_out_32[25]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out_32[25]~feeder_combout\ = \rx_u|data_full~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_u|data_full~3_combout\,
	combout => \rx_u|data_out_32[25]~feeder_combout\);

-- Location: FF_X70_Y23_N7
\rx_u|data_out_32[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_out_32[25]~feeder_combout\,
	ena => \rx_u|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out_32\(25));

-- Location: LCCOMB_X70_Y23_N0
\rx_u|data_out_32[26]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out_32[26]~feeder_combout\ = \rx_u|data_full~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_u|data_full~4_combout\,
	combout => \rx_u|data_out_32[26]~feeder_combout\);

-- Location: FF_X70_Y23_N1
\rx_u|data_out_32[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_out_32[26]~feeder_combout\,
	ena => \rx_u|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out_32\(26));

-- Location: LCCOMB_X70_Y23_N2
\rx_u|data_out_32[27]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out_32[27]~feeder_combout\ = \rx_u|data_full~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_u|data_full~5_combout\,
	combout => \rx_u|data_out_32[27]~feeder_combout\);

-- Location: FF_X70_Y23_N3
\rx_u|data_out_32[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_out_32[27]~feeder_combout\,
	ena => \rx_u|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out_32\(27));

-- Location: LCCOMB_X70_Y23_N8
\rx_u|data_out_32[28]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out_32[28]~feeder_combout\ = \rx_u|data_full~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_u|data_full~6_combout\,
	combout => \rx_u|data_out_32[28]~feeder_combout\);

-- Location: FF_X70_Y23_N9
\rx_u|data_out_32[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_out_32[28]~feeder_combout\,
	ena => \rx_u|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out_32\(28));

-- Location: LCCOMB_X70_Y23_N10
\rx_u|data_out_32[29]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out_32[29]~feeder_combout\ = \rx_u|data_full~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_u|data_full~7_combout\,
	combout => \rx_u|data_out_32[29]~feeder_combout\);

-- Location: FF_X70_Y23_N11
\rx_u|data_out_32[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_out_32[29]~feeder_combout\,
	ena => \rx_u|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out_32\(29));

-- Location: LCCOMB_X70_Y23_N20
\rx_u|data_out_32[30]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out_32[30]~feeder_combout\ = \rx_u|data_full~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rx_u|data_full~8_combout\,
	combout => \rx_u|data_out_32[30]~feeder_combout\);

-- Location: FF_X70_Y23_N21
\rx_u|data_out_32[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_out_32[30]~feeder_combout\,
	ena => \rx_u|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out_32\(30));

-- Location: LCCOMB_X70_Y23_N26
\rx_u|data_out_32[31]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \rx_u|data_out_32[31]~feeder_combout\ = \rx_u|data_full~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rx_u|data_full~9_combout\,
	combout => \rx_u|data_out_32[31]~feeder_combout\);

-- Location: FF_X70_Y23_N27
\rx_u|data_out_32[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \rx_u|data_out_32[31]~feeder_combout\,
	ena => \rx_u|Decoder1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rx_u|data_out_32\(31));

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X43_Y52_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_uart_tx_line <= \uart_tx_line~output_o\;

ww_tx_busy <= \tx_busy~output_o\;

ww_rx_busy <= \rx_busy~output_o\;

ww_tx_done <= \tx_done~output_o\;

ww_rx_done <= \rx_done~output_o\;

ww_data_out(0) <= \data_out[0]~output_o\;

ww_data_out(1) <= \data_out[1]~output_o\;

ww_data_out(2) <= \data_out[2]~output_o\;

ww_data_out(3) <= \data_out[3]~output_o\;

ww_data_out(4) <= \data_out[4]~output_o\;

ww_data_out(5) <= \data_out[5]~output_o\;

ww_data_out(6) <= \data_out[6]~output_o\;

ww_data_out(7) <= \data_out[7]~output_o\;

ww_data_out_32(0) <= \data_out_32[0]~output_o\;

ww_data_out_32(1) <= \data_out_32[1]~output_o\;

ww_data_out_32(2) <= \data_out_32[2]~output_o\;

ww_data_out_32(3) <= \data_out_32[3]~output_o\;

ww_data_out_32(4) <= \data_out_32[4]~output_o\;

ww_data_out_32(5) <= \data_out_32[5]~output_o\;

ww_data_out_32(6) <= \data_out_32[6]~output_o\;

ww_data_out_32(7) <= \data_out_32[7]~output_o\;

ww_data_out_32(8) <= \data_out_32[8]~output_o\;

ww_data_out_32(9) <= \data_out_32[9]~output_o\;

ww_data_out_32(10) <= \data_out_32[10]~output_o\;

ww_data_out_32(11) <= \data_out_32[11]~output_o\;

ww_data_out_32(12) <= \data_out_32[12]~output_o\;

ww_data_out_32(13) <= \data_out_32[13]~output_o\;

ww_data_out_32(14) <= \data_out_32[14]~output_o\;

ww_data_out_32(15) <= \data_out_32[15]~output_o\;

ww_data_out_32(16) <= \data_out_32[16]~output_o\;

ww_data_out_32(17) <= \data_out_32[17]~output_o\;

ww_data_out_32(18) <= \data_out_32[18]~output_o\;

ww_data_out_32(19) <= \data_out_32[19]~output_o\;

ww_data_out_32(20) <= \data_out_32[20]~output_o\;

ww_data_out_32(21) <= \data_out_32[21]~output_o\;

ww_data_out_32(22) <= \data_out_32[22]~output_o\;

ww_data_out_32(23) <= \data_out_32[23]~output_o\;

ww_data_out_32(24) <= \data_out_32[24]~output_o\;

ww_data_out_32(25) <= \data_out_32[25]~output_o\;

ww_data_out_32(26) <= \data_out_32[26]~output_o\;

ww_data_out_32(27) <= \data_out_32[27]~output_o\;

ww_data_out_32(28) <= \data_out_32[28]~output_o\;

ww_data_out_32(29) <= \data_out_32[29]~output_o\;

ww_data_out_32(30) <= \data_out_32[30]~output_o\;

ww_data_out_32(31) <= \data_out_32[31]~output_o\;
END structure;


