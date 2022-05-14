-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "05/13/2022 20:33:02"

-- 
-- Device: Altera EP4CE6F17C6 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	ula IS
    PORT (
	entrada_a : IN std_logic_vector(31 DOWNTO 0);
	entrada_b : IN std_logic_vector(31 DOWNTO 0);
	seletor : IN std_logic_vector(3 DOWNTO 0);
	saida : OUT std_logic_vector(31 DOWNTO 0)
	);
END ula;

-- Design Ports Information
-- saida[0]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[1]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[2]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[3]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[4]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[5]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[6]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[7]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[8]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[9]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[10]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[11]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[12]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[13]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[14]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[15]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[16]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[17]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[18]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[19]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[20]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[21]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[22]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[23]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[24]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[25]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[26]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[27]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[28]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[29]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[30]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida[31]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_a[0]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_b[4]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_b[3]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_b[2]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_b[0]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_b[1]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seletor[0]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_b[5]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_b[6]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_b[7]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_b[8]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_b[9]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_b[10]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_b[11]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_b[12]	=>  Location: PIN_L3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_b[13]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_b[14]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_b[15]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_b[16]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_b[17]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_b[18]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_b[19]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_b[20]	=>  Location: PIN_L4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_b[21]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_b[22]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_b[23]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_b[24]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_b[25]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_b[26]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_b[27]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_b[28]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_b[29]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_b[30]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_a[1]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_a[3]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_a[2]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_a[7]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_a[6]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_a[5]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_a[4]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_a[15]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_a[13]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_a[14]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_a[12]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_a[11]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_a[9]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_a[10]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_a[8]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_a[29]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_a[28]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_a[31]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_a[30]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_a[27]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_a[25]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_a[26]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_a[24]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_a[23]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_a[21]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_a[22]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_a[20]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_a[19]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_a[17]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_a[18]	=>  Location: PIN_T13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_a[16]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seletor[1]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seletor[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- seletor[3]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_b[31]	=>  Location: PIN_T14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF ula IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entrada_a : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_entrada_b : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_seletor : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_saida : std_logic_vector(31 DOWNTO 0);
SIGNAL \saida[0]~output_o\ : std_logic;
SIGNAL \saida[1]~output_o\ : std_logic;
SIGNAL \saida[2]~output_o\ : std_logic;
SIGNAL \saida[3]~output_o\ : std_logic;
SIGNAL \saida[4]~output_o\ : std_logic;
SIGNAL \saida[5]~output_o\ : std_logic;
SIGNAL \saida[6]~output_o\ : std_logic;
SIGNAL \saida[7]~output_o\ : std_logic;
SIGNAL \saida[8]~output_o\ : std_logic;
SIGNAL \saida[9]~output_o\ : std_logic;
SIGNAL \saida[10]~output_o\ : std_logic;
SIGNAL \saida[11]~output_o\ : std_logic;
SIGNAL \saida[12]~output_o\ : std_logic;
SIGNAL \saida[13]~output_o\ : std_logic;
SIGNAL \saida[14]~output_o\ : std_logic;
SIGNAL \saida[15]~output_o\ : std_logic;
SIGNAL \saida[16]~output_o\ : std_logic;
SIGNAL \saida[17]~output_o\ : std_logic;
SIGNAL \saida[18]~output_o\ : std_logic;
SIGNAL \saida[19]~output_o\ : std_logic;
SIGNAL \saida[20]~output_o\ : std_logic;
SIGNAL \saida[21]~output_o\ : std_logic;
SIGNAL \saida[22]~output_o\ : std_logic;
SIGNAL \saida[23]~output_o\ : std_logic;
SIGNAL \saida[24]~output_o\ : std_logic;
SIGNAL \saida[25]~output_o\ : std_logic;
SIGNAL \saida[26]~output_o\ : std_logic;
SIGNAL \saida[27]~output_o\ : std_logic;
SIGNAL \saida[28]~output_o\ : std_logic;
SIGNAL \saida[29]~output_o\ : std_logic;
SIGNAL \saida[30]~output_o\ : std_logic;
SIGNAL \saida[31]~output_o\ : std_logic;
SIGNAL \entrada_a[0]~input_o\ : std_logic;
SIGNAL \seletor[3]~input_o\ : std_logic;
SIGNAL \entrada_b[0]~input_o\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \seletor[1]~input_o\ : std_logic;
SIGNAL \seletor[0]~input_o\ : std_logic;
SIGNAL \seletor[2]~input_o\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Add0~4_cout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Mux31~5_combout\ : std_logic;
SIGNAL \Mux31~6_combout\ : std_logic;
SIGNAL \entrada_b[31]~input_o\ : std_logic;
SIGNAL \entrada_a[31]~input_o\ : std_logic;
SIGNAL \entrada_a[30]~input_o\ : std_logic;
SIGNAL \entrada_b[30]~input_o\ : std_logic;
SIGNAL \entrada_a[29]~input_o\ : std_logic;
SIGNAL \entrada_b[29]~input_o\ : std_logic;
SIGNAL \entrada_b[28]~input_o\ : std_logic;
SIGNAL \entrada_a[28]~input_o\ : std_logic;
SIGNAL \entrada_b[27]~input_o\ : std_logic;
SIGNAL \entrada_a[27]~input_o\ : std_logic;
SIGNAL \entrada_b[26]~input_o\ : std_logic;
SIGNAL \entrada_a[26]~input_o\ : std_logic;
SIGNAL \entrada_a[25]~input_o\ : std_logic;
SIGNAL \entrada_b[25]~input_o\ : std_logic;
SIGNAL \entrada_b[24]~input_o\ : std_logic;
SIGNAL \entrada_a[24]~input_o\ : std_logic;
SIGNAL \entrada_a[23]~input_o\ : std_logic;
SIGNAL \entrada_b[23]~input_o\ : std_logic;
SIGNAL \entrada_b[22]~input_o\ : std_logic;
SIGNAL \entrada_a[22]~input_o\ : std_logic;
SIGNAL \entrada_a[21]~input_o\ : std_logic;
SIGNAL \entrada_b[21]~input_o\ : std_logic;
SIGNAL \entrada_b[20]~input_o\ : std_logic;
SIGNAL \entrada_a[20]~input_o\ : std_logic;
SIGNAL \entrada_a[19]~input_o\ : std_logic;
SIGNAL \entrada_b[19]~input_o\ : std_logic;
SIGNAL \entrada_a[18]~input_o\ : std_logic;
SIGNAL \entrada_b[18]~input_o\ : std_logic;
SIGNAL \entrada_a[17]~input_o\ : std_logic;
SIGNAL \entrada_b[17]~input_o\ : std_logic;
SIGNAL \entrada_a[16]~input_o\ : std_logic;
SIGNAL \entrada_b[16]~input_o\ : std_logic;
SIGNAL \entrada_b[15]~input_o\ : std_logic;
SIGNAL \entrada_a[15]~input_o\ : std_logic;
SIGNAL \entrada_a[14]~input_o\ : std_logic;
SIGNAL \entrada_b[14]~input_o\ : std_logic;
SIGNAL \entrada_a[13]~input_o\ : std_logic;
SIGNAL \entrada_b[13]~input_o\ : std_logic;
SIGNAL \entrada_a[12]~input_o\ : std_logic;
SIGNAL \entrada_b[12]~input_o\ : std_logic;
SIGNAL \entrada_a[11]~input_o\ : std_logic;
SIGNAL \entrada_b[11]~input_o\ : std_logic;
SIGNAL \entrada_a[10]~input_o\ : std_logic;
SIGNAL \entrada_b[10]~input_o\ : std_logic;
SIGNAL \entrada_a[9]~input_o\ : std_logic;
SIGNAL \entrada_b[9]~input_o\ : std_logic;
SIGNAL \entrada_b[8]~input_o\ : std_logic;
SIGNAL \entrada_a[8]~input_o\ : std_logic;
SIGNAL \entrada_a[7]~input_o\ : std_logic;
SIGNAL \entrada_b[7]~input_o\ : std_logic;
SIGNAL \entrada_a[6]~input_o\ : std_logic;
SIGNAL \entrada_b[6]~input_o\ : std_logic;
SIGNAL \entrada_a[5]~input_o\ : std_logic;
SIGNAL \entrada_b[5]~input_o\ : std_logic;
SIGNAL \entrada_b[4]~input_o\ : std_logic;
SIGNAL \entrada_a[4]~input_o\ : std_logic;
SIGNAL \entrada_b[3]~input_o\ : std_logic;
SIGNAL \entrada_a[3]~input_o\ : std_logic;
SIGNAL \entrada_b[2]~input_o\ : std_logic;
SIGNAL \entrada_a[2]~input_o\ : std_logic;
SIGNAL \entrada_b[1]~input_o\ : std_logic;
SIGNAL \entrada_a[1]~input_o\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~11_cout\ : std_logic;
SIGNAL \LessThan0~13_cout\ : std_logic;
SIGNAL \LessThan0~15_cout\ : std_logic;
SIGNAL \LessThan0~17_cout\ : std_logic;
SIGNAL \LessThan0~19_cout\ : std_logic;
SIGNAL \LessThan0~21_cout\ : std_logic;
SIGNAL \LessThan0~23_cout\ : std_logic;
SIGNAL \LessThan0~25_cout\ : std_logic;
SIGNAL \LessThan0~27_cout\ : std_logic;
SIGNAL \LessThan0~29_cout\ : std_logic;
SIGNAL \LessThan0~31_cout\ : std_logic;
SIGNAL \LessThan0~33_cout\ : std_logic;
SIGNAL \LessThan0~35_cout\ : std_logic;
SIGNAL \LessThan0~37_cout\ : std_logic;
SIGNAL \LessThan0~39_cout\ : std_logic;
SIGNAL \LessThan0~41_cout\ : std_logic;
SIGNAL \LessThan0~43_cout\ : std_logic;
SIGNAL \LessThan0~45_cout\ : std_logic;
SIGNAL \LessThan0~47_cout\ : std_logic;
SIGNAL \LessThan0~49_cout\ : std_logic;
SIGNAL \LessThan0~51_cout\ : std_logic;
SIGNAL \LessThan0~53_cout\ : std_logic;
SIGNAL \LessThan0~55_cout\ : std_logic;
SIGNAL \LessThan0~57_cout\ : std_logic;
SIGNAL \LessThan0~59_cout\ : std_logic;
SIGNAL \LessThan0~61_cout\ : std_logic;
SIGNAL \LessThan0~62_combout\ : std_logic;
SIGNAL \Mux31~2_combout\ : std_logic;
SIGNAL \Mux31~3_combout\ : std_logic;
SIGNAL \ShiftRight0~21_combout\ : std_logic;
SIGNAL \ShiftRight0~22_combout\ : std_logic;
SIGNAL \ShiftRight0~23_combout\ : std_logic;
SIGNAL \ShiftRight0~25_combout\ : std_logic;
SIGNAL \ShiftRight0~24_combout\ : std_logic;
SIGNAL \ShiftRight0~26_combout\ : std_logic;
SIGNAL \ShiftRight0~27_combout\ : std_logic;
SIGNAL \ShiftRight0~15_combout\ : std_logic;
SIGNAL \ShiftRight1~14_combout\ : std_logic;
SIGNAL \ShiftRight0~16_combout\ : std_logic;
SIGNAL \ShiftRight0~17_combout\ : std_logic;
SIGNAL \ShiftRight0~18_combout\ : std_logic;
SIGNAL \ShiftRight0~19_combout\ : std_logic;
SIGNAL \ShiftRight0~20_combout\ : std_logic;
SIGNAL \ShiftRight0~28_combout\ : std_logic;
SIGNAL \ShiftLeft0~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~7_combout\ : std_logic;
SIGNAL \ShiftLeft0~8_combout\ : std_logic;
SIGNAL \ShiftLeft0~3_combout\ : std_logic;
SIGNAL \ShiftLeft0~1_combout\ : std_logic;
SIGNAL \ShiftLeft0~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~9_combout\ : std_logic;
SIGNAL \ShiftRight0~11_combout\ : std_logic;
SIGNAL \ShiftRight0~10_combout\ : std_logic;
SIGNAL \ShiftRight0~12_combout\ : std_logic;
SIGNAL \ShiftRight0~8_combout\ : std_logic;
SIGNAL \ShiftRight0~7_combout\ : std_logic;
SIGNAL \ShiftRight0~9_combout\ : std_logic;
SIGNAL \ShiftRight0~13_combout\ : std_logic;
SIGNAL \ShiftRight0~4_combout\ : std_logic;
SIGNAL \ShiftRight1~13_combout\ : std_logic;
SIGNAL \ShiftRight0~5_combout\ : std_logic;
SIGNAL \ShiftRight0~2_combout\ : std_logic;
SIGNAL \ShiftRight1~12_combout\ : std_logic;
SIGNAL \ShiftRight0~3_combout\ : std_logic;
SIGNAL \ShiftRight0~6_combout\ : std_logic;
SIGNAL \ShiftRight0~14_combout\ : std_logic;
SIGNAL \ShiftRight0~29_combout\ : std_logic;
SIGNAL \ShiftLeft0~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \Mux31~0_combout\ : std_logic;
SIGNAL \Mux30~0_combout\ : std_logic;
SIGNAL \Mux31~1_combout\ : std_logic;
SIGNAL \Mux31~4_combout\ : std_logic;
SIGNAL \Add0~7_combout\ : std_logic;
SIGNAL \Add0~6\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \ShiftRight1~19_combout\ : std_logic;
SIGNAL \ShiftRight0~39_combout\ : std_logic;
SIGNAL \ShiftRight1~20_combout\ : std_logic;
SIGNAL \ShiftRight0~40_combout\ : std_logic;
SIGNAL \ShiftRight0~41_combout\ : std_logic;
SIGNAL \ShiftRight1~22_combout\ : std_logic;
SIGNAL \ShiftRight1~23_combout\ : std_logic;
SIGNAL \ShiftRight1~21_combout\ : std_logic;
SIGNAL \ShiftRight0~42_combout\ : std_logic;
SIGNAL \ShiftRight1~24_combout\ : std_logic;
SIGNAL \ShiftRight0~43_combout\ : std_logic;
SIGNAL \ShiftRight0~44_combout\ : std_logic;
SIGNAL \ShiftRight0~45_combout\ : std_logic;
SIGNAL \Mux30~2_combout\ : std_logic;
SIGNAL \ShiftRight1~18_combout\ : std_logic;
SIGNAL \ShiftRight0~36_combout\ : std_logic;
SIGNAL \ShiftRight1~17_combout\ : std_logic;
SIGNAL \ShiftRight0~35_combout\ : std_logic;
SIGNAL \ShiftRight0~37_combout\ : std_logic;
SIGNAL \ShiftRight1~15_combout\ : std_logic;
SIGNAL \ShiftRight0~30_combout\ : std_logic;
SIGNAL \ShiftRight0~31_combout\ : std_logic;
SIGNAL \ShiftRight0~32_combout\ : std_logic;
SIGNAL \ShiftRight1~16_combout\ : std_logic;
SIGNAL \ShiftRight0~33_combout\ : std_logic;
SIGNAL \ShiftRight0~34_combout\ : std_logic;
SIGNAL \ShiftRight0~38_combout\ : std_logic;
SIGNAL \ShiftLeft0~10_combout\ : std_logic;
SIGNAL \ShiftLeft0~11_combout\ : std_logic;
SIGNAL \Mux30~1_combout\ : std_logic;
SIGNAL \Mux30~3_combout\ : std_logic;
SIGNAL \Mux30~4_combout\ : std_logic;
SIGNAL \Mux30~6_combout\ : std_logic;
SIGNAL \Mux30~5_combout\ : std_logic;
SIGNAL \Mux30~7_combout\ : std_logic;
SIGNAL \Mux30~8_combout\ : std_logic;
SIGNAL \Mux30~9_combout\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~13_combout\ : std_logic;
SIGNAL \Mux28~2_combout\ : std_logic;
SIGNAL \ShiftRight1~39_combout\ : std_logic;
SIGNAL \ShiftRight1~40_combout\ : std_logic;
SIGNAL \ShiftRight1~41_combout\ : std_logic;
SIGNAL \ShiftRight1~42_combout\ : std_logic;
SIGNAL \ShiftRight0~49_combout\ : std_logic;
SIGNAL \ShiftRight1~36_combout\ : std_logic;
SIGNAL \ShiftRight1~35_combout\ : std_logic;
SIGNAL \ShiftRight1~37_combout\ : std_logic;
SIGNAL \ShiftRight1~38_combout\ : std_logic;
SIGNAL \Mux28~3_combout\ : std_logic;
SIGNAL \Mux29~4_combout\ : std_logic;
SIGNAL \Mux29~5_combout\ : std_logic;
SIGNAL \ShiftRight1~29_combout\ : std_logic;
SIGNAL \ShiftRight1~30_combout\ : std_logic;
SIGNAL \ShiftRight1~31_combout\ : std_logic;
SIGNAL \ShiftRight1~32_combout\ : std_logic;
SIGNAL \ShiftRight0~46_combout\ : std_logic;
SIGNAL \ShiftRight1~26_combout\ : std_logic;
SIGNAL \ShiftRight1~27_combout\ : std_logic;
SIGNAL \ShiftRight1~34_combout\ : std_logic;
SIGNAL \ShiftRight0~47_combout\ : std_logic;
SIGNAL \ShiftRight0~48_combout\ : std_logic;
SIGNAL \Mux28~4_combout\ : std_logic;
SIGNAL \Mux28~5_combout\ : std_logic;
SIGNAL \Mux29~6_combout\ : std_logic;
SIGNAL \ShiftRight1~25_combout\ : std_logic;
SIGNAL \ShiftRight1~28_combout\ : std_logic;
SIGNAL \ShiftRight1~33_combout\ : std_logic;
SIGNAL \Mux29~7_combout\ : std_logic;
SIGNAL \Mux28~8_combout\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \Mux28~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~12_combout\ : std_logic;
SIGNAL \ShiftLeft0~13_combout\ : std_logic;
SIGNAL \Mux28~7_combout\ : std_logic;
SIGNAL \Mux29~11_combout\ : std_logic;
SIGNAL \Mux29~8_combout\ : std_logic;
SIGNAL \Mux29~9_combout\ : std_logic;
SIGNAL \Mux29~12_combout\ : std_logic;
SIGNAL \Mux29~10_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~12\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \ShiftRight1~47_combout\ : std_logic;
SIGNAL \ShiftRight1~46_combout\ : std_logic;
SIGNAL \ShiftRight0~50_combout\ : std_logic;
SIGNAL \ShiftRight1~43_combout\ : std_logic;
SIGNAL \ShiftRight1~44_combout\ : std_logic;
SIGNAL \ShiftRight1~45_combout\ : std_logic;
SIGNAL \ShiftRight1~48_combout\ : std_logic;
SIGNAL \ShiftRight1~49_combout\ : std_logic;
SIGNAL \Mux28~10_combout\ : std_logic;
SIGNAL \ShiftRight1~50_combout\ : std_logic;
SIGNAL \ShiftRight1~51_combout\ : std_logic;
SIGNAL \ShiftRight0~53_combout\ : std_logic;
SIGNAL \Mux28~11_combout\ : std_logic;
SIGNAL \ShiftRight0~51_combout\ : std_logic;
SIGNAL \ShiftRight0~52_combout\ : std_logic;
SIGNAL \Mux28~12_combout\ : std_logic;
SIGNAL \Mux28~13_combout\ : std_logic;
SIGNAL \resultado_ula~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~14_combout\ : std_logic;
SIGNAL \ShiftLeft0~15_combout\ : std_logic;
SIGNAL \Mux28~14_combout\ : std_logic;
SIGNAL \Mux28~15_combout\ : std_logic;
SIGNAL \Mux28~17_combout\ : std_logic;
SIGNAL \Mux28~16_combout\ : std_logic;
SIGNAL \Mux24~3_combout\ : std_logic;
SIGNAL \ShiftRight0~56_combout\ : std_logic;
SIGNAL \Mux24~4_combout\ : std_logic;
SIGNAL \Mux24~12_combout\ : std_logic;
SIGNAL \ShiftRight0~54_combout\ : std_logic;
SIGNAL \ShiftRight0~55_combout\ : std_logic;
SIGNAL \Mux27~0_combout\ : std_logic;
SIGNAL \Mux27~1_combout\ : std_logic;
SIGNAL \ShiftLeft0~16_combout\ : std_logic;
SIGNAL \ShiftLeft0~17_combout\ : std_logic;
SIGNAL \ShiftLeft0~18_combout\ : std_logic;
SIGNAL \ShiftLeft0~19_combout\ : std_logic;
SIGNAL \ShiftLeft0~20_combout\ : std_logic;
SIGNAL \Mux24~5_combout\ : std_logic;
SIGNAL \Mux24~6_combout\ : std_logic;
SIGNAL \Mux27~2_combout\ : std_logic;
SIGNAL \ShiftRight1~52_combout\ : std_logic;
SIGNAL \ShiftRight1~53_combout\ : std_logic;
SIGNAL \Mux24~2_combout\ : std_logic;
SIGNAL \Mux27~3_combout\ : std_logic;
SIGNAL \Mux27~5_combout\ : std_logic;
SIGNAL \Mux27~6_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \Add0~16\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Mux27~4_combout\ : std_logic;
SIGNAL \Mux26~5_combout\ : std_logic;
SIGNAL \ShiftRight0~57_combout\ : std_logic;
SIGNAL \ShiftRight0~58_combout\ : std_logic;
SIGNAL \ShiftLeft0~21_combout\ : std_logic;
SIGNAL \ShiftRight1~54_combout\ : std_logic;
SIGNAL \ShiftRight1~55_combout\ : std_logic;
SIGNAL \ShiftRight0~59_combout\ : std_logic;
SIGNAL \ShiftRight0~60_combout\ : std_logic;
SIGNAL \ShiftRight0~61_combout\ : std_logic;
SIGNAL \Mux26~0_combout\ : std_logic;
SIGNAL \Mux26~1_combout\ : std_logic;
SIGNAL \ShiftLeft0~22_combout\ : std_logic;
SIGNAL \ShiftLeft0~23_combout\ : std_logic;
SIGNAL \ShiftLeft0~24_combout\ : std_logic;
SIGNAL \ShiftLeft0~25_combout\ : std_logic;
SIGNAL \Mux26~2_combout\ : std_logic;
SIGNAL \Mux26~3_combout\ : std_logic;
SIGNAL \Mux26~6_combout\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Mux26~4_combout\ : std_logic;
SIGNAL \ShiftRight0~62_combout\ : std_logic;
SIGNAL \ShiftRight0~63_combout\ : std_logic;
SIGNAL \ShiftRight0~64_combout\ : std_logic;
SIGNAL \Mux25~0_combout\ : std_logic;
SIGNAL \Mux25~1_combout\ : std_logic;
SIGNAL \ShiftLeft0~26_combout\ : std_logic;
SIGNAL \ShiftLeft0~27_combout\ : std_logic;
SIGNAL \ShiftLeft0~28_combout\ : std_logic;
SIGNAL \Mux25~2_combout\ : std_logic;
SIGNAL \ShiftRight1~56_combout\ : std_logic;
SIGNAL \ShiftRight1~57_combout\ : std_logic;
SIGNAL \Mux25~3_combout\ : std_logic;
SIGNAL \Mux25~5_combout\ : std_logic;
SIGNAL \Mux25~6_combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~22\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Mux25~4_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Mux24~13_combout\ : std_logic;
SIGNAL \ShiftRight0~69_combout\ : std_logic;
SIGNAL \ShiftRight0~65_combout\ : std_logic;
SIGNAL \ShiftRight0~67_combout\ : std_logic;
SIGNAL \ShiftRight0~68_combout\ : std_logic;
SIGNAL \Mux24~7_combout\ : std_logic;
SIGNAL \Mux24~8_combout\ : std_logic;
SIGNAL \ShiftLeft0~29_combout\ : std_logic;
SIGNAL \ShiftLeft0~30_combout\ : std_logic;
SIGNAL \ShiftLeft0~31_combout\ : std_logic;
SIGNAL \ShiftLeft0~32_combout\ : std_logic;
SIGNAL \Mux24~9_combout\ : std_logic;
SIGNAL \ShiftRight0~66_combout\ : std_logic;
SIGNAL \ShiftRight1~61_combout\ : std_logic;
SIGNAL \Mux24~10_combout\ : std_logic;
SIGNAL \Mux24~14_combout\ : std_logic;
SIGNAL \Mux24~11_combout\ : std_logic;
SIGNAL \Mux17~1_combout\ : std_logic;
SIGNAL \resultado_ula~1_combout\ : std_logic;
SIGNAL \Mux17~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~33_combout\ : std_logic;
SIGNAL \ShiftLeft0~34_combout\ : std_logic;
SIGNAL \Mux15~0_combout\ : std_logic;
SIGNAL \ShiftLeft0~35_combout\ : std_logic;
SIGNAL \Mux23~2_combout\ : std_logic;
SIGNAL \ShiftRight0~70_combout\ : std_logic;
SIGNAL \ShiftRight1~62_combout\ : std_logic;
SIGNAL \Mux23~0_combout\ : std_logic;
SIGNAL \Mux23~1_combout\ : std_logic;
SIGNAL \Mux28~9_combout\ : std_logic;
SIGNAL \Mux23~3_combout\ : std_logic;
SIGNAL \Mux17~2_combout\ : std_logic;
SIGNAL \Mux17~3_combout\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Add0~28\ : std_logic;
SIGNAL \Add0~30_combout\ : std_logic;
SIGNAL \Mux23~4_combout\ : std_logic;
SIGNAL \Mux17~4_combout\ : std_logic;
SIGNAL \Mux23~combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~31\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \ShiftRight0~71_combout\ : std_logic;
SIGNAL \Mux22~0_combout\ : std_logic;
SIGNAL \ShiftRight1~63_combout\ : std_logic;
SIGNAL \Mux22~1_combout\ : std_logic;
SIGNAL \resultado_ula~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~36_combout\ : std_logic;
SIGNAL \ShiftLeft0~37_combout\ : std_logic;
SIGNAL \ShiftLeft0~38_combout\ : std_logic;
SIGNAL \ShiftLeft0~39_combout\ : std_logic;
SIGNAL \Mux22~2_combout\ : std_logic;
SIGNAL \Mux22~3_combout\ : std_logic;
SIGNAL \Mux22~4_combout\ : std_logic;
SIGNAL \Mux22~combout\ : std_logic;
SIGNAL \ShiftRight1~64_combout\ : std_logic;
SIGNAL \ShiftRight0~72_combout\ : std_logic;
SIGNAL \Mux21~0_combout\ : std_logic;
SIGNAL \Mux21~1_combout\ : std_logic;
SIGNAL \resultado_ula~3_combout\ : std_logic;
SIGNAL \ShiftLeft0~40_combout\ : std_logic;
SIGNAL \ShiftLeft0~41_combout\ : std_logic;
SIGNAL \ShiftLeft0~42_combout\ : std_logic;
SIGNAL \ShiftLeft0~43_combout\ : std_logic;
SIGNAL \Mux21~2_combout\ : std_logic;
SIGNAL \Mux21~3_combout\ : std_logic;
SIGNAL \Add0~35_combout\ : std_logic;
SIGNAL \Add0~34\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Mux21~4_combout\ : std_logic;
SIGNAL \Mux21~combout\ : std_logic;
SIGNAL \ShiftRight0~73_combout\ : std_logic;
SIGNAL \Mux20~0_combout\ : std_logic;
SIGNAL \ShiftRight1~65_combout\ : std_logic;
SIGNAL \Mux20~1_combout\ : std_logic;
SIGNAL \resultado_ula~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~44_combout\ : std_logic;
SIGNAL \ShiftLeft0~45_combout\ : std_logic;
SIGNAL \ShiftLeft0~46_combout\ : std_logic;
SIGNAL \ShiftLeft0~47_combout\ : std_logic;
SIGNAL \Mux20~2_combout\ : std_logic;
SIGNAL \Mux20~3_combout\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \Add0~37\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \Mux20~4_combout\ : std_logic;
SIGNAL \Mux20~combout\ : std_logic;
SIGNAL \resultado_ula~5_combout\ : std_logic;
SIGNAL \ShiftLeft0~48_combout\ : std_logic;
SIGNAL \ShiftLeft0~49_combout\ : std_logic;
SIGNAL \ShiftLeft0~50_combout\ : std_logic;
SIGNAL \ShiftLeft0~51_combout\ : std_logic;
SIGNAL \ShiftLeft0~52_combout\ : std_logic;
SIGNAL \Mux19~2_combout\ : std_logic;
SIGNAL \ShiftRight0~74_combout\ : std_logic;
SIGNAL \ShiftRight1~66_combout\ : std_logic;
SIGNAL \Mux19~0_combout\ : std_logic;
SIGNAL \Mux19~1_combout\ : std_logic;
SIGNAL \Mux19~3_combout\ : std_logic;
SIGNAL \Add0~41_combout\ : std_logic;
SIGNAL \Add0~40\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Mux19~4_combout\ : std_logic;
SIGNAL \Mux19~combout\ : std_logic;
SIGNAL \ShiftRight1~58_combout\ : std_logic;
SIGNAL \ShiftRight0~75_combout\ : std_logic;
SIGNAL \Mux18~0_combout\ : std_logic;
SIGNAL \Mux18~1_combout\ : std_logic;
SIGNAL \resultado_ula~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~53_combout\ : std_logic;
SIGNAL \ShiftLeft0~54_combout\ : std_logic;
SIGNAL \ShiftLeft0~55_combout\ : std_logic;
SIGNAL \ShiftLeft0~56_combout\ : std_logic;
SIGNAL \Mux18~2_combout\ : std_logic;
SIGNAL \Mux18~3_combout\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~43\ : std_logic;
SIGNAL \Add0~45_combout\ : std_logic;
SIGNAL \Mux18~4_combout\ : std_logic;
SIGNAL \Mux18~combout\ : std_logic;
SIGNAL \Add0~47_combout\ : std_logic;
SIGNAL \Add0~46\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \ShiftRight1~59_combout\ : std_logic;
SIGNAL \ShiftRight0~77_combout\ : std_logic;
SIGNAL \Mux17~5_combout\ : std_logic;
SIGNAL \Mux17~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~57_combout\ : std_logic;
SIGNAL \ShiftLeft0~58_combout\ : std_logic;
SIGNAL \ShiftLeft0~59_combout\ : std_logic;
SIGNAL \ShiftLeft0~60_combout\ : std_logic;
SIGNAL \ShiftLeft0~61_combout\ : std_logic;
SIGNAL \resultado_ula~7_combout\ : std_logic;
SIGNAL \Mux17~7_combout\ : std_logic;
SIGNAL \Mux17~8_combout\ : std_logic;
SIGNAL \Mux17~9_combout\ : std_logic;
SIGNAL \Mux17~combout\ : std_logic;
SIGNAL \Add0~50_combout\ : std_logic;
SIGNAL \Add0~49\ : std_logic;
SIGNAL \Add0~51_combout\ : std_logic;
SIGNAL \Mux16~6_combout\ : std_logic;
SIGNAL \Mux16~5_combout\ : std_logic;
SIGNAL \Mux16~7_combout\ : std_logic;
SIGNAL \Mux16~8_combout\ : std_logic;
SIGNAL \ShiftRight0~76_combout\ : std_logic;
SIGNAL \Mux16~0_combout\ : std_logic;
SIGNAL \ShiftRight1~60_combout\ : std_logic;
SIGNAL \Mux16~1_combout\ : std_logic;
SIGNAL \Mux16~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~63_combout\ : std_logic;
SIGNAL \ShiftLeft0~64_combout\ : std_logic;
SIGNAL \ShiftLeft0~65_combout\ : std_logic;
SIGNAL \ShiftLeft0~62_combout\ : std_logic;
SIGNAL \Mux16~3_combout\ : std_logic;
SIGNAL \Mux16~4_combout\ : std_logic;
SIGNAL \Mux16~9_combout\ : std_logic;
SIGNAL \Mux15~6_combout\ : std_logic;
SIGNAL \Mux15~5_combout\ : std_logic;
SIGNAL \Add0~53_combout\ : std_logic;
SIGNAL \Add0~52\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Mux15~7_combout\ : std_logic;
SIGNAL \Mux15~8_combout\ : std_logic;
SIGNAL \ShiftLeft0~66_combout\ : std_logic;
SIGNAL \ShiftLeft0~67_combout\ : std_logic;
SIGNAL \ShiftLeft0~68_combout\ : std_logic;
SIGNAL \Mux15~2_combout\ : std_logic;
SIGNAL \Mux15~3_combout\ : std_logic;
SIGNAL \Mux15~1_combout\ : std_logic;
SIGNAL \Mux15~4_combout\ : std_logic;
SIGNAL \Mux15~9_combout\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \Add0~55\ : std_logic;
SIGNAL \Add0~57_combout\ : std_logic;
SIGNAL \Mux8~4_combout\ : std_logic;
SIGNAL \Mux8~6_combout\ : std_logic;
SIGNAL \Mux14~1_combout\ : std_logic;
SIGNAL \Mux8~5_combout\ : std_logic;
SIGNAL \Mux14~2_combout\ : std_logic;
SIGNAL \Mux14~3_combout\ : std_logic;
SIGNAL \ShiftLeft0~69_combout\ : std_logic;
SIGNAL \ShiftLeft0~70_combout\ : std_logic;
SIGNAL \ShiftLeft0~71_combout\ : std_logic;
SIGNAL \resultado_ula~8_combout\ : std_logic;
SIGNAL \Mux8~2_combout\ : std_logic;
SIGNAL \Mux8~3_combout\ : std_logic;
SIGNAL \Mux14~0_combout\ : std_logic;
SIGNAL \Mux14~4_combout\ : std_logic;
SIGNAL \Mux14~5_combout\ : std_logic;
SIGNAL \Mux14~combout\ : std_logic;
SIGNAL \resultado_ula~9_combout\ : std_logic;
SIGNAL \Mux13~1_combout\ : std_logic;
SIGNAL \Mux13~2_combout\ : std_logic;
SIGNAL \Mux13~3_combout\ : std_logic;
SIGNAL \ShiftLeft0~72_combout\ : std_logic;
SIGNAL \ShiftLeft0~73_combout\ : std_logic;
SIGNAL \ShiftLeft0~74_combout\ : std_logic;
SIGNAL \Mux13~0_combout\ : std_logic;
SIGNAL \Mux13~4_combout\ : std_logic;
SIGNAL \Add0~59_combout\ : std_logic;
SIGNAL \Add0~58\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \Mux13~5_combout\ : std_logic;
SIGNAL \Mux13~combout\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \Add0~61\ : std_logic;
SIGNAL \Add0~63_combout\ : std_logic;
SIGNAL \Mux12~1_combout\ : std_logic;
SIGNAL \Mux12~2_combout\ : std_logic;
SIGNAL \Mux12~3_combout\ : std_logic;
SIGNAL \resultado_ula~10_combout\ : std_logic;
SIGNAL \ShiftLeft0~75_combout\ : std_logic;
SIGNAL \ShiftLeft0~76_combout\ : std_logic;
SIGNAL \ShiftLeft0~77_combout\ : std_logic;
SIGNAL \Mux12~0_combout\ : std_logic;
SIGNAL \Mux12~4_combout\ : std_logic;
SIGNAL \Mux12~5_combout\ : std_logic;
SIGNAL \Mux12~combout\ : std_logic;
SIGNAL \Add0~65_combout\ : std_logic;
SIGNAL \Add0~64\ : std_logic;
SIGNAL \Add0~66_combout\ : std_logic;
SIGNAL \ShiftLeft0~78_combout\ : std_logic;
SIGNAL \ShiftLeft0~79_combout\ : std_logic;
SIGNAL \ShiftLeft0~80_combout\ : std_logic;
SIGNAL \Mux11~2_combout\ : std_logic;
SIGNAL \resultado_ula~11_combout\ : std_logic;
SIGNAL \Mux11~7_combout\ : std_logic;
SIGNAL \Mux11~3_combout\ : std_logic;
SIGNAL \Mux11~4_combout\ : std_logic;
SIGNAL \Mux11~5_combout\ : std_logic;
SIGNAL \Mux11~6_combout\ : std_logic;
SIGNAL \Mux11~combout\ : std_logic;
SIGNAL \resultado_ula~12_combout\ : std_logic;
SIGNAL \ShiftLeft0~81_combout\ : std_logic;
SIGNAL \ShiftLeft0~82_combout\ : std_logic;
SIGNAL \ShiftLeft0~83_combout\ : std_logic;
SIGNAL \Mux10~2_combout\ : std_logic;
SIGNAL \Mux10~7_combout\ : std_logic;
SIGNAL \Mux10~3_combout\ : std_logic;
SIGNAL \Mux10~4_combout\ : std_logic;
SIGNAL \Mux10~5_combout\ : std_logic;
SIGNAL \Add0~68_combout\ : std_logic;
SIGNAL \Add0~67\ : std_logic;
SIGNAL \Add0~69_combout\ : std_logic;
SIGNAL \Mux10~6_combout\ : std_logic;
SIGNAL \Mux10~combout\ : std_logic;
SIGNAL \Add0~71_combout\ : std_logic;
SIGNAL \Add0~70\ : std_logic;
SIGNAL \Add0~72_combout\ : std_logic;
SIGNAL \resultado_ula~13_combout\ : std_logic;
SIGNAL \Mux9~7_combout\ : std_logic;
SIGNAL \Mux9~3_combout\ : std_logic;
SIGNAL \Mux9~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~84_combout\ : std_logic;
SIGNAL \ShiftLeft0~85_combout\ : std_logic;
SIGNAL \ShiftLeft0~86_combout\ : std_logic;
SIGNAL \Mux9~2_combout\ : std_logic;
SIGNAL \Mux9~5_combout\ : std_logic;
SIGNAL \Mux9~6_combout\ : std_logic;
SIGNAL \Mux9~combout\ : std_logic;
SIGNAL \resultado_ula~14_combout\ : std_logic;
SIGNAL \ShiftLeft0~87_combout\ : std_logic;
SIGNAL \ShiftLeft0~88_combout\ : std_logic;
SIGNAL \ShiftLeft0~89_combout\ : std_logic;
SIGNAL \Mux8~7_combout\ : std_logic;
SIGNAL \Mux8~12_combout\ : std_logic;
SIGNAL \Mux8~8_combout\ : std_logic;
SIGNAL \Mux8~9_combout\ : std_logic;
SIGNAL \Mux8~10_combout\ : std_logic;
SIGNAL \Add0~74_combout\ : std_logic;
SIGNAL \Add0~73\ : std_logic;
SIGNAL \Add0~75_combout\ : std_logic;
SIGNAL \Mux8~11_combout\ : std_logic;
SIGNAL \Mux8~combout\ : std_logic;
SIGNAL \Mux7~2_combout\ : std_logic;
SIGNAL \ShiftLeft0~90_combout\ : std_logic;
SIGNAL \ShiftLeft0~91_combout\ : std_logic;
SIGNAL \Mux7~3_combout\ : std_logic;
SIGNAL \Mux7~4_combout\ : std_logic;
SIGNAL \Mux7~5_combout\ : std_logic;
SIGNAL \Mux7~9_combout\ : std_logic;
SIGNAL \Mux7~6_combout\ : std_logic;
SIGNAL \Mux7~7_combout\ : std_logic;
SIGNAL \Mux7~10_combout\ : std_logic;
SIGNAL \Mux7~11_combout\ : std_logic;
SIGNAL \Add0~77_combout\ : std_logic;
SIGNAL \Add0~76\ : std_logic;
SIGNAL \Add0~78_combout\ : std_logic;
SIGNAL \Mux7~8_combout\ : std_logic;
SIGNAL \Add0~80_combout\ : std_logic;
SIGNAL \Add0~79\ : std_logic;
SIGNAL \Add0~81_combout\ : std_logic;
SIGNAL \ShiftLeft0~92_combout\ : std_logic;
SIGNAL \ShiftLeft0~93_combout\ : std_logic;
SIGNAL \Mux6~2_combout\ : std_logic;
SIGNAL \Mux6~3_combout\ : std_logic;
SIGNAL \Mux6~7_combout\ : std_logic;
SIGNAL \Mux6~4_combout\ : std_logic;
SIGNAL \Mux6~5_combout\ : std_logic;
SIGNAL \Mux6~8_combout\ : std_logic;
SIGNAL \Mux6~9_combout\ : std_logic;
SIGNAL \Mux6~6_combout\ : std_logic;
SIGNAL \Add0~83_combout\ : std_logic;
SIGNAL \Add0~82\ : std_logic;
SIGNAL \Add0~84_combout\ : std_logic;
SIGNAL \ShiftLeft0~94_combout\ : std_logic;
SIGNAL \ShiftLeft0~95_combout\ : std_logic;
SIGNAL \ShiftLeft0~96_combout\ : std_logic;
SIGNAL \Mux5~2_combout\ : std_logic;
SIGNAL \Mux5~3_combout\ : std_logic;
SIGNAL \Mux5~7_combout\ : std_logic;
SIGNAL \Mux5~4_combout\ : std_logic;
SIGNAL \Mux5~5_combout\ : std_logic;
SIGNAL \Mux5~8_combout\ : std_logic;
SIGNAL \Mux5~9_combout\ : std_logic;
SIGNAL \Mux5~6_combout\ : std_logic;
SIGNAL \Add0~86_combout\ : std_logic;
SIGNAL \Add0~85\ : std_logic;
SIGNAL \Add0~87_combout\ : std_logic;
SIGNAL \ShiftLeft0~98_combout\ : std_logic;
SIGNAL \ShiftLeft0~97_combout\ : std_logic;
SIGNAL \ShiftLeft0~99_combout\ : std_logic;
SIGNAL \Mux4~2_combout\ : std_logic;
SIGNAL \Mux4~3_combout\ : std_logic;
SIGNAL \Mux4~7_combout\ : std_logic;
SIGNAL \Mux4~4_combout\ : std_logic;
SIGNAL \Mux4~5_combout\ : std_logic;
SIGNAL \Mux4~8_combout\ : std_logic;
SIGNAL \Mux4~9_combout\ : std_logic;
SIGNAL \Mux4~6_combout\ : std_logic;
SIGNAL \Mux3~6_combout\ : std_logic;
SIGNAL \ShiftLeft0~100_combout\ : std_logic;
SIGNAL \Mux3~2_combout\ : std_logic;
SIGNAL \Mux3~3_combout\ : std_logic;
SIGNAL \Mux3~9_combout\ : std_logic;
SIGNAL \Mux3~4_combout\ : std_logic;
SIGNAL \Mux3~5_combout\ : std_logic;
SIGNAL \Mux3~10_combout\ : std_logic;
SIGNAL \Mux3~11_combout\ : std_logic;
SIGNAL \Mux3~7_combout\ : std_logic;
SIGNAL \Add0~89_combout\ : std_logic;
SIGNAL \Add0~88\ : std_logic;
SIGNAL \Add0~90_combout\ : std_logic;
SIGNAL \Mux3~8_combout\ : std_logic;
SIGNAL \Add0~92_combout\ : std_logic;
SIGNAL \Add0~91\ : std_logic;
SIGNAL \Add0~93_combout\ : std_logic;
SIGNAL \Mux2~9_combout\ : std_logic;
SIGNAL \ShiftLeft0~101_combout\ : std_logic;
SIGNAL \Mux2~2_combout\ : std_logic;
SIGNAL \Mux2~3_combout\ : std_logic;
SIGNAL \Mux2~6_combout\ : std_logic;
SIGNAL \Mux2~4_combout\ : std_logic;
SIGNAL \Mux2~5_combout\ : std_logic;
SIGNAL \Mux2~10_combout\ : std_logic;
SIGNAL \Mux2~7_combout\ : std_logic;
SIGNAL \Mux2~8_combout\ : std_logic;
SIGNAL \ShiftLeft0~103_combout\ : std_logic;
SIGNAL \ShiftLeft0~104_combout\ : std_logic;
SIGNAL \ShiftLeft0~105_combout\ : std_logic;
SIGNAL \ShiftLeft0~102_combout\ : std_logic;
SIGNAL \ShiftLeft0~106_combout\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \Mux1~2_combout\ : std_logic;
SIGNAL \Mux1~3_combout\ : std_logic;
SIGNAL \Add0~95_combout\ : std_logic;
SIGNAL \Add0~94\ : std_logic;
SIGNAL \Add0~96_combout\ : std_logic;
SIGNAL \Mux1~4_combout\ : std_logic;
SIGNAL \Mux1~5_combout\ : std_logic;
SIGNAL \Mux1~6_combout\ : std_logic;
SIGNAL \Mux1~7_combout\ : std_logic;
SIGNAL \Mux1~8_combout\ : std_logic;
SIGNAL \Mux0~3_combout\ : std_logic;
SIGNAL \Add0~100_combout\ : std_logic;
SIGNAL \Add0~99_combout\ : std_logic;
SIGNAL \Add0~97\ : std_logic;
SIGNAL \Add0~101_combout\ : std_logic;
SIGNAL \Add0~98_combout\ : std_logic;
SIGNAL \Mux0~4_combout\ : std_logic;
SIGNAL \ShiftLeft0~108_combout\ : std_logic;
SIGNAL \ShiftLeft0~109_combout\ : std_logic;
SIGNAL \ShiftLeft0~110_combout\ : std_logic;
SIGNAL \ShiftLeft0~111_combout\ : std_logic;
SIGNAL \ShiftLeft0~107_combout\ : std_logic;
SIGNAL \Mux0~8_combout\ : std_logic;
SIGNAL \Mux0~5_combout\ : std_logic;
SIGNAL \Mux0~2_combout\ : std_logic;
SIGNAL \Mux0~6_combout\ : std_logic;
SIGNAL \Mux0~7_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_entrada_a <= entrada_a;
ww_entrada_b <= entrada_b;
ww_seletor <= seletor;
saida <= ww_saida;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y17_N23
\saida[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux31~4_combout\,
	devoe => ww_devoe,
	o => \saida[0]~output_o\);

-- Location: IOOBUF_X25_Y0_N9
\saida[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux30~9_combout\,
	devoe => ww_devoe,
	o => \saida[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\saida[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux29~10_combout\,
	devoe => ww_devoe,
	o => \saida[2]~output_o\);

-- Location: IOOBUF_X21_Y24_N2
\saida[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux28~16_combout\,
	devoe => ww_devoe,
	o => \saida[3]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\saida[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux27~4_combout\,
	devoe => ww_devoe,
	o => \saida[4]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\saida[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux26~4_combout\,
	devoe => ww_devoe,
	o => \saida[5]~output_o\);

-- Location: IOOBUF_X11_Y24_N23
\saida[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux25~4_combout\,
	devoe => ww_devoe,
	o => \saida[6]~output_o\);

-- Location: IOOBUF_X13_Y24_N9
\saida[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux24~11_combout\,
	devoe => ww_devoe,
	o => \saida[7]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\saida[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux23~combout\,
	devoe => ww_devoe,
	o => \saida[8]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\saida[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux22~combout\,
	devoe => ww_devoe,
	o => \saida[9]~output_o\);

-- Location: IOOBUF_X5_Y24_N2
\saida[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux21~combout\,
	devoe => ww_devoe,
	o => \saida[10]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\saida[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux20~combout\,
	devoe => ww_devoe,
	o => \saida[11]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\saida[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux19~combout\,
	devoe => ww_devoe,
	o => \saida[12]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\saida[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux18~combout\,
	devoe => ww_devoe,
	o => \saida[13]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\saida[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux17~combout\,
	devoe => ww_devoe,
	o => \saida[14]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\saida[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux16~9_combout\,
	devoe => ww_devoe,
	o => \saida[15]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\saida[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux15~9_combout\,
	devoe => ww_devoe,
	o => \saida[16]~output_o\);

-- Location: IOOBUF_X7_Y24_N16
\saida[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux14~combout\,
	devoe => ww_devoe,
	o => \saida[17]~output_o\);

-- Location: IOOBUF_X34_Y19_N9
\saida[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux13~combout\,
	devoe => ww_devoe,
	o => \saida[18]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\saida[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux12~combout\,
	devoe => ww_devoe,
	o => \saida[19]~output_o\);

-- Location: IOOBUF_X11_Y24_N9
\saida[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux11~combout\,
	devoe => ww_devoe,
	o => \saida[20]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\saida[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux10~combout\,
	devoe => ww_devoe,
	o => \saida[21]~output_o\);

-- Location: IOOBUF_X13_Y24_N2
\saida[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux9~combout\,
	devoe => ww_devoe,
	o => \saida[22]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\saida[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux8~combout\,
	devoe => ww_devoe,
	o => \saida[23]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\saida[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~8_combout\,
	devoe => ww_devoe,
	o => \saida[24]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\saida[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~6_combout\,
	devoe => ww_devoe,
	o => \saida[25]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\saida[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~6_combout\,
	devoe => ww_devoe,
	o => \saida[26]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\saida[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~6_combout\,
	devoe => ww_devoe,
	o => \saida[27]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\saida[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~8_combout\,
	devoe => ww_devoe,
	o => \saida[28]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\saida[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~8_combout\,
	devoe => ww_devoe,
	o => \saida[29]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\saida[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~8_combout\,
	devoe => ww_devoe,
	o => \saida[30]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\saida[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~7_combout\,
	devoe => ww_devoe,
	o => \saida[31]~output_o\);

-- Location: IOIBUF_X32_Y0_N1
\entrada_a[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_a(0),
	o => \entrada_a[0]~input_o\);

-- Location: IOIBUF_X0_Y10_N1
\seletor[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seletor(3),
	o => \seletor[3]~input_o\);

-- Location: IOIBUF_X34_Y10_N8
\entrada_b[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_b(0),
	o => \entrada_b[0]~input_o\);

-- Location: LCCOMB_X17_Y11_N8
\Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = \seletor[3]~input_o\ $ (\entrada_b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seletor[3]~input_o\,
	datad => \entrada_b[0]~input_o\,
	combout => \Add0~1_combout\);

-- Location: IOIBUF_X25_Y0_N15
\seletor[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seletor(1),
	o => \seletor[1]~input_o\);

-- Location: IOIBUF_X34_Y9_N8
\seletor[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seletor(0),
	o => \seletor[0]~input_o\);

-- Location: IOIBUF_X21_Y24_N8
\seletor[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_seletor(2),
	o => \seletor[2]~input_o\);

-- Location: LCCOMB_X18_Y9_N16
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (!\seletor[1]~input_o\ & (!\seletor[0]~input_o\ & !\seletor[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seletor[1]~input_o\,
	datac => \seletor[0]~input_o\,
	datad => \seletor[2]~input_o\,
	combout => \Add0~2_combout\);

-- Location: LCCOMB_X17_Y11_N16
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_cout\ = CARRY(!\Add0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~2_combout\,
	datad => VCC,
	cout => \Add0~4_cout\);

-- Location: LCCOMB_X17_Y11_N18
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (\entrada_a[0]~input_o\ & ((\Add0~1_combout\ & (\Add0~4_cout\ & VCC)) # (!\Add0~1_combout\ & (!\Add0~4_cout\)))) # (!\entrada_a[0]~input_o\ & ((\Add0~1_combout\ & (!\Add0~4_cout\)) # (!\Add0~1_combout\ & ((\Add0~4_cout\) # (GND)))))
-- \Add0~6\ = CARRY((\entrada_a[0]~input_o\ & (!\Add0~1_combout\ & !\Add0~4_cout\)) # (!\entrada_a[0]~input_o\ & ((!\Add0~4_cout\) # (!\Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[0]~input_o\,
	datab => \Add0~1_combout\,
	datad => VCC,
	cin => \Add0~4_cout\,
	combout => \Add0~5_combout\,
	cout => \Add0~6\);

-- Location: LCCOMB_X24_Y13_N20
\Mux31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~5_combout\ = (\seletor[0]~input_o\ & ((\entrada_a[0]~input_o\ & (\seletor[1]~input_o\ $ (!\entrada_b[0]~input_o\))) # (!\entrada_a[0]~input_o\ & (!\seletor[1]~input_o\ & \entrada_b[0]~input_o\)))) # (!\seletor[0]~input_o\ & 
-- ((\entrada_a[0]~input_o\) # ((\entrada_b[0]~input_o\) # (!\seletor[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => \entrada_a[0]~input_o\,
	datac => \seletor[1]~input_o\,
	datad => \entrada_b[0]~input_o\,
	combout => \Mux31~5_combout\);

-- Location: LCCOMB_X24_Y13_N14
\Mux31~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~6_combout\ = (\Mux31~5_combout\ & ((\Add0~5_combout\) # ((\seletor[1]~input_o\) # (\seletor[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datab => \seletor[1]~input_o\,
	datac => \seletor[0]~input_o\,
	datad => \Mux31~5_combout\,
	combout => \Mux31~6_combout\);

-- Location: IOIBUF_X30_Y0_N15
\entrada_b[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_b(31),
	o => \entrada_b[31]~input_o\);

-- Location: IOIBUF_X34_Y9_N15
\entrada_a[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_a(31),
	o => \entrada_a[31]~input_o\);

-- Location: IOIBUF_X34_Y4_N15
\entrada_a[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_a(30),
	o => \entrada_a[30]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\entrada_b[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_b(30),
	o => \entrada_b[30]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\entrada_a[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_a(29),
	o => \entrada_a[29]~input_o\);

-- Location: IOIBUF_X21_Y0_N22
\entrada_b[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_b(29),
	o => \entrada_b[29]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\entrada_b[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_b(28),
	o => \entrada_b[28]~input_o\);

-- Location: IOIBUF_X0_Y8_N1
\entrada_a[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_a(28),
	o => \entrada_a[28]~input_o\);

-- Location: IOIBUF_X18_Y0_N8
\entrada_b[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_b(27),
	o => \entrada_b[27]~input_o\);

-- Location: IOIBUF_X16_Y24_N22
\entrada_a[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_a(27),
	o => \entrada_a[27]~input_o\);

-- Location: IOIBUF_X21_Y0_N15
\entrada_b[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_b(26),
	o => \entrada_b[26]~input_o\);

-- Location: IOIBUF_X0_Y11_N22
\entrada_a[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_a(26),
	o => \entrada_a[26]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\entrada_a[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_a(25),
	o => \entrada_a[25]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\entrada_b[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_b(25),
	o => \entrada_b[25]~input_o\);

-- Location: IOIBUF_X25_Y0_N1
\entrada_b[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_b(24),
	o => \entrada_b[24]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\entrada_a[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_a(24),
	o => \entrada_a[24]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\entrada_a[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_a(23),
	o => \entrada_a[23]~input_o\);

-- Location: IOIBUF_X23_Y0_N1
\entrada_b[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_b(23),
	o => \entrada_b[23]~input_o\);

-- Location: IOIBUF_X13_Y24_N22
\entrada_b[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_b(22),
	o => \entrada_b[22]~input_o\);

-- Location: IOIBUF_X18_Y24_N8
\entrada_a[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_a(22),
	o => \entrada_a[22]~input_o\);

-- Location: IOIBUF_X11_Y24_N1
\entrada_a[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_a(21),
	o => \entrada_a[21]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\entrada_b[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_b(21),
	o => \entrada_b[21]~input_o\);

-- Location: IOIBUF_X0_Y6_N22
\entrada_b[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_b(20),
	o => \entrada_b[20]~input_o\);

-- Location: IOIBUF_X25_Y24_N8
\entrada_a[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_a(20),
	o => \entrada_a[20]~input_o\);

-- Location: IOIBUF_X16_Y24_N8
\entrada_a[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_a(19),
	o => \entrada_a[19]~input_o\);

-- Location: IOIBUF_X0_Y8_N8
\entrada_b[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_b(19),
	o => \entrada_b[19]~input_o\);

-- Location: IOIBUF_X28_Y0_N8
\entrada_a[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_a(18),
	o => \entrada_a[18]~input_o\);

-- Location: IOIBUF_X18_Y0_N1
\entrada_b[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_b(18),
	o => \entrada_b[18]~input_o\);

-- Location: IOIBUF_X23_Y24_N8
\entrada_a[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_a(17),
	o => \entrada_a[17]~input_o\);

-- Location: IOIBUF_X16_Y24_N15
\entrada_b[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_b(17),
	o => \entrada_b[17]~input_o\);

-- Location: IOIBUF_X34_Y4_N22
\entrada_a[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_a(16),
	o => \entrada_a[16]~input_o\);

-- Location: IOIBUF_X7_Y0_N8
\entrada_b[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_b(16),
	o => \entrada_b[16]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\entrada_b[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_b(15),
	o => \entrada_b[15]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\entrada_a[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_a(15),
	o => \entrada_a[15]~input_o\);

-- Location: IOIBUF_X34_Y11_N8
\entrada_a[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_a(14),
	o => \entrada_a[14]~input_o\);

-- Location: IOIBUF_X9_Y24_N22
\entrada_b[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_b(14),
	o => \entrada_b[14]~input_o\);

-- Location: IOIBUF_X34_Y10_N1
\entrada_a[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_a(13),
	o => \entrada_a[13]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\entrada_b[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_b(13),
	o => \entrada_b[13]~input_o\);

-- Location: IOIBUF_X25_Y0_N22
\entrada_a[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_a(12),
	o => \entrada_a[12]~input_o\);

-- Location: IOIBUF_X0_Y7_N1
\entrada_b[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_b(12),
	o => \entrada_b[12]~input_o\);

-- Location: IOIBUF_X11_Y24_N15
\entrada_a[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_a(11),
	o => \entrada_a[11]~input_o\);

-- Location: IOIBUF_X23_Y24_N22
\entrada_b[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_b(11),
	o => \entrada_b[11]~input_o\);

-- Location: IOIBUF_X34_Y5_N22
\entrada_a[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_a(10),
	o => \entrada_a[10]~input_o\);

-- Location: IOIBUF_X34_Y7_N22
\entrada_b[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_b(10),
	o => \entrada_b[10]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\entrada_a[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_a(9),
	o => \entrada_a[9]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\entrada_b[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_b(9),
	o => \entrada_b[9]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\entrada_b[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_b(8),
	o => \entrada_b[8]~input_o\);

-- Location: IOIBUF_X34_Y8_N15
\entrada_a[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_a(8),
	o => \entrada_a[8]~input_o\);

-- Location: IOIBUF_X21_Y24_N15
\entrada_a[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_a(7),
	o => \entrada_a[7]~input_o\);

-- Location: IOIBUF_X13_Y24_N15
\entrada_b[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_b(7),
	o => \entrada_b[7]~input_o\);

-- Location: IOIBUF_X23_Y24_N15
\entrada_a[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_a(6),
	o => \entrada_a[6]~input_o\);

-- Location: IOIBUF_X13_Y0_N22
\entrada_b[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_b(6),
	o => \entrada_b[6]~input_o\);

-- Location: IOIBUF_X23_Y24_N1
\entrada_a[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_a(5),
	o => \entrada_a[5]~input_o\);

-- Location: IOIBUF_X9_Y24_N15
\entrada_b[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_b(5),
	o => \entrada_b[5]~input_o\);

-- Location: IOIBUF_X34_Y7_N15
\entrada_b[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_b(4),
	o => \entrada_b[4]~input_o\);

-- Location: IOIBUF_X34_Y11_N1
\entrada_a[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_a(4),
	o => \entrada_a[4]~input_o\);

-- Location: IOIBUF_X28_Y24_N22
\entrada_b[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_b(3),
	o => \entrada_b[3]~input_o\);

-- Location: IOIBUF_X34_Y17_N15
\entrada_a[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_a(3),
	o => \entrada_a[3]~input_o\);

-- Location: IOIBUF_X34_Y19_N15
\entrada_b[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_b(2),
	o => \entrada_b[2]~input_o\);

-- Location: IOIBUF_X34_Y9_N22
\entrada_a[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_a(2),
	o => \entrada_a[2]~input_o\);

-- Location: IOIBUF_X34_Y17_N1
\entrada_b[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_b(1),
	o => \entrada_b[1]~input_o\);

-- Location: IOIBUF_X34_Y8_N22
\entrada_a[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_a(1),
	o => \entrada_a[1]~input_o\);

-- Location: LCCOMB_X19_Y11_N0
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((\entrada_b[0]~input_o\ & !\entrada_a[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[0]~input_o\,
	datab => \entrada_a[0]~input_o\,
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X19_Y11_N2
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((\entrada_b[1]~input_o\ & (\entrada_a[1]~input_o\ & !\LessThan0~1_cout\)) # (!\entrada_b[1]~input_o\ & ((\entrada_a[1]~input_o\) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[1]~input_o\,
	datab => \entrada_a[1]~input_o\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X19_Y11_N4
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\entrada_b[2]~input_o\ & ((!\LessThan0~3_cout\) # (!\entrada_a[2]~input_o\))) # (!\entrada_b[2]~input_o\ & (!\entrada_a[2]~input_o\ & !\LessThan0~3_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[2]~input_o\,
	datab => \entrada_a[2]~input_o\,
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X19_Y11_N6
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\entrada_b[3]~input_o\ & (\entrada_a[3]~input_o\ & !\LessThan0~5_cout\)) # (!\entrada_b[3]~input_o\ & ((\entrada_a[3]~input_o\) # (!\LessThan0~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[3]~input_o\,
	datab => \entrada_a[3]~input_o\,
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X19_Y11_N8
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\entrada_b[4]~input_o\ & ((!\LessThan0~7_cout\) # (!\entrada_a[4]~input_o\))) # (!\entrada_b[4]~input_o\ & (!\entrada_a[4]~input_o\ & !\LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[4]~input_o\,
	datab => \entrada_a[4]~input_o\,
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X19_Y11_N10
\LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~11_cout\ = CARRY((\entrada_a[5]~input_o\ & ((!\LessThan0~9_cout\) # (!\entrada_b[5]~input_o\))) # (!\entrada_a[5]~input_o\ & (!\entrada_b[5]~input_o\ & !\LessThan0~9_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[5]~input_o\,
	datab => \entrada_b[5]~input_o\,
	datad => VCC,
	cin => \LessThan0~9_cout\,
	cout => \LessThan0~11_cout\);

-- Location: LCCOMB_X19_Y11_N12
\LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~13_cout\ = CARRY((\entrada_a[6]~input_o\ & (\entrada_b[6]~input_o\ & !\LessThan0~11_cout\)) # (!\entrada_a[6]~input_o\ & ((\entrada_b[6]~input_o\) # (!\LessThan0~11_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[6]~input_o\,
	datab => \entrada_b[6]~input_o\,
	datad => VCC,
	cin => \LessThan0~11_cout\,
	cout => \LessThan0~13_cout\);

-- Location: LCCOMB_X19_Y11_N14
\LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~15_cout\ = CARRY((\entrada_a[7]~input_o\ & ((!\LessThan0~13_cout\) # (!\entrada_b[7]~input_o\))) # (!\entrada_a[7]~input_o\ & (!\entrada_b[7]~input_o\ & !\LessThan0~13_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[7]~input_o\,
	datab => \entrada_b[7]~input_o\,
	datad => VCC,
	cin => \LessThan0~13_cout\,
	cout => \LessThan0~15_cout\);

-- Location: LCCOMB_X19_Y11_N16
\LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~17_cout\ = CARRY((\entrada_b[8]~input_o\ & ((!\LessThan0~15_cout\) # (!\entrada_a[8]~input_o\))) # (!\entrada_b[8]~input_o\ & (!\entrada_a[8]~input_o\ & !\LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[8]~input_o\,
	datab => \entrada_a[8]~input_o\,
	datad => VCC,
	cin => \LessThan0~15_cout\,
	cout => \LessThan0~17_cout\);

-- Location: LCCOMB_X19_Y11_N18
\LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~19_cout\ = CARRY((\entrada_a[9]~input_o\ & ((!\LessThan0~17_cout\) # (!\entrada_b[9]~input_o\))) # (!\entrada_a[9]~input_o\ & (!\entrada_b[9]~input_o\ & !\LessThan0~17_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[9]~input_o\,
	datab => \entrada_b[9]~input_o\,
	datad => VCC,
	cin => \LessThan0~17_cout\,
	cout => \LessThan0~19_cout\);

-- Location: LCCOMB_X19_Y11_N20
\LessThan0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~21_cout\ = CARRY((\entrada_a[10]~input_o\ & (\entrada_b[10]~input_o\ & !\LessThan0~19_cout\)) # (!\entrada_a[10]~input_o\ & ((\entrada_b[10]~input_o\) # (!\LessThan0~19_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[10]~input_o\,
	datab => \entrada_b[10]~input_o\,
	datad => VCC,
	cin => \LessThan0~19_cout\,
	cout => \LessThan0~21_cout\);

-- Location: LCCOMB_X19_Y11_N22
\LessThan0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~23_cout\ = CARRY((\entrada_a[11]~input_o\ & ((!\LessThan0~21_cout\) # (!\entrada_b[11]~input_o\))) # (!\entrada_a[11]~input_o\ & (!\entrada_b[11]~input_o\ & !\LessThan0~21_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[11]~input_o\,
	datab => \entrada_b[11]~input_o\,
	datad => VCC,
	cin => \LessThan0~21_cout\,
	cout => \LessThan0~23_cout\);

-- Location: LCCOMB_X19_Y11_N24
\LessThan0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~25_cout\ = CARRY((\entrada_a[12]~input_o\ & (\entrada_b[12]~input_o\ & !\LessThan0~23_cout\)) # (!\entrada_a[12]~input_o\ & ((\entrada_b[12]~input_o\) # (!\LessThan0~23_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[12]~input_o\,
	datab => \entrada_b[12]~input_o\,
	datad => VCC,
	cin => \LessThan0~23_cout\,
	cout => \LessThan0~25_cout\);

-- Location: LCCOMB_X19_Y11_N26
\LessThan0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~27_cout\ = CARRY((\entrada_a[13]~input_o\ & ((!\LessThan0~25_cout\) # (!\entrada_b[13]~input_o\))) # (!\entrada_a[13]~input_o\ & (!\entrada_b[13]~input_o\ & !\LessThan0~25_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[13]~input_o\,
	datab => \entrada_b[13]~input_o\,
	datad => VCC,
	cin => \LessThan0~25_cout\,
	cout => \LessThan0~27_cout\);

-- Location: LCCOMB_X19_Y11_N28
\LessThan0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~29_cout\ = CARRY((\entrada_a[14]~input_o\ & (\entrada_b[14]~input_o\ & !\LessThan0~27_cout\)) # (!\entrada_a[14]~input_o\ & ((\entrada_b[14]~input_o\) # (!\LessThan0~27_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[14]~input_o\,
	datab => \entrada_b[14]~input_o\,
	datad => VCC,
	cin => \LessThan0~27_cout\,
	cout => \LessThan0~29_cout\);

-- Location: LCCOMB_X19_Y11_N30
\LessThan0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~31_cout\ = CARRY((\entrada_b[15]~input_o\ & (\entrada_a[15]~input_o\ & !\LessThan0~29_cout\)) # (!\entrada_b[15]~input_o\ & ((\entrada_a[15]~input_o\) # (!\LessThan0~29_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[15]~input_o\,
	datab => \entrada_a[15]~input_o\,
	datad => VCC,
	cin => \LessThan0~29_cout\,
	cout => \LessThan0~31_cout\);

-- Location: LCCOMB_X19_Y10_N0
\LessThan0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~33_cout\ = CARRY((\entrada_a[16]~input_o\ & (\entrada_b[16]~input_o\ & !\LessThan0~31_cout\)) # (!\entrada_a[16]~input_o\ & ((\entrada_b[16]~input_o\) # (!\LessThan0~31_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[16]~input_o\,
	datab => \entrada_b[16]~input_o\,
	datad => VCC,
	cin => \LessThan0~31_cout\,
	cout => \LessThan0~33_cout\);

-- Location: LCCOMB_X19_Y10_N2
\LessThan0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~35_cout\ = CARRY((\entrada_a[17]~input_o\ & ((!\LessThan0~33_cout\) # (!\entrada_b[17]~input_o\))) # (!\entrada_a[17]~input_o\ & (!\entrada_b[17]~input_o\ & !\LessThan0~33_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[17]~input_o\,
	datab => \entrada_b[17]~input_o\,
	datad => VCC,
	cin => \LessThan0~33_cout\,
	cout => \LessThan0~35_cout\);

-- Location: LCCOMB_X19_Y10_N4
\LessThan0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~37_cout\ = CARRY((\entrada_a[18]~input_o\ & (\entrada_b[18]~input_o\ & !\LessThan0~35_cout\)) # (!\entrada_a[18]~input_o\ & ((\entrada_b[18]~input_o\) # (!\LessThan0~35_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[18]~input_o\,
	datab => \entrada_b[18]~input_o\,
	datad => VCC,
	cin => \LessThan0~35_cout\,
	cout => \LessThan0~37_cout\);

-- Location: LCCOMB_X19_Y10_N6
\LessThan0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~39_cout\ = CARRY((\entrada_a[19]~input_o\ & ((!\LessThan0~37_cout\) # (!\entrada_b[19]~input_o\))) # (!\entrada_a[19]~input_o\ & (!\entrada_b[19]~input_o\ & !\LessThan0~37_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[19]~input_o\,
	datab => \entrada_b[19]~input_o\,
	datad => VCC,
	cin => \LessThan0~37_cout\,
	cout => \LessThan0~39_cout\);

-- Location: LCCOMB_X19_Y10_N8
\LessThan0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~41_cout\ = CARRY((\entrada_b[20]~input_o\ & ((!\LessThan0~39_cout\) # (!\entrada_a[20]~input_o\))) # (!\entrada_b[20]~input_o\ & (!\entrada_a[20]~input_o\ & !\LessThan0~39_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[20]~input_o\,
	datab => \entrada_a[20]~input_o\,
	datad => VCC,
	cin => \LessThan0~39_cout\,
	cout => \LessThan0~41_cout\);

-- Location: LCCOMB_X19_Y10_N10
\LessThan0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~43_cout\ = CARRY((\entrada_a[21]~input_o\ & ((!\LessThan0~41_cout\) # (!\entrada_b[21]~input_o\))) # (!\entrada_a[21]~input_o\ & (!\entrada_b[21]~input_o\ & !\LessThan0~41_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[21]~input_o\,
	datab => \entrada_b[21]~input_o\,
	datad => VCC,
	cin => \LessThan0~41_cout\,
	cout => \LessThan0~43_cout\);

-- Location: LCCOMB_X19_Y10_N12
\LessThan0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~45_cout\ = CARRY((\entrada_b[22]~input_o\ & ((!\LessThan0~43_cout\) # (!\entrada_a[22]~input_o\))) # (!\entrada_b[22]~input_o\ & (!\entrada_a[22]~input_o\ & !\LessThan0~43_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[22]~input_o\,
	datab => \entrada_a[22]~input_o\,
	datad => VCC,
	cin => \LessThan0~43_cout\,
	cout => \LessThan0~45_cout\);

-- Location: LCCOMB_X19_Y10_N14
\LessThan0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~47_cout\ = CARRY((\entrada_a[23]~input_o\ & ((!\LessThan0~45_cout\) # (!\entrada_b[23]~input_o\))) # (!\entrada_a[23]~input_o\ & (!\entrada_b[23]~input_o\ & !\LessThan0~45_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[23]~input_o\,
	datab => \entrada_b[23]~input_o\,
	datad => VCC,
	cin => \LessThan0~45_cout\,
	cout => \LessThan0~47_cout\);

-- Location: LCCOMB_X19_Y10_N16
\LessThan0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~49_cout\ = CARRY((\entrada_b[24]~input_o\ & ((!\LessThan0~47_cout\) # (!\entrada_a[24]~input_o\))) # (!\entrada_b[24]~input_o\ & (!\entrada_a[24]~input_o\ & !\LessThan0~47_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[24]~input_o\,
	datab => \entrada_a[24]~input_o\,
	datad => VCC,
	cin => \LessThan0~47_cout\,
	cout => \LessThan0~49_cout\);

-- Location: LCCOMB_X19_Y10_N18
\LessThan0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~51_cout\ = CARRY((\entrada_a[25]~input_o\ & ((!\LessThan0~49_cout\) # (!\entrada_b[25]~input_o\))) # (!\entrada_a[25]~input_o\ & (!\entrada_b[25]~input_o\ & !\LessThan0~49_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[25]~input_o\,
	datab => \entrada_b[25]~input_o\,
	datad => VCC,
	cin => \LessThan0~49_cout\,
	cout => \LessThan0~51_cout\);

-- Location: LCCOMB_X19_Y10_N20
\LessThan0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~53_cout\ = CARRY((\entrada_b[26]~input_o\ & ((!\LessThan0~51_cout\) # (!\entrada_a[26]~input_o\))) # (!\entrada_b[26]~input_o\ & (!\entrada_a[26]~input_o\ & !\LessThan0~51_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[26]~input_o\,
	datab => \entrada_a[26]~input_o\,
	datad => VCC,
	cin => \LessThan0~51_cout\,
	cout => \LessThan0~53_cout\);

-- Location: LCCOMB_X19_Y10_N22
\LessThan0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~55_cout\ = CARRY((\entrada_b[27]~input_o\ & (\entrada_a[27]~input_o\ & !\LessThan0~53_cout\)) # (!\entrada_b[27]~input_o\ & ((\entrada_a[27]~input_o\) # (!\LessThan0~53_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[27]~input_o\,
	datab => \entrada_a[27]~input_o\,
	datad => VCC,
	cin => \LessThan0~53_cout\,
	cout => \LessThan0~55_cout\);

-- Location: LCCOMB_X19_Y10_N24
\LessThan0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~57_cout\ = CARRY((\entrada_b[28]~input_o\ & ((!\LessThan0~55_cout\) # (!\entrada_a[28]~input_o\))) # (!\entrada_b[28]~input_o\ & (!\entrada_a[28]~input_o\ & !\LessThan0~55_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[28]~input_o\,
	datab => \entrada_a[28]~input_o\,
	datad => VCC,
	cin => \LessThan0~55_cout\,
	cout => \LessThan0~57_cout\);

-- Location: LCCOMB_X19_Y10_N26
\LessThan0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~59_cout\ = CARRY((\entrada_a[29]~input_o\ & ((!\LessThan0~57_cout\) # (!\entrada_b[29]~input_o\))) # (!\entrada_a[29]~input_o\ & (!\entrada_b[29]~input_o\ & !\LessThan0~57_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[29]~input_o\,
	datab => \entrada_b[29]~input_o\,
	datad => VCC,
	cin => \LessThan0~57_cout\,
	cout => \LessThan0~59_cout\);

-- Location: LCCOMB_X19_Y10_N28
\LessThan0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~61_cout\ = CARRY((\entrada_a[30]~input_o\ & (\entrada_b[30]~input_o\ & !\LessThan0~59_cout\)) # (!\entrada_a[30]~input_o\ & ((\entrada_b[30]~input_o\) # (!\LessThan0~59_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[30]~input_o\,
	datab => \entrada_b[30]~input_o\,
	datad => VCC,
	cin => \LessThan0~59_cout\,
	cout => \LessThan0~61_cout\);

-- Location: LCCOMB_X19_Y10_N30
\LessThan0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~62_combout\ = (\entrada_b[31]~input_o\ & ((\LessThan0~61_cout\) # (!\entrada_a[31]~input_o\))) # (!\entrada_b[31]~input_o\ & (\LessThan0~61_cout\ & !\entrada_a[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \entrada_b[31]~input_o\,
	datad => \entrada_a[31]~input_o\,
	cin => \LessThan0~61_cout\,
	combout => \LessThan0~62_combout\);

-- Location: LCCOMB_X24_Y13_N0
\Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~2_combout\ = (\seletor[1]~input_o\ & (\Add0~5_combout\)) # (!\seletor[1]~input_o\ & ((\seletor[0]~input_o\ & (\Add0~5_combout\)) # (!\seletor[0]~input_o\ & ((\LessThan0~62_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datab => \seletor[1]~input_o\,
	datac => \seletor[0]~input_o\,
	datad => \LessThan0~62_combout\,
	combout => \Mux31~2_combout\);

-- Location: LCCOMB_X24_Y13_N18
\Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~3_combout\ = (\seletor[2]~input_o\ & (((\seletor[3]~input_o\)))) # (!\seletor[2]~input_o\ & ((\seletor[3]~input_o\ & ((\Mux31~2_combout\))) # (!\seletor[3]~input_o\ & (\Mux31~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[2]~input_o\,
	datab => \Mux31~6_combout\,
	datac => \seletor[3]~input_o\,
	datad => \Mux31~2_combout\,
	combout => \Mux31~3_combout\);

-- Location: LCCOMB_X19_Y15_N24
\ShiftRight0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~21_combout\ = (\entrada_b[1]~input_o\ & (\entrada_a[23]~input_o\)) # (!\entrada_b[1]~input_o\ & ((\entrada_a[21]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[23]~input_o\,
	datac => \entrada_b[1]~input_o\,
	datad => \entrada_a[21]~input_o\,
	combout => \ShiftRight0~21_combout\);

-- Location: LCCOMB_X21_Y13_N18
\ShiftRight0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~22_combout\ = (\entrada_b[1]~input_o\ & (\entrada_a[22]~input_o\)) # (!\entrada_b[1]~input_o\ & ((\entrada_a[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[22]~input_o\,
	datab => \entrada_b[1]~input_o\,
	datad => \entrada_a[20]~input_o\,
	combout => \ShiftRight0~22_combout\);

-- Location: LCCOMB_X21_Y13_N12
\ShiftRight0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~23_combout\ = (\entrada_b[0]~input_o\ & (\ShiftRight0~21_combout\)) # (!\entrada_b[0]~input_o\ & ((\ShiftRight0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~21_combout\,
	datab => \ShiftRight0~22_combout\,
	datac => \entrada_b[0]~input_o\,
	combout => \ShiftRight0~23_combout\);

-- Location: LCCOMB_X24_Y12_N24
\ShiftRight0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~25_combout\ = (\entrada_b[1]~input_o\ & (\entrada_a[18]~input_o\)) # (!\entrada_b[1]~input_o\ & ((\entrada_a[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_a[18]~input_o\,
	datac => \entrada_b[1]~input_o\,
	datad => \entrada_a[16]~input_o\,
	combout => \ShiftRight0~25_combout\);

-- Location: LCCOMB_X17_Y12_N0
\ShiftRight0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~24_combout\ = (\entrada_b[1]~input_o\ & (\entrada_a[19]~input_o\)) # (!\entrada_b[1]~input_o\ & ((\entrada_a[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[19]~input_o\,
	datac => \entrada_a[17]~input_o\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftRight0~24_combout\);

-- Location: LCCOMB_X21_Y13_N6
\ShiftRight0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~26_combout\ = (\entrada_b[0]~input_o\ & ((\ShiftRight0~24_combout\))) # (!\entrada_b[0]~input_o\ & (\ShiftRight0~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~25_combout\,
	datab => \entrada_b[0]~input_o\,
	datac => \ShiftRight0~24_combout\,
	combout => \ShiftRight0~26_combout\);

-- Location: LCCOMB_X21_Y13_N8
\ShiftRight0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~27_combout\ = (\entrada_b[2]~input_o\ & (\ShiftRight0~23_combout\)) # (!\entrada_b[2]~input_o\ & ((\ShiftRight0~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~23_combout\,
	datab => \entrada_b[2]~input_o\,
	datad => \ShiftRight0~26_combout\,
	combout => \ShiftRight0~27_combout\);

-- Location: LCCOMB_X19_Y13_N16
\ShiftRight0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~15_combout\ = (!\entrada_b[1]~input_o\ & ((\entrada_b[0]~input_o\ & (\entrada_a[29]~input_o\)) # (!\entrada_b[0]~input_o\ & ((\entrada_a[28]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[0]~input_o\,
	datab => \entrada_a[29]~input_o\,
	datac => \entrada_a[28]~input_o\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftRight0~15_combout\);

-- Location: LCCOMB_X19_Y13_N18
\ShiftRight1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~14_combout\ = (\entrada_b[0]~input_o\ & ((\entrada_a[31]~input_o\))) # (!\entrada_b[0]~input_o\ & (\entrada_a[30]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_a[30]~input_o\,
	datac => \entrada_a[31]~input_o\,
	datad => \entrada_b[0]~input_o\,
	combout => \ShiftRight1~14_combout\);

-- Location: LCCOMB_X23_Y13_N8
\ShiftRight0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~16_combout\ = (\ShiftRight0~15_combout\) # ((\ShiftRight1~14_combout\ & \entrada_b[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~15_combout\,
	datac => \ShiftRight1~14_combout\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftRight0~16_combout\);

-- Location: LCCOMB_X17_Y9_N26
\ShiftRight0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~17_combout\ = (\entrada_b[1]~input_o\ & ((\entrada_a[27]~input_o\))) # (!\entrada_b[1]~input_o\ & (\entrada_a[25]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[25]~input_o\,
	datac => \entrada_b[1]~input_o\,
	datad => \entrada_a[27]~input_o\,
	combout => \ShiftRight0~17_combout\);

-- Location: LCCOMB_X17_Y9_N20
\ShiftRight0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~18_combout\ = (\entrada_b[1]~input_o\ & (\entrada_a[26]~input_o\)) # (!\entrada_b[1]~input_o\ & ((\entrada_a[24]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[26]~input_o\,
	datab => \entrada_a[24]~input_o\,
	datac => \entrada_b[1]~input_o\,
	combout => \ShiftRight0~18_combout\);

-- Location: LCCOMB_X21_Y13_N16
\ShiftRight0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~19_combout\ = (\entrada_b[0]~input_o\ & (\ShiftRight0~17_combout\)) # (!\entrada_b[0]~input_o\ & ((\ShiftRight0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~17_combout\,
	datac => \entrada_b[0]~input_o\,
	datad => \ShiftRight0~18_combout\,
	combout => \ShiftRight0~19_combout\);

-- Location: LCCOMB_X23_Y13_N26
\ShiftRight0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~20_combout\ = (\entrada_b[3]~input_o\ & ((\entrada_b[2]~input_o\ & (\ShiftRight0~16_combout\)) # (!\entrada_b[2]~input_o\ & ((\ShiftRight0~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[3]~input_o\,
	datab => \ShiftRight0~16_combout\,
	datac => \ShiftRight0~19_combout\,
	datad => \entrada_b[2]~input_o\,
	combout => \ShiftRight0~20_combout\);

-- Location: LCCOMB_X23_Y13_N12
\ShiftRight0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~28_combout\ = (\ShiftRight0~20_combout\) # ((\ShiftRight0~27_combout\ & !\entrada_b[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~27_combout\,
	datac => \ShiftRight0~20_combout\,
	datad => \entrada_b[3]~input_o\,
	combout => \ShiftRight0~28_combout\);

-- Location: LCCOMB_X18_Y12_N24
\ShiftLeft0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~6_combout\ = (\entrada_b[22]~input_o\) # ((\entrada_b[24]~input_o\) # ((\entrada_b[21]~input_o\) # (\entrada_b[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[22]~input_o\,
	datab => \entrada_b[24]~input_o\,
	datac => \entrada_b[21]~input_o\,
	datad => \entrada_b[23]~input_o\,
	combout => \ShiftLeft0~6_combout\);

-- Location: LCCOMB_X18_Y10_N24
\ShiftLeft0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~7_combout\ = (\entrada_b[28]~input_o\) # ((\entrada_b[26]~input_o\) # ((\entrada_b[27]~input_o\) # (\entrada_b[25]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[28]~input_o\,
	datab => \entrada_b[26]~input_o\,
	datac => \entrada_b[27]~input_o\,
	datad => \entrada_b[25]~input_o\,
	combout => \ShiftLeft0~7_combout\);

-- Location: LCCOMB_X18_Y12_N26
\ShiftLeft0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~8_combout\ = (\entrada_b[30]~input_o\) # ((\ShiftLeft0~6_combout\) # ((\entrada_b[29]~input_o\) # (\ShiftLeft0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[30]~input_o\,
	datab => \ShiftLeft0~6_combout\,
	datac => \entrada_b[29]~input_o\,
	datad => \ShiftLeft0~7_combout\,
	combout => \ShiftLeft0~8_combout\);

-- Location: LCCOMB_X16_Y11_N10
\ShiftLeft0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~3_combout\ = (\entrada_b[14]~input_o\) # ((\entrada_b[13]~input_o\) # ((\entrada_b[15]~input_o\) # (\entrada_b[16]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[14]~input_o\,
	datab => \entrada_b[13]~input_o\,
	datac => \entrada_b[15]~input_o\,
	datad => \entrada_b[16]~input_o\,
	combout => \ShiftLeft0~3_combout\);

-- Location: LCCOMB_X16_Y11_N24
\ShiftLeft0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~1_combout\ = (\entrada_b[6]~input_o\) # ((\entrada_b[5]~input_o\) # ((\entrada_b[7]~input_o\) # (\entrada_b[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[6]~input_o\,
	datab => \entrada_b[5]~input_o\,
	datac => \entrada_b[7]~input_o\,
	datad => \entrada_b[8]~input_o\,
	combout => \ShiftLeft0~1_combout\);

-- Location: LCCOMB_X16_Y10_N0
\ShiftLeft0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~2_combout\ = (\entrada_b[10]~input_o\) # ((\entrada_b[12]~input_o\) # ((\entrada_b[11]~input_o\) # (\entrada_b[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[10]~input_o\,
	datab => \entrada_b[12]~input_o\,
	datac => \entrada_b[11]~input_o\,
	datad => \entrada_b[9]~input_o\,
	combout => \ShiftLeft0~2_combout\);

-- Location: LCCOMB_X16_Y11_N28
\ShiftLeft0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~4_combout\ = (\entrada_b[17]~input_o\) # ((\entrada_b[20]~input_o\) # ((\entrada_b[19]~input_o\) # (\entrada_b[18]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[17]~input_o\,
	datab => \entrada_b[20]~input_o\,
	datac => \entrada_b[19]~input_o\,
	datad => \entrada_b[18]~input_o\,
	combout => \ShiftLeft0~4_combout\);

-- Location: LCCOMB_X16_Y11_N6
\ShiftLeft0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~5_combout\ = (\ShiftLeft0~3_combout\) # ((\ShiftLeft0~1_combout\) # ((\ShiftLeft0~2_combout\) # (\ShiftLeft0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~3_combout\,
	datab => \ShiftLeft0~1_combout\,
	datac => \ShiftLeft0~2_combout\,
	datad => \ShiftLeft0~4_combout\,
	combout => \ShiftLeft0~5_combout\);

-- Location: LCCOMB_X24_Y14_N8
\ShiftLeft0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~9_combout\ = (\ShiftLeft0~8_combout\) # (\ShiftLeft0~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~8_combout\,
	datac => \ShiftLeft0~5_combout\,
	combout => \ShiftLeft0~9_combout\);

-- Location: LCCOMB_X26_Y12_N28
\ShiftRight0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~11_combout\ = (\entrada_b[1]~input_o\ & (\entrada_a[10]~input_o\)) # (!\entrada_b[1]~input_o\ & ((\entrada_a[8]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[10]~input_o\,
	datab => \entrada_a[8]~input_o\,
	datac => \entrada_b[1]~input_o\,
	combout => \ShiftRight0~11_combout\);

-- Location: LCCOMB_X26_Y12_N10
\ShiftRight0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~10_combout\ = (\entrada_b[1]~input_o\ & ((\entrada_a[11]~input_o\))) # (!\entrada_b[1]~input_o\ & (\entrada_a[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[9]~input_o\,
	datab => \entrada_b[1]~input_o\,
	datac => \entrada_a[11]~input_o\,
	combout => \ShiftRight0~10_combout\);

-- Location: LCCOMB_X26_Y12_N6
\ShiftRight0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~12_combout\ = (\entrada_b[0]~input_o\ & ((\ShiftRight0~10_combout\))) # (!\entrada_b[0]~input_o\ & (\ShiftRight0~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~11_combout\,
	datac => \entrada_b[0]~input_o\,
	datad => \ShiftRight0~10_combout\,
	combout => \ShiftRight0~12_combout\);

-- Location: LCCOMB_X26_Y12_N16
\ShiftRight0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~8_combout\ = (\entrada_b[1]~input_o\ & ((\entrada_a[14]~input_o\))) # (!\entrada_b[1]~input_o\ & (\entrada_a[12]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_a[12]~input_o\,
	datac => \entrada_b[1]~input_o\,
	datad => \entrada_a[14]~input_o\,
	combout => \ShiftRight0~8_combout\);

-- Location: LCCOMB_X26_Y11_N24
\ShiftRight0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~7_combout\ = (\entrada_b[1]~input_o\ & (\entrada_a[15]~input_o\)) # (!\entrada_b[1]~input_o\ & ((\entrada_a[13]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_a[15]~input_o\,
	datac => \entrada_a[13]~input_o\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftRight0~7_combout\);

-- Location: LCCOMB_X26_Y11_N2
\ShiftRight0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~9_combout\ = (\entrada_b[0]~input_o\ & ((\ShiftRight0~7_combout\))) # (!\entrada_b[0]~input_o\ & (\ShiftRight0~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~8_combout\,
	datac => \entrada_b[0]~input_o\,
	datad => \ShiftRight0~7_combout\,
	combout => \ShiftRight0~9_combout\);

-- Location: LCCOMB_X23_Y12_N0
\ShiftRight0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~13_combout\ = (\entrada_b[2]~input_o\ & ((\ShiftRight0~9_combout\))) # (!\entrada_b[2]~input_o\ & (\ShiftRight0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~12_combout\,
	datab => \ShiftRight0~9_combout\,
	datac => \entrada_b[2]~input_o\,
	combout => \ShiftRight0~13_combout\);

-- Location: LCCOMB_X22_Y15_N10
\ShiftRight0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~4_combout\ = (\entrada_b[1]~input_o\ & ((\entrada_b[0]~input_o\ & (\entrada_a[7]~input_o\)) # (!\entrada_b[0]~input_o\ & ((\entrada_a[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[7]~input_o\,
	datab => \entrada_a[6]~input_o\,
	datac => \entrada_b[0]~input_o\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftRight0~4_combout\);

-- Location: LCCOMB_X22_Y15_N4
\ShiftRight1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~13_combout\ = (\entrada_b[0]~input_o\ & (\entrada_a[5]~input_o\)) # (!\entrada_b[0]~input_o\ & ((\entrada_a[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[0]~input_o\,
	datab => \entrada_a[5]~input_o\,
	datac => \entrada_a[4]~input_o\,
	combout => \ShiftRight1~13_combout\);

-- Location: LCCOMB_X22_Y15_N6
\ShiftRight0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~5_combout\ = (\ShiftRight0~4_combout\) # ((\ShiftRight1~13_combout\ & !\entrada_b[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~4_combout\,
	datac => \ShiftRight1~13_combout\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftRight0~5_combout\);

-- Location: LCCOMB_X25_Y13_N4
\ShiftRight0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~2_combout\ = (!\entrada_b[1]~input_o\ & ((\entrada_b[0]~input_o\ & (\entrada_a[1]~input_o\)) # (!\entrada_b[0]~input_o\ & ((\entrada_a[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[0]~input_o\,
	datab => \entrada_b[1]~input_o\,
	datac => \entrada_a[1]~input_o\,
	datad => \entrada_a[0]~input_o\,
	combout => \ShiftRight0~2_combout\);

-- Location: LCCOMB_X19_Y12_N8
\ShiftRight1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~12_combout\ = (\entrada_b[0]~input_o\ & ((\entrada_a[3]~input_o\))) # (!\entrada_b[0]~input_o\ & (\entrada_a[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[2]~input_o\,
	datac => \entrada_b[0]~input_o\,
	datad => \entrada_a[3]~input_o\,
	combout => \ShiftRight1~12_combout\);

-- Location: LCCOMB_X22_Y15_N24
\ShiftRight0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~3_combout\ = (!\entrada_b[2]~input_o\ & ((\ShiftRight0~2_combout\) # ((\ShiftRight1~12_combout\ & \entrada_b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~2_combout\,
	datab => \ShiftRight1~12_combout\,
	datac => \entrada_b[2]~input_o\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftRight0~3_combout\);

-- Location: LCCOMB_X22_Y15_N0
\ShiftRight0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~6_combout\ = (!\entrada_b[3]~input_o\ & ((\ShiftRight0~3_combout\) # ((\ShiftRight0~5_combout\ & \entrada_b[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~5_combout\,
	datab => \ShiftRight0~3_combout\,
	datac => \entrada_b[2]~input_o\,
	datad => \entrada_b[3]~input_o\,
	combout => \ShiftRight0~6_combout\);

-- Location: LCCOMB_X24_Y14_N26
\ShiftRight0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~14_combout\ = (!\entrada_b[4]~input_o\ & ((\ShiftRight0~6_combout\) # ((\ShiftRight0~13_combout\ & \entrada_b[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~13_combout\,
	datab => \ShiftRight0~6_combout\,
	datac => \entrada_b[3]~input_o\,
	datad => \entrada_b[4]~input_o\,
	combout => \ShiftRight0~14_combout\);

-- Location: LCCOMB_X24_Y13_N26
\ShiftRight0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~29_combout\ = (!\ShiftLeft0~9_combout\ & ((\ShiftRight0~14_combout\) # ((\ShiftRight0~28_combout\ & \entrada_b[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~28_combout\,
	datab => \ShiftLeft0~9_combout\,
	datac => \ShiftRight0~14_combout\,
	datad => \entrada_b[4]~input_o\,
	combout => \ShiftRight0~29_combout\);

-- Location: LCCOMB_X25_Y13_N0
\ShiftLeft0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~0_combout\ = (\entrada_b[0]~input_o\) # ((\entrada_b[2]~input_o\) # (\entrada_b[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[0]~input_o\,
	datac => \entrada_b[2]~input_o\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftLeft0~0_combout\);

-- Location: LCCOMB_X25_Y13_N18
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (!\entrada_b[3]~input_o\ & (!\entrada_b[4]~input_o\ & !\ShiftLeft0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_b[3]~input_o\,
	datac => \entrada_b[4]~input_o\,
	datad => \ShiftLeft0~0_combout\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X24_Y13_N24
\Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~0_combout\ = (!\seletor[0]~input_o\ & (\Add0~0_combout\ & (\entrada_a[0]~input_o\ & !\ShiftLeft0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datab => \Add0~0_combout\,
	datac => \entrada_a[0]~input_o\,
	datad => \ShiftLeft0~9_combout\,
	combout => \Mux31~0_combout\);

-- Location: LCCOMB_X24_Y13_N4
\Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~0_combout\ = (\entrada_a[31]~input_o\ & (\seletor[1]~input_o\ & ((\ShiftLeft0~5_combout\) # (\ShiftLeft0~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[31]~input_o\,
	datab => \ShiftLeft0~5_combout\,
	datac => \seletor[1]~input_o\,
	datad => \ShiftLeft0~8_combout\,
	combout => \Mux30~0_combout\);

-- Location: LCCOMB_X24_Y13_N6
\Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~1_combout\ = (\Mux31~0_combout\) # ((\seletor[0]~input_o\ & ((\ShiftRight0~29_combout\) # (\Mux30~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~29_combout\,
	datab => \Mux31~0_combout\,
	datac => \seletor[0]~input_o\,
	datad => \Mux30~0_combout\,
	combout => \Mux31~1_combout\);

-- Location: LCCOMB_X24_Y13_N12
\Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux31~4_combout\ = (\Mux31~3_combout\ & ((\Add0~5_combout\) # ((!\seletor[2]~input_o\)))) # (!\Mux31~3_combout\ & (((\seletor[2]~input_o\ & \Mux31~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datab => \Mux31~3_combout\,
	datac => \seletor[2]~input_o\,
	datad => \Mux31~1_combout\,
	combout => \Mux31~4_combout\);

-- Location: LCCOMB_X17_Y11_N10
\Add0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~7_combout\ = \entrada_b[1]~input_o\ $ (\seletor[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entrada_b[1]~input_o\,
	datad => \seletor[3]~input_o\,
	combout => \Add0~7_combout\);

-- Location: LCCOMB_X17_Y11_N20
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = ((\Add0~7_combout\ $ (\entrada_a[1]~input_o\ $ (!\Add0~6\)))) # (GND)
-- \Add0~9\ = CARRY((\Add0~7_combout\ & ((\entrada_a[1]~input_o\) # (!\Add0~6\))) # (!\Add0~7_combout\ & (\entrada_a[1]~input_o\ & !\Add0~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~7_combout\,
	datab => \entrada_a[1]~input_o\,
	datad => VCC,
	cin => \Add0~6\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X19_Y15_N2
\ShiftRight1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~19_combout\ = (\entrada_b[1]~input_o\ & (\entrada_a[24]~input_o\)) # (!\entrada_b[1]~input_o\ & ((\entrada_a[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[1]~input_o\,
	datab => \entrada_a[24]~input_o\,
	datad => \entrada_a[22]~input_o\,
	combout => \ShiftRight1~19_combout\);

-- Location: LCCOMB_X21_Y13_N10
\ShiftRight0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~39_combout\ = (\entrada_b[0]~input_o\ & ((\ShiftRight1~19_combout\))) # (!\entrada_b[0]~input_o\ & (\ShiftRight0~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~21_combout\,
	datab => \entrada_b[0]~input_o\,
	datac => \ShiftRight1~19_combout\,
	combout => \ShiftRight0~39_combout\);

-- Location: LCCOMB_X25_Y12_N30
\ShiftRight1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~20_combout\ = (\entrada_b[1]~input_o\ & ((\entrada_a[20]~input_o\))) # (!\entrada_b[1]~input_o\ & (\entrada_a[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_a[18]~input_o\,
	datac => \entrada_a[20]~input_o\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftRight1~20_combout\);

-- Location: LCCOMB_X21_Y13_N4
\ShiftRight0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~40_combout\ = (\entrada_b[0]~input_o\ & (\ShiftRight1~20_combout\)) # (!\entrada_b[0]~input_o\ & ((\ShiftRight0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~20_combout\,
	datab => \entrada_b[0]~input_o\,
	datac => \ShiftRight0~24_combout\,
	combout => \ShiftRight0~40_combout\);

-- Location: LCCOMB_X21_Y13_N14
\ShiftRight0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~41_combout\ = (\entrada_b[2]~input_o\ & (\ShiftRight0~39_combout\)) # (!\entrada_b[2]~input_o\ & ((\ShiftRight0~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~39_combout\,
	datac => \ShiftRight0~40_combout\,
	datad => \entrada_b[2]~input_o\,
	combout => \ShiftRight0~41_combout\);

-- Location: LCCOMB_X19_Y13_N30
\ShiftRight1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~22_combout\ = (\entrada_b[0]~input_o\ & (\entrada_a[30]~input_o\)) # (!\entrada_b[0]~input_o\ & ((\entrada_a[29]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_a[30]~input_o\,
	datac => \entrada_a[29]~input_o\,
	datad => \entrada_b[0]~input_o\,
	combout => \ShiftRight1~22_combout\);

-- Location: LCCOMB_X22_Y13_N16
\ShiftRight1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~23_combout\ = (\entrada_b[2]~input_o\ & ((\entrada_b[1]~input_o\ & ((\entrada_a[31]~input_o\))) # (!\entrada_b[1]~input_o\ & (\ShiftRight1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~22_combout\,
	datab => \entrada_a[31]~input_o\,
	datac => \entrada_b[2]~input_o\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftRight1~23_combout\);

-- Location: LCCOMB_X19_Y13_N4
\ShiftRight1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~21_combout\ = (\entrada_b[1]~input_o\ & ((\entrada_a[28]~input_o\))) # (!\entrada_b[1]~input_o\ & (\entrada_a[26]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[26]~input_o\,
	datac => \entrada_a[28]~input_o\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftRight1~21_combout\);

-- Location: LCCOMB_X21_Y13_N0
\ShiftRight0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~42_combout\ = (!\entrada_b[2]~input_o\ & ((\entrada_b[0]~input_o\ & ((\ShiftRight1~21_combout\))) # (!\entrada_b[0]~input_o\ & (\ShiftRight0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~17_combout\,
	datab => \ShiftRight1~21_combout\,
	datac => \entrada_b[0]~input_o\,
	datad => \entrada_b[2]~input_o\,
	combout => \ShiftRight0~42_combout\);

-- Location: LCCOMB_X22_Y13_N2
\ShiftRight1~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~24_combout\ = (\entrada_b[3]~input_o\ & (((\ShiftRight1~23_combout\) # (\ShiftRight0~42_combout\)))) # (!\entrada_b[3]~input_o\ & (\ShiftRight0~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~41_combout\,
	datab => \ShiftRight1~23_combout\,
	datac => \ShiftRight0~42_combout\,
	datad => \entrada_b[3]~input_o\,
	combout => \ShiftRight1~24_combout\);

-- Location: LCCOMB_X21_Y14_N0
\ShiftRight0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~43_combout\ = (\entrada_a[31]~input_o\ & !\entrada_b[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_a[31]~input_o\,
	datac => \entrada_b[0]~input_o\,
	combout => \ShiftRight0~43_combout\);

-- Location: LCCOMB_X22_Y13_N28
\ShiftRight0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~44_combout\ = (\entrada_b[2]~input_o\ & ((\entrada_b[1]~input_o\ & ((\ShiftRight0~43_combout\))) # (!\entrada_b[1]~input_o\ & (\ShiftRight1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~22_combout\,
	datab => \entrada_b[1]~input_o\,
	datac => \entrada_b[2]~input_o\,
	datad => \ShiftRight0~43_combout\,
	combout => \ShiftRight0~44_combout\);

-- Location: LCCOMB_X22_Y13_N14
\ShiftRight0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~45_combout\ = (\entrada_b[3]~input_o\ & (((\ShiftRight0~44_combout\) # (\ShiftRight0~42_combout\)))) # (!\entrada_b[3]~input_o\ & (\ShiftRight0~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~41_combout\,
	datab => \ShiftRight0~44_combout\,
	datac => \ShiftRight0~42_combout\,
	datad => \entrada_b[3]~input_o\,
	combout => \ShiftRight0~45_combout\);

-- Location: LCCOMB_X25_Y12_N16
\Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~2_combout\ = (\entrada_b[4]~input_o\ & ((\seletor[1]~input_o\ & (\ShiftRight1~24_combout\)) # (!\seletor[1]~input_o\ & ((\ShiftRight0~45_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~24_combout\,
	datab => \ShiftRight0~45_combout\,
	datac => \seletor[1]~input_o\,
	datad => \entrada_b[4]~input_o\,
	combout => \Mux30~2_combout\);

-- Location: LCCOMB_X26_Y12_N24
\ShiftRight1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~18_combout\ = (\entrada_b[1]~input_o\ & ((\entrada_a[12]~input_o\))) # (!\entrada_b[1]~input_o\ & (\entrada_a[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[10]~input_o\,
	datab => \entrada_a[12]~input_o\,
	datac => \entrada_b[1]~input_o\,
	combout => \ShiftRight1~18_combout\);

-- Location: LCCOMB_X26_Y12_N26
\ShiftRight0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~36_combout\ = (\entrada_b[0]~input_o\ & ((\ShiftRight1~18_combout\))) # (!\entrada_b[0]~input_o\ & (\ShiftRight0~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~10_combout\,
	datac => \entrada_b[0]~input_o\,
	datad => \ShiftRight1~18_combout\,
	combout => \ShiftRight0~36_combout\);

-- Location: LCCOMB_X26_Y11_N20
\ShiftRight1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~17_combout\ = (\entrada_b[1]~input_o\ & (\entrada_a[16]~input_o\)) # (!\entrada_b[1]~input_o\ & ((\entrada_a[14]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_a[16]~input_o\,
	datac => \entrada_a[14]~input_o\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftRight1~17_combout\);

-- Location: LCCOMB_X26_Y11_N22
\ShiftRight0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~35_combout\ = (\entrada_b[0]~input_o\ & ((\ShiftRight1~17_combout\))) # (!\entrada_b[0]~input_o\ & (\ShiftRight0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~7_combout\,
	datac => \entrada_b[0]~input_o\,
	datad => \ShiftRight1~17_combout\,
	combout => \ShiftRight0~35_combout\);

-- Location: LCCOMB_X25_Y12_N10
\ShiftRight0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~37_combout\ = (\entrada_b[2]~input_o\ & ((\ShiftRight0~35_combout\))) # (!\entrada_b[2]~input_o\ & (\ShiftRight0~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~36_combout\,
	datac => \ShiftRight0~35_combout\,
	datad => \entrada_b[2]~input_o\,
	combout => \ShiftRight0~37_combout\);

-- Location: LCCOMB_X24_Y12_N2
\ShiftRight1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~15_combout\ = (\entrada_b[0]~input_o\ & (\entrada_a[4]~input_o\)) # (!\entrada_b[0]~input_o\ & ((\entrada_a[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[4]~input_o\,
	datab => \entrada_b[0]~input_o\,
	datad => \entrada_a[3]~input_o\,
	combout => \ShiftRight1~15_combout\);

-- Location: LCCOMB_X19_Y12_N28
\ShiftRight0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~30_combout\ = (!\entrada_b[1]~input_o\ & ((\entrada_b[0]~input_o\ & (\entrada_a[2]~input_o\)) # (!\entrada_b[0]~input_o\ & ((\entrada_a[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[2]~input_o\,
	datab => \entrada_b[0]~input_o\,
	datac => \entrada_a[1]~input_o\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftRight0~30_combout\);

-- Location: LCCOMB_X25_Y12_N28
\ShiftRight0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~31_combout\ = (!\entrada_b[2]~input_o\ & ((\ShiftRight0~30_combout\) # ((\entrada_b[1]~input_o\ & \ShiftRight1~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[1]~input_o\,
	datab => \ShiftRight1~15_combout\,
	datac => \ShiftRight0~30_combout\,
	datad => \entrada_b[2]~input_o\,
	combout => \ShiftRight0~31_combout\);

-- Location: LCCOMB_X21_Y12_N8
\ShiftRight0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~32_combout\ = (\entrada_b[1]~input_o\ & ((\entrada_b[0]~input_o\ & (\entrada_a[8]~input_o\)) # (!\entrada_b[0]~input_o\ & ((\entrada_a[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[1]~input_o\,
	datab => \entrada_a[8]~input_o\,
	datac => \entrada_a[7]~input_o\,
	datad => \entrada_b[0]~input_o\,
	combout => \ShiftRight0~32_combout\);

-- Location: LCCOMB_X22_Y15_N2
\ShiftRight1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~16_combout\ = (\entrada_b[0]~input_o\ & (\entrada_a[6]~input_o\)) # (!\entrada_b[0]~input_o\ & ((\entrada_a[5]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_a[6]~input_o\,
	datac => \entrada_b[0]~input_o\,
	datad => \entrada_a[5]~input_o\,
	combout => \ShiftRight1~16_combout\);

-- Location: LCCOMB_X25_Y12_N14
\ShiftRight0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~33_combout\ = (\ShiftRight0~32_combout\) # ((\ShiftRight1~16_combout\ & !\entrada_b[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~32_combout\,
	datac => \ShiftRight1~16_combout\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftRight0~33_combout\);

-- Location: LCCOMB_X25_Y12_N8
\ShiftRight0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~34_combout\ = (!\entrada_b[3]~input_o\ & ((\ShiftRight0~31_combout\) # ((\ShiftRight0~33_combout\ & \entrada_b[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[3]~input_o\,
	datab => \ShiftRight0~31_combout\,
	datac => \ShiftRight0~33_combout\,
	datad => \entrada_b[2]~input_o\,
	combout => \ShiftRight0~34_combout\);

-- Location: LCCOMB_X25_Y12_N20
\ShiftRight0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~38_combout\ = (!\entrada_b[4]~input_o\ & ((\ShiftRight0~34_combout\) # ((\entrada_b[3]~input_o\ & \ShiftRight0~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[3]~input_o\,
	datab => \ShiftRight0~37_combout\,
	datac => \ShiftRight0~34_combout\,
	datad => \entrada_b[4]~input_o\,
	combout => \ShiftRight0~38_combout\);

-- Location: LCCOMB_X19_Y12_N10
\ShiftLeft0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~10_combout\ = (\entrada_b[0]~input_o\ & ((\entrada_a[0]~input_o\))) # (!\entrada_b[0]~input_o\ & (\entrada_a[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_a[1]~input_o\,
	datac => \entrada_b[0]~input_o\,
	datad => \entrada_a[0]~input_o\,
	combout => \ShiftLeft0~10_combout\);

-- Location: LCCOMB_X25_Y12_N24
\ShiftLeft0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~11_combout\ = (\entrada_b[3]~input_o\) # ((\entrada_b[1]~input_o\) # (\entrada_b[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[3]~input_o\,
	datac => \entrada_b[1]~input_o\,
	datad => \entrada_b[2]~input_o\,
	combout => \ShiftLeft0~11_combout\);

-- Location: LCCOMB_X25_Y12_N18
\Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~1_combout\ = (\ShiftLeft0~10_combout\ & (!\ShiftLeft0~11_combout\ & (!\seletor[0]~input_o\ & !\entrada_b[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~10_combout\,
	datab => \ShiftLeft0~11_combout\,
	datac => \seletor[0]~input_o\,
	datad => \entrada_b[4]~input_o\,
	combout => \Mux30~1_combout\);

-- Location: LCCOMB_X25_Y12_N2
\Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~3_combout\ = (\Mux30~1_combout\) # ((\seletor[0]~input_o\ & ((\Mux30~2_combout\) # (\ShiftRight0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~2_combout\,
	datab => \ShiftRight0~38_combout\,
	datac => \seletor[0]~input_o\,
	datad => \Mux30~1_combout\,
	combout => \Mux30~3_combout\);

-- Location: LCCOMB_X25_Y12_N12
\Mux30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~4_combout\ = (\Mux30~0_combout\ & ((\seletor[0]~input_o\) # ((!\ShiftLeft0~9_combout\ & \Mux30~3_combout\)))) # (!\Mux30~0_combout\ & (!\ShiftLeft0~9_combout\ & ((\Mux30~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux30~0_combout\,
	datab => \ShiftLeft0~9_combout\,
	datac => \seletor[0]~input_o\,
	datad => \Mux30~3_combout\,
	combout => \Mux30~4_combout\);

-- Location: LCCOMB_X23_Y10_N2
\Mux30~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~6_combout\ = (\entrada_a[1]~input_o\ & (\seletor[1]~input_o\ $ (((!\entrada_b[1]~input_o\ & \seletor[0]~input_o\))))) # (!\entrada_a[1]~input_o\ & (\entrada_b[1]~input_o\ & (\seletor[1]~input_o\ $ (\seletor[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[1]~input_o\,
	datab => \seletor[1]~input_o\,
	datac => \entrada_b[1]~input_o\,
	datad => \seletor[0]~input_o\,
	combout => \Mux30~6_combout\);

-- Location: LCCOMB_X23_Y10_N0
\Mux30~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~5_combout\ = (\entrada_a[1]~input_o\ & (\seletor[0]~input_o\ & (\seletor[1]~input_o\ $ (\entrada_b[1]~input_o\)))) # (!\entrada_a[1]~input_o\ & ((\seletor[1]~input_o\ & ((\seletor[0]~input_o\) # (!\entrada_b[1]~input_o\))) # (!\seletor[1]~input_o\ 
-- & (!\entrada_b[1]~input_o\ & \seletor[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[1]~input_o\,
	datab => \seletor[1]~input_o\,
	datac => \entrada_b[1]~input_o\,
	datad => \seletor[0]~input_o\,
	combout => \Mux30~5_combout\);

-- Location: LCCOMB_X23_Y10_N28
\Mux30~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~7_combout\ = (\Add0~8_combout\ & ((\Mux30~6_combout\ & ((!\Mux30~5_combout\) # (!\seletor[3]~input_o\))) # (!\Mux30~6_combout\ & (\seletor[3]~input_o\ $ (!\Mux30~5_combout\))))) # (!\Add0~8_combout\ & (\Mux30~6_combout\ & (!\seletor[3]~input_o\ & 
-- !\Mux30~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \Mux30~6_combout\,
	datac => \seletor[3]~input_o\,
	datad => \Mux30~5_combout\,
	combout => \Mux30~7_combout\);

-- Location: LCCOMB_X23_Y10_N6
\Mux30~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~8_combout\ = (\seletor[2]~input_o\ & (\seletor[3]~input_o\)) # (!\seletor[2]~input_o\ & ((\Mux30~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[3]~input_o\,
	datac => \seletor[2]~input_o\,
	datad => \Mux30~7_combout\,
	combout => \Mux30~8_combout\);

-- Location: LCCOMB_X23_Y10_N8
\Mux30~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux30~9_combout\ = (\seletor[2]~input_o\ & ((\Mux30~8_combout\ & (\Add0~8_combout\)) # (!\Mux30~8_combout\ & ((\Mux30~4_combout\))))) # (!\seletor[2]~input_o\ & (((\Mux30~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~8_combout\,
	datab => \seletor[2]~input_o\,
	datac => \Mux30~4_combout\,
	datad => \Mux30~8_combout\,
	combout => \Mux30~9_combout\);

-- Location: LCCOMB_X17_Y11_N4
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = \entrada_b[2]~input_o\ $ (\seletor[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entrada_b[2]~input_o\,
	datad => \seletor[3]~input_o\,
	combout => \Add0~10_combout\);

-- Location: LCCOMB_X17_Y11_N22
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (\entrada_a[2]~input_o\ & ((\Add0~10_combout\ & (\Add0~9\ & VCC)) # (!\Add0~10_combout\ & (!\Add0~9\)))) # (!\entrada_a[2]~input_o\ & ((\Add0~10_combout\ & (!\Add0~9\)) # (!\Add0~10_combout\ & ((\Add0~9\) # (GND)))))
-- \Add0~12\ = CARRY((\entrada_a[2]~input_o\ & (!\Add0~10_combout\ & !\Add0~9\)) # (!\entrada_a[2]~input_o\ & ((!\Add0~9\) # (!\Add0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[2]~input_o\,
	datab => \Add0~10_combout\,
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~11_combout\,
	cout => \Add0~12\);

-- Location: LCCOMB_X18_Y14_N8
\Add0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~13_combout\ = \seletor[3]~input_o\ $ (((!\seletor[1]~input_o\ & (!\seletor[2]~input_o\ & !\seletor[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => \seletor[3]~input_o\,
	datac => \seletor[2]~input_o\,
	datad => \seletor[0]~input_o\,
	combout => \Add0~13_combout\);

-- Location: LCCOMB_X24_Y14_N12
\Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~2_combout\ = (\seletor[1]~input_o\ & ((\ShiftLeft0~8_combout\) # ((\ShiftLeft0~5_combout\) # (\entrada_b[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~8_combout\,
	datab => \seletor[1]~input_o\,
	datac => \ShiftLeft0~5_combout\,
	datad => \entrada_b[4]~input_o\,
	combout => \Mux28~2_combout\);

-- Location: LCCOMB_X26_Y11_N8
\ShiftRight1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~39_combout\ = (\entrada_b[1]~input_o\ & ((\entrada_a[17]~input_o\))) # (!\entrada_b[1]~input_o\ & (\entrada_a[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_a[15]~input_o\,
	datac => \entrada_a[17]~input_o\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftRight1~39_combout\);

-- Location: LCCOMB_X26_Y11_N10
\ShiftRight1~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~40_combout\ = (\entrada_b[0]~input_o\ & ((\ShiftRight1~39_combout\))) # (!\entrada_b[0]~input_o\ & (\ShiftRight1~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~17_combout\,
	datac => \entrada_b[0]~input_o\,
	datad => \ShiftRight1~39_combout\,
	combout => \ShiftRight1~40_combout\);

-- Location: LCCOMB_X26_Y12_N20
\ShiftRight1~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~41_combout\ = (\entrada_b[1]~input_o\ & (\entrada_a[13]~input_o\)) # (!\entrada_b[1]~input_o\ & ((\entrada_a[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[13]~input_o\,
	datab => \entrada_a[11]~input_o\,
	datac => \entrada_b[1]~input_o\,
	combout => \ShiftRight1~41_combout\);

-- Location: LCCOMB_X26_Y12_N14
\ShiftRight1~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~42_combout\ = (\entrada_b[0]~input_o\ & (\ShiftRight1~41_combout\)) # (!\entrada_b[0]~input_o\ & ((\ShiftRight1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~41_combout\,
	datac => \entrada_b[0]~input_o\,
	datad => \ShiftRight1~18_combout\,
	combout => \ShiftRight1~42_combout\);

-- Location: LCCOMB_X18_Y15_N20
\ShiftRight0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~49_combout\ = (\entrada_b[2]~input_o\ & (\ShiftRight1~40_combout\)) # (!\entrada_b[2]~input_o\ & ((\ShiftRight1~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~40_combout\,
	datac => \entrada_b[2]~input_o\,
	datad => \ShiftRight1~42_combout\,
	combout => \ShiftRight0~49_combout\);

-- Location: LCCOMB_X21_Y12_N4
\ShiftRight1~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~36_combout\ = (\entrada_b[1]~input_o\ & (\entrada_a[9]~input_o\)) # (!\entrada_b[1]~input_o\ & ((\entrada_a[7]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_a[9]~input_o\,
	datac => \entrada_a[7]~input_o\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftRight1~36_combout\);

-- Location: LCCOMB_X21_Y12_N26
\ShiftRight1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~35_combout\ = (!\entrada_b[0]~input_o\ & ((\entrada_b[1]~input_o\ & (\entrada_a[8]~input_o\)) # (!\entrada_b[1]~input_o\ & ((\entrada_a[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[1]~input_o\,
	datab => \entrada_a[8]~input_o\,
	datac => \entrada_a[6]~input_o\,
	datad => \entrada_b[0]~input_o\,
	combout => \ShiftRight1~35_combout\);

-- Location: LCCOMB_X21_Y12_N14
\ShiftRight1~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~37_combout\ = (\ShiftRight1~35_combout\) # ((\ShiftRight1~36_combout\ & \entrada_b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~36_combout\,
	datac => \ShiftRight1~35_combout\,
	datad => \entrada_b[0]~input_o\,
	combout => \ShiftRight1~37_combout\);

-- Location: LCCOMB_X22_Y15_N14
\ShiftRight1~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~38_combout\ = (!\entrada_b[2]~input_o\ & !\entrada_b[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entrada_b[2]~input_o\,
	datad => \entrada_b[3]~input_o\,
	combout => \ShiftRight1~38_combout\);

-- Location: LCCOMB_X22_Y15_N12
\Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~3_combout\ = (\entrada_b[3]~input_o\) # ((!\entrada_b[2]~input_o\ & \entrada_b[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[3]~input_o\,
	datac => \entrada_b[2]~input_o\,
	datad => \entrada_b[1]~input_o\,
	combout => \Mux28~3_combout\);

-- Location: LCCOMB_X22_Y15_N16
\Mux29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~4_combout\ = (\ShiftRight1~38_combout\ & (((\ShiftRight1~12_combout\ & !\Mux28~3_combout\)))) # (!\ShiftRight1~38_combout\ & ((\ShiftRight1~37_combout\) # ((\Mux28~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~37_combout\,
	datab => \ShiftRight1~38_combout\,
	datac => \ShiftRight1~12_combout\,
	datad => \Mux28~3_combout\,
	combout => \Mux29~4_combout\);

-- Location: LCCOMB_X22_Y15_N18
\Mux29~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~5_combout\ = (\Mux29~4_combout\ & ((\ShiftRight0~49_combout\) # ((!\Mux28~3_combout\)))) # (!\Mux29~4_combout\ & (((\ShiftRight1~13_combout\ & \Mux28~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~49_combout\,
	datab => \Mux29~4_combout\,
	datac => \ShiftRight1~13_combout\,
	datad => \Mux28~3_combout\,
	combout => \Mux29~5_combout\);

-- Location: LCCOMB_X19_Y15_N12
\ShiftRight1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~29_combout\ = (\entrada_b[1]~input_o\ & (\entrada_a[25]~input_o\)) # (!\entrada_b[1]~input_o\ & ((\entrada_a[23]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[25]~input_o\,
	datac => \entrada_b[1]~input_o\,
	datad => \entrada_a[23]~input_o\,
	combout => \ShiftRight1~29_combout\);

-- Location: LCCOMB_X19_Y15_N22
\ShiftRight1~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~30_combout\ = (\entrada_b[0]~input_o\ & (\ShiftRight1~29_combout\)) # (!\entrada_b[0]~input_o\ & ((\ShiftRight1~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~29_combout\,
	datab => \ShiftRight1~19_combout\,
	datad => \entrada_b[0]~input_o\,
	combout => \ShiftRight1~30_combout\);

-- Location: LCCOMB_X17_Y12_N10
\ShiftRight1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~31_combout\ = (\entrada_b[1]~input_o\ & ((\entrada_a[21]~input_o\))) # (!\entrada_b[1]~input_o\ & (\entrada_a[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[19]~input_o\,
	datac => \entrada_a[21]~input_o\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftRight1~31_combout\);

-- Location: LCCOMB_X21_Y13_N26
\ShiftRight1~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~32_combout\ = (\entrada_b[0]~input_o\ & ((\ShiftRight1~31_combout\))) # (!\entrada_b[0]~input_o\ & (\ShiftRight1~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~20_combout\,
	datab => \entrada_b[0]~input_o\,
	datac => \ShiftRight1~31_combout\,
	combout => \ShiftRight1~32_combout\);

-- Location: LCCOMB_X18_Y15_N10
\ShiftRight0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~46_combout\ = (\entrada_b[2]~input_o\ & (\ShiftRight1~30_combout\)) # (!\entrada_b[2]~input_o\ & ((\ShiftRight1~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~30_combout\,
	datac => \entrada_b[2]~input_o\,
	datad => \ShiftRight1~32_combout\,
	combout => \ShiftRight0~46_combout\);

-- Location: LCCOMB_X19_Y13_N10
\ShiftRight1~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~26_combout\ = (\entrada_b[0]~input_o\ & ((\entrada_b[1]~input_o\ & ((\entrada_a[29]~input_o\))) # (!\entrada_b[1]~input_o\ & (\entrada_a[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[0]~input_o\,
	datab => \entrada_a[27]~input_o\,
	datac => \entrada_a[29]~input_o\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftRight1~26_combout\);

-- Location: LCCOMB_X19_Y13_N20
\ShiftRight1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~27_combout\ = (!\entrada_b[0]~input_o\ & ((\entrada_b[1]~input_o\ & ((\entrada_a[28]~input_o\))) # (!\entrada_b[1]~input_o\ & (\entrada_a[26]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[26]~input_o\,
	datab => \entrada_b[1]~input_o\,
	datac => \entrada_a[28]~input_o\,
	datad => \entrada_b[0]~input_o\,
	combout => \ShiftRight1~27_combout\);

-- Location: LCCOMB_X18_Y15_N14
\ShiftRight1~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~34_combout\ = (!\entrada_b[2]~input_o\ & ((\ShiftRight1~26_combout\) # (\ShiftRight1~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~26_combout\,
	datac => \entrada_b[2]~input_o\,
	datad => \ShiftRight1~27_combout\,
	combout => \ShiftRight1~34_combout\);

-- Location: LCCOMB_X18_Y15_N8
\ShiftRight0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~47_combout\ = (\ShiftRight1~34_combout\) # ((\ShiftRight1~14_combout\ & (\entrada_b[2]~input_o\ & !\entrada_b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~14_combout\,
	datab => \ShiftRight1~34_combout\,
	datac => \entrada_b[2]~input_o\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftRight0~47_combout\);

-- Location: LCCOMB_X18_Y15_N18
\ShiftRight0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~48_combout\ = (\entrada_b[3]~input_o\ & ((\ShiftRight0~47_combout\))) # (!\entrada_b[3]~input_o\ & (\ShiftRight0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~46_combout\,
	datab => \ShiftRight0~47_combout\,
	datac => \entrada_b[3]~input_o\,
	combout => \ShiftRight0~48_combout\);

-- Location: LCCOMB_X24_Y14_N6
\Mux28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~4_combout\ = (!\ShiftLeft0~8_combout\ & (!\ShiftLeft0~5_combout\ & ((!\entrada_b[4]~input_o\) # (!\seletor[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~8_combout\,
	datab => \seletor[1]~input_o\,
	datac => \ShiftLeft0~5_combout\,
	datad => \entrada_b[4]~input_o\,
	combout => \Mux28~4_combout\);

-- Location: LCCOMB_X24_Y14_N16
\Mux28~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~5_combout\ = (\ShiftLeft0~8_combout\ & (\seletor[1]~input_o\)) # (!\ShiftLeft0~8_combout\ & ((\ShiftLeft0~5_combout\ & (\seletor[1]~input_o\)) # (!\ShiftLeft0~5_combout\ & ((!\entrada_b[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~8_combout\,
	datab => \seletor[1]~input_o\,
	datac => \ShiftLeft0~5_combout\,
	datad => \entrada_b[4]~input_o\,
	combout => \Mux28~5_combout\);

-- Location: LCCOMB_X19_Y14_N16
\Mux29~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~6_combout\ = (\Mux28~4_combout\ & ((\Mux28~5_combout\ & (\Mux29~5_combout\)) # (!\Mux28~5_combout\ & ((\ShiftRight0~48_combout\))))) # (!\Mux28~4_combout\ & (((\Mux28~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux29~5_combout\,
	datab => \ShiftRight0~48_combout\,
	datac => \Mux28~4_combout\,
	datad => \Mux28~5_combout\,
	combout => \Mux29~6_combout\);

-- Location: LCCOMB_X19_Y13_N8
\ShiftRight1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~25_combout\ = (\entrada_b[0]~input_o\ & (((\entrada_a[31]~input_o\)))) # (!\entrada_b[0]~input_o\ & ((\entrada_b[1]~input_o\ & ((\entrada_a[31]~input_o\))) # (!\entrada_b[1]~input_o\ & (\entrada_a[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[0]~input_o\,
	datab => \entrada_a[30]~input_o\,
	datac => \entrada_a[31]~input_o\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftRight1~25_combout\);

-- Location: LCCOMB_X18_Y15_N0
\ShiftRight1~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~28_combout\ = (\entrada_b[2]~input_o\ & (\ShiftRight1~25_combout\)) # (!\entrada_b[2]~input_o\ & (((\ShiftRight1~26_combout\) # (\ShiftRight1~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~25_combout\,
	datab => \ShiftRight1~26_combout\,
	datac => \entrada_b[2]~input_o\,
	datad => \ShiftRight1~27_combout\,
	combout => \ShiftRight1~28_combout\);

-- Location: LCCOMB_X18_Y15_N4
\ShiftRight1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~33_combout\ = (\entrada_b[3]~input_o\ & ((\ShiftRight1~28_combout\))) # (!\entrada_b[3]~input_o\ & (\ShiftRight0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~46_combout\,
	datac => \entrada_b[3]~input_o\,
	datad => \ShiftRight1~28_combout\,
	combout => \ShiftRight1~33_combout\);

-- Location: LCCOMB_X19_Y14_N10
\Mux29~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~7_combout\ = (\Mux28~2_combout\ & ((\Mux29~6_combout\ & ((\entrada_a[31]~input_o\))) # (!\Mux29~6_combout\ & (\ShiftRight1~33_combout\)))) # (!\Mux28~2_combout\ & (\Mux29~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~2_combout\,
	datab => \Mux29~6_combout\,
	datac => \ShiftRight1~33_combout\,
	datad => \entrada_a[31]~input_o\,
	combout => \Mux29~7_combout\);

-- Location: LCCOMB_X18_Y14_N18
\Mux28~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~8_combout\ = (!\seletor[2]~input_o\ & \seletor[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[2]~input_o\,
	datac => \seletor[1]~input_o\,
	combout => \Mux28~8_combout\);

-- Location: LCCOMB_X24_Y14_N10
\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (!\ShiftLeft0~8_combout\ & (!\ShiftLeft0~5_combout\ & !\entrada_b[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~8_combout\,
	datac => \ShiftLeft0~5_combout\,
	datad => \entrada_b[4]~input_o\,
	combout => \Mux1~0_combout\);

-- Location: LCCOMB_X19_Y12_N26
\Mux28~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~6_combout\ = (\seletor[2]~input_o\ & (\Mux1~0_combout\)) # (!\seletor[2]~input_o\ & ((!\seletor[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \seletor[1]~input_o\,
	datad => \seletor[2]~input_o\,
	combout => \Mux28~6_combout\);

-- Location: LCCOMB_X19_Y12_N14
\ShiftLeft0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~12_combout\ = (!\entrada_b[0]~input_o\ & ((\entrada_b[1]~input_o\ & ((\entrada_a[0]~input_o\))) # (!\entrada_b[1]~input_o\ & (\entrada_a[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[2]~input_o\,
	datab => \entrada_b[0]~input_o\,
	datac => \entrada_b[1]~input_o\,
	datad => \entrada_a[0]~input_o\,
	combout => \ShiftLeft0~12_combout\);

-- Location: LCCOMB_X19_Y12_N0
\ShiftLeft0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~13_combout\ = (\ShiftLeft0~12_combout\) # ((\entrada_a[1]~input_o\ & (\entrada_b[0]~input_o\ & !\entrada_b[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~12_combout\,
	datab => \entrada_a[1]~input_o\,
	datac => \entrada_b[0]~input_o\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftLeft0~13_combout\);

-- Location: LCCOMB_X24_Y13_N22
\Mux28~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~7_combout\ = (\seletor[2]~input_o\) # ((\seletor[1]~input_o\ & \seletor[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[2]~input_o\,
	datab => \seletor[1]~input_o\,
	datac => \seletor[0]~input_o\,
	combout => \Mux28~7_combout\);

-- Location: LCCOMB_X19_Y12_N6
\Mux29~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~11_combout\ = (\Mux28~7_combout\ & (((!\entrada_b[3]~input_o\ & !\entrada_b[2]~input_o\)))) # (!\Mux28~7_combout\ & (\entrada_a[2]~input_o\ $ (((\entrada_b[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[2]~input_o\,
	datab => \entrada_b[3]~input_o\,
	datac => \Mux28~7_combout\,
	datad => \entrada_b[2]~input_o\,
	combout => \Mux29~11_combout\);

-- Location: LCCOMB_X19_Y12_N12
\Mux29~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~8_combout\ = (\Mux28~6_combout\ & (\Mux29~11_combout\ & ((\ShiftLeft0~13_combout\) # (!\Mux28~7_combout\)))) # (!\Mux28~6_combout\ & (((!\Mux28~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~6_combout\,
	datab => \ShiftLeft0~13_combout\,
	datac => \Mux28~7_combout\,
	datad => \Mux29~11_combout\,
	combout => \Mux29~8_combout\);

-- Location: LCCOMB_X19_Y12_N30
\Mux29~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~9_combout\ = (\Mux28~8_combout\ & ((\entrada_b[2]~input_o\ & ((\entrada_a[2]~input_o\) # (\Mux29~8_combout\))) # (!\entrada_b[2]~input_o\ & (\entrada_a[2]~input_o\ & \Mux29~8_combout\)))) # (!\Mux28~8_combout\ & (((\Mux29~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~8_combout\,
	datab => \entrada_b[2]~input_o\,
	datac => \entrada_a[2]~input_o\,
	datad => \Mux29~8_combout\,
	combout => \Mux29~9_combout\);

-- Location: LCCOMB_X18_Y14_N2
\Mux29~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~12_combout\ = (\seletor[2]~input_o\ & ((\seletor[0]~input_o\ & (\Mux29~7_combout\)) # (!\seletor[0]~input_o\ & ((\Mux29~9_combout\))))) # (!\seletor[2]~input_o\ & (((\Mux29~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[2]~input_o\,
	datab => \Mux29~7_combout\,
	datac => \seletor[0]~input_o\,
	datad => \Mux29~9_combout\,
	combout => \Mux29~12_combout\);

-- Location: LCCOMB_X18_Y14_N20
\Mux29~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux29~10_combout\ = (\Add0~13_combout\ & (\Add0~11_combout\)) # (!\Add0~13_combout\ & (((!\seletor[3]~input_o\ & \Mux29~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~11_combout\,
	datab => \Add0~13_combout\,
	datac => \seletor[3]~input_o\,
	datad => \Mux29~12_combout\,
	combout => \Mux29~10_combout\);

-- Location: LCCOMB_X17_Y11_N14
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = \seletor[3]~input_o\ $ (\entrada_b[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seletor[3]~input_o\,
	datac => \entrada_b[3]~input_o\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X17_Y11_N24
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = ((\entrada_a[3]~input_o\ $ (\Add0~14_combout\ $ (!\Add0~12\)))) # (GND)
-- \Add0~16\ = CARRY((\entrada_a[3]~input_o\ & ((\Add0~14_combout\) # (!\Add0~12\))) # (!\entrada_a[3]~input_o\ & (\Add0~14_combout\ & !\Add0~12\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[3]~input_o\,
	datab => \Add0~14_combout\,
	datad => VCC,
	cin => \Add0~12\,
	combout => \Add0~15_combout\,
	cout => \Add0~16\);

-- Location: LCCOMB_X21_Y13_N22
\ShiftRight1~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~47_combout\ = (\entrada_b[0]~input_o\ & ((\ShiftRight0~22_combout\))) # (!\entrada_b[0]~input_o\ & (\ShiftRight1~31_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~31_combout\,
	datab => \ShiftRight0~22_combout\,
	datac => \entrada_b[0]~input_o\,
	combout => \ShiftRight1~47_combout\);

-- Location: LCCOMB_X21_Y13_N20
\ShiftRight1~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~46_combout\ = (\entrada_b[0]~input_o\ & ((\ShiftRight0~18_combout\))) # (!\entrada_b[0]~input_o\ & (\ShiftRight1~29_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~29_combout\,
	datac => \entrada_b[0]~input_o\,
	datad => \ShiftRight0~18_combout\,
	combout => \ShiftRight1~46_combout\);

-- Location: LCCOMB_X21_Y14_N4
\ShiftRight0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~50_combout\ = (\entrada_b[2]~input_o\ & ((\ShiftRight1~46_combout\))) # (!\entrada_b[2]~input_o\ & (\ShiftRight1~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~47_combout\,
	datac => \entrada_b[2]~input_o\,
	datad => \ShiftRight1~46_combout\,
	combout => \ShiftRight0~50_combout\);

-- Location: LCCOMB_X19_Y13_N22
\ShiftRight1~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~43_combout\ = (!\entrada_b[1]~input_o\ & ((\entrada_b[0]~input_o\ & ((\entrada_a[28]~input_o\))) # (!\entrada_b[0]~input_o\ & (\entrada_a[27]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[0]~input_o\,
	datab => \entrada_a[27]~input_o\,
	datac => \entrada_a[28]~input_o\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftRight1~43_combout\);

-- Location: LCCOMB_X22_Y13_N24
\ShiftRight1~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~44_combout\ = (\ShiftRight1~43_combout\) # ((\ShiftRight1~22_combout\ & \entrada_b[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~43_combout\,
	datac => \ShiftRight1~22_combout\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftRight1~44_combout\);

-- Location: LCCOMB_X21_Y14_N18
\ShiftRight1~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~45_combout\ = (\entrada_b[3]~input_o\ & ((\entrada_b[2]~input_o\ & (\entrada_a[31]~input_o\)) # (!\entrada_b[2]~input_o\ & ((\ShiftRight1~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[3]~input_o\,
	datab => \entrada_a[31]~input_o\,
	datac => \entrada_b[2]~input_o\,
	datad => \ShiftRight1~44_combout\,
	combout => \ShiftRight1~45_combout\);

-- Location: LCCOMB_X21_Y14_N30
\ShiftRight1~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~48_combout\ = (\ShiftRight1~45_combout\) # ((\ShiftRight0~50_combout\ & !\entrada_b[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~50_combout\,
	datac => \entrada_b[3]~input_o\,
	datad => \ShiftRight1~45_combout\,
	combout => \ShiftRight1~48_combout\);

-- Location: LCCOMB_X26_Y12_N8
\ShiftRight1~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~49_combout\ = (\entrada_b[0]~input_o\ & ((\ShiftRight0~11_combout\))) # (!\entrada_b[0]~input_o\ & (\ShiftRight1~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~36_combout\,
	datac => \entrada_b[0]~input_o\,
	datad => \ShiftRight0~11_combout\,
	combout => \ShiftRight1~49_combout\);

-- Location: LCCOMB_X22_Y15_N28
\Mux28~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~10_combout\ = (\Mux28~3_combout\ & (!\ShiftRight1~38_combout\)) # (!\Mux28~3_combout\ & ((\ShiftRight1~38_combout\ & (\ShiftRight1~15_combout\)) # (!\ShiftRight1~38_combout\ & ((\ShiftRight1~49_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~3_combout\,
	datab => \ShiftRight1~38_combout\,
	datac => \ShiftRight1~15_combout\,
	datad => \ShiftRight1~49_combout\,
	combout => \Mux28~10_combout\);

-- Location: LCCOMB_X21_Y13_N24
\ShiftRight1~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~50_combout\ = (\entrada_b[0]~input_o\ & (\ShiftRight0~25_combout\)) # (!\entrada_b[0]~input_o\ & ((\ShiftRight1~39_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~25_combout\,
	datab => \entrada_b[0]~input_o\,
	datac => \ShiftRight1~39_combout\,
	combout => \ShiftRight1~50_combout\);

-- Location: LCCOMB_X26_Y12_N18
\ShiftRight1~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~51_combout\ = (\entrada_b[0]~input_o\ & ((\ShiftRight0~8_combout\))) # (!\entrada_b[0]~input_o\ & (\ShiftRight1~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~41_combout\,
	datac => \entrada_b[0]~input_o\,
	datad => \ShiftRight0~8_combout\,
	combout => \ShiftRight1~51_combout\);

-- Location: LCCOMB_X23_Y12_N2
\ShiftRight0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~53_combout\ = (\entrada_b[2]~input_o\ & (\ShiftRight1~50_combout\)) # (!\entrada_b[2]~input_o\ & ((\ShiftRight1~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~50_combout\,
	datac => \entrada_b[2]~input_o\,
	datad => \ShiftRight1~51_combout\,
	combout => \ShiftRight0~53_combout\);

-- Location: LCCOMB_X22_Y15_N30
\Mux28~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~11_combout\ = (\Mux28~3_combout\ & ((\Mux28~10_combout\ & ((\ShiftRight0~53_combout\))) # (!\Mux28~10_combout\ & (\ShiftRight1~16_combout\)))) # (!\Mux28~3_combout\ & (((\Mux28~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~3_combout\,
	datab => \ShiftRight1~16_combout\,
	datac => \Mux28~10_combout\,
	datad => \ShiftRight0~53_combout\,
	combout => \Mux28~11_combout\);

-- Location: LCCOMB_X21_Y14_N24
\ShiftRight0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~51_combout\ = (\entrada_b[2]~input_o\ & (\ShiftRight0~43_combout\ & ((!\entrada_b[1]~input_o\)))) # (!\entrada_b[2]~input_o\ & (((\ShiftRight1~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~43_combout\,
	datab => \ShiftRight1~44_combout\,
	datac => \entrada_b[2]~input_o\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftRight0~51_combout\);

-- Location: LCCOMB_X21_Y14_N10
\ShiftRight0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~52_combout\ = (\entrada_b[3]~input_o\ & (\ShiftRight0~51_combout\)) # (!\entrada_b[3]~input_o\ & ((\ShiftRight0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[3]~input_o\,
	datab => \ShiftRight0~51_combout\,
	datac => \ShiftRight0~50_combout\,
	combout => \ShiftRight0~52_combout\);

-- Location: LCCOMB_X19_Y14_N20
\Mux28~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~12_combout\ = (\Mux28~4_combout\ & ((\Mux28~5_combout\ & (\Mux28~11_combout\)) # (!\Mux28~5_combout\ & ((\ShiftRight0~52_combout\))))) # (!\Mux28~4_combout\ & (((\Mux28~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~11_combout\,
	datab => \ShiftRight0~52_combout\,
	datac => \Mux28~4_combout\,
	datad => \Mux28~5_combout\,
	combout => \Mux28~12_combout\);

-- Location: LCCOMB_X19_Y14_N22
\Mux28~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~13_combout\ = (\Mux28~2_combout\ & ((\Mux28~12_combout\ & ((\entrada_a[31]~input_o\))) # (!\Mux28~12_combout\ & (\ShiftRight1~48_combout\)))) # (!\Mux28~2_combout\ & (((\Mux28~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~2_combout\,
	datab => \ShiftRight1~48_combout\,
	datac => \Mux28~12_combout\,
	datad => \entrada_a[31]~input_o\,
	combout => \Mux28~13_combout\);

-- Location: LCCOMB_X19_Y12_N4
\resultado_ula~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \resultado_ula~0_combout\ = \entrada_b[3]~input_o\ $ (\entrada_a[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_b[3]~input_o\,
	datad => \entrada_a[3]~input_o\,
	combout => \resultado_ula~0_combout\);

-- Location: LCCOMB_X19_Y12_N16
\ShiftLeft0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~14_combout\ = (!\entrada_b[1]~input_o\ & ((\entrada_b[0]~input_o\ & (\entrada_a[2]~input_o\)) # (!\entrada_b[0]~input_o\ & ((\entrada_a[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[2]~input_o\,
	datab => \entrada_b[1]~input_o\,
	datac => \entrada_b[0]~input_o\,
	datad => \entrada_a[3]~input_o\,
	combout => \ShiftLeft0~14_combout\);

-- Location: LCCOMB_X19_Y12_N18
\ShiftLeft0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~15_combout\ = (\ShiftRight1~38_combout\ & ((\ShiftLeft0~14_combout\) # ((\ShiftLeft0~10_combout\ & \entrada_b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~10_combout\,
	datab => \ShiftLeft0~14_combout\,
	datac => \entrada_b[1]~input_o\,
	datad => \ShiftRight1~38_combout\,
	combout => \ShiftLeft0~15_combout\);

-- Location: LCCOMB_X19_Y12_N22
\Mux28~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~14_combout\ = (\Mux28~6_combout\ & ((\Mux28~7_combout\ & ((\ShiftLeft0~15_combout\))) # (!\Mux28~7_combout\ & (\resultado_ula~0_combout\)))) # (!\Mux28~6_combout\ & (((!\Mux28~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~6_combout\,
	datab => \resultado_ula~0_combout\,
	datac => \Mux28~7_combout\,
	datad => \ShiftLeft0~15_combout\,
	combout => \Mux28~14_combout\);

-- Location: LCCOMB_X19_Y12_N24
\Mux28~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~15_combout\ = (\Mux28~14_combout\ & ((\entrada_b[3]~input_o\) # ((\entrada_a[3]~input_o\) # (!\Mux28~8_combout\)))) # (!\Mux28~14_combout\ & (\entrada_b[3]~input_o\ & (\Mux28~8_combout\ & \entrada_a[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~14_combout\,
	datab => \entrada_b[3]~input_o\,
	datac => \Mux28~8_combout\,
	datad => \entrada_a[3]~input_o\,
	combout => \Mux28~15_combout\);

-- Location: LCCOMB_X18_Y14_N12
\Mux28~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~17_combout\ = (\seletor[2]~input_o\ & ((\seletor[0]~input_o\ & (\Mux28~13_combout\)) # (!\seletor[0]~input_o\ & ((\Mux28~15_combout\))))) # (!\seletor[2]~input_o\ & (((\Mux28~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[2]~input_o\,
	datab => \Mux28~13_combout\,
	datac => \seletor[0]~input_o\,
	datad => \Mux28~15_combout\,
	combout => \Mux28~17_combout\);

-- Location: LCCOMB_X18_Y14_N6
\Mux28~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~16_combout\ = (\Add0~13_combout\ & (\Add0~15_combout\)) # (!\Add0~13_combout\ & (((!\seletor[3]~input_o\ & \Mux28~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~15_combout\,
	datab => \Add0~13_combout\,
	datac => \seletor[3]~input_o\,
	datad => \Mux28~17_combout\,
	combout => \Mux28~16_combout\);

-- Location: LCCOMB_X23_Y12_N4
\Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~3_combout\ = (\ShiftLeft0~8_combout\) # ((\ShiftLeft0~5_combout\) # ((\entrada_b[4]~input_o\) # (\entrada_b[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~8_combout\,
	datab => \ShiftLeft0~5_combout\,
	datac => \entrada_b[4]~input_o\,
	datad => \entrada_b[3]~input_o\,
	combout => \Mux24~3_combout\);

-- Location: LCCOMB_X23_Y12_N22
\ShiftRight0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~56_combout\ = (\entrada_b[2]~input_o\ & (\ShiftRight0~26_combout\)) # (!\entrada_b[2]~input_o\ & ((\ShiftRight0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~26_combout\,
	datab => \ShiftRight0~9_combout\,
	datac => \entrada_b[2]~input_o\,
	combout => \ShiftRight0~56_combout\);

-- Location: LCCOMB_X23_Y12_N16
\Mux24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~4_combout\ = (!\entrada_b[4]~input_o\ & (!\ShiftLeft0~9_combout\ & ((\entrada_b[3]~input_o\) # (\entrada_b[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[3]~input_o\,
	datab => \entrada_b[2]~input_o\,
	datac => \entrada_b[4]~input_o\,
	datad => \ShiftLeft0~9_combout\,
	combout => \Mux24~4_combout\);

-- Location: LCCOMB_X23_Y12_N30
\Mux24~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~12_combout\ = (!\ShiftLeft0~8_combout\ & (!\ShiftLeft0~5_combout\ & ((\entrada_b[4]~input_o\) # (\entrada_b[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~8_combout\,
	datab => \ShiftLeft0~5_combout\,
	datac => \entrada_b[4]~input_o\,
	datad => \entrada_b[3]~input_o\,
	combout => \Mux24~12_combout\);

-- Location: LCCOMB_X21_Y13_N2
\ShiftRight0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~54_combout\ = (\entrada_b[2]~input_o\ & ((\ShiftRight0~19_combout\))) # (!\entrada_b[2]~input_o\ & (\ShiftRight0~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~23_combout\,
	datab => \ShiftRight0~19_combout\,
	datad => \entrada_b[2]~input_o\,
	combout => \ShiftRight0~54_combout\);

-- Location: LCCOMB_X23_Y13_N6
\ShiftRight0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~55_combout\ = (\entrada_b[3]~input_o\ & (\ShiftRight0~16_combout\ & ((!\entrada_b[2]~input_o\)))) # (!\entrada_b[3]~input_o\ & (((\ShiftRight0~54_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[3]~input_o\,
	datab => \ShiftRight0~16_combout\,
	datac => \ShiftRight0~54_combout\,
	datad => \entrada_b[2]~input_o\,
	combout => \ShiftRight0~55_combout\);

-- Location: LCCOMB_X23_Y12_N18
\Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~0_combout\ = (\Mux24~4_combout\ & ((\ShiftRight0~56_combout\) # ((!\Mux24~12_combout\)))) # (!\Mux24~4_combout\ & (((\Mux24~12_combout\ & \ShiftRight0~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~56_combout\,
	datab => \Mux24~4_combout\,
	datac => \Mux24~12_combout\,
	datad => \ShiftRight0~55_combout\,
	combout => \Mux27~0_combout\);

-- Location: LCCOMB_X23_Y12_N12
\Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~1_combout\ = (\Mux24~3_combout\ & (((\Mux27~0_combout\)))) # (!\Mux24~3_combout\ & ((\Mux27~0_combout\ & (\ShiftRight0~12_combout\)) # (!\Mux27~0_combout\ & ((\ShiftRight0~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~12_combout\,
	datab => \ShiftRight0~5_combout\,
	datac => \Mux24~3_combout\,
	datad => \Mux27~0_combout\,
	combout => \Mux27~1_combout\);

-- Location: LCCOMB_X23_Y13_N10
\ShiftLeft0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~16_combout\ = (\entrada_a[0]~input_o\ & (!\entrada_b[1]~input_o\ & (!\entrada_b[0]~input_o\ & \entrada_b[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[0]~input_o\,
	datab => \entrada_b[1]~input_o\,
	datac => \entrada_b[0]~input_o\,
	datad => \entrada_b[2]~input_o\,
	combout => \ShiftLeft0~16_combout\);

-- Location: LCCOMB_X24_Y12_N20
\ShiftLeft0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~17_combout\ = (\entrada_b[0]~input_o\ & ((\entrada_b[1]~input_o\ & (\entrada_a[1]~input_o\)) # (!\entrada_b[1]~input_o\ & ((\entrada_a[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[0]~input_o\,
	datab => \entrada_b[1]~input_o\,
	datac => \entrada_a[1]~input_o\,
	datad => \entrada_a[3]~input_o\,
	combout => \ShiftLeft0~17_combout\);

-- Location: LCCOMB_X24_Y12_N22
\ShiftLeft0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~18_combout\ = (\entrada_b[1]~input_o\ & ((\entrada_a[2]~input_o\))) # (!\entrada_b[1]~input_o\ & (\entrada_a[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[4]~input_o\,
	datab => \entrada_b[1]~input_o\,
	datac => \entrada_a[2]~input_o\,
	combout => \ShiftLeft0~18_combout\);

-- Location: LCCOMB_X24_Y12_N0
\ShiftLeft0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~19_combout\ = (\ShiftLeft0~17_combout\) # ((\ShiftLeft0~18_combout\ & !\entrada_b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~17_combout\,
	datac => \ShiftLeft0~18_combout\,
	datad => \entrada_b[0]~input_o\,
	combout => \ShiftLeft0~19_combout\);

-- Location: LCCOMB_X23_Y13_N28
\ShiftLeft0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~20_combout\ = (!\entrada_b[3]~input_o\ & ((\ShiftLeft0~16_combout\) # ((!\entrada_b[2]~input_o\ & \ShiftLeft0~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~16_combout\,
	datab => \entrada_b[2]~input_o\,
	datac => \ShiftLeft0~19_combout\,
	datad => \entrada_b[3]~input_o\,
	combout => \ShiftLeft0~20_combout\);

-- Location: LCCOMB_X23_Y10_N4
\Mux24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~5_combout\ = (\Mux1~0_combout\) # ((!\seletor[1]~input_o\ & \seletor[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seletor[1]~input_o\,
	datac => \Mux1~0_combout\,
	datad => \seletor[0]~input_o\,
	combout => \Mux24~5_combout\);

-- Location: LCCOMB_X25_Y12_N22
\Mux24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~6_combout\ = (\seletor[0]~input_o\ & (((\ShiftLeft0~9_combout\) # (!\entrada_b[4]~input_o\)) # (!\seletor[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => \ShiftLeft0~9_combout\,
	datac => \seletor[0]~input_o\,
	datad => \entrada_b[4]~input_o\,
	combout => \Mux24~6_combout\);

-- Location: LCCOMB_X23_Y12_N6
\Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~2_combout\ = (\Mux24~5_combout\ & ((\Mux24~6_combout\ & (\Mux27~1_combout\)) # (!\Mux24~6_combout\ & ((\ShiftLeft0~20_combout\))))) # (!\Mux24~5_combout\ & (((\Mux24~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~1_combout\,
	datab => \ShiftLeft0~20_combout\,
	datac => \Mux24~5_combout\,
	datad => \Mux24~6_combout\,
	combout => \Mux27~2_combout\);

-- Location: LCCOMB_X23_Y13_N14
\ShiftRight1~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~52_combout\ = (\entrada_b[3]~input_o\ & ((\entrada_b[2]~input_o\ & ((\entrada_a[31]~input_o\))) # (!\entrada_b[2]~input_o\ & (\ShiftRight0~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[3]~input_o\,
	datab => \ShiftRight0~16_combout\,
	datac => \entrada_a[31]~input_o\,
	datad => \entrada_b[2]~input_o\,
	combout => \ShiftRight1~52_combout\);

-- Location: LCCOMB_X23_Y13_N16
\ShiftRight1~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~53_combout\ = (\ShiftRight1~52_combout\) # ((\ShiftRight0~54_combout\ & !\entrada_b[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~54_combout\,
	datac => \ShiftRight1~52_combout\,
	datad => \entrada_b[3]~input_o\,
	combout => \ShiftRight1~53_combout\);

-- Location: LCCOMB_X23_Y10_N10
\Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~2_combout\ = (\seletor[1]~input_o\ & (!\Mux1~0_combout\ & \seletor[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seletor[1]~input_o\,
	datac => \Mux1~0_combout\,
	datad => \seletor[0]~input_o\,
	combout => \Mux24~2_combout\);

-- Location: LCCOMB_X22_Y12_N24
\Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~3_combout\ = (\Mux27~2_combout\ & ((\entrada_a[31]~input_o\) # ((!\Mux24~2_combout\)))) # (!\Mux27~2_combout\ & (((\ShiftRight1~53_combout\ & \Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~2_combout\,
	datab => \entrada_a[31]~input_o\,
	datac => \ShiftRight1~53_combout\,
	datad => \Mux24~2_combout\,
	combout => \Mux27~3_combout\);

-- Location: LCCOMB_X18_Y12_N22
\Mux27~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~5_combout\ = (\Mux28~8_combout\ & (((\entrada_b[4]~input_o\)))) # (!\Mux28~8_combout\ & ((\Mux28~7_combout\ & (\Mux27~3_combout\)) # (!\Mux28~7_combout\ & ((\entrada_b[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~3_combout\,
	datab => \Mux28~8_combout\,
	datac => \entrada_b[4]~input_o\,
	datad => \Mux28~7_combout\,
	combout => \Mux27~5_combout\);

-- Location: LCCOMB_X17_Y11_N6
\Mux27~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~6_combout\ = (\Mux27~5_combout\ & ((\Mux28~8_combout\ & ((\entrada_a[4]~input_o\) # (!\Mux28~7_combout\))) # (!\Mux28~8_combout\ & ((\Mux28~7_combout\) # (!\entrada_a[4]~input_o\))))) # (!\Mux27~5_combout\ & (((\entrada_a[4]~input_o\ & 
-- !\Mux28~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~5_combout\,
	datab => \Mux28~8_combout\,
	datac => \entrada_a[4]~input_o\,
	datad => \Mux28~7_combout\,
	combout => \Mux27~6_combout\);

-- Location: LCCOMB_X17_Y7_N0
\Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = \entrada_b[4]~input_o\ $ (\seletor[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[4]~input_o\,
	datad => \seletor[3]~input_o\,
	combout => \Add0~17_combout\);

-- Location: LCCOMB_X17_Y11_N26
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\Add0~17_combout\ & ((\entrada_a[4]~input_o\ & (\Add0~16\ & VCC)) # (!\entrada_a[4]~input_o\ & (!\Add0~16\)))) # (!\Add0~17_combout\ & ((\entrada_a[4]~input_o\ & (!\Add0~16\)) # (!\entrada_a[4]~input_o\ & ((\Add0~16\) # (GND)))))
-- \Add0~19\ = CARRY((\Add0~17_combout\ & (!\entrada_a[4]~input_o\ & !\Add0~16\)) # (!\Add0~17_combout\ & ((!\Add0~16\) # (!\entrada_a[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~17_combout\,
	datab => \entrada_a[4]~input_o\,
	datad => VCC,
	cin => \Add0~16\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X17_Y11_N0
\Mux27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux27~4_combout\ = (\Add0~13_combout\ & (((\Add0~18_combout\)))) # (!\Add0~13_combout\ & (\Mux27~6_combout\ & ((!\seletor[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux27~6_combout\,
	datab => \Add0~13_combout\,
	datac => \Add0~18_combout\,
	datad => \seletor[3]~input_o\,
	combout => \Mux27~4_combout\);

-- Location: LCCOMB_X16_Y11_N22
\Mux26~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~5_combout\ = (\Mux28~7_combout\ & (((\entrada_b[5]~input_o\ & \entrada_a[5]~input_o\)) # (!\Mux28~8_combout\))) # (!\Mux28~7_combout\ & ((\entrada_b[5]~input_o\ & ((\Mux28~8_combout\) # (!\entrada_a[5]~input_o\))) # (!\entrada_b[5]~input_o\ & 
-- ((\entrada_a[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110100111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[5]~input_o\,
	datab => \Mux28~8_combout\,
	datac => \Mux28~7_combout\,
	datad => \entrada_a[5]~input_o\,
	combout => \Mux26~5_combout\);

-- Location: LCCOMB_X21_Y13_N28
\ShiftRight0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~57_combout\ = (\entrada_b[2]~input_o\ & ((\entrada_b[0]~input_o\ & ((\ShiftRight1~21_combout\))) # (!\entrada_b[0]~input_o\ & (\ShiftRight0~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~17_combout\,
	datab => \ShiftRight1~21_combout\,
	datac => \entrada_b[0]~input_o\,
	datad => \entrada_b[2]~input_o\,
	combout => \ShiftRight0~57_combout\);

-- Location: LCCOMB_X21_Y13_N30
\ShiftRight0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~58_combout\ = (\ShiftRight0~57_combout\) # ((\ShiftRight0~39_combout\ & !\entrada_b[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~39_combout\,
	datab => \ShiftRight0~57_combout\,
	datad => \entrada_b[2]~input_o\,
	combout => \ShiftRight0~58_combout\);

-- Location: LCCOMB_X23_Y15_N0
\ShiftLeft0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~21_combout\ = (!\entrada_b[1]~input_o\ & !\entrada_b[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_b[1]~input_o\,
	datad => \entrada_b[2]~input_o\,
	combout => \ShiftLeft0~21_combout\);

-- Location: LCCOMB_X22_Y13_N26
\ShiftRight1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~54_combout\ = (\entrada_b[3]~input_o\ & ((\ShiftLeft0~21_combout\ & (\ShiftRight1~22_combout\)) # (!\ShiftLeft0~21_combout\ & ((\entrada_a[31]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[3]~input_o\,
	datab => \ShiftLeft0~21_combout\,
	datac => \ShiftRight1~22_combout\,
	datad => \entrada_a[31]~input_o\,
	combout => \ShiftRight1~54_combout\);

-- Location: LCCOMB_X22_Y12_N2
\ShiftRight1~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~55_combout\ = (\ShiftRight1~54_combout\) # ((\ShiftRight0~58_combout\ & !\entrada_b[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~58_combout\,
	datab => \ShiftRight1~54_combout\,
	datad => \entrada_b[3]~input_o\,
	combout => \ShiftRight1~55_combout\);

-- Location: LCCOMB_X22_Y13_N12
\ShiftRight0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~59_combout\ = (\entrada_b[1]~input_o\ & (((!\entrada_b[0]~input_o\ & \entrada_a[31]~input_o\)))) # (!\entrada_b[1]~input_o\ & (\ShiftRight1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~22_combout\,
	datab => \entrada_b[1]~input_o\,
	datac => \entrada_b[0]~input_o\,
	datad => \entrada_a[31]~input_o\,
	combout => \ShiftRight0~59_combout\);

-- Location: LCCOMB_X22_Y13_N30
\ShiftRight0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~60_combout\ = (\entrada_b[3]~input_o\ & (\ShiftRight0~59_combout\ & ((!\entrada_b[2]~input_o\)))) # (!\entrada_b[3]~input_o\ & (((\ShiftRight0~58_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~59_combout\,
	datab => \ShiftRight0~58_combout\,
	datac => \entrada_b[2]~input_o\,
	datad => \entrada_b[3]~input_o\,
	combout => \ShiftRight0~60_combout\);

-- Location: LCCOMB_X25_Y12_N0
\ShiftRight0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~61_combout\ = (\entrada_b[2]~input_o\ & ((\ShiftRight0~40_combout\))) # (!\entrada_b[2]~input_o\ & (\ShiftRight0~35_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~35_combout\,
	datac => \ShiftRight0~40_combout\,
	datad => \entrada_b[2]~input_o\,
	combout => \ShiftRight0~61_combout\);

-- Location: LCCOMB_X24_Y12_N16
\Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~0_combout\ = (\Mux24~4_combout\ & (((\ShiftRight0~61_combout\)) # (!\Mux24~12_combout\))) # (!\Mux24~4_combout\ & (\Mux24~12_combout\ & (\ShiftRight0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~4_combout\,
	datab => \Mux24~12_combout\,
	datac => \ShiftRight0~60_combout\,
	datad => \ShiftRight0~61_combout\,
	combout => \Mux26~0_combout\);

-- Location: LCCOMB_X24_Y12_N18
\Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~1_combout\ = (\Mux24~3_combout\ & (((\Mux26~0_combout\)))) # (!\Mux24~3_combout\ & ((\Mux26~0_combout\ & (\ShiftRight0~36_combout\)) # (!\Mux26~0_combout\ & ((\ShiftRight0~33_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~36_combout\,
	datab => \Mux24~3_combout\,
	datac => \ShiftRight0~33_combout\,
	datad => \Mux26~0_combout\,
	combout => \Mux26~1_combout\);

-- Location: LCCOMB_X21_Y12_N0
\ShiftLeft0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~22_combout\ = (\entrada_b[1]~input_o\ & ((\entrada_a[3]~input_o\))) # (!\entrada_b[1]~input_o\ & (\entrada_a[5]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[1]~input_o\,
	datab => \entrada_a[5]~input_o\,
	datad => \entrada_a[3]~input_o\,
	combout => \ShiftLeft0~22_combout\);

-- Location: LCCOMB_X24_Y12_N10
\ShiftLeft0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~23_combout\ = (\entrada_b[0]~input_o\ & (\ShiftLeft0~18_combout\)) # (!\entrada_b[0]~input_o\ & ((\ShiftLeft0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~18_combout\,
	datac => \ShiftLeft0~22_combout\,
	datad => \entrada_b[0]~input_o\,
	combout => \ShiftLeft0~23_combout\);

-- Location: LCCOMB_X24_Y12_N12
\ShiftLeft0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~24_combout\ = (\entrada_b[2]~input_o\ & (((\ShiftLeft0~10_combout\ & !\entrada_b[1]~input_o\)))) # (!\entrada_b[2]~input_o\ & (\ShiftLeft0~23_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~23_combout\,
	datab => \ShiftLeft0~10_combout\,
	datac => \entrada_b[1]~input_o\,
	datad => \entrada_b[2]~input_o\,
	combout => \ShiftLeft0~24_combout\);

-- Location: LCCOMB_X24_Y12_N30
\ShiftLeft0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~25_combout\ = (\ShiftLeft0~24_combout\ & !\entrada_b[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~24_combout\,
	datad => \entrada_b[3]~input_o\,
	combout => \ShiftLeft0~25_combout\);

-- Location: LCCOMB_X24_Y12_N28
\Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~2_combout\ = (\Mux24~5_combout\ & ((\Mux24~6_combout\ & (\Mux26~1_combout\)) # (!\Mux24~6_combout\ & ((\ShiftLeft0~25_combout\))))) # (!\Mux24~5_combout\ & (((\Mux24~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~5_combout\,
	datab => \Mux26~1_combout\,
	datac => \ShiftLeft0~25_combout\,
	datad => \Mux24~6_combout\,
	combout => \Mux26~2_combout\);

-- Location: LCCOMB_X22_Y12_N4
\Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~3_combout\ = (\Mux24~2_combout\ & ((\Mux26~2_combout\ & ((\entrada_a[31]~input_o\))) # (!\Mux26~2_combout\ & (\ShiftRight1~55_combout\)))) # (!\Mux24~2_combout\ & (((\Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~2_combout\,
	datab => \ShiftRight1~55_combout\,
	datac => \Mux26~2_combout\,
	datad => \entrada_a[31]~input_o\,
	combout => \Mux26~3_combout\);

-- Location: LCCOMB_X18_Y14_N14
\Mux26~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~6_combout\ = (\Mux26~5_combout\ & ((\Mux28~8_combout\) # ((\Mux26~3_combout\) # (!\Mux28~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux26~5_combout\,
	datab => \Mux28~8_combout\,
	datac => \Mux26~3_combout\,
	datad => \Mux28~7_combout\,
	combout => \Mux26~6_combout\);

-- Location: LCCOMB_X16_Y11_N16
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = \seletor[3]~input_o\ $ (\entrada_b[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[3]~input_o\,
	datad => \entrada_b[5]~input_o\,
	combout => \Add0~20_combout\);

-- Location: LCCOMB_X17_Y11_N28
\Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = ((\Add0~20_combout\ $ (\entrada_a[5]~input_o\ $ (!\Add0~19\)))) # (GND)
-- \Add0~22\ = CARRY((\Add0~20_combout\ & ((\entrada_a[5]~input_o\) # (!\Add0~19\))) # (!\Add0~20_combout\ & (\entrada_a[5]~input_o\ & !\Add0~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~20_combout\,
	datab => \entrada_a[5]~input_o\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~21_combout\,
	cout => \Add0~22\);

-- Location: LCCOMB_X18_Y14_N16
\Mux26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux26~4_combout\ = (\Add0~13_combout\ & (((\Add0~21_combout\)))) # (!\Add0~13_combout\ & (!\seletor[3]~input_o\ & (\Mux26~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[3]~input_o\,
	datab => \Mux26~6_combout\,
	datac => \Add0~13_combout\,
	datad => \Add0~21_combout\,
	combout => \Mux26~4_combout\);

-- Location: LCCOMB_X18_Y15_N30
\ShiftRight0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~62_combout\ = (\entrada_b[2]~input_o\ & ((\ShiftRight1~27_combout\) # ((\ShiftRight1~26_combout\)))) # (!\entrada_b[2]~input_o\ & (((\ShiftRight1~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~27_combout\,
	datab => \ShiftRight1~26_combout\,
	datac => \entrada_b[2]~input_o\,
	datad => \ShiftRight1~30_combout\,
	combout => \ShiftRight0~62_combout\);

-- Location: LCCOMB_X18_Y15_N16
\ShiftRight0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~63_combout\ = (\entrada_b[3]~input_o\ & (((\ShiftLeft0~21_combout\ & \ShiftRight1~14_combout\)))) # (!\entrada_b[3]~input_o\ & (\ShiftRight0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~62_combout\,
	datab => \ShiftLeft0~21_combout\,
	datac => \entrada_b[3]~input_o\,
	datad => \ShiftRight1~14_combout\,
	combout => \ShiftRight0~63_combout\);

-- Location: LCCOMB_X18_Y15_N26
\ShiftRight0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~64_combout\ = (\entrada_b[2]~input_o\ & (\ShiftRight1~32_combout\)) # (!\entrada_b[2]~input_o\ & ((\ShiftRight1~40_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~32_combout\,
	datac => \entrada_b[2]~input_o\,
	datad => \ShiftRight1~40_combout\,
	combout => \ShiftRight0~64_combout\);

-- Location: LCCOMB_X23_Y12_N26
\Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~0_combout\ = (\Mux24~4_combout\ & (((\ShiftRight0~64_combout\) # (!\Mux24~12_combout\)))) # (!\Mux24~4_combout\ & (\ShiftRight0~63_combout\ & (\Mux24~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~4_combout\,
	datab => \ShiftRight0~63_combout\,
	datac => \Mux24~12_combout\,
	datad => \ShiftRight0~64_combout\,
	combout => \Mux25~0_combout\);

-- Location: LCCOMB_X23_Y12_N20
\Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~1_combout\ = (\Mux25~0_combout\ & ((\Mux24~3_combout\) # ((\ShiftRight1~42_combout\)))) # (!\Mux25~0_combout\ & (!\Mux24~3_combout\ & (\ShiftRight1~37_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~0_combout\,
	datab => \Mux24~3_combout\,
	datac => \ShiftRight1~37_combout\,
	datad => \ShiftRight1~42_combout\,
	combout => \Mux25~1_combout\);

-- Location: LCCOMB_X21_Y12_N2
\ShiftLeft0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~26_combout\ = (\entrada_b[1]~input_o\ & ((\entrada_a[4]~input_o\))) # (!\entrada_b[1]~input_o\ & (\entrada_a[6]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[6]~input_o\,
	datac => \entrada_a[4]~input_o\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftLeft0~26_combout\);

-- Location: LCCOMB_X21_Y12_N28
\ShiftLeft0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~27_combout\ = (\entrada_b[0]~input_o\ & ((\ShiftLeft0~22_combout\))) # (!\entrada_b[0]~input_o\ & (\ShiftLeft0~26_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~26_combout\,
	datac => \ShiftLeft0~22_combout\,
	datad => \entrada_b[0]~input_o\,
	combout => \ShiftLeft0~27_combout\);

-- Location: LCCOMB_X23_Y12_N24
\ShiftLeft0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~28_combout\ = (!\entrada_b[3]~input_o\ & ((\entrada_b[2]~input_o\ & (\ShiftLeft0~13_combout\)) # (!\entrada_b[2]~input_o\ & ((\ShiftLeft0~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[3]~input_o\,
	datab => \entrada_b[2]~input_o\,
	datac => \ShiftLeft0~13_combout\,
	datad => \ShiftLeft0~27_combout\,
	combout => \ShiftLeft0~28_combout\);

-- Location: LCCOMB_X23_Y12_N14
\Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~2_combout\ = (\Mux24~5_combout\ & ((\Mux24~6_combout\ & (\Mux25~1_combout\)) # (!\Mux24~6_combout\ & ((\ShiftLeft0~28_combout\))))) # (!\Mux24~5_combout\ & (((\Mux24~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~1_combout\,
	datab => \ShiftLeft0~28_combout\,
	datac => \Mux24~5_combout\,
	datad => \Mux24~6_combout\,
	combout => \Mux25~2_combout\);

-- Location: LCCOMB_X25_Y13_N30
\ShiftRight1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~56_combout\ = (\entrada_b[3]~input_o\ & ((\ShiftLeft0~0_combout\ & ((\entrada_a[31]~input_o\))) # (!\ShiftLeft0~0_combout\ & (\entrada_a[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[30]~input_o\,
	datab => \ShiftLeft0~0_combout\,
	datac => \entrada_b[3]~input_o\,
	datad => \entrada_a[31]~input_o\,
	combout => \ShiftRight1~56_combout\);

-- Location: LCCOMB_X22_Y12_N6
\ShiftRight1~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~57_combout\ = (\ShiftRight1~56_combout\) # ((!\entrada_b[3]~input_o\ & \ShiftRight0~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[3]~input_o\,
	datab => \ShiftRight1~56_combout\,
	datad => \ShiftRight0~62_combout\,
	combout => \ShiftRight1~57_combout\);

-- Location: LCCOMB_X22_Y12_N16
\Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~3_combout\ = (\Mux24~2_combout\ & ((\Mux25~2_combout\ & (\entrada_a[31]~input_o\)) # (!\Mux25~2_combout\ & ((\ShiftRight1~57_combout\))))) # (!\Mux24~2_combout\ & (((\Mux25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~2_combout\,
	datab => \entrada_a[31]~input_o\,
	datac => \Mux25~2_combout\,
	datad => \ShiftRight1~57_combout\,
	combout => \Mux25~3_combout\);

-- Location: LCCOMB_X16_Y11_N12
\Mux25~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~5_combout\ = (\Mux28~8_combout\ & (\entrada_b[6]~input_o\)) # (!\Mux28~8_combout\ & ((\Mux28~7_combout\ & ((\Mux25~3_combout\))) # (!\Mux28~7_combout\ & (\entrada_b[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[6]~input_o\,
	datab => \Mux28~8_combout\,
	datac => \Mux28~7_combout\,
	datad => \Mux25~3_combout\,
	combout => \Mux25~5_combout\);

-- Location: LCCOMB_X17_Y11_N12
\Mux25~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~6_combout\ = (\Mux25~5_combout\ & ((\Mux28~8_combout\ & ((\entrada_a[6]~input_o\) # (!\Mux28~7_combout\))) # (!\Mux28~8_combout\ & ((\Mux28~7_combout\) # (!\entrada_a[6]~input_o\))))) # (!\Mux25~5_combout\ & (((\entrada_a[6]~input_o\ & 
-- !\Mux28~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~5_combout\,
	datab => \Mux28~8_combout\,
	datac => \entrada_a[6]~input_o\,
	datad => \Mux28~7_combout\,
	combout => \Mux25~6_combout\);

-- Location: LCCOMB_X16_Y11_N26
\Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = \seletor[3]~input_o\ $ (\entrada_b[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[3]~input_o\,
	datad => \entrada_b[6]~input_o\,
	combout => \Add0~23_combout\);

-- Location: LCCOMB_X17_Y11_N30
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = (\Add0~23_combout\ & ((\entrada_a[6]~input_o\ & (\Add0~22\ & VCC)) # (!\entrada_a[6]~input_o\ & (!\Add0~22\)))) # (!\Add0~23_combout\ & ((\entrada_a[6]~input_o\ & (!\Add0~22\)) # (!\entrada_a[6]~input_o\ & ((\Add0~22\) # (GND)))))
-- \Add0~25\ = CARRY((\Add0~23_combout\ & (!\entrada_a[6]~input_o\ & !\Add0~22\)) # (!\Add0~23_combout\ & ((!\Add0~22\) # (!\entrada_a[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~23_combout\,
	datab => \entrada_a[6]~input_o\,
	datad => VCC,
	cin => \Add0~22\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X17_Y11_N2
\Mux25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux25~4_combout\ = (\Add0~13_combout\ & (((\Add0~24_combout\)))) # (!\Add0~13_combout\ & (\Mux25~6_combout\ & ((!\seletor[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux25~6_combout\,
	datab => \Add0~13_combout\,
	datac => \Add0~24_combout\,
	datad => \seletor[3]~input_o\,
	combout => \Mux25~4_combout\);

-- Location: LCCOMB_X16_Y11_N20
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = \seletor[3]~input_o\ $ (\entrada_b[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[3]~input_o\,
	datac => \entrada_b[7]~input_o\,
	combout => \Add0~26_combout\);

-- Location: LCCOMB_X17_Y10_N0
\Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = ((\entrada_a[7]~input_o\ $ (\Add0~26_combout\ $ (!\Add0~25\)))) # (GND)
-- \Add0~28\ = CARRY((\entrada_a[7]~input_o\ & ((\Add0~26_combout\) # (!\Add0~25\))) # (!\entrada_a[7]~input_o\ & (\Add0~26_combout\ & !\Add0~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[7]~input_o\,
	datab => \Add0~26_combout\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~27_combout\,
	cout => \Add0~28\);

-- Location: LCCOMB_X16_Y11_N2
\Mux24~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~13_combout\ = (\Mux28~7_combout\ & (((\entrada_b[7]~input_o\ & \entrada_a[7]~input_o\)) # (!\Mux28~8_combout\))) # (!\Mux28~7_combout\ & ((\entrada_b[7]~input_o\ & ((\Mux28~8_combout\) # (!\entrada_a[7]~input_o\))) # (!\entrada_b[7]~input_o\ & 
-- (\entrada_a[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~7_combout\,
	datab => \entrada_b[7]~input_o\,
	datac => \entrada_a[7]~input_o\,
	datad => \Mux28~8_combout\,
	combout => \Mux24~13_combout\);

-- Location: LCCOMB_X21_Y14_N8
\ShiftRight0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~69_combout\ = (\entrada_b[2]~input_o\ & (\ShiftRight1~47_combout\)) # (!\entrada_b[2]~input_o\ & ((\ShiftRight1~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~47_combout\,
	datac => \entrada_b[2]~input_o\,
	datad => \ShiftRight1~50_combout\,
	combout => \ShiftRight0~69_combout\);

-- Location: LCCOMB_X25_Y13_N24
\ShiftRight0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~65_combout\ = (\entrada_b[3]~input_o\ & \entrada_a[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entrada_b[3]~input_o\,
	datad => \entrada_a[31]~input_o\,
	combout => \ShiftRight0~65_combout\);

-- Location: LCCOMB_X25_Y13_N10
\ShiftRight0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~67_combout\ = (\ShiftRight1~38_combout\ & ((\ShiftRight1~46_combout\) # ((!\ShiftLeft0~0_combout\ & \ShiftRight0~65_combout\)))) # (!\ShiftRight1~38_combout\ & (!\ShiftLeft0~0_combout\ & ((\ShiftRight0~65_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~38_combout\,
	datab => \ShiftLeft0~0_combout\,
	datac => \ShiftRight1~46_combout\,
	datad => \ShiftRight0~65_combout\,
	combout => \ShiftRight0~67_combout\);

-- Location: LCCOMB_X25_Y13_N28
\ShiftRight0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~68_combout\ = (\ShiftRight0~67_combout\) # ((!\entrada_b[3]~input_o\ & (\entrada_b[2]~input_o\ & \ShiftRight1~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~67_combout\,
	datab => \entrada_b[3]~input_o\,
	datac => \entrada_b[2]~input_o\,
	datad => \ShiftRight1~44_combout\,
	combout => \ShiftRight0~68_combout\);

-- Location: LCCOMB_X23_Y12_N8
\Mux24~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~7_combout\ = (\Mux24~12_combout\ & ((\Mux24~4_combout\ & (\ShiftRight0~69_combout\)) # (!\Mux24~4_combout\ & ((\ShiftRight0~68_combout\))))) # (!\Mux24~12_combout\ & (((\Mux24~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~12_combout\,
	datab => \ShiftRight0~69_combout\,
	datac => \Mux24~4_combout\,
	datad => \ShiftRight0~68_combout\,
	combout => \Mux24~7_combout\);

-- Location: LCCOMB_X23_Y12_N10
\Mux24~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~8_combout\ = (\Mux24~7_combout\ & ((\ShiftRight1~51_combout\) # ((\Mux24~3_combout\)))) # (!\Mux24~7_combout\ & (((!\Mux24~3_combout\ & \ShiftRight1~49_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~51_combout\,
	datab => \Mux24~7_combout\,
	datac => \Mux24~3_combout\,
	datad => \ShiftRight1~49_combout\,
	combout => \Mux24~8_combout\);

-- Location: LCCOMB_X19_Y12_N2
\ShiftLeft0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~29_combout\ = (\ShiftLeft0~14_combout\) # ((\ShiftLeft0~10_combout\ & \entrada_b[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~10_combout\,
	datab => \ShiftLeft0~14_combout\,
	datac => \entrada_b[1]~input_o\,
	combout => \ShiftLeft0~29_combout\);

-- Location: LCCOMB_X21_Y12_N6
\ShiftLeft0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~30_combout\ = (\entrada_b[1]~input_o\ & ((\entrada_a[5]~input_o\))) # (!\entrada_b[1]~input_o\ & (\entrada_a[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[7]~input_o\,
	datab => \entrada_a[5]~input_o\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftLeft0~30_combout\);

-- Location: LCCOMB_X21_Y12_N16
\ShiftLeft0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~31_combout\ = (\entrada_b[0]~input_o\ & ((\ShiftLeft0~26_combout\))) # (!\entrada_b[0]~input_o\ & (\ShiftLeft0~30_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~30_combout\,
	datab => \ShiftLeft0~26_combout\,
	datad => \entrada_b[0]~input_o\,
	combout => \ShiftLeft0~31_combout\);

-- Location: LCCOMB_X21_Y14_N6
\ShiftLeft0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~32_combout\ = (!\entrada_b[3]~input_o\ & ((\entrada_b[2]~input_o\ & (\ShiftLeft0~29_combout\)) # (!\entrada_b[2]~input_o\ & ((\ShiftLeft0~31_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[3]~input_o\,
	datab => \ShiftLeft0~29_combout\,
	datac => \entrada_b[2]~input_o\,
	datad => \ShiftLeft0~31_combout\,
	combout => \ShiftLeft0~32_combout\);

-- Location: LCCOMB_X23_Y12_N28
\Mux24~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~9_combout\ = (\Mux24~6_combout\ & ((\Mux24~8_combout\) # ((!\Mux24~5_combout\)))) # (!\Mux24~6_combout\ & (((\Mux24~5_combout\ & \ShiftLeft0~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~8_combout\,
	datab => \Mux24~6_combout\,
	datac => \Mux24~5_combout\,
	datad => \ShiftLeft0~32_combout\,
	combout => \Mux24~9_combout\);

-- Location: LCCOMB_X21_Y14_N12
\ShiftRight0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~66_combout\ = (\entrada_b[2]~input_o\ & ((\ShiftRight1~44_combout\))) # (!\entrada_b[2]~input_o\ & (\ShiftRight1~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight1~46_combout\,
	datac => \entrada_b[2]~input_o\,
	datad => \ShiftRight1~44_combout\,
	combout => \ShiftRight0~66_combout\);

-- Location: LCCOMB_X22_Y12_N30
\ShiftRight1~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~61_combout\ = (\entrada_b[3]~input_o\ & ((\entrada_a[31]~input_o\))) # (!\entrada_b[3]~input_o\ & (\ShiftRight0~66_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[3]~input_o\,
	datac => \ShiftRight0~66_combout\,
	datad => \entrada_a[31]~input_o\,
	combout => \ShiftRight1~61_combout\);

-- Location: LCCOMB_X22_Y12_N10
\Mux24~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~10_combout\ = (\Mux24~2_combout\ & ((\Mux24~9_combout\ & ((\entrada_a[31]~input_o\))) # (!\Mux24~9_combout\ & (\ShiftRight1~61_combout\)))) # (!\Mux24~2_combout\ & (\Mux24~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~2_combout\,
	datab => \Mux24~9_combout\,
	datac => \ShiftRight1~61_combout\,
	datad => \entrada_a[31]~input_o\,
	combout => \Mux24~10_combout\);

-- Location: LCCOMB_X18_Y14_N28
\Mux24~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~14_combout\ = (\Mux24~13_combout\ & ((\Mux28~8_combout\) # ((\Mux24~10_combout\) # (!\Mux28~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux24~13_combout\,
	datab => \Mux28~8_combout\,
	datac => \Mux24~10_combout\,
	datad => \Mux28~7_combout\,
	combout => \Mux24~14_combout\);

-- Location: LCCOMB_X18_Y14_N10
\Mux24~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux24~11_combout\ = (\Add0~13_combout\ & (\Add0~27_combout\)) # (!\Add0~13_combout\ & (((!\seletor[3]~input_o\ & \Mux24~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~27_combout\,
	datab => \seletor[3]~input_o\,
	datac => \Add0~13_combout\,
	datad => \Mux24~14_combout\,
	combout => \Mux24~11_combout\);

-- Location: LCCOMB_X19_Y12_N20
\Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~1_combout\ = (\seletor[2]~input_o\ & (((\entrada_b[3]~input_o\ & \Mux1~0_combout\)) # (!\seletor[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[2]~input_o\,
	datab => \entrada_b[3]~input_o\,
	datac => \Mux1~0_combout\,
	datad => \seletor[0]~input_o\,
	combout => \Mux17~1_combout\);

-- Location: LCCOMB_X16_Y10_N18
\resultado_ula~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \resultado_ula~1_combout\ = \entrada_b[8]~input_o\ $ (\entrada_a[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_b[8]~input_o\,
	datad => \entrada_a[8]~input_o\,
	combout => \resultado_ula~1_combout\);

-- Location: LCCOMB_X23_Y10_N30
\Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~0_combout\ = ((\Mux1~0_combout\ & !\seletor[0]~input_o\)) # (!\seletor[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux1~0_combout\,
	datac => \seletor[2]~input_o\,
	datad => \seletor[0]~input_o\,
	combout => \Mux17~0_combout\);

-- Location: LCCOMB_X21_Y12_N18
\ShiftLeft0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~33_combout\ = (\entrada_b[1]~input_o\ & ((\entrada_a[6]~input_o\))) # (!\entrada_b[1]~input_o\ & (\entrada_a[8]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_a[8]~input_o\,
	datac => \entrada_a[6]~input_o\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftLeft0~33_combout\);

-- Location: LCCOMB_X21_Y12_N20
\ShiftLeft0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~34_combout\ = (\entrada_b[0]~input_o\ & (\ShiftLeft0~30_combout\)) # (!\entrada_b[0]~input_o\ & ((\ShiftLeft0~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~30_combout\,
	datab => \ShiftLeft0~33_combout\,
	datad => \entrada_b[0]~input_o\,
	combout => \ShiftLeft0~34_combout\);

-- Location: LCCOMB_X25_Y13_N22
\Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~0_combout\ = (\entrada_b[2]~input_o\ & (\ShiftLeft0~19_combout\)) # (!\entrada_b[2]~input_o\ & ((\ShiftLeft0~34_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[2]~input_o\,
	datab => \ShiftLeft0~19_combout\,
	datac => \ShiftLeft0~34_combout\,
	combout => \Mux15~0_combout\);

-- Location: LCCOMB_X25_Y13_N16
\ShiftLeft0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~35_combout\ = (\entrada_b[3]~input_o\ & (((!\ShiftLeft0~0_combout\ & \entrada_a[0]~input_o\)))) # (!\entrada_b[3]~input_o\ & (\Mux15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datab => \ShiftLeft0~0_combout\,
	datac => \entrada_b[3]~input_o\,
	datad => \entrada_a[0]~input_o\,
	combout => \ShiftLeft0~35_combout\);

-- Location: LCCOMB_X18_Y11_N24
\Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~2_combout\ = (\Mux17~1_combout\ & (((\Mux17~0_combout\ & \ShiftLeft0~35_combout\)))) # (!\Mux17~1_combout\ & ((\resultado_ula~1_combout\) # ((!\Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~1_combout\,
	datab => \resultado_ula~1_combout\,
	datac => \Mux17~0_combout\,
	datad => \ShiftLeft0~35_combout\,
	combout => \Mux23~2_combout\);

-- Location: LCCOMB_X23_Y13_N0
\ShiftRight0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~70_combout\ = (!\entrada_b[3]~input_o\ & ((\entrada_b[2]~input_o\ & (\ShiftRight0~16_combout\)) # (!\entrada_b[2]~input_o\ & ((\ShiftRight0~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[3]~input_o\,
	datab => \ShiftRight0~16_combout\,
	datac => \ShiftRight0~19_combout\,
	datad => \entrada_b[2]~input_o\,
	combout => \ShiftRight0~70_combout\);

-- Location: LCCOMB_X22_Y14_N26
\ShiftRight1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~62_combout\ = (\ShiftRight0~70_combout\) # ((\entrada_a[31]~input_o\ & \entrada_b[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~70_combout\,
	datac => \entrada_a[31]~input_o\,
	datad => \entrada_b[3]~input_o\,
	combout => \ShiftRight1~62_combout\);

-- Location: LCCOMB_X22_Y14_N8
\Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~0_combout\ = (\Mux28~5_combout\ & ((\ShiftRight0~13_combout\) # ((!\Mux28~4_combout\)))) # (!\Mux28~5_combout\ & (((\Mux28~4_combout\ & \ShiftRight0~70_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~5_combout\,
	datab => \ShiftRight0~13_combout\,
	datac => \Mux28~4_combout\,
	datad => \ShiftRight0~70_combout\,
	combout => \Mux23~0_combout\);

-- Location: LCCOMB_X22_Y14_N18
\Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~1_combout\ = (\Mux23~0_combout\ & (((\entrada_a[31]~input_o\) # (!\Mux28~2_combout\)))) # (!\Mux23~0_combout\ & (\ShiftRight1~62_combout\ & ((\Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~62_combout\,
	datab => \Mux23~0_combout\,
	datac => \entrada_a[31]~input_o\,
	datad => \Mux28~2_combout\,
	combout => \Mux23~1_combout\);

-- Location: LCCOMB_X24_Y13_N8
\Mux28~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux28~9_combout\ = (\seletor[2]~input_o\ & \seletor[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[2]~input_o\,
	datac => \seletor[0]~input_o\,
	combout => \Mux28~9_combout\);

-- Location: LCCOMB_X18_Y11_N2
\Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~3_combout\ = (\Mux23~2_combout\ & (((\Mux23~1_combout\) # (!\Mux28~9_combout\)))) # (!\Mux23~2_combout\ & (\ShiftRight0~27_combout\ & ((\Mux28~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~27_combout\,
	datab => \Mux23~2_combout\,
	datac => \Mux23~1_combout\,
	datad => \Mux28~9_combout\,
	combout => \Mux23~3_combout\);

-- Location: LCCOMB_X17_Y8_N0
\Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~2_combout\ = (\seletor[2]~input_o\) # ((\seletor[1]~input_o\ & ((\seletor[3]~input_o\))) # (!\seletor[1]~input_o\ & ((\seletor[0]~input_o\) # (!\seletor[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => \seletor[2]~input_o\,
	datac => \seletor[0]~input_o\,
	datad => \seletor[3]~input_o\,
	combout => \Mux17~2_combout\);

-- Location: LCCOMB_X17_Y8_N2
\Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~3_combout\ = (\seletor[1]~input_o\ & ((\seletor[3]~input_o\) # ((!\seletor[2]~input_o\ & \seletor[0]~input_o\)))) # (!\seletor[1]~input_o\ & (\seletor[3]~input_o\ $ (((!\seletor[2]~input_o\ & !\seletor[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => \seletor[2]~input_o\,
	datac => \seletor[0]~input_o\,
	datad => \seletor[3]~input_o\,
	combout => \Mux17~3_combout\);

-- Location: LCCOMB_X16_Y11_N30
\Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = \seletor[3]~input_o\ $ (\entrada_b[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[3]~input_o\,
	datad => \entrada_b[8]~input_o\,
	combout => \Add0~29_combout\);

-- Location: LCCOMB_X17_Y10_N2
\Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~30_combout\ = (\entrada_a[8]~input_o\ & ((\Add0~29_combout\ & (\Add0~28\ & VCC)) # (!\Add0~29_combout\ & (!\Add0~28\)))) # (!\entrada_a[8]~input_o\ & ((\Add0~29_combout\ & (!\Add0~28\)) # (!\Add0~29_combout\ & ((\Add0~28\) # (GND)))))
-- \Add0~31\ = CARRY((\entrada_a[8]~input_o\ & (!\Add0~29_combout\ & !\Add0~28\)) # (!\entrada_a[8]~input_o\ & ((!\Add0~28\) # (!\Add0~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[8]~input_o\,
	datab => \Add0~29_combout\,
	datad => VCC,
	cin => \Add0~28\,
	combout => \Add0~30_combout\,
	cout => \Add0~31\);

-- Location: LCCOMB_X16_Y10_N12
\Mux23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~4_combout\ = (\Mux17~2_combout\ & ((\Mux17~3_combout\ & ((\Add0~30_combout\))) # (!\Mux17~3_combout\ & (\Mux23~3_combout\)))) # (!\Mux17~2_combout\ & (((\Mux17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~3_combout\,
	datab => \Mux17~2_combout\,
	datac => \Mux17~3_combout\,
	datad => \Add0~30_combout\,
	combout => \Mux23~4_combout\);

-- Location: LCCOMB_X23_Y10_N24
\Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~4_combout\ = (!\seletor[3]~input_o\ & (!\seletor[2]~input_o\ & \seletor[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[3]~input_o\,
	datac => \seletor[2]~input_o\,
	datad => \seletor[1]~input_o\,
	combout => \Mux17~4_combout\);

-- Location: LCCOMB_X16_Y10_N22
Mux23 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux23~combout\ = (\Mux23~4_combout\ & (((\entrada_b[8]~input_o\ & \entrada_a[8]~input_o\)) # (!\Mux17~4_combout\))) # (!\Mux23~4_combout\ & (\Mux17~4_combout\ & ((\entrada_b[8]~input_o\) # (\entrada_a[8]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux23~4_combout\,
	datab => \entrada_b[8]~input_o\,
	datac => \Mux17~4_combout\,
	datad => \entrada_a[8]~input_o\,
	combout => \Mux23~combout\);

-- Location: LCCOMB_X17_Y8_N12
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = \entrada_b[9]~input_o\ $ (\seletor[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[9]~input_o\,
	datac => \seletor[3]~input_o\,
	combout => \Add0~32_combout\);

-- Location: LCCOMB_X17_Y10_N4
\Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = ((\entrada_a[9]~input_o\ $ (\Add0~32_combout\ $ (!\Add0~31\)))) # (GND)
-- \Add0~34\ = CARRY((\entrada_a[9]~input_o\ & ((\Add0~32_combout\) # (!\Add0~31\))) # (!\entrada_a[9]~input_o\ & (\Add0~32_combout\ & !\Add0~31\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[9]~input_o\,
	datab => \Add0~32_combout\,
	datad => VCC,
	cin => \Add0~31\,
	combout => \Add0~33_combout\,
	cout => \Add0~34\);

-- Location: LCCOMB_X22_Y13_N0
\ShiftRight0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~71_combout\ = (!\entrada_b[3]~input_o\ & ((\ShiftRight0~44_combout\) # (\ShiftRight0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~44_combout\,
	datac => \ShiftRight0~42_combout\,
	datad => \entrada_b[3]~input_o\,
	combout => \ShiftRight0~71_combout\);

-- Location: LCCOMB_X19_Y14_N0
\Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~0_combout\ = (\Mux28~5_combout\ & (((\ShiftRight0~37_combout\) # (!\Mux28~4_combout\)))) # (!\Mux28~5_combout\ & (\ShiftRight0~71_combout\ & (\Mux28~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~5_combout\,
	datab => \ShiftRight0~71_combout\,
	datac => \Mux28~4_combout\,
	datad => \ShiftRight0~37_combout\,
	combout => \Mux22~0_combout\);

-- Location: LCCOMB_X22_Y13_N20
\ShiftRight1~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~63_combout\ = (\entrada_b[3]~input_o\ & (((\entrada_a[31]~input_o\)))) # (!\entrada_b[3]~input_o\ & ((\ShiftRight1~23_combout\) # ((\ShiftRight0~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[3]~input_o\,
	datab => \ShiftRight1~23_combout\,
	datac => \ShiftRight0~42_combout\,
	datad => \entrada_a[31]~input_o\,
	combout => \ShiftRight1~63_combout\);

-- Location: LCCOMB_X19_Y14_N18
\Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~1_combout\ = (\Mux28~2_combout\ & ((\Mux22~0_combout\ & ((\entrada_a[31]~input_o\))) # (!\Mux22~0_combout\ & (\ShiftRight1~63_combout\)))) # (!\Mux28~2_combout\ & (\Mux22~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~2_combout\,
	datab => \Mux22~0_combout\,
	datac => \ShiftRight1~63_combout\,
	datad => \entrada_a[31]~input_o\,
	combout => \Mux22~1_combout\);

-- Location: LCCOMB_X18_Y11_N20
\resultado_ula~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \resultado_ula~2_combout\ = \entrada_a[9]~input_o\ $ (\entrada_b[9]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[9]~input_o\,
	datac => \entrada_b[9]~input_o\,
	combout => \resultado_ula~2_combout\);

-- Location: LCCOMB_X21_Y12_N30
\ShiftLeft0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~36_combout\ = (\entrada_b[1]~input_o\ & ((\entrada_a[7]~input_o\))) # (!\entrada_b[1]~input_o\ & (\entrada_a[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_a[9]~input_o\,
	datac => \entrada_a[7]~input_o\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftLeft0~36_combout\);

-- Location: LCCOMB_X21_Y12_N24
\ShiftLeft0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~37_combout\ = (\entrada_b[0]~input_o\ & (\ShiftLeft0~33_combout\)) # (!\entrada_b[0]~input_o\ & ((\ShiftLeft0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~33_combout\,
	datac => \ShiftLeft0~36_combout\,
	datad => \entrada_b[0]~input_o\,
	combout => \ShiftLeft0~37_combout\);

-- Location: LCCOMB_X24_Y12_N6
\ShiftLeft0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~38_combout\ = (\entrada_b[2]~input_o\ & ((\ShiftLeft0~23_combout\))) # (!\entrada_b[2]~input_o\ & (\ShiftLeft0~37_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[2]~input_o\,
	datab => \ShiftLeft0~37_combout\,
	datad => \ShiftLeft0~23_combout\,
	combout => \ShiftLeft0~38_combout\);

-- Location: LCCOMB_X23_Y15_N2
\ShiftLeft0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~39_combout\ = (\entrada_b[3]~input_o\ & (\ShiftLeft0~21_combout\ & (\ShiftLeft0~10_combout\))) # (!\entrada_b[3]~input_o\ & (((\ShiftLeft0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[3]~input_o\,
	datab => \ShiftLeft0~21_combout\,
	datac => \ShiftLeft0~10_combout\,
	datad => \ShiftLeft0~38_combout\,
	combout => \ShiftLeft0~39_combout\);

-- Location: LCCOMB_X18_Y11_N14
\Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~2_combout\ = (\Mux17~1_combout\ & (((\Mux17~0_combout\ & \ShiftLeft0~39_combout\)))) # (!\Mux17~1_combout\ & ((\resultado_ula~2_combout\) # ((!\Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010101000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~1_combout\,
	datab => \resultado_ula~2_combout\,
	datac => \Mux17~0_combout\,
	datad => \ShiftLeft0~39_combout\,
	combout => \Mux22~2_combout\);

-- Location: LCCOMB_X18_Y11_N16
\Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~3_combout\ = (\Mux22~2_combout\ & (((\Mux22~1_combout\) # (!\Mux28~9_combout\)))) # (!\Mux22~2_combout\ & (\ShiftRight0~41_combout\ & ((\Mux28~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~41_combout\,
	datab => \Mux22~1_combout\,
	datac => \Mux22~2_combout\,
	datad => \Mux28~9_combout\,
	combout => \Mux22~3_combout\);

-- Location: LCCOMB_X18_Y11_N18
\Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~4_combout\ = (\Mux17~3_combout\ & (((\Add0~33_combout\)) # (!\Mux17~2_combout\))) # (!\Mux17~3_combout\ & (\Mux17~2_combout\ & ((\Mux22~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~3_combout\,
	datab => \Mux17~2_combout\,
	datac => \Add0~33_combout\,
	datad => \Mux22~3_combout\,
	combout => \Mux22~4_combout\);

-- Location: LCCOMB_X18_Y11_N4
Mux22 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux22~combout\ = (\Mux17~4_combout\ & ((\entrada_a[9]~input_o\ & ((\entrada_b[9]~input_o\) # (!\Mux22~4_combout\))) # (!\entrada_a[9]~input_o\ & (\entrada_b[9]~input_o\ & !\Mux22~4_combout\)))) # (!\Mux17~4_combout\ & (((\Mux22~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[9]~input_o\,
	datab => \Mux17~4_combout\,
	datac => \entrada_b[9]~input_o\,
	datad => \Mux22~4_combout\,
	combout => \Mux22~combout\);

-- Location: LCCOMB_X18_Y15_N12
\ShiftRight1~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~64_combout\ = (\entrada_b[3]~input_o\ & (\entrada_a[31]~input_o\)) # (!\entrada_b[3]~input_o\ & ((\ShiftRight1~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_b[3]~input_o\,
	datac => \entrada_a[31]~input_o\,
	datad => \ShiftRight1~28_combout\,
	combout => \ShiftRight1~64_combout\);

-- Location: LCCOMB_X18_Y15_N28
\ShiftRight0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~72_combout\ = (\ShiftRight0~47_combout\ & !\entrada_b[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~47_combout\,
	datac => \entrada_b[3]~input_o\,
	combout => \ShiftRight0~72_combout\);

-- Location: LCCOMB_X19_Y14_N12
\Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~0_combout\ = (\Mux28~4_combout\ & ((\Mux28~5_combout\ & (\ShiftRight0~49_combout\)) # (!\Mux28~5_combout\ & ((\ShiftRight0~72_combout\))))) # (!\Mux28~4_combout\ & (((\Mux28~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~4_combout\,
	datab => \ShiftRight0~49_combout\,
	datac => \ShiftRight0~72_combout\,
	datad => \Mux28~5_combout\,
	combout => \Mux21~0_combout\);

-- Location: LCCOMB_X18_Y15_N22
\Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~1_combout\ = (\Mux21~0_combout\ & (((\entrada_a[31]~input_o\) # (!\Mux28~2_combout\)))) # (!\Mux21~0_combout\ & (\ShiftRight1~64_combout\ & ((\Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~64_combout\,
	datab => \Mux21~0_combout\,
	datac => \entrada_a[31]~input_o\,
	datad => \Mux28~2_combout\,
	combout => \Mux21~1_combout\);

-- Location: LCCOMB_X16_Y10_N16
\resultado_ula~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \resultado_ula~3_combout\ = \entrada_a[10]~input_o\ $ (\entrada_b[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entrada_a[10]~input_o\,
	datad => \entrada_b[10]~input_o\,
	combout => \resultado_ula~3_combout\);

-- Location: LCCOMB_X21_Y12_N10
\ShiftLeft0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~40_combout\ = (\entrada_b[1]~input_o\ & ((\entrada_a[8]~input_o\))) # (!\entrada_b[1]~input_o\ & (\entrada_a[10]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[10]~input_o\,
	datab => \entrada_a[8]~input_o\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftLeft0~40_combout\);

-- Location: LCCOMB_X21_Y12_N12
\ShiftLeft0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~41_combout\ = (\entrada_b[0]~input_o\ & ((\ShiftLeft0~36_combout\))) # (!\entrada_b[0]~input_o\ & (\ShiftLeft0~40_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~40_combout\,
	datac => \ShiftLeft0~36_combout\,
	datad => \entrada_b[0]~input_o\,
	combout => \ShiftLeft0~41_combout\);

-- Location: LCCOMB_X24_Y15_N16
\ShiftLeft0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~42_combout\ = (\entrada_b[2]~input_o\ & ((\ShiftLeft0~27_combout\))) # (!\entrada_b[2]~input_o\ & (\ShiftLeft0~41_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~41_combout\,
	datab => \ShiftLeft0~27_combout\,
	datad => \entrada_b[2]~input_o\,
	combout => \ShiftLeft0~42_combout\);

-- Location: LCCOMB_X24_Y15_N10
\ShiftLeft0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~43_combout\ = (\entrada_b[3]~input_o\ & (((\ShiftLeft0~13_combout\ & !\entrada_b[2]~input_o\)))) # (!\entrada_b[3]~input_o\ & (\ShiftLeft0~42_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[3]~input_o\,
	datab => \ShiftLeft0~42_combout\,
	datac => \ShiftLeft0~13_combout\,
	datad => \entrada_b[2]~input_o\,
	combout => \ShiftLeft0~43_combout\);

-- Location: LCCOMB_X18_Y15_N24
\Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~2_combout\ = (\Mux17~1_combout\ & (((\ShiftLeft0~43_combout\ & \Mux17~0_combout\)))) # (!\Mux17~1_combout\ & ((\resultado_ula~3_combout\) # ((!\Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resultado_ula~3_combout\,
	datab => \ShiftLeft0~43_combout\,
	datac => \Mux17~1_combout\,
	datad => \Mux17~0_combout\,
	combout => \Mux21~2_combout\);

-- Location: LCCOMB_X18_Y15_N2
\Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~3_combout\ = (\Mux21~2_combout\ & ((\Mux21~1_combout\) # ((!\Mux28~9_combout\)))) # (!\Mux21~2_combout\ & (((\Mux28~9_combout\ & \ShiftRight0~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~1_combout\,
	datab => \Mux21~2_combout\,
	datac => \Mux28~9_combout\,
	datad => \ShiftRight0~46_combout\,
	combout => \Mux21~3_combout\);

-- Location: LCCOMB_X16_Y10_N2
\Add0~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~35_combout\ = \seletor[3]~input_o\ $ (\entrada_b[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[3]~input_o\,
	datad => \entrada_b[10]~input_o\,
	combout => \Add0~35_combout\);

-- Location: LCCOMB_X17_Y10_N6
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (\Add0~35_combout\ & ((\entrada_a[10]~input_o\ & (\Add0~34\ & VCC)) # (!\entrada_a[10]~input_o\ & (!\Add0~34\)))) # (!\Add0~35_combout\ & ((\entrada_a[10]~input_o\ & (!\Add0~34\)) # (!\entrada_a[10]~input_o\ & ((\Add0~34\) # (GND)))))
-- \Add0~37\ = CARRY((\Add0~35_combout\ & (!\entrada_a[10]~input_o\ & !\Add0~34\)) # (!\Add0~35_combout\ & ((!\Add0~34\) # (!\entrada_a[10]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~35_combout\,
	datab => \entrada_a[10]~input_o\,
	datad => VCC,
	cin => \Add0~34\,
	combout => \Add0~36_combout\,
	cout => \Add0~37\);

-- Location: LCCOMB_X16_Y10_N28
\Mux21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~4_combout\ = (\Mux17~2_combout\ & ((\Mux17~3_combout\ & ((\Add0~36_combout\))) # (!\Mux17~3_combout\ & (\Mux21~3_combout\)))) # (!\Mux17~2_combout\ & (((\Mux17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux21~3_combout\,
	datab => \Mux17~2_combout\,
	datac => \Mux17~3_combout\,
	datad => \Add0~36_combout\,
	combout => \Mux21~4_combout\);

-- Location: LCCOMB_X16_Y10_N30
Mux21 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux21~combout\ = (\Mux17~4_combout\ & ((\entrada_b[10]~input_o\ & ((\entrada_a[10]~input_o\) # (!\Mux21~4_combout\))) # (!\entrada_b[10]~input_o\ & (\entrada_a[10]~input_o\ & !\Mux21~4_combout\)))) # (!\Mux17~4_combout\ & (((\Mux21~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[10]~input_o\,
	datab => \Mux17~4_combout\,
	datac => \entrada_a[10]~input_o\,
	datad => \Mux21~4_combout\,
	combout => \Mux21~combout\);

-- Location: LCCOMB_X21_Y14_N2
\ShiftRight0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~73_combout\ = (!\entrada_b[3]~input_o\ & \ShiftRight0~51_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entrada_b[3]~input_o\,
	datad => \ShiftRight0~51_combout\,
	combout => \ShiftRight0~73_combout\);

-- Location: LCCOMB_X22_Y14_N12
\Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~0_combout\ = (\Mux28~4_combout\ & ((\Mux28~5_combout\ & ((\ShiftRight0~53_combout\))) # (!\Mux28~5_combout\ & (\ShiftRight0~73_combout\)))) # (!\Mux28~4_combout\ & (((\Mux28~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~73_combout\,
	datab => \ShiftRight0~53_combout\,
	datac => \Mux28~4_combout\,
	datad => \Mux28~5_combout\,
	combout => \Mux20~0_combout\);

-- Location: LCCOMB_X22_Y14_N28
\ShiftRight1~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~65_combout\ = (\entrada_b[3]~input_o\ & (\entrada_a[31]~input_o\)) # (!\entrada_b[3]~input_o\ & ((\entrada_b[2]~input_o\ & (\entrada_a[31]~input_o\)) # (!\entrada_b[2]~input_o\ & ((\ShiftRight1~44_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[31]~input_o\,
	datab => \entrada_b[3]~input_o\,
	datac => \entrada_b[2]~input_o\,
	datad => \ShiftRight1~44_combout\,
	combout => \ShiftRight1~65_combout\);

-- Location: LCCOMB_X22_Y14_N30
\Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~1_combout\ = (\Mux20~0_combout\ & (((\entrada_a[31]~input_o\) # (!\Mux28~2_combout\)))) # (!\Mux20~0_combout\ & (\ShiftRight1~65_combout\ & ((\Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~0_combout\,
	datab => \ShiftRight1~65_combout\,
	datac => \entrada_a[31]~input_o\,
	datad => \Mux28~2_combout\,
	combout => \Mux20~1_combout\);

-- Location: LCCOMB_X21_Y14_N22
\resultado_ula~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \resultado_ula~4_combout\ = \entrada_a[11]~input_o\ $ (\entrada_b[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[11]~input_o\,
	datad => \entrada_b[11]~input_o\,
	combout => \resultado_ula~4_combout\);

-- Location: LCCOMB_X26_Y12_N12
\ShiftLeft0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~44_combout\ = (\entrada_b[1]~input_o\ & (\entrada_a[9]~input_o\)) # (!\entrada_b[1]~input_o\ & ((\entrada_a[11]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[9]~input_o\,
	datab => \entrada_b[1]~input_o\,
	datac => \entrada_a[11]~input_o\,
	combout => \ShiftLeft0~44_combout\);

-- Location: LCCOMB_X21_Y12_N22
\ShiftLeft0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~45_combout\ = (\entrada_b[0]~input_o\ & (\ShiftLeft0~40_combout\)) # (!\entrada_b[0]~input_o\ & ((\ShiftLeft0~44_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~40_combout\,
	datab => \ShiftLeft0~44_combout\,
	datad => \entrada_b[0]~input_o\,
	combout => \ShiftLeft0~45_combout\);

-- Location: LCCOMB_X17_Y12_N12
\ShiftLeft0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~46_combout\ = (\entrada_b[2]~input_o\ & ((\ShiftLeft0~31_combout\))) # (!\entrada_b[2]~input_o\ & (\ShiftLeft0~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~45_combout\,
	datac => \ShiftLeft0~31_combout\,
	datad => \entrada_b[2]~input_o\,
	combout => \ShiftLeft0~46_combout\);

-- Location: LCCOMB_X21_Y14_N20
\ShiftLeft0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~47_combout\ = (\entrada_b[3]~input_o\ & (((!\entrada_b[2]~input_o\ & \ShiftLeft0~29_combout\)))) # (!\entrada_b[3]~input_o\ & (\ShiftLeft0~46_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[3]~input_o\,
	datab => \ShiftLeft0~46_combout\,
	datac => \entrada_b[2]~input_o\,
	datad => \ShiftLeft0~29_combout\,
	combout => \ShiftLeft0~47_combout\);

-- Location: LCCOMB_X21_Y14_N16
\Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~2_combout\ = (\Mux17~1_combout\ & (((\Mux17~0_combout\ & \ShiftLeft0~47_combout\)))) # (!\Mux17~1_combout\ & ((\resultado_ula~4_combout\) # ((!\Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resultado_ula~4_combout\,
	datab => \Mux17~1_combout\,
	datac => \Mux17~0_combout\,
	datad => \ShiftLeft0~47_combout\,
	combout => \Mux20~2_combout\);

-- Location: LCCOMB_X21_Y14_N26
\Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~3_combout\ = (\Mux28~9_combout\ & ((\Mux20~2_combout\ & (\Mux20~1_combout\)) # (!\Mux20~2_combout\ & ((\ShiftRight0~50_combout\))))) # (!\Mux28~9_combout\ & (((\Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~1_combout\,
	datab => \ShiftRight0~50_combout\,
	datac => \Mux28~9_combout\,
	datad => \Mux20~2_combout\,
	combout => \Mux20~3_combout\);

-- Location: LCCOMB_X16_Y10_N24
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = \entrada_b[11]~input_o\ $ (\seletor[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entrada_b[11]~input_o\,
	datad => \seletor[3]~input_o\,
	combout => \Add0~38_combout\);

-- Location: LCCOMB_X17_Y10_N8
\Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = ((\entrada_a[11]~input_o\ $ (\Add0~38_combout\ $ (!\Add0~37\)))) # (GND)
-- \Add0~40\ = CARRY((\entrada_a[11]~input_o\ & ((\Add0~38_combout\) # (!\Add0~37\))) # (!\entrada_a[11]~input_o\ & (\Add0~38_combout\ & !\Add0~37\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[11]~input_o\,
	datab => \Add0~38_combout\,
	datad => VCC,
	cin => \Add0~37\,
	combout => \Add0~39_combout\,
	cout => \Add0~40\);

-- Location: LCCOMB_X16_Y10_N10
\Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~4_combout\ = (\Mux17~3_combout\ & (((\Add0~39_combout\) # (!\Mux17~2_combout\)))) # (!\Mux17~3_combout\ & (\Mux20~3_combout\ & ((\Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~3_combout\,
	datab => \Mux17~3_combout\,
	datac => \Add0~39_combout\,
	datad => \Mux17~2_combout\,
	combout => \Mux20~4_combout\);

-- Location: LCCOMB_X16_Y10_N4
Mux20 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux20~combout\ = (\Mux20~4_combout\ & (((\entrada_a[11]~input_o\ & \entrada_b[11]~input_o\)) # (!\Mux17~4_combout\))) # (!\Mux20~4_combout\ & (\Mux17~4_combout\ & ((\entrada_a[11]~input_o\) # (\entrada_b[11]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux20~4_combout\,
	datab => \entrada_a[11]~input_o\,
	datac => \entrada_b[11]~input_o\,
	datad => \Mux17~4_combout\,
	combout => \Mux20~combout\);

-- Location: LCCOMB_X18_Y11_N30
\resultado_ula~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \resultado_ula~5_combout\ = \entrada_b[12]~input_o\ $ (\entrada_a[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_b[12]~input_o\,
	datad => \entrada_a[12]~input_o\,
	combout => \resultado_ula~5_combout\);

-- Location: LCCOMB_X23_Y13_N20
\ShiftLeft0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~48_combout\ = (\ShiftLeft0~16_combout\) # ((\ShiftLeft0~19_combout\ & !\entrada_b[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~16_combout\,
	datac => \ShiftLeft0~19_combout\,
	datad => \entrada_b[2]~input_o\,
	combout => \ShiftLeft0~48_combout\);

-- Location: LCCOMB_X26_Y12_N30
\ShiftLeft0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~49_combout\ = (\entrada_b[1]~input_o\ & (\entrada_a[10]~input_o\)) # (!\entrada_b[1]~input_o\ & ((\entrada_a[12]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[10]~input_o\,
	datab => \entrada_a[12]~input_o\,
	datac => \entrada_b[1]~input_o\,
	combout => \ShiftLeft0~49_combout\);

-- Location: LCCOMB_X26_Y12_N0
\ShiftLeft0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~50_combout\ = (\entrada_b[0]~input_o\ & ((\ShiftLeft0~44_combout\))) # (!\entrada_b[0]~input_o\ & (\ShiftLeft0~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~49_combout\,
	datac => \entrada_b[0]~input_o\,
	datad => \ShiftLeft0~44_combout\,
	combout => \ShiftLeft0~50_combout\);

-- Location: LCCOMB_X25_Y13_N2
\ShiftLeft0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~51_combout\ = (\entrada_b[2]~input_o\ & ((\ShiftLeft0~34_combout\))) # (!\entrada_b[2]~input_o\ & (\ShiftLeft0~50_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[2]~input_o\,
	datab => \ShiftLeft0~50_combout\,
	datac => \ShiftLeft0~34_combout\,
	combout => \ShiftLeft0~51_combout\);

-- Location: LCCOMB_X23_Y14_N0
\ShiftLeft0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~52_combout\ = (\entrada_b[3]~input_o\ & (\ShiftLeft0~48_combout\)) # (!\entrada_b[3]~input_o\ & ((\ShiftLeft0~51_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~48_combout\,
	datac => \ShiftLeft0~51_combout\,
	datad => \entrada_b[3]~input_o\,
	combout => \ShiftLeft0~52_combout\);

-- Location: LCCOMB_X18_Y11_N8
\Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~2_combout\ = (\Mux17~0_combout\ & ((\Mux17~1_combout\ & ((\ShiftLeft0~52_combout\))) # (!\Mux17~1_combout\ & (\resultado_ula~5_combout\)))) # (!\Mux17~0_combout\ & (((!\Mux17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resultado_ula~5_combout\,
	datab => \ShiftLeft0~52_combout\,
	datac => \Mux17~0_combout\,
	datad => \Mux17~1_combout\,
	combout => \Mux19~2_combout\);

-- Location: LCCOMB_X23_Y13_N18
\ShiftRight0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~74_combout\ = (\ShiftRight1~38_combout\ & ((\ShiftRight0~15_combout\) # ((\ShiftRight1~14_combout\ & \entrada_b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~15_combout\,
	datab => \ShiftRight1~38_combout\,
	datac => \ShiftRight1~14_combout\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftRight0~74_combout\);

-- Location: LCCOMB_X22_Y14_N6
\ShiftRight1~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~66_combout\ = (\ShiftRight0~74_combout\) # ((\entrada_a[31]~input_o\ & ((\entrada_b[3]~input_o\) # (\entrada_b[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[31]~input_o\,
	datab => \entrada_b[3]~input_o\,
	datac => \entrada_b[2]~input_o\,
	datad => \ShiftRight0~74_combout\,
	combout => \ShiftRight1~66_combout\);

-- Location: LCCOMB_X22_Y14_N16
\Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~0_combout\ = (\Mux28~4_combout\ & ((\Mux28~5_combout\ & ((\ShiftRight0~56_combout\))) # (!\Mux28~5_combout\ & (\ShiftRight0~74_combout\)))) # (!\Mux28~4_combout\ & (((\Mux28~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~74_combout\,
	datab => \Mux28~4_combout\,
	datac => \ShiftRight0~56_combout\,
	datad => \Mux28~5_combout\,
	combout => \Mux19~0_combout\);

-- Location: LCCOMB_X22_Y14_N10
\Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~1_combout\ = (\Mux19~0_combout\ & (((\entrada_a[31]~input_o\) # (!\Mux28~2_combout\)))) # (!\Mux19~0_combout\ & (\ShiftRight1~66_combout\ & ((\Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~66_combout\,
	datab => \Mux19~0_combout\,
	datac => \entrada_a[31]~input_o\,
	datad => \Mux28~2_combout\,
	combout => \Mux19~1_combout\);

-- Location: LCCOMB_X18_Y11_N26
\Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~3_combout\ = (\Mux19~2_combout\ & (((\Mux19~1_combout\) # (!\Mux28~9_combout\)))) # (!\Mux19~2_combout\ & (\ShiftRight0~54_combout\ & ((\Mux28~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~2_combout\,
	datab => \ShiftRight0~54_combout\,
	datac => \Mux19~1_combout\,
	datad => \Mux28~9_combout\,
	combout => \Mux19~3_combout\);

-- Location: LCCOMB_X17_Y7_N10
\Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~41_combout\ = \seletor[3]~input_o\ $ (\entrada_b[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[3]~input_o\,
	datad => \entrada_b[12]~input_o\,
	combout => \Add0~41_combout\);

-- Location: LCCOMB_X17_Y10_N10
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\Add0~41_combout\ & ((\entrada_a[12]~input_o\ & (\Add0~40\ & VCC)) # (!\entrada_a[12]~input_o\ & (!\Add0~40\)))) # (!\Add0~41_combout\ & ((\entrada_a[12]~input_o\ & (!\Add0~40\)) # (!\entrada_a[12]~input_o\ & ((\Add0~40\) # (GND)))))
-- \Add0~43\ = CARRY((\Add0~41_combout\ & (!\entrada_a[12]~input_o\ & !\Add0~40\)) # (!\Add0~41_combout\ & ((!\Add0~40\) # (!\entrada_a[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~41_combout\,
	datab => \entrada_a[12]~input_o\,
	datad => VCC,
	cin => \Add0~40\,
	combout => \Add0~42_combout\,
	cout => \Add0~43\);

-- Location: LCCOMB_X18_Y11_N12
\Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~4_combout\ = (\Mux17~3_combout\ & (((\Add0~42_combout\)) # (!\Mux17~2_combout\))) # (!\Mux17~3_combout\ & (\Mux17~2_combout\ & (\Mux19~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~3_combout\,
	datab => \Mux17~2_combout\,
	datac => \Mux19~3_combout\,
	datad => \Add0~42_combout\,
	combout => \Mux19~4_combout\);

-- Location: LCCOMB_X18_Y11_N6
Mux19 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux19~combout\ = (\Mux19~4_combout\ & (((\entrada_b[12]~input_o\ & \entrada_a[12]~input_o\)) # (!\Mux17~4_combout\))) # (!\Mux19~4_combout\ & (\Mux17~4_combout\ & ((\entrada_b[12]~input_o\) # (\entrada_a[12]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux19~4_combout\,
	datab => \entrada_b[12]~input_o\,
	datac => \Mux17~4_combout\,
	datad => \entrada_a[12]~input_o\,
	combout => \Mux19~combout\);

-- Location: LCCOMB_X22_Y13_N10
\ShiftRight1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~58_combout\ = (\entrada_b[3]~input_o\ & (((\entrada_a[31]~input_o\)))) # (!\entrada_b[3]~input_o\ & ((\ShiftLeft0~21_combout\ & (\ShiftRight1~22_combout\)) # (!\ShiftLeft0~21_combout\ & ((\entrada_a[31]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[3]~input_o\,
	datab => \ShiftLeft0~21_combout\,
	datac => \ShiftRight1~22_combout\,
	datad => \entrada_a[31]~input_o\,
	combout => \ShiftRight1~58_combout\);

-- Location: LCCOMB_X22_Y13_N4
\ShiftRight0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~75_combout\ = (\ShiftRight1~38_combout\ & ((\entrada_b[1]~input_o\ & ((\ShiftRight0~43_combout\))) # (!\entrada_b[1]~input_o\ & (\ShiftRight1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~22_combout\,
	datab => \entrada_b[1]~input_o\,
	datac => \ShiftRight1~38_combout\,
	datad => \ShiftRight0~43_combout\,
	combout => \ShiftRight0~75_combout\);

-- Location: LCCOMB_X22_Y13_N6
\Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~0_combout\ = (\Mux28~5_combout\ & (((\ShiftRight0~61_combout\) # (!\Mux28~4_combout\)))) # (!\Mux28~5_combout\ & (\ShiftRight0~75_combout\ & (\Mux28~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~5_combout\,
	datab => \ShiftRight0~75_combout\,
	datac => \Mux28~4_combout\,
	datad => \ShiftRight0~61_combout\,
	combout => \Mux18~0_combout\);

-- Location: LCCOMB_X22_Y13_N8
\Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~1_combout\ = (\Mux28~2_combout\ & ((\Mux18~0_combout\ & ((\entrada_a[31]~input_o\))) # (!\Mux18~0_combout\ & (\ShiftRight1~58_combout\)))) # (!\Mux28~2_combout\ & (((\Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~58_combout\,
	datab => \entrada_a[31]~input_o\,
	datac => \Mux28~2_combout\,
	datad => \Mux18~0_combout\,
	combout => \Mux18~1_combout\);

-- Location: LCCOMB_X18_Y9_N18
\resultado_ula~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \resultado_ula~6_combout\ = \entrada_a[13]~input_o\ $ (\entrada_b[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_a[13]~input_o\,
	datac => \entrada_b[13]~input_o\,
	combout => \resultado_ula~6_combout\);

-- Location: LCCOMB_X26_Y12_N2
\ShiftLeft0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~53_combout\ = (\entrada_b[1]~input_o\ & ((\entrada_a[11]~input_o\))) # (!\entrada_b[1]~input_o\ & (\entrada_a[13]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[13]~input_o\,
	datab => \entrada_a[11]~input_o\,
	datac => \entrada_b[1]~input_o\,
	combout => \ShiftLeft0~53_combout\);

-- Location: LCCOMB_X26_Y12_N4
\ShiftLeft0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~54_combout\ = (\entrada_b[0]~input_o\ & (\ShiftLeft0~49_combout\)) # (!\entrada_b[0]~input_o\ & ((\ShiftLeft0~53_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~49_combout\,
	datab => \ShiftLeft0~53_combout\,
	datac => \entrada_b[0]~input_o\,
	combout => \ShiftLeft0~54_combout\);

-- Location: LCCOMB_X24_Y12_N8
\ShiftLeft0~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~55_combout\ = (\entrada_b[2]~input_o\ & ((\ShiftLeft0~37_combout\))) # (!\entrada_b[2]~input_o\ & (\ShiftLeft0~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~54_combout\,
	datab => \ShiftLeft0~37_combout\,
	datad => \entrada_b[2]~input_o\,
	combout => \ShiftLeft0~55_combout\);

-- Location: LCCOMB_X24_Y12_N26
\ShiftLeft0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~56_combout\ = (\entrada_b[3]~input_o\ & (\ShiftLeft0~24_combout\)) # (!\entrada_b[3]~input_o\ & ((\ShiftLeft0~55_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~24_combout\,
	datac => \ShiftLeft0~55_combout\,
	datad => \entrada_b[3]~input_o\,
	combout => \ShiftLeft0~56_combout\);

-- Location: LCCOMB_X18_Y9_N20
\Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~2_combout\ = (\Mux17~1_combout\ & (((\ShiftLeft0~56_combout\ & \Mux17~0_combout\)))) # (!\Mux17~1_combout\ & ((\resultado_ula~6_combout\) # ((!\Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~1_combout\,
	datab => \resultado_ula~6_combout\,
	datac => \ShiftLeft0~56_combout\,
	datad => \Mux17~0_combout\,
	combout => \Mux18~2_combout\);

-- Location: LCCOMB_X22_Y13_N18
\Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~3_combout\ = (\Mux28~9_combout\ & ((\Mux18~2_combout\ & ((\Mux18~1_combout\))) # (!\Mux18~2_combout\ & (\ShiftRight0~58_combout\)))) # (!\Mux28~9_combout\ & (((\Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~9_combout\,
	datab => \ShiftRight0~58_combout\,
	datac => \Mux18~1_combout\,
	datad => \Mux18~2_combout\,
	combout => \Mux18~3_combout\);

-- Location: LCCOMB_X18_Y9_N14
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = \entrada_b[13]~input_o\ $ (\seletor[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entrada_b[13]~input_o\,
	datad => \seletor[3]~input_o\,
	combout => \Add0~44_combout\);

-- Location: LCCOMB_X17_Y10_N12
\Add0~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~45_combout\ = ((\Add0~44_combout\ $ (\entrada_a[13]~input_o\ $ (!\Add0~43\)))) # (GND)
-- \Add0~46\ = CARRY((\Add0~44_combout\ & ((\entrada_a[13]~input_o\) # (!\Add0~43\))) # (!\Add0~44_combout\ & (\entrada_a[13]~input_o\ & !\Add0~43\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~44_combout\,
	datab => \entrada_a[13]~input_o\,
	datad => VCC,
	cin => \Add0~43\,
	combout => \Add0~45_combout\,
	cout => \Add0~46\);

-- Location: LCCOMB_X16_Y10_N14
\Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~4_combout\ = (\Mux17~3_combout\ & (((\Add0~45_combout\) # (!\Mux17~2_combout\)))) # (!\Mux17~3_combout\ & (\Mux18~3_combout\ & ((\Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux18~3_combout\,
	datab => \Mux17~3_combout\,
	datac => \Add0~45_combout\,
	datad => \Mux17~2_combout\,
	combout => \Mux18~4_combout\);

-- Location: LCCOMB_X16_Y10_N8
Mux18 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux18~combout\ = (\Mux18~4_combout\ & (((\entrada_b[13]~input_o\ & \entrada_a[13]~input_o\)) # (!\Mux17~4_combout\))) # (!\Mux18~4_combout\ & (\Mux17~4_combout\ & ((\entrada_b[13]~input_o\) # (\entrada_a[13]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[13]~input_o\,
	datab => \Mux18~4_combout\,
	datac => \entrada_a[13]~input_o\,
	datad => \Mux17~4_combout\,
	combout => \Mux18~combout\);

-- Location: LCCOMB_X16_Y11_N18
\Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~47_combout\ = \seletor[3]~input_o\ $ (\entrada_b[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[3]~input_o\,
	datac => \entrada_b[14]~input_o\,
	combout => \Add0~47_combout\);

-- Location: LCCOMB_X17_Y10_N14
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = (\entrada_a[14]~input_o\ & ((\Add0~47_combout\ & (\Add0~46\ & VCC)) # (!\Add0~47_combout\ & (!\Add0~46\)))) # (!\entrada_a[14]~input_o\ & ((\Add0~47_combout\ & (!\Add0~46\)) # (!\Add0~47_combout\ & ((\Add0~46\) # (GND)))))
-- \Add0~49\ = CARRY((\entrada_a[14]~input_o\ & (!\Add0~47_combout\ & !\Add0~46\)) # (!\entrada_a[14]~input_o\ & ((!\Add0~46\) # (!\Add0~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[14]~input_o\,
	datab => \Add0~47_combout\,
	datad => VCC,
	cin => \Add0~46\,
	combout => \Add0~48_combout\,
	cout => \Add0~49\);

-- Location: LCCOMB_X25_Y13_N12
\ShiftRight1~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~59_combout\ = (\ShiftLeft0~0_combout\ & (((\entrada_a[31]~input_o\)))) # (!\ShiftLeft0~0_combout\ & ((\entrada_b[3]~input_o\ & ((\entrada_a[31]~input_o\))) # (!\entrada_b[3]~input_o\ & (\entrada_a[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[30]~input_o\,
	datab => \ShiftLeft0~0_combout\,
	datac => \entrada_b[3]~input_o\,
	datad => \entrada_a[31]~input_o\,
	combout => \ShiftRight1~59_combout\);

-- Location: LCCOMB_X23_Y13_N2
\ShiftRight0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~77_combout\ = (!\entrada_b[3]~input_o\ & (!\entrada_b[1]~input_o\ & (\ShiftRight1~14_combout\ & !\entrada_b[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[3]~input_o\,
	datab => \entrada_b[1]~input_o\,
	datac => \ShiftRight1~14_combout\,
	datad => \entrada_b[2]~input_o\,
	combout => \ShiftRight0~77_combout\);

-- Location: LCCOMB_X24_Y14_N20
\Mux17~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~5_combout\ = (\Mux28~5_combout\ & (((\ShiftRight0~64_combout\) # (!\Mux28~4_combout\)))) # (!\Mux28~5_combout\ & (\ShiftRight0~77_combout\ & ((\Mux28~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~77_combout\,
	datab => \Mux28~5_combout\,
	datac => \ShiftRight0~64_combout\,
	datad => \Mux28~4_combout\,
	combout => \Mux17~5_combout\);

-- Location: LCCOMB_X25_Y13_N6
\Mux17~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~6_combout\ = (\Mux28~2_combout\ & ((\Mux17~5_combout\ & ((\entrada_a[31]~input_o\))) # (!\Mux17~5_combout\ & (\ShiftRight1~59_combout\)))) # (!\Mux28~2_combout\ & (((\Mux17~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~59_combout\,
	datab => \Mux28~2_combout\,
	datac => \Mux17~5_combout\,
	datad => \entrada_a[31]~input_o\,
	combout => \Mux17~6_combout\);

-- Location: LCCOMB_X24_Y15_N20
\ShiftLeft0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~57_combout\ = (\entrada_b[2]~input_o\ & ((\ShiftLeft0~13_combout\))) # (!\entrada_b[2]~input_o\ & (\ShiftLeft0~27_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~27_combout\,
	datac => \ShiftLeft0~13_combout\,
	datad => \entrada_b[2]~input_o\,
	combout => \ShiftLeft0~57_combout\);

-- Location: LCCOMB_X26_Y11_N12
\ShiftLeft0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~58_combout\ = (\entrada_b[1]~input_o\ & ((\entrada_a[12]~input_o\))) # (!\entrada_b[1]~input_o\ & (\entrada_a[14]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_a[14]~input_o\,
	datac => \entrada_a[12]~input_o\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftLeft0~58_combout\);

-- Location: LCCOMB_X26_Y12_N22
\ShiftLeft0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~59_combout\ = (\entrada_b[0]~input_o\ & ((\ShiftLeft0~53_combout\))) # (!\entrada_b[0]~input_o\ & (\ShiftLeft0~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~58_combout\,
	datac => \entrada_b[0]~input_o\,
	datad => \ShiftLeft0~53_combout\,
	combout => \ShiftLeft0~59_combout\);

-- Location: LCCOMB_X24_Y15_N22
\ShiftLeft0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~60_combout\ = (\entrada_b[2]~input_o\ & (\ShiftLeft0~41_combout\)) # (!\entrada_b[2]~input_o\ & ((\ShiftLeft0~59_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~41_combout\,
	datac => \ShiftLeft0~59_combout\,
	datad => \entrada_b[2]~input_o\,
	combout => \ShiftLeft0~60_combout\);

-- Location: LCCOMB_X24_Y15_N24
\ShiftLeft0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~61_combout\ = (\entrada_b[3]~input_o\ & (\ShiftLeft0~57_combout\)) # (!\entrada_b[3]~input_o\ & ((\ShiftLeft0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~57_combout\,
	datac => \ShiftLeft0~60_combout\,
	datad => \entrada_b[3]~input_o\,
	combout => \ShiftLeft0~61_combout\);

-- Location: LCCOMB_X16_Y11_N8
\resultado_ula~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \resultado_ula~7_combout\ = \entrada_b[14]~input_o\ $ (\entrada_a[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entrada_b[14]~input_o\,
	datad => \entrada_a[14]~input_o\,
	combout => \resultado_ula~7_combout\);

-- Location: LCCOMB_X18_Y11_N0
\Mux17~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~7_combout\ = (\Mux17~1_combout\ & (\ShiftLeft0~61_combout\ & (\Mux17~0_combout\))) # (!\Mux17~1_combout\ & (((\resultado_ula~7_combout\) # (!\Mux17~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~1_combout\,
	datab => \ShiftLeft0~61_combout\,
	datac => \Mux17~0_combout\,
	datad => \resultado_ula~7_combout\,
	combout => \Mux17~7_combout\);

-- Location: LCCOMB_X18_Y11_N10
\Mux17~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~8_combout\ = (\Mux28~9_combout\ & ((\Mux17~7_combout\ & (\Mux17~6_combout\)) # (!\Mux17~7_combout\ & ((\ShiftRight0~62_combout\))))) # (!\Mux28~9_combout\ & (((\Mux17~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~6_combout\,
	datab => \Mux28~9_combout\,
	datac => \ShiftRight0~62_combout\,
	datad => \Mux17~7_combout\,
	combout => \Mux17~8_combout\);

-- Location: LCCOMB_X18_Y11_N28
\Mux17~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~9_combout\ = (\Mux17~3_combout\ & ((\Add0~48_combout\) # ((!\Mux17~2_combout\)))) # (!\Mux17~3_combout\ & (((\Mux17~2_combout\ & \Mux17~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~3_combout\,
	datab => \Add0~48_combout\,
	datac => \Mux17~2_combout\,
	datad => \Mux17~8_combout\,
	combout => \Mux17~9_combout\);

-- Location: LCCOMB_X18_Y11_N22
Mux17 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux17~combout\ = (\Mux17~4_combout\ & ((\entrada_b[14]~input_o\ & ((\entrada_a[14]~input_o\) # (!\Mux17~9_combout\))) # (!\entrada_b[14]~input_o\ & (\entrada_a[14]~input_o\ & !\Mux17~9_combout\)))) # (!\Mux17~4_combout\ & (((\Mux17~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[14]~input_o\,
	datab => \entrada_a[14]~input_o\,
	datac => \Mux17~4_combout\,
	datad => \Mux17~9_combout\,
	combout => \Mux17~combout\);

-- Location: LCCOMB_X16_Y11_N4
\Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~50_combout\ = \seletor[3]~input_o\ $ (\entrada_b[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[3]~input_o\,
	datac => \entrada_b[15]~input_o\,
	combout => \Add0~50_combout\);

-- Location: LCCOMB_X17_Y10_N16
\Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~51_combout\ = ((\Add0~50_combout\ $ (\entrada_a[15]~input_o\ $ (!\Add0~49\)))) # (GND)
-- \Add0~52\ = CARRY((\Add0~50_combout\ & ((\entrada_a[15]~input_o\) # (!\Add0~49\))) # (!\Add0~50_combout\ & (\entrada_a[15]~input_o\ & !\Add0~49\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~50_combout\,
	datab => \entrada_a[15]~input_o\,
	datad => VCC,
	cin => \Add0~49\,
	combout => \Add0~51_combout\,
	cout => \Add0~52\);

-- Location: LCCOMB_X23_Y10_N20
\Mux16~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~6_combout\ = (\entrada_a[15]~input_o\ & (\seletor[1]~input_o\ $ (((!\entrada_b[15]~input_o\ & \seletor[0]~input_o\))))) # (!\entrada_a[15]~input_o\ & (\entrada_b[15]~input_o\ & (\seletor[1]~input_o\ $ (\seletor[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[15]~input_o\,
	datab => \seletor[1]~input_o\,
	datac => \entrada_b[15]~input_o\,
	datad => \seletor[0]~input_o\,
	combout => \Mux16~6_combout\);

-- Location: LCCOMB_X23_Y10_N26
\Mux16~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~5_combout\ = (\entrada_a[15]~input_o\ & (\seletor[0]~input_o\ & (\seletor[1]~input_o\ $ (\entrada_b[15]~input_o\)))) # (!\entrada_a[15]~input_o\ & ((\seletor[1]~input_o\ & ((\seletor[0]~input_o\) # (!\entrada_b[15]~input_o\))) # 
-- (!\seletor[1]~input_o\ & (!\entrada_b[15]~input_o\ & \seletor[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[15]~input_o\,
	datab => \seletor[1]~input_o\,
	datac => \entrada_b[15]~input_o\,
	datad => \seletor[0]~input_o\,
	combout => \Mux16~5_combout\);

-- Location: LCCOMB_X23_Y10_N14
\Mux16~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~7_combout\ = (\Add0~51_combout\ & ((\Mux16~6_combout\ & ((!\seletor[3]~input_o\) # (!\Mux16~5_combout\))) # (!\Mux16~6_combout\ & (\Mux16~5_combout\ $ (!\seletor[3]~input_o\))))) # (!\Add0~51_combout\ & (\Mux16~6_combout\ & (!\Mux16~5_combout\ & 
-- !\seletor[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~51_combout\,
	datab => \Mux16~6_combout\,
	datac => \Mux16~5_combout\,
	datad => \seletor[3]~input_o\,
	combout => \Mux16~7_combout\);

-- Location: LCCOMB_X23_Y10_N16
\Mux16~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~8_combout\ = (\seletor[2]~input_o\ & (\seletor[3]~input_o\)) # (!\seletor[2]~input_o\ & ((\Mux16~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[3]~input_o\,
	datab => \Mux16~7_combout\,
	datac => \seletor[2]~input_o\,
	combout => \Mux16~8_combout\);

-- Location: LCCOMB_X21_Y14_N28
\ShiftRight0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight0~76_combout\ = (\entrada_b[3]~input_o\ & ((\ShiftRight0~66_combout\))) # (!\entrada_b[3]~input_o\ & (\ShiftRight0~69_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftRight0~69_combout\,
	datac => \entrada_b[3]~input_o\,
	datad => \ShiftRight0~66_combout\,
	combout => \ShiftRight0~76_combout\);

-- Location: LCCOMB_X24_Y14_N22
\Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~0_combout\ = (\seletor[1]~input_o\ & ((\Mux1~0_combout\ & (\ShiftRight0~76_combout\)) # (!\Mux1~0_combout\ & ((\entrada_a[31]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \seletor[1]~input_o\,
	datac => \ShiftRight0~76_combout\,
	datad => \entrada_a[31]~input_o\,
	combout => \Mux16~0_combout\);

-- Location: LCCOMB_X23_Y13_N30
\ShiftRight1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftRight1~60_combout\ = (!\entrada_b[3]~input_o\ & (!\entrada_b[1]~input_o\ & (!\entrada_b[0]~input_o\ & !\entrada_b[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[3]~input_o\,
	datab => \entrada_b[1]~input_o\,
	datac => \entrada_b[0]~input_o\,
	datad => \entrada_b[2]~input_o\,
	combout => \ShiftRight1~60_combout\);

-- Location: LCCOMB_X24_Y14_N24
\Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~1_combout\ = (\entrada_b[4]~input_o\ & (\ShiftRight1~60_combout\ & ((\entrada_a[31]~input_o\)))) # (!\entrada_b[4]~input_o\ & (((\ShiftRight0~76_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~60_combout\,
	datab => \entrada_b[4]~input_o\,
	datac => \ShiftRight0~76_combout\,
	datad => \entrada_a[31]~input_o\,
	combout => \Mux16~1_combout\);

-- Location: LCCOMB_X24_Y14_N2
\Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~2_combout\ = (\Mux16~0_combout\) # ((\Mux16~1_combout\ & (!\ShiftLeft0~9_combout\ & !\seletor[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux16~0_combout\,
	datab => \Mux16~1_combout\,
	datac => \ShiftLeft0~9_combout\,
	datad => \seletor[1]~input_o\,
	combout => \Mux16~2_combout\);

-- Location: LCCOMB_X26_Y11_N6
\ShiftLeft0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~63_combout\ = (\entrada_b[1]~input_o\ & ((\entrada_a[13]~input_o\))) # (!\entrada_b[1]~input_o\ & (\entrada_a[15]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_a[15]~input_o\,
	datac => \entrada_a[13]~input_o\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftLeft0~63_combout\);

-- Location: LCCOMB_X26_Y11_N16
\ShiftLeft0~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~64_combout\ = (\entrada_b[0]~input_o\ & ((\ShiftLeft0~58_combout\))) # (!\entrada_b[0]~input_o\ & (\ShiftLeft0~63_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~63_combout\,
	datab => \entrada_b[0]~input_o\,
	datac => \ShiftLeft0~58_combout\,
	combout => \ShiftLeft0~64_combout\);

-- Location: LCCOMB_X18_Y12_N12
\ShiftLeft0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~65_combout\ = (\entrada_b[2]~input_o\ & (\ShiftLeft0~45_combout\)) # (!\entrada_b[2]~input_o\ & ((\ShiftLeft0~64_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~45_combout\,
	datac => \ShiftLeft0~64_combout\,
	datad => \entrada_b[2]~input_o\,
	combout => \ShiftLeft0~65_combout\);

-- Location: LCCOMB_X21_Y14_N14
\ShiftLeft0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~62_combout\ = (\entrada_b[2]~input_o\ & (\ShiftLeft0~29_combout\)) # (!\entrada_b[2]~input_o\ & ((\ShiftLeft0~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~29_combout\,
	datac => \entrada_b[2]~input_o\,
	datad => \ShiftLeft0~31_combout\,
	combout => \ShiftLeft0~62_combout\);

-- Location: LCCOMB_X18_Y12_N30
\Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~3_combout\ = (\entrada_b[3]~input_o\ & ((\ShiftLeft0~62_combout\))) # (!\entrada_b[3]~input_o\ & (\ShiftLeft0~65_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~65_combout\,
	datac => \ShiftLeft0~62_combout\,
	datad => \entrada_b[3]~input_o\,
	combout => \Mux16~3_combout\);

-- Location: LCCOMB_X24_Y14_N28
\Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~4_combout\ = (\seletor[0]~input_o\ & (((\Mux16~2_combout\)))) # (!\seletor[0]~input_o\ & (\Mux1~0_combout\ & ((\Mux16~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \Mux16~2_combout\,
	datac => \Mux16~3_combout\,
	datad => \seletor[0]~input_o\,
	combout => \Mux16~4_combout\);

-- Location: LCCOMB_X23_Y10_N18
\Mux16~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux16~9_combout\ = (\Mux16~8_combout\ & ((\Add0~51_combout\) # ((!\seletor[2]~input_o\)))) # (!\Mux16~8_combout\ & (((\seletor[2]~input_o\ & \Mux16~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~51_combout\,
	datab => \Mux16~8_combout\,
	datac => \seletor[2]~input_o\,
	datad => \Mux16~4_combout\,
	combout => \Mux16~9_combout\);

-- Location: LCCOMB_X17_Y8_N10
\Mux15~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~6_combout\ = (\entrada_b[16]~input_o\ & (\seletor[1]~input_o\ $ (((\seletor[0]~input_o\ & !\entrada_a[16]~input_o\))))) # (!\entrada_b[16]~input_o\ & (\entrada_a[16]~input_o\ & (\seletor[1]~input_o\ $ (\seletor[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => \entrada_b[16]~input_o\,
	datac => \seletor[0]~input_o\,
	datad => \entrada_a[16]~input_o\,
	combout => \Mux15~6_combout\);

-- Location: LCCOMB_X17_Y8_N8
\Mux15~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~5_combout\ = (\seletor[1]~input_o\ & ((\entrada_b[16]~input_o\ & (\seletor[0]~input_o\ & !\entrada_a[16]~input_o\)) # (!\entrada_b[16]~input_o\ & ((\seletor[0]~input_o\) # (!\entrada_a[16]~input_o\))))) # (!\seletor[1]~input_o\ & 
-- (\seletor[0]~input_o\ & (\entrada_b[16]~input_o\ $ (!\entrada_a[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => \entrada_b[16]~input_o\,
	datac => \seletor[0]~input_o\,
	datad => \entrada_a[16]~input_o\,
	combout => \Mux15~5_combout\);

-- Location: LCCOMB_X17_Y8_N22
\Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~53_combout\ = \seletor[3]~input_o\ $ (\entrada_b[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seletor[3]~input_o\,
	datad => \entrada_b[16]~input_o\,
	combout => \Add0~53_combout\);

-- Location: LCCOMB_X17_Y10_N18
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = (\Add0~53_combout\ & ((\entrada_a[16]~input_o\ & (\Add0~52\ & VCC)) # (!\entrada_a[16]~input_o\ & (!\Add0~52\)))) # (!\Add0~53_combout\ & ((\entrada_a[16]~input_o\ & (!\Add0~52\)) # (!\entrada_a[16]~input_o\ & ((\Add0~52\) # (GND)))))
-- \Add0~55\ = CARRY((\Add0~53_combout\ & (!\entrada_a[16]~input_o\ & !\Add0~52\)) # (!\Add0~53_combout\ & ((!\Add0~52\) # (!\entrada_a[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~53_combout\,
	datab => \entrada_a[16]~input_o\,
	datad => VCC,
	cin => \Add0~52\,
	combout => \Add0~54_combout\,
	cout => \Add0~55\);

-- Location: LCCOMB_X17_Y8_N28
\Mux15~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~7_combout\ = (\Mux15~6_combout\ & ((\Mux15~5_combout\ & (\Add0~54_combout\ & !\seletor[3]~input_o\)) # (!\Mux15~5_combout\ & ((\Add0~54_combout\) # (!\seletor[3]~input_o\))))) # (!\Mux15~6_combout\ & (\Add0~54_combout\ & (\Mux15~5_combout\ $ 
-- (!\seletor[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~6_combout\,
	datab => \Mux15~5_combout\,
	datac => \Add0~54_combout\,
	datad => \seletor[3]~input_o\,
	combout => \Mux15~7_combout\);

-- Location: LCCOMB_X17_Y8_N30
\Mux15~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~8_combout\ = (\seletor[2]~input_o\ & (\seletor[3]~input_o\)) # (!\seletor[2]~input_o\ & ((\Mux15~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seletor[3]~input_o\,
	datac => \seletor[2]~input_o\,
	datad => \Mux15~7_combout\,
	combout => \Mux15~8_combout\);

-- Location: LCCOMB_X26_Y11_N26
\ShiftLeft0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~66_combout\ = (\entrada_b[1]~input_o\ & ((\entrada_a[14]~input_o\))) # (!\entrada_b[1]~input_o\ & (\entrada_a[16]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_a[16]~input_o\,
	datac => \entrada_a[14]~input_o\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftLeft0~66_combout\);

-- Location: LCCOMB_X26_Y11_N4
\ShiftLeft0~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~67_combout\ = (\entrada_b[0]~input_o\ & (\ShiftLeft0~63_combout\)) # (!\entrada_b[0]~input_o\ & ((\ShiftLeft0~66_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~63_combout\,
	datab => \entrada_b[0]~input_o\,
	datac => \ShiftLeft0~66_combout\,
	combout => \ShiftLeft0~67_combout\);

-- Location: LCCOMB_X25_Y13_N8
\ShiftLeft0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~68_combout\ = (\entrada_b[2]~input_o\ & ((\ShiftLeft0~50_combout\))) # (!\entrada_b[2]~input_o\ & (\ShiftLeft0~67_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~67_combout\,
	datac => \entrada_b[2]~input_o\,
	datad => \ShiftLeft0~50_combout\,
	combout => \ShiftLeft0~68_combout\);

-- Location: LCCOMB_X25_Y13_N26
\Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~2_combout\ = (\entrada_b[4]~input_o\ & (\entrada_a[0]~input_o\ & ((!\ShiftLeft0~0_combout\)))) # (!\entrada_b[4]~input_o\ & (((\ShiftLeft0~68_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[0]~input_o\,
	datab => \ShiftLeft0~68_combout\,
	datac => \entrada_b[4]~input_o\,
	datad => \ShiftLeft0~0_combout\,
	combout => \Mux15~2_combout\);

-- Location: LCCOMB_X25_Y13_N20
\Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~3_combout\ = (\entrada_b[3]~input_o\ & (\Mux15~0_combout\ & (!\entrada_b[4]~input_o\))) # (!\entrada_b[3]~input_o\ & (((\Mux15~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~0_combout\,
	datab => \entrada_b[3]~input_o\,
	datac => \entrada_b[4]~input_o\,
	datad => \Mux15~2_combout\,
	combout => \Mux15~3_combout\);

-- Location: LCCOMB_X24_Y13_N10
\Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~1_combout\ = (\Mux1~0_combout\ & (\ShiftRight0~28_combout\)) # (!\Mux1~0_combout\ & (((\seletor[1]~input_o\ & \entrada_a[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~28_combout\,
	datab => \seletor[1]~input_o\,
	datac => \entrada_a[31]~input_o\,
	datad => \Mux1~0_combout\,
	combout => \Mux15~1_combout\);

-- Location: LCCOMB_X24_Y13_N28
\Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~4_combout\ = (\seletor[0]~input_o\ & (((\Mux15~1_combout\)))) # (!\seletor[0]~input_o\ & (\Mux15~3_combout\ & (!\ShiftLeft0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~3_combout\,
	datab => \ShiftLeft0~9_combout\,
	datac => \seletor[0]~input_o\,
	datad => \Mux15~1_combout\,
	combout => \Mux15~4_combout\);

-- Location: LCCOMB_X17_Y8_N24
\Mux15~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux15~9_combout\ = (\Mux15~8_combout\ & ((\Add0~54_combout\) # ((!\seletor[2]~input_o\)))) # (!\Mux15~8_combout\ & (((\seletor[2]~input_o\ & \Mux15~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux15~8_combout\,
	datab => \Add0~54_combout\,
	datac => \seletor[2]~input_o\,
	datad => \Mux15~4_combout\,
	combout => \Mux15~9_combout\);

-- Location: LCCOMB_X17_Y13_N14
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = \seletor[3]~input_o\ $ (\entrada_b[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seletor[3]~input_o\,
	datad => \entrada_b[17]~input_o\,
	combout => \Add0~56_combout\);

-- Location: LCCOMB_X17_Y10_N20
\Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~57_combout\ = ((\entrada_a[17]~input_o\ $ (\Add0~56_combout\ $ (!\Add0~55\)))) # (GND)
-- \Add0~58\ = CARRY((\entrada_a[17]~input_o\ & ((\Add0~56_combout\) # (!\Add0~55\))) # (!\entrada_a[17]~input_o\ & (\Add0~56_combout\ & !\Add0~55\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[17]~input_o\,
	datab => \Add0~56_combout\,
	datad => VCC,
	cin => \Add0~55\,
	combout => \Add0~57_combout\,
	cout => \Add0~58\);

-- Location: LCCOMB_X22_Y12_N20
\Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~4_combout\ = (\seletor[0]~input_o\ & \seletor[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[0]~input_o\,
	datac => \seletor[1]~input_o\,
	combout => \Mux8~4_combout\);

-- Location: LCCOMB_X23_Y10_N22
\Mux8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~6_combout\ = (\seletor[0]~input_o\ & ((!\Mux1~0_combout\) # (!\seletor[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seletor[1]~input_o\,
	datac => \Mux1~0_combout\,
	datad => \seletor[0]~input_o\,
	combout => \Mux8~6_combout\);

-- Location: LCCOMB_X25_Y12_N26
\Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~1_combout\ = (\ShiftLeft0~21_combout\ & (!\ShiftLeft0~9_combout\ & (\ShiftLeft0~10_combout\ & !\entrada_b[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~21_combout\,
	datab => \ShiftLeft0~9_combout\,
	datac => \ShiftLeft0~10_combout\,
	datad => \entrada_b[3]~input_o\,
	combout => \Mux14~1_combout\);

-- Location: LCCOMB_X23_Y10_N12
\Mux8~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~5_combout\ = ((!\seletor[1]~input_o\ & \Mux1~0_combout\)) # (!\seletor[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seletor[1]~input_o\,
	datac => \Mux1~0_combout\,
	datad => \seletor[0]~input_o\,
	combout => \Mux8~5_combout\);

-- Location: LCCOMB_X19_Y14_N6
\Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~2_combout\ = (\Mux8~6_combout\ & (\ShiftRight0~45_combout\ & ((\Mux8~5_combout\)))) # (!\Mux8~6_combout\ & (((\Mux14~1_combout\) # (!\Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~45_combout\,
	datab => \Mux8~6_combout\,
	datac => \Mux14~1_combout\,
	datad => \Mux8~5_combout\,
	combout => \Mux14~2_combout\);

-- Location: LCCOMB_X19_Y14_N24
\Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~3_combout\ = (\Mux8~4_combout\ & ((\Mux14~2_combout\ & (\ShiftRight1~24_combout\)) # (!\Mux14~2_combout\ & ((\entrada_a[31]~input_o\))))) # (!\Mux8~4_combout\ & (((\Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~4_combout\,
	datab => \ShiftRight1~24_combout\,
	datac => \Mux14~2_combout\,
	datad => \entrada_a[31]~input_o\,
	combout => \Mux14~3_combout\);

-- Location: LCCOMB_X26_Y11_N30
\ShiftLeft0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~69_combout\ = (\entrada_b[1]~input_o\ & (\entrada_a[15]~input_o\)) # (!\entrada_b[1]~input_o\ & ((\entrada_a[17]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_a[15]~input_o\,
	datac => \entrada_a[17]~input_o\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftLeft0~69_combout\);

-- Location: LCCOMB_X26_Y11_N0
\ShiftLeft0~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~70_combout\ = (\entrada_b[0]~input_o\ & (\ShiftLeft0~66_combout\)) # (!\entrada_b[0]~input_o\ & ((\ShiftLeft0~69_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~66_combout\,
	datab => \entrada_b[0]~input_o\,
	datac => \ShiftLeft0~69_combout\,
	combout => \ShiftLeft0~70_combout\);

-- Location: LCCOMB_X23_Y15_N28
\ShiftLeft0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~71_combout\ = (\entrada_b[2]~input_o\ & (\ShiftLeft0~54_combout\)) # (!\entrada_b[2]~input_o\ & ((\ShiftLeft0~70_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~54_combout\,
	datac => \ShiftLeft0~70_combout\,
	datad => \entrada_b[2]~input_o\,
	combout => \ShiftLeft0~71_combout\);

-- Location: LCCOMB_X17_Y13_N16
\resultado_ula~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \resultado_ula~8_combout\ = \entrada_b[17]~input_o\ $ (\entrada_a[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_b[17]~input_o\,
	datad => \entrada_a[17]~input_o\,
	combout => \resultado_ula~8_combout\);

-- Location: LCCOMB_X24_Y13_N30
\Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~2_combout\ = ((\ShiftLeft0~9_combout\) # ((\seletor[0]~input_o\) # (\entrada_b[4]~input_o\))) # (!\seletor[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[2]~input_o\,
	datab => \ShiftLeft0~9_combout\,
	datac => \seletor[0]~input_o\,
	datad => \entrada_b[4]~input_o\,
	combout => \Mux8~2_combout\);

-- Location: LCCOMB_X17_Y12_N6
\Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~3_combout\ = (\Mux8~2_combout\ & ((\seletor[2]~input_o\))) # (!\Mux8~2_combout\ & (\entrada_b[3]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Mux8~2_combout\,
	datac => \entrada_b[3]~input_o\,
	datad => \seletor[2]~input_o\,
	combout => \Mux8~3_combout\);

-- Location: LCCOMB_X17_Y13_N2
\Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~0_combout\ = (\Mux8~3_combout\ & (((\Mux8~2_combout\)))) # (!\Mux8~3_combout\ & ((\Mux8~2_combout\ & ((\resultado_ula~8_combout\))) # (!\Mux8~2_combout\ & (\ShiftLeft0~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~71_combout\,
	datab => \resultado_ula~8_combout\,
	datac => \Mux8~3_combout\,
	datad => \Mux8~2_combout\,
	combout => \Mux14~0_combout\);

-- Location: LCCOMB_X17_Y13_N4
\Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~4_combout\ = (\Mux14~0_combout\ & ((\Mux14~3_combout\) # ((!\Mux8~3_combout\)))) # (!\Mux14~0_combout\ & (((\Mux8~3_combout\ & \ShiftLeft0~38_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux14~3_combout\,
	datab => \Mux14~0_combout\,
	datac => \Mux8~3_combout\,
	datad => \ShiftLeft0~38_combout\,
	combout => \Mux14~4_combout\);

-- Location: LCCOMB_X17_Y13_N0
\Mux14~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~5_combout\ = (\Mux17~3_combout\ & ((\Add0~57_combout\) # ((!\Mux17~2_combout\)))) # (!\Mux17~3_combout\ & (((\Mux14~4_combout\ & \Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~57_combout\,
	datab => \Mux17~3_combout\,
	datac => \Mux14~4_combout\,
	datad => \Mux17~2_combout\,
	combout => \Mux14~5_combout\);

-- Location: LCCOMB_X17_Y12_N8
Mux14 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux14~combout\ = (\Mux14~5_combout\ & (((\entrada_b[17]~input_o\ & \entrada_a[17]~input_o\)) # (!\Mux17~4_combout\))) # (!\Mux14~5_combout\ & (\Mux17~4_combout\ & ((\entrada_b[17]~input_o\) # (\entrada_a[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[17]~input_o\,
	datab => \Mux14~5_combout\,
	datac => \entrada_a[17]~input_o\,
	datad => \Mux17~4_combout\,
	combout => \Mux14~combout\);

-- Location: LCCOMB_X24_Y12_N4
\resultado_ula~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \resultado_ula~9_combout\ = \entrada_b[18]~input_o\ $ (\entrada_a[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[18]~input_o\,
	datad => \entrada_a[18]~input_o\,
	combout => \resultado_ula~9_combout\);

-- Location: LCCOMB_X23_Y14_N26
\Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~1_combout\ = (!\ShiftLeft0~5_combout\ & (\ShiftRight1~38_combout\ & (!\ShiftLeft0~8_combout\ & \ShiftLeft0~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~5_combout\,
	datab => \ShiftRight1~38_combout\,
	datac => \ShiftLeft0~8_combout\,
	datad => \ShiftLeft0~13_combout\,
	combout => \Mux13~1_combout\);

-- Location: LCCOMB_X19_Y14_N26
\Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~2_combout\ = (\Mux8~5_combout\ & ((\Mux8~6_combout\ & (\ShiftRight0~48_combout\)) # (!\Mux8~6_combout\ & ((\Mux13~1_combout\))))) # (!\Mux8~5_combout\ & (!\Mux8~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~5_combout\,
	datab => \Mux8~6_combout\,
	datac => \ShiftRight0~48_combout\,
	datad => \Mux13~1_combout\,
	combout => \Mux13~2_combout\);

-- Location: LCCOMB_X19_Y14_N28
\Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~3_combout\ = (\Mux13~2_combout\ & (((\ShiftRight1~33_combout\) # (!\Mux8~4_combout\)))) # (!\Mux13~2_combout\ & (\entrada_a[31]~input_o\ & ((\Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~2_combout\,
	datab => \entrada_a[31]~input_o\,
	datac => \ShiftRight1~33_combout\,
	datad => \Mux8~4_combout\,
	combout => \Mux13~3_combout\);

-- Location: LCCOMB_X26_Y11_N18
\ShiftLeft0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~72_combout\ = (\entrada_b[1]~input_o\ & ((\entrada_a[16]~input_o\))) # (!\entrada_b[1]~input_o\ & (\entrada_a[18]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[18]~input_o\,
	datab => \entrada_a[16]~input_o\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftLeft0~72_combout\);

-- Location: LCCOMB_X26_Y11_N28
\ShiftLeft0~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~73_combout\ = (\entrada_b[0]~input_o\ & (\ShiftLeft0~69_combout\)) # (!\entrada_b[0]~input_o\ & ((\ShiftLeft0~72_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~69_combout\,
	datab => \ShiftLeft0~72_combout\,
	datac => \entrada_b[0]~input_o\,
	combout => \ShiftLeft0~73_combout\);

-- Location: LCCOMB_X24_Y15_N18
\ShiftLeft0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~74_combout\ = (\entrada_b[2]~input_o\ & (\ShiftLeft0~59_combout\)) # (!\entrada_b[2]~input_o\ & ((\ShiftLeft0~73_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~59_combout\,
	datab => \ShiftLeft0~73_combout\,
	datad => \entrada_b[2]~input_o\,
	combout => \ShiftLeft0~74_combout\);

-- Location: LCCOMB_X24_Y15_N28
\Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~0_combout\ = (\Mux8~3_combout\ & ((\ShiftLeft0~42_combout\) # ((\Mux8~2_combout\)))) # (!\Mux8~3_combout\ & (((!\Mux8~2_combout\ & \ShiftLeft0~74_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~3_combout\,
	datab => \ShiftLeft0~42_combout\,
	datac => \Mux8~2_combout\,
	datad => \ShiftLeft0~74_combout\,
	combout => \Mux13~0_combout\);

-- Location: LCCOMB_X24_Y13_N16
\Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~4_combout\ = (\Mux8~2_combout\ & ((\Mux13~0_combout\ & ((\Mux13~3_combout\))) # (!\Mux13~0_combout\ & (\resultado_ula~9_combout\)))) # (!\Mux8~2_combout\ & (((\Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~2_combout\,
	datab => \resultado_ula~9_combout\,
	datac => \Mux13~3_combout\,
	datad => \Mux13~0_combout\,
	combout => \Mux13~4_combout\);

-- Location: LCCOMB_X16_Y11_N14
\Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~59_combout\ = \seletor[3]~input_o\ $ (\entrada_b[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[3]~input_o\,
	datad => \entrada_b[18]~input_o\,
	combout => \Add0~59_combout\);

-- Location: LCCOMB_X17_Y10_N22
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (\Add0~59_combout\ & ((\entrada_a[18]~input_o\ & (\Add0~58\ & VCC)) # (!\entrada_a[18]~input_o\ & (!\Add0~58\)))) # (!\Add0~59_combout\ & ((\entrada_a[18]~input_o\ & (!\Add0~58\)) # (!\entrada_a[18]~input_o\ & ((\Add0~58\) # (GND)))))
-- \Add0~61\ = CARRY((\Add0~59_combout\ & (!\entrada_a[18]~input_o\ & !\Add0~58\)) # (!\Add0~59_combout\ & ((!\Add0~58\) # (!\entrada_a[18]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~59_combout\,
	datab => \entrada_a[18]~input_o\,
	datad => VCC,
	cin => \Add0~58\,
	combout => \Add0~60_combout\,
	cout => \Add0~61\);

-- Location: LCCOMB_X17_Y13_N26
\Mux13~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~5_combout\ = (\Mux17~2_combout\ & ((\Mux17~3_combout\ & ((\Add0~60_combout\))) # (!\Mux17~3_combout\ & (\Mux13~4_combout\)))) # (!\Mux17~2_combout\ & (((\Mux17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux13~4_combout\,
	datab => \Mux17~2_combout\,
	datac => \Mux17~3_combout\,
	datad => \Add0~60_combout\,
	combout => \Mux13~5_combout\);

-- Location: LCCOMB_X24_Y12_N14
Mux13 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux13~combout\ = (\Mux17~4_combout\ & ((\entrada_b[18]~input_o\ & ((\entrada_a[18]~input_o\) # (!\Mux13~5_combout\))) # (!\entrada_b[18]~input_o\ & (!\Mux13~5_combout\ & \entrada_a[18]~input_o\)))) # (!\Mux17~4_combout\ & (((\Mux13~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[18]~input_o\,
	datab => \Mux17~4_combout\,
	datac => \Mux13~5_combout\,
	datad => \entrada_a[18]~input_o\,
	combout => \Mux13~combout\);

-- Location: LCCOMB_X16_Y10_N26
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = \entrada_b[19]~input_o\ $ (\seletor[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entrada_b[19]~input_o\,
	datad => \seletor[3]~input_o\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X17_Y10_N24
\Add0~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~63_combout\ = ((\entrada_a[19]~input_o\ $ (\Add0~62_combout\ $ (!\Add0~61\)))) # (GND)
-- \Add0~64\ = CARRY((\entrada_a[19]~input_o\ & ((\Add0~62_combout\) # (!\Add0~61\))) # (!\entrada_a[19]~input_o\ & (\Add0~62_combout\ & !\Add0~61\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[19]~input_o\,
	datab => \Add0~62_combout\,
	datad => VCC,
	cin => \Add0~61\,
	combout => \Add0~63_combout\,
	cout => \Add0~64\);

-- Location: LCCOMB_X23_Y14_N12
\Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~1_combout\ = (!\ShiftLeft0~5_combout\ & (\ShiftLeft0~29_combout\ & (!\ShiftLeft0~8_combout\ & \ShiftRight1~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~5_combout\,
	datab => \ShiftLeft0~29_combout\,
	datac => \ShiftLeft0~8_combout\,
	datad => \ShiftRight1~38_combout\,
	combout => \Mux12~1_combout\);

-- Location: LCCOMB_X19_Y14_N30
\Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~2_combout\ = (\Mux8~5_combout\ & ((\Mux8~6_combout\ & (\ShiftRight0~52_combout\)) # (!\Mux8~6_combout\ & ((\Mux12~1_combout\))))) # (!\Mux8~5_combout\ & (!\Mux8~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~5_combout\,
	datab => \Mux8~6_combout\,
	datac => \ShiftRight0~52_combout\,
	datad => \Mux12~1_combout\,
	combout => \Mux12~2_combout\);

-- Location: LCCOMB_X19_Y14_N8
\Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~3_combout\ = (\Mux8~4_combout\ & ((\Mux12~2_combout\ & (\ShiftRight1~48_combout\)) # (!\Mux12~2_combout\ & ((\entrada_a[31]~input_o\))))) # (!\Mux8~4_combout\ & (((\Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~4_combout\,
	datab => \ShiftRight1~48_combout\,
	datac => \Mux12~2_combout\,
	datad => \entrada_a[31]~input_o\,
	combout => \Mux12~3_combout\);

-- Location: LCCOMB_X17_Y12_N2
\resultado_ula~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \resultado_ula~10_combout\ = \entrada_b[19]~input_o\ $ (\entrada_a[19]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entrada_b[19]~input_o\,
	datad => \entrada_a[19]~input_o\,
	combout => \resultado_ula~10_combout\);

-- Location: LCCOMB_X17_Y12_N28
\ShiftLeft0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~75_combout\ = (\entrada_b[1]~input_o\ & ((\entrada_a[17]~input_o\))) # (!\entrada_b[1]~input_o\ & (\entrada_a[19]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[19]~input_o\,
	datac => \entrada_a[17]~input_o\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftLeft0~75_combout\);

-- Location: LCCOMB_X26_Y11_N14
\ShiftLeft0~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~76_combout\ = (\entrada_b[0]~input_o\ & ((\ShiftLeft0~72_combout\))) # (!\entrada_b[0]~input_o\ & (\ShiftLeft0~75_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~75_combout\,
	datab => \ShiftLeft0~72_combout\,
	datac => \entrada_b[0]~input_o\,
	combout => \ShiftLeft0~76_combout\);

-- Location: LCCOMB_X23_Y13_N24
\ShiftLeft0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~77_combout\ = (\entrada_b[2]~input_o\ & (\ShiftLeft0~64_combout\)) # (!\entrada_b[2]~input_o\ & ((\ShiftLeft0~76_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~64_combout\,
	datac => \ShiftLeft0~76_combout\,
	datad => \entrada_b[2]~input_o\,
	combout => \ShiftLeft0~77_combout\);

-- Location: LCCOMB_X17_Y12_N14
\Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~0_combout\ = (\Mux8~3_combout\ & (((\Mux8~2_combout\)))) # (!\Mux8~3_combout\ & ((\Mux8~2_combout\ & (\resultado_ula~10_combout\)) # (!\Mux8~2_combout\ & ((\ShiftLeft0~77_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~3_combout\,
	datab => \resultado_ula~10_combout\,
	datac => \Mux8~2_combout\,
	datad => \ShiftLeft0~77_combout\,
	combout => \Mux12~0_combout\);

-- Location: LCCOMB_X17_Y12_N16
\Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~4_combout\ = (\Mux12~0_combout\ & (((\Mux12~3_combout\) # (!\Mux8~3_combout\)))) # (!\Mux12~0_combout\ & (\ShiftLeft0~46_combout\ & ((\Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~46_combout\,
	datab => \Mux12~3_combout\,
	datac => \Mux12~0_combout\,
	datad => \Mux8~3_combout\,
	combout => \Mux12~4_combout\);

-- Location: LCCOMB_X17_Y12_N18
\Mux12~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~5_combout\ = (\Mux17~2_combout\ & ((\Mux17~3_combout\ & (\Add0~63_combout\)) # (!\Mux17~3_combout\ & ((\Mux12~4_combout\))))) # (!\Mux17~2_combout\ & (((\Mux17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~2_combout\,
	datab => \Add0~63_combout\,
	datac => \Mux17~3_combout\,
	datad => \Mux12~4_combout\,
	combout => \Mux12~5_combout\);

-- Location: LCCOMB_X17_Y12_N4
Mux12 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux12~combout\ = (\Mux12~5_combout\ & (((\entrada_a[19]~input_o\ & \entrada_b[19]~input_o\)) # (!\Mux17~4_combout\))) # (!\Mux12~5_combout\ & (\Mux17~4_combout\ & ((\entrada_a[19]~input_o\) # (\entrada_b[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[19]~input_o\,
	datab => \Mux12~5_combout\,
	datac => \entrada_b[19]~input_o\,
	datad => \Mux17~4_combout\,
	combout => \Mux12~combout\);

-- Location: LCCOMB_X16_Y11_N0
\Add0~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~65_combout\ = \entrada_b[20]~input_o\ $ (\seletor[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_b[20]~input_o\,
	datad => \seletor[3]~input_o\,
	combout => \Add0~65_combout\);

-- Location: LCCOMB_X17_Y10_N26
\Add0~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~66_combout\ = (\Add0~65_combout\ & ((\entrada_a[20]~input_o\ & (\Add0~64\ & VCC)) # (!\entrada_a[20]~input_o\ & (!\Add0~64\)))) # (!\Add0~65_combout\ & ((\entrada_a[20]~input_o\ & (!\Add0~64\)) # (!\entrada_a[20]~input_o\ & ((\Add0~64\) # (GND)))))
-- \Add0~67\ = CARRY((\Add0~65_combout\ & (!\entrada_a[20]~input_o\ & !\Add0~64\)) # (!\Add0~65_combout\ & ((!\Add0~64\) # (!\entrada_a[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~65_combout\,
	datab => \entrada_a[20]~input_o\,
	datad => VCC,
	cin => \Add0~64\,
	combout => \Add0~66_combout\,
	cout => \Add0~67\);

-- Location: LCCOMB_X25_Y12_N4
\ShiftLeft0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~78_combout\ = (\entrada_b[1]~input_o\ & (\entrada_a[18]~input_o\)) # (!\entrada_b[1]~input_o\ & ((\entrada_a[20]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_a[18]~input_o\,
	datac => \entrada_a[20]~input_o\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftLeft0~78_combout\);

-- Location: LCCOMB_X23_Y15_N6
\ShiftLeft0~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~79_combout\ = (\entrada_b[0]~input_o\ & (\ShiftLeft0~75_combout\)) # (!\entrada_b[0]~input_o\ & ((\ShiftLeft0~78_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~75_combout\,
	datab => \ShiftLeft0~78_combout\,
	datad => \entrada_b[0]~input_o\,
	combout => \ShiftLeft0~79_combout\);

-- Location: LCCOMB_X25_Y13_N14
\ShiftLeft0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~80_combout\ = (\entrada_b[2]~input_o\ & ((\ShiftLeft0~67_combout\))) # (!\entrada_b[2]~input_o\ & (\ShiftLeft0~79_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~79_combout\,
	datac => \entrada_b[2]~input_o\,
	datad => \ShiftLeft0~67_combout\,
	combout => \ShiftLeft0~80_combout\);

-- Location: LCCOMB_X17_Y13_N6
\Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~2_combout\ = (\Mux8~2_combout\ & (((\Mux8~3_combout\)))) # (!\Mux8~2_combout\ & ((\Mux8~3_combout\ & ((\ShiftLeft0~51_combout\))) # (!\Mux8~3_combout\ & (\ShiftLeft0~80_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~80_combout\,
	datab => \Mux8~2_combout\,
	datac => \Mux8~3_combout\,
	datad => \ShiftLeft0~51_combout\,
	combout => \Mux11~2_combout\);

-- Location: LCCOMB_X17_Y13_N28
\resultado_ula~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \resultado_ula~11_combout\ = \entrada_b[20]~input_o\ $ (\entrada_a[20]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entrada_b[20]~input_o\,
	datad => \entrada_a[20]~input_o\,
	combout => \resultado_ula~11_combout\);

-- Location: LCCOMB_X23_Y14_N14
\Mux11~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~7_combout\ = (!\ShiftLeft0~5_combout\ & (\ShiftLeft0~48_combout\ & (!\ShiftLeft0~8_combout\ & !\entrada_b[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~5_combout\,
	datab => \ShiftLeft0~48_combout\,
	datac => \ShiftLeft0~8_combout\,
	datad => \entrada_b[3]~input_o\,
	combout => \Mux11~7_combout\);

-- Location: LCCOMB_X22_Y12_N14
\Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~3_combout\ = (\Mux8~6_combout\ & (\ShiftRight0~55_combout\ & (\Mux8~5_combout\))) # (!\Mux8~6_combout\ & (((\Mux11~7_combout\) # (!\Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~55_combout\,
	datab => \Mux8~6_combout\,
	datac => \Mux8~5_combout\,
	datad => \Mux11~7_combout\,
	combout => \Mux11~3_combout\);

-- Location: LCCOMB_X22_Y12_N0
\Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~4_combout\ = (\Mux11~3_combout\ & (((\ShiftRight1~53_combout\) # (!\Mux8~4_combout\)))) # (!\Mux11~3_combout\ & (\entrada_a[31]~input_o\ & ((\Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[31]~input_o\,
	datab => \Mux11~3_combout\,
	datac => \ShiftRight1~53_combout\,
	datad => \Mux8~4_combout\,
	combout => \Mux11~4_combout\);

-- Location: LCCOMB_X17_Y13_N24
\Mux11~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~5_combout\ = (\Mux11~2_combout\ & (((\Mux11~4_combout\) # (!\Mux8~2_combout\)))) # (!\Mux11~2_combout\ & (\resultado_ula~11_combout\ & ((\Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~2_combout\,
	datab => \resultado_ula~11_combout\,
	datac => \Mux11~4_combout\,
	datad => \Mux8~2_combout\,
	combout => \Mux11~5_combout\);

-- Location: LCCOMB_X17_Y13_N10
\Mux11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~6_combout\ = (\Mux17~2_combout\ & ((\Mux17~3_combout\ & (\Add0~66_combout\)) # (!\Mux17~3_combout\ & ((\Mux11~5_combout\))))) # (!\Mux17~2_combout\ & (((\Mux17~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~66_combout\,
	datab => \Mux17~2_combout\,
	datac => \Mux17~3_combout\,
	datad => \Mux11~5_combout\,
	combout => \Mux11~6_combout\);

-- Location: LCCOMB_X17_Y13_N20
Mux11 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux11~combout\ = (\Mux11~6_combout\ & (((\entrada_b[20]~input_o\ & \entrada_a[20]~input_o\)) # (!\Mux17~4_combout\))) # (!\Mux11~6_combout\ & (\Mux17~4_combout\ & ((\entrada_b[20]~input_o\) # (\entrada_a[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux11~6_combout\,
	datab => \Mux17~4_combout\,
	datac => \entrada_b[20]~input_o\,
	datad => \entrada_a[20]~input_o\,
	combout => \Mux11~combout\);

-- Location: LCCOMB_X17_Y12_N22
\resultado_ula~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \resultado_ula~12_combout\ = \entrada_a[21]~input_o\ $ (\entrada_b[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entrada_a[21]~input_o\,
	datad => \entrada_b[21]~input_o\,
	combout => \resultado_ula~12_combout\);

-- Location: LCCOMB_X19_Y15_N0
\ShiftLeft0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~81_combout\ = (\entrada_b[1]~input_o\ & ((\entrada_a[19]~input_o\))) # (!\entrada_b[1]~input_o\ & (\entrada_a[21]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[21]~input_o\,
	datab => \entrada_a[19]~input_o\,
	datac => \entrada_b[1]~input_o\,
	combout => \ShiftLeft0~81_combout\);

-- Location: LCCOMB_X23_Y15_N24
\ShiftLeft0~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~82_combout\ = (\entrada_b[0]~input_o\ & ((\ShiftLeft0~78_combout\))) # (!\entrada_b[0]~input_o\ & (\ShiftLeft0~81_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~81_combout\,
	datac => \ShiftLeft0~78_combout\,
	datad => \entrada_b[0]~input_o\,
	combout => \ShiftLeft0~82_combout\);

-- Location: LCCOMB_X23_Y15_N10
\ShiftLeft0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~83_combout\ = (\entrada_b[2]~input_o\ & ((\ShiftLeft0~70_combout\))) # (!\entrada_b[2]~input_o\ & (\ShiftLeft0~82_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~82_combout\,
	datac => \ShiftLeft0~70_combout\,
	datad => \entrada_b[2]~input_o\,
	combout => \ShiftLeft0~83_combout\);

-- Location: LCCOMB_X17_Y12_N24
\Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~2_combout\ = (\Mux8~2_combout\ & ((\resultado_ula~12_combout\) # ((\Mux8~3_combout\)))) # (!\Mux8~2_combout\ & (((\ShiftLeft0~83_combout\ & !\Mux8~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resultado_ula~12_combout\,
	datab => \ShiftLeft0~83_combout\,
	datac => \Mux8~2_combout\,
	datad => \Mux8~3_combout\,
	combout => \Mux10~2_combout\);

-- Location: LCCOMB_X24_Y14_N4
\Mux10~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~7_combout\ = (\ShiftLeft0~24_combout\ & (!\ShiftLeft0~8_combout\ & (!\entrada_b[3]~input_o\ & !\ShiftLeft0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~24_combout\,
	datab => \ShiftLeft0~8_combout\,
	datac => \entrada_b[3]~input_o\,
	datad => \ShiftLeft0~5_combout\,
	combout => \Mux10~7_combout\);

-- Location: LCCOMB_X22_Y12_N18
\Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~3_combout\ = (\Mux8~6_combout\ & (\ShiftRight0~60_combout\ & (\Mux8~5_combout\))) # (!\Mux8~6_combout\ & (((\Mux10~7_combout\) # (!\Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~60_combout\,
	datab => \Mux8~6_combout\,
	datac => \Mux8~5_combout\,
	datad => \Mux10~7_combout\,
	combout => \Mux10~3_combout\);

-- Location: LCCOMB_X22_Y12_N12
\Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~4_combout\ = (\Mux8~4_combout\ & ((\Mux10~3_combout\ & ((\ShiftRight1~55_combout\))) # (!\Mux10~3_combout\ & (\entrada_a[31]~input_o\)))) # (!\Mux8~4_combout\ & (((\Mux10~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[31]~input_o\,
	datab => \Mux8~4_combout\,
	datac => \Mux10~3_combout\,
	datad => \ShiftRight1~55_combout\,
	combout => \Mux10~4_combout\);

-- Location: LCCOMB_X17_Y12_N26
\Mux10~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~5_combout\ = (\Mux8~3_combout\ & ((\Mux10~2_combout\ & ((\Mux10~4_combout\))) # (!\Mux10~2_combout\ & (\ShiftLeft0~55_combout\)))) # (!\Mux8~3_combout\ & (\Mux10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~3_combout\,
	datab => \Mux10~2_combout\,
	datac => \ShiftLeft0~55_combout\,
	datad => \Mux10~4_combout\,
	combout => \Mux10~5_combout\);

-- Location: LCCOMB_X17_Y7_N4
\Add0~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~68_combout\ = \entrada_b[21]~input_o\ $ (\seletor[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entrada_b[21]~input_o\,
	datad => \seletor[3]~input_o\,
	combout => \Add0~68_combout\);

-- Location: LCCOMB_X17_Y10_N28
\Add0~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~69_combout\ = ((\Add0~68_combout\ $ (\entrada_a[21]~input_o\ $ (!\Add0~67\)))) # (GND)
-- \Add0~70\ = CARRY((\Add0~68_combout\ & ((\entrada_a[21]~input_o\) # (!\Add0~67\))) # (!\Add0~68_combout\ & (\entrada_a[21]~input_o\ & !\Add0~67\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~68_combout\,
	datab => \entrada_a[21]~input_o\,
	datad => VCC,
	cin => \Add0~67\,
	combout => \Add0~69_combout\,
	cout => \Add0~70\);

-- Location: LCCOMB_X17_Y12_N20
\Mux10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~6_combout\ = (\Mux17~2_combout\ & ((\Mux17~3_combout\ & ((\Add0~69_combout\))) # (!\Mux17~3_combout\ & (\Mux10~5_combout\)))) # (!\Mux17~2_combout\ & (\Mux17~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~2_combout\,
	datab => \Mux17~3_combout\,
	datac => \Mux10~5_combout\,
	datad => \Add0~69_combout\,
	combout => \Mux10~6_combout\);

-- Location: LCCOMB_X17_Y12_N30
Mux10 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux10~combout\ = (\Mux17~4_combout\ & ((\Mux10~6_combout\ & (\entrada_a[21]~input_o\ & \entrada_b[21]~input_o\)) # (!\Mux10~6_combout\ & ((\entrada_a[21]~input_o\) # (\entrada_b[21]~input_o\))))) # (!\Mux17~4_combout\ & (\Mux10~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~4_combout\,
	datab => \Mux10~6_combout\,
	datac => \entrada_a[21]~input_o\,
	datad => \entrada_b[21]~input_o\,
	combout => \Mux10~combout\);

-- Location: LCCOMB_X17_Y13_N18
\Add0~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~71_combout\ = \seletor[3]~input_o\ $ (\entrada_b[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seletor[3]~input_o\,
	datad => \entrada_b[22]~input_o\,
	combout => \Add0~71_combout\);

-- Location: LCCOMB_X17_Y10_N30
\Add0~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~72_combout\ = (\entrada_a[22]~input_o\ & ((\Add0~71_combout\ & (\Add0~70\ & VCC)) # (!\Add0~71_combout\ & (!\Add0~70\)))) # (!\entrada_a[22]~input_o\ & ((\Add0~71_combout\ & (!\Add0~70\)) # (!\Add0~71_combout\ & ((\Add0~70\) # (GND)))))
-- \Add0~73\ = CARRY((\entrada_a[22]~input_o\ & (!\Add0~71_combout\ & !\Add0~70\)) # (!\entrada_a[22]~input_o\ & ((!\Add0~70\) # (!\Add0~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[22]~input_o\,
	datab => \Add0~71_combout\,
	datad => VCC,
	cin => \Add0~70\,
	combout => \Add0~72_combout\,
	cout => \Add0~73\);

-- Location: LCCOMB_X17_Y13_N22
\resultado_ula~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \resultado_ula~13_combout\ = \entrada_b[22]~input_o\ $ (\entrada_a[22]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_b[22]~input_o\,
	datac => \entrada_a[22]~input_o\,
	combout => \resultado_ula~13_combout\);

-- Location: LCCOMB_X23_Y14_N16
\Mux9~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~7_combout\ = (!\ShiftLeft0~5_combout\ & (!\entrada_b[3]~input_o\ & (!\ShiftLeft0~8_combout\ & \ShiftLeft0~57_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~5_combout\,
	datab => \entrada_b[3]~input_o\,
	datac => \ShiftLeft0~8_combout\,
	datad => \ShiftLeft0~57_combout\,
	combout => \Mux9~7_combout\);

-- Location: LCCOMB_X22_Y12_N22
\Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~3_combout\ = (\Mux8~6_combout\ & (\ShiftRight0~63_combout\ & (\Mux8~5_combout\))) # (!\Mux8~6_combout\ & (((\Mux9~7_combout\) # (!\Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~63_combout\,
	datab => \Mux8~6_combout\,
	datac => \Mux8~5_combout\,
	datad => \Mux9~7_combout\,
	combout => \Mux9~3_combout\);

-- Location: LCCOMB_X22_Y12_N8
\Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~4_combout\ = (\Mux8~4_combout\ & ((\Mux9~3_combout\ & (\ShiftRight1~57_combout\)) # (!\Mux9~3_combout\ & ((\entrada_a[31]~input_o\))))) # (!\Mux8~4_combout\ & (((\Mux9~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~57_combout\,
	datab => \Mux8~4_combout\,
	datac => \Mux9~3_combout\,
	datad => \entrada_a[31]~input_o\,
	combout => \Mux9~4_combout\);

-- Location: LCCOMB_X19_Y15_N10
\ShiftLeft0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~84_combout\ = (\entrada_b[1]~input_o\ & (\entrada_a[20]~input_o\)) # (!\entrada_b[1]~input_o\ & ((\entrada_a[22]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[1]~input_o\,
	datab => \entrada_a[20]~input_o\,
	datad => \entrada_a[22]~input_o\,
	combout => \ShiftLeft0~84_combout\);

-- Location: LCCOMB_X19_Y15_N4
\ShiftLeft0~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~85_combout\ = (\entrada_b[0]~input_o\ & ((\ShiftLeft0~81_combout\))) # (!\entrada_b[0]~input_o\ & (\ShiftLeft0~84_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~84_combout\,
	datab => \ShiftLeft0~81_combout\,
	datad => \entrada_b[0]~input_o\,
	combout => \ShiftLeft0~85_combout\);

-- Location: LCCOMB_X24_Y15_N6
\ShiftLeft0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~86_combout\ = (\entrada_b[2]~input_o\ & ((\ShiftLeft0~73_combout\))) # (!\entrada_b[2]~input_o\ & (\ShiftLeft0~85_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~85_combout\,
	datab => \ShiftLeft0~73_combout\,
	datad => \entrada_b[2]~input_o\,
	combout => \ShiftLeft0~86_combout\);

-- Location: LCCOMB_X24_Y15_N8
\Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~2_combout\ = (\Mux8~3_combout\ & ((\Mux8~2_combout\) # ((\ShiftLeft0~60_combout\)))) # (!\Mux8~3_combout\ & (!\Mux8~2_combout\ & ((\ShiftLeft0~86_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~3_combout\,
	datab => \Mux8~2_combout\,
	datac => \ShiftLeft0~60_combout\,
	datad => \ShiftLeft0~86_combout\,
	combout => \Mux9~2_combout\);

-- Location: LCCOMB_X17_Y13_N8
\Mux9~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~5_combout\ = (\Mux8~2_combout\ & ((\Mux9~2_combout\ & ((\Mux9~4_combout\))) # (!\Mux9~2_combout\ & (\resultado_ula~13_combout\)))) # (!\Mux8~2_combout\ & (((\Mux9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \resultado_ula~13_combout\,
	datab => \Mux8~2_combout\,
	datac => \Mux9~4_combout\,
	datad => \Mux9~2_combout\,
	combout => \Mux9~5_combout\);

-- Location: LCCOMB_X17_Y13_N12
\Mux9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~6_combout\ = (\Mux17~3_combout\ & ((\Add0~72_combout\) # ((!\Mux17~2_combout\)))) # (!\Mux17~3_combout\ & (((\Mux9~5_combout\ & \Mux17~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~72_combout\,
	datab => \Mux17~3_combout\,
	datac => \Mux9~5_combout\,
	datad => \Mux17~2_combout\,
	combout => \Mux9~6_combout\);

-- Location: LCCOMB_X17_Y13_N30
Mux9 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux9~combout\ = (\Mux9~6_combout\ & (((\entrada_b[22]~input_o\ & \entrada_a[22]~input_o\)) # (!\Mux17~4_combout\))) # (!\Mux9~6_combout\ & (\Mux17~4_combout\ & ((\entrada_b[22]~input_o\) # (\entrada_a[22]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux9~6_combout\,
	datab => \entrada_b[22]~input_o\,
	datac => \entrada_a[22]~input_o\,
	datad => \Mux17~4_combout\,
	combout => \Mux9~combout\);

-- Location: LCCOMB_X18_Y12_N16
\resultado_ula~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \resultado_ula~14_combout\ = \entrada_a[23]~input_o\ $ (\entrada_b[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entrada_a[23]~input_o\,
	datad => \entrada_b[23]~input_o\,
	combout => \resultado_ula~14_combout\);

-- Location: LCCOMB_X19_Y15_N6
\ShiftLeft0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~87_combout\ = (\entrada_b[1]~input_o\ & ((\entrada_a[21]~input_o\))) # (!\entrada_b[1]~input_o\ & (\entrada_a[23]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[23]~input_o\,
	datac => \entrada_b[1]~input_o\,
	datad => \entrada_a[21]~input_o\,
	combout => \ShiftLeft0~87_combout\);

-- Location: LCCOMB_X19_Y15_N8
\ShiftLeft0~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~88_combout\ = (\entrada_b[0]~input_o\ & (\ShiftLeft0~84_combout\)) # (!\entrada_b[0]~input_o\ & ((\ShiftLeft0~87_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~84_combout\,
	datac => \ShiftLeft0~87_combout\,
	datad => \entrada_b[0]~input_o\,
	combout => \ShiftLeft0~88_combout\);

-- Location: LCCOMB_X18_Y12_N18
\ShiftLeft0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~89_combout\ = (\entrada_b[2]~input_o\ & (\ShiftLeft0~76_combout\)) # (!\entrada_b[2]~input_o\ & ((\ShiftLeft0~88_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~76_combout\,
	datac => \ShiftLeft0~88_combout\,
	datad => \entrada_b[2]~input_o\,
	combout => \ShiftLeft0~89_combout\);

-- Location: LCCOMB_X18_Y12_N4
\Mux8~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~7_combout\ = (\Mux8~2_combout\ & ((\resultado_ula~14_combout\) # ((\Mux8~3_combout\)))) # (!\Mux8~2_combout\ & (((!\Mux8~3_combout\ & \ShiftLeft0~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~2_combout\,
	datab => \resultado_ula~14_combout\,
	datac => \Mux8~3_combout\,
	datad => \ShiftLeft0~89_combout\,
	combout => \Mux8~7_combout\);

-- Location: LCCOMB_X18_Y12_N14
\Mux8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~12_combout\ = (!\ShiftLeft0~8_combout\ & (!\entrada_b[3]~input_o\ & (\ShiftLeft0~62_combout\ & !\ShiftLeft0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~8_combout\,
	datab => \entrada_b[3]~input_o\,
	datac => \ShiftLeft0~62_combout\,
	datad => \ShiftLeft0~5_combout\,
	combout => \Mux8~12_combout\);

-- Location: LCCOMB_X22_Y12_N26
\Mux8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~8_combout\ = (\Mux8~5_combout\ & ((\Mux8~6_combout\ & ((\ShiftRight0~68_combout\))) # (!\Mux8~6_combout\ & (\Mux8~12_combout\)))) # (!\Mux8~5_combout\ & (((!\Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101100001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~12_combout\,
	datab => \Mux8~5_combout\,
	datac => \Mux8~6_combout\,
	datad => \ShiftRight0~68_combout\,
	combout => \Mux8~8_combout\);

-- Location: LCCOMB_X22_Y12_N28
\Mux8~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~9_combout\ = (\Mux8~8_combout\ & (((\ShiftRight1~61_combout\)) # (!\Mux8~4_combout\))) # (!\Mux8~8_combout\ & (\Mux8~4_combout\ & ((\entrada_a[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~8_combout\,
	datab => \Mux8~4_combout\,
	datac => \ShiftRight1~61_combout\,
	datad => \entrada_a[31]~input_o\,
	combout => \Mux8~9_combout\);

-- Location: LCCOMB_X18_Y12_N6
\Mux8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~10_combout\ = (\Mux8~7_combout\ & (((\Mux8~9_combout\) # (!\Mux8~3_combout\)))) # (!\Mux8~7_combout\ & (\ShiftLeft0~65_combout\ & (\Mux8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~65_combout\,
	datab => \Mux8~7_combout\,
	datac => \Mux8~3_combout\,
	datad => \Mux8~9_combout\,
	combout => \Mux8~10_combout\);

-- Location: LCCOMB_X23_Y9_N24
\Add0~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~74_combout\ = \seletor[3]~input_o\ $ (\entrada_b[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seletor[3]~input_o\,
	datad => \entrada_b[23]~input_o\,
	combout => \Add0~74_combout\);

-- Location: LCCOMB_X17_Y9_N0
\Add0~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~75_combout\ = ((\Add0~74_combout\ $ (\entrada_a[23]~input_o\ $ (!\Add0~73\)))) # (GND)
-- \Add0~76\ = CARRY((\Add0~74_combout\ & ((\entrada_a[23]~input_o\) # (!\Add0~73\))) # (!\Add0~74_combout\ & (\entrada_a[23]~input_o\ & !\Add0~73\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~74_combout\,
	datab => \entrada_a[23]~input_o\,
	datad => VCC,
	cin => \Add0~73\,
	combout => \Add0~75_combout\,
	cout => \Add0~76\);

-- Location: LCCOMB_X16_Y10_N20
\Mux8~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~11_combout\ = (\Mux17~3_combout\ & (((\Add0~75_combout\)) # (!\Mux17~2_combout\))) # (!\Mux17~3_combout\ & (\Mux17~2_combout\ & (\Mux8~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux17~3_combout\,
	datab => \Mux17~2_combout\,
	datac => \Mux8~10_combout\,
	datad => \Add0~75_combout\,
	combout => \Mux8~11_combout\);

-- Location: LCCOMB_X16_Y10_N6
Mux8 : cycloneive_lcell_comb
-- Equation(s):
-- \Mux8~combout\ = (\Mux8~11_combout\ & (((\entrada_b[23]~input_o\ & \entrada_a[23]~input_o\)) # (!\Mux17~4_combout\))) # (!\Mux8~11_combout\ & (\Mux17~4_combout\ & ((\entrada_b[23]~input_o\) # (\entrada_a[23]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[23]~input_o\,
	datab => \Mux8~11_combout\,
	datac => \entrada_a[23]~input_o\,
	datad => \Mux17~4_combout\,
	combout => \Mux8~combout\);

-- Location: LCCOMB_X23_Y15_N12
\Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~2_combout\ = (\entrada_b[3]~input_o\) # (\entrada_b[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[3]~input_o\,
	datac => \entrada_b[4]~input_o\,
	combout => \Mux7~2_combout\);

-- Location: LCCOMB_X19_Y15_N26
\ShiftLeft0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~90_combout\ = (\entrada_b[1]~input_o\ & ((\entrada_a[22]~input_o\))) # (!\entrada_b[1]~input_o\ & (\entrada_a[24]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[1]~input_o\,
	datab => \entrada_a[24]~input_o\,
	datad => \entrada_a[22]~input_o\,
	combout => \ShiftLeft0~90_combout\);

-- Location: LCCOMB_X19_Y15_N20
\ShiftLeft0~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~91_combout\ = (\entrada_b[0]~input_o\ & (\ShiftLeft0~87_combout\)) # (!\entrada_b[0]~input_o\ & ((\ShiftLeft0~90_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~87_combout\,
	datac => \ShiftLeft0~90_combout\,
	datad => \entrada_b[0]~input_o\,
	combout => \ShiftLeft0~91_combout\);

-- Location: LCCOMB_X23_Y15_N22
\Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~3_combout\ = (\entrada_b[4]~input_o\) # ((!\entrada_b[3]~input_o\ & \entrada_b[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[3]~input_o\,
	datac => \entrada_b[4]~input_o\,
	datad => \entrada_b[2]~input_o\,
	combout => \Mux7~3_combout\);

-- Location: LCCOMB_X23_Y15_N16
\Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~4_combout\ = (\Mux7~2_combout\ & (((\Mux7~3_combout\)))) # (!\Mux7~2_combout\ & ((\Mux7~3_combout\ & ((\ShiftLeft0~79_combout\))) # (!\Mux7~3_combout\ & (\ShiftLeft0~91_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~2_combout\,
	datab => \ShiftLeft0~91_combout\,
	datac => \Mux7~3_combout\,
	datad => \ShiftLeft0~79_combout\,
	combout => \Mux7~4_combout\);

-- Location: LCCOMB_X23_Y15_N26
\Mux7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~5_combout\ = (\Mux7~2_combout\ & ((\Mux7~4_combout\ & (\ShiftLeft0~35_combout\)) # (!\Mux7~4_combout\ & ((\ShiftLeft0~68_combout\))))) # (!\Mux7~2_combout\ & (\Mux7~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~2_combout\,
	datab => \Mux7~4_combout\,
	datac => \ShiftLeft0~35_combout\,
	datad => \ShiftLeft0~68_combout\,
	combout => \Mux7~5_combout\);

-- Location: LCCOMB_X23_Y14_N18
\Mux7~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~9_combout\ = (!\ShiftLeft0~8_combout\ & (\Mux7~5_combout\ & !\ShiftLeft0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~8_combout\,
	datac => \Mux7~5_combout\,
	datad => \ShiftLeft0~5_combout\,
	combout => \Mux7~9_combout\);

-- Location: LCCOMB_X22_Y14_N20
\Mux7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~6_combout\ = (\Mux8~6_combout\ & (\ShiftRight0~70_combout\ & (\Mux8~5_combout\))) # (!\Mux8~6_combout\ & (((\Mux7~9_combout\) # (!\Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~6_combout\,
	datab => \ShiftRight0~70_combout\,
	datac => \Mux8~5_combout\,
	datad => \Mux7~9_combout\,
	combout => \Mux7~6_combout\);

-- Location: LCCOMB_X22_Y14_N14
\Mux7~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~7_combout\ = (\Mux8~4_combout\ & ((\Mux7~6_combout\ & ((\ShiftRight1~62_combout\))) # (!\Mux7~6_combout\ & (\entrada_a[31]~input_o\)))) # (!\Mux8~4_combout\ & (((\Mux7~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[31]~input_o\,
	datab => \Mux8~4_combout\,
	datac => \ShiftRight1~62_combout\,
	datad => \Mux7~6_combout\,
	combout => \Mux7~7_combout\);

-- Location: LCCOMB_X18_Y12_N20
\Mux7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~10_combout\ = (\Mux28~7_combout\ & ((\Mux28~8_combout\ & ((\entrada_b[24]~input_o\))) # (!\Mux28~8_combout\ & (\Mux7~7_combout\)))) # (!\Mux28~7_combout\ & (((\entrada_b[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~7_combout\,
	datab => \Mux28~8_combout\,
	datac => \Mux7~7_combout\,
	datad => \entrada_b[24]~input_o\,
	combout => \Mux7~10_combout\);

-- Location: LCCOMB_X17_Y9_N22
\Mux7~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~11_combout\ = (\Mux7~10_combout\ & ((\Mux28~8_combout\ & ((\entrada_a[24]~input_o\) # (!\Mux28~7_combout\))) # (!\Mux28~8_combout\ & ((\Mux28~7_combout\) # (!\entrada_a[24]~input_o\))))) # (!\Mux7~10_combout\ & (((\entrada_a[24]~input_o\ & 
-- !\Mux28~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~10_combout\,
	datab => \Mux28~8_combout\,
	datac => \entrada_a[24]~input_o\,
	datad => \Mux28~7_combout\,
	combout => \Mux7~11_combout\);

-- Location: LCCOMB_X17_Y7_N14
\Add0~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~77_combout\ = \seletor[3]~input_o\ $ (\entrada_b[24]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[3]~input_o\,
	datac => \entrada_b[24]~input_o\,
	combout => \Add0~77_combout\);

-- Location: LCCOMB_X17_Y9_N2
\Add0~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~78_combout\ = (\Add0~77_combout\ & ((\entrada_a[24]~input_o\ & (\Add0~76\ & VCC)) # (!\entrada_a[24]~input_o\ & (!\Add0~76\)))) # (!\Add0~77_combout\ & ((\entrada_a[24]~input_o\ & (!\Add0~76\)) # (!\entrada_a[24]~input_o\ & ((\Add0~76\) # (GND)))))
-- \Add0~79\ = CARRY((\Add0~77_combout\ & (!\entrada_a[24]~input_o\ & !\Add0~76\)) # (!\Add0~77_combout\ & ((!\Add0~76\) # (!\entrada_a[24]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~77_combout\,
	datab => \entrada_a[24]~input_o\,
	datad => VCC,
	cin => \Add0~76\,
	combout => \Add0~78_combout\,
	cout => \Add0~79\);

-- Location: LCCOMB_X17_Y9_N30
\Mux7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~8_combout\ = (\Add0~13_combout\ & (((\Add0~78_combout\)))) # (!\Add0~13_combout\ & (\Mux7~11_combout\ & ((!\seletor[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~11_combout\,
	datab => \Add0~78_combout\,
	datac => \seletor[3]~input_o\,
	datad => \Add0~13_combout\,
	combout => \Mux7~8_combout\);

-- Location: LCCOMB_X18_Y10_N18
\Add0~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~80_combout\ = \seletor[3]~input_o\ $ (\entrada_b[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[3]~input_o\,
	datad => \entrada_b[25]~input_o\,
	combout => \Add0~80_combout\);

-- Location: LCCOMB_X17_Y9_N4
\Add0~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~81_combout\ = ((\entrada_a[25]~input_o\ $ (\Add0~80_combout\ $ (!\Add0~79\)))) # (GND)
-- \Add0~82\ = CARRY((\entrada_a[25]~input_o\ & ((\Add0~80_combout\) # (!\Add0~79\))) # (!\entrada_a[25]~input_o\ & (\Add0~80_combout\ & !\Add0~79\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[25]~input_o\,
	datab => \Add0~80_combout\,
	datad => VCC,
	cin => \Add0~79\,
	combout => \Add0~81_combout\,
	cout => \Add0~82\);

-- Location: LCCOMB_X19_Y15_N30
\ShiftLeft0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~92_combout\ = (!\entrada_b[0]~input_o\ & ((\entrada_b[1]~input_o\ & ((\entrada_a[23]~input_o\))) # (!\entrada_b[1]~input_o\ & (\entrada_a[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[25]~input_o\,
	datab => \entrada_a[23]~input_o\,
	datac => \entrada_b[1]~input_o\,
	datad => \entrada_b[0]~input_o\,
	combout => \ShiftLeft0~92_combout\);

-- Location: LCCOMB_X19_Y15_N16
\ShiftLeft0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~93_combout\ = (\ShiftLeft0~92_combout\) # ((\ShiftLeft0~90_combout\ & \entrada_b[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~92_combout\,
	datac => \ShiftLeft0~90_combout\,
	datad => \entrada_b[0]~input_o\,
	combout => \ShiftLeft0~93_combout\);

-- Location: LCCOMB_X23_Y15_N4
\Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~2_combout\ = (\Mux7~3_combout\ & (((\Mux7~2_combout\)))) # (!\Mux7~3_combout\ & ((\Mux7~2_combout\ & ((\ShiftLeft0~71_combout\))) # (!\Mux7~2_combout\ & (\ShiftLeft0~93_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~93_combout\,
	datab => \ShiftLeft0~71_combout\,
	datac => \Mux7~3_combout\,
	datad => \Mux7~2_combout\,
	combout => \Mux6~2_combout\);

-- Location: LCCOMB_X23_Y15_N30
\Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~3_combout\ = (\Mux7~3_combout\ & ((\Mux6~2_combout\ & ((\ShiftLeft0~39_combout\))) # (!\Mux6~2_combout\ & (\ShiftLeft0~82_combout\)))) # (!\Mux7~3_combout\ & (((\Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~3_combout\,
	datab => \ShiftLeft0~82_combout\,
	datac => \Mux6~2_combout\,
	datad => \ShiftLeft0~39_combout\,
	combout => \Mux6~3_combout\);

-- Location: LCCOMB_X23_Y14_N28
\Mux6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~7_combout\ = (!\ShiftLeft0~8_combout\ & (\Mux6~3_combout\ & !\ShiftLeft0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~8_combout\,
	datac => \Mux6~3_combout\,
	datad => \ShiftLeft0~5_combout\,
	combout => \Mux6~7_combout\);

-- Location: LCCOMB_X19_Y14_N2
\Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~4_combout\ = (\Mux8~5_combout\ & ((\Mux8~6_combout\ & ((\ShiftRight0~71_combout\))) # (!\Mux8~6_combout\ & (\Mux6~7_combout\)))) # (!\Mux8~5_combout\ & (!\Mux8~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100100110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~5_combout\,
	datab => \Mux8~6_combout\,
	datac => \Mux6~7_combout\,
	datad => \ShiftRight0~71_combout\,
	combout => \Mux6~4_combout\);

-- Location: LCCOMB_X18_Y10_N20
\Mux6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~5_combout\ = (\Mux6~4_combout\ & (((\ShiftRight1~63_combout\)) # (!\Mux8~4_combout\))) # (!\Mux6~4_combout\ & (\Mux8~4_combout\ & ((\entrada_a[31]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux6~4_combout\,
	datab => \Mux8~4_combout\,
	datac => \ShiftRight1~63_combout\,
	datad => \entrada_a[31]~input_o\,
	combout => \Mux6~5_combout\);

-- Location: LCCOMB_X18_Y10_N12
\Mux6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~8_combout\ = (\Mux28~7_combout\ & (((\entrada_b[25]~input_o\ & \entrada_a[25]~input_o\)) # (!\Mux28~8_combout\))) # (!\Mux28~7_combout\ & ((\entrada_b[25]~input_o\ & ((\Mux28~8_combout\) # (!\entrada_a[25]~input_o\))) # (!\entrada_b[25]~input_o\ & 
-- ((\entrada_a[25]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~8_combout\,
	datab => \entrada_b[25]~input_o\,
	datac => \Mux28~7_combout\,
	datad => \entrada_a[25]~input_o\,
	combout => \Mux6~8_combout\);

-- Location: LCCOMB_X18_Y10_N14
\Mux6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~9_combout\ = (\Mux6~8_combout\ & ((\Mux28~8_combout\) # ((\Mux6~5_combout\) # (!\Mux28~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~8_combout\,
	datab => \Mux6~5_combout\,
	datac => \Mux28~7_combout\,
	datad => \Mux6~8_combout\,
	combout => \Mux6~9_combout\);

-- Location: LCCOMB_X18_Y10_N22
\Mux6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~6_combout\ = (\Add0~13_combout\ & (\Add0~81_combout\)) # (!\Add0~13_combout\ & (((\Mux6~9_combout\ & !\seletor[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~81_combout\,
	datab => \Add0~13_combout\,
	datac => \Mux6~9_combout\,
	datad => \seletor[3]~input_o\,
	combout => \Mux6~6_combout\);

-- Location: LCCOMB_X18_Y10_N16
\Add0~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~83_combout\ = \seletor[3]~input_o\ $ (\entrada_b[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[3]~input_o\,
	datad => \entrada_b[26]~input_o\,
	combout => \Add0~83_combout\);

-- Location: LCCOMB_X17_Y9_N6
\Add0~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~84_combout\ = (\entrada_a[26]~input_o\ & ((\Add0~83_combout\ & (\Add0~82\ & VCC)) # (!\Add0~83_combout\ & (!\Add0~82\)))) # (!\entrada_a[26]~input_o\ & ((\Add0~83_combout\ & (!\Add0~82\)) # (!\Add0~83_combout\ & ((\Add0~82\) # (GND)))))
-- \Add0~85\ = CARRY((\entrada_a[26]~input_o\ & (!\Add0~83_combout\ & !\Add0~82\)) # (!\entrada_a[26]~input_o\ & ((!\Add0~82\) # (!\Add0~83_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[26]~input_o\,
	datab => \Add0~83_combout\,
	datad => VCC,
	cin => \Add0~82\,
	combout => \Add0~84_combout\,
	cout => \Add0~85\);

-- Location: LCCOMB_X19_Y15_N18
\ShiftLeft0~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~94_combout\ = (\entrada_b[1]~input_o\ & ((\entrada_b[0]~input_o\ & (\entrada_a[23]~input_o\)) # (!\entrada_b[0]~input_o\ & ((\entrada_a[24]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[23]~input_o\,
	datab => \entrada_a[24]~input_o\,
	datac => \entrada_b[1]~input_o\,
	datad => \entrada_b[0]~input_o\,
	combout => \ShiftLeft0~94_combout\);

-- Location: LCCOMB_X19_Y15_N28
\ShiftLeft0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~95_combout\ = (\entrada_b[0]~input_o\ & (\entrada_a[25]~input_o\)) # (!\entrada_b[0]~input_o\ & ((\entrada_a[26]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[25]~input_o\,
	datac => \entrada_a[26]~input_o\,
	datad => \entrada_b[0]~input_o\,
	combout => \ShiftLeft0~95_combout\);

-- Location: LCCOMB_X19_Y15_N14
\ShiftLeft0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~96_combout\ = (\ShiftLeft0~94_combout\) # ((!\entrada_b[1]~input_o\ & \ShiftLeft0~95_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~94_combout\,
	datac => \entrada_b[1]~input_o\,
	datad => \ShiftLeft0~95_combout\,
	combout => \ShiftLeft0~96_combout\);

-- Location: LCCOMB_X23_Y15_N8
\Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~2_combout\ = (\Mux7~3_combout\ & (((\ShiftLeft0~85_combout\) # (\Mux7~2_combout\)))) # (!\Mux7~3_combout\ & (\ShiftLeft0~96_combout\ & ((!\Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~3_combout\,
	datab => \ShiftLeft0~96_combout\,
	datac => \ShiftLeft0~85_combout\,
	datad => \Mux7~2_combout\,
	combout => \Mux5~2_combout\);

-- Location: LCCOMB_X23_Y15_N18
\Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~3_combout\ = (\Mux7~2_combout\ & ((\Mux5~2_combout\ & ((\ShiftLeft0~43_combout\))) # (!\Mux5~2_combout\ & (\ShiftLeft0~74_combout\)))) # (!\Mux7~2_combout\ & (((\Mux5~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux7~2_combout\,
	datab => \ShiftLeft0~74_combout\,
	datac => \Mux5~2_combout\,
	datad => \ShiftLeft0~43_combout\,
	combout => \Mux5~3_combout\);

-- Location: LCCOMB_X24_Y14_N14
\Mux5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~7_combout\ = (!\ShiftLeft0~8_combout\ & (!\ShiftLeft0~5_combout\ & \Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~8_combout\,
	datac => \ShiftLeft0~5_combout\,
	datad => \Mux5~3_combout\,
	combout => \Mux5~7_combout\);

-- Location: LCCOMB_X19_Y14_N4
\Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~4_combout\ = (\Mux8~5_combout\ & ((\Mux8~6_combout\ & (\ShiftRight0~72_combout\)) # (!\Mux8~6_combout\ & ((\Mux5~7_combout\))))) # (!\Mux8~5_combout\ & (((!\Mux8~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~5_combout\,
	datab => \ShiftRight0~72_combout\,
	datac => \Mux5~7_combout\,
	datad => \Mux8~6_combout\,
	combout => \Mux5~4_combout\);

-- Location: LCCOMB_X19_Y14_N14
\Mux5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~5_combout\ = (\Mux8~4_combout\ & ((\Mux5~4_combout\ & (\ShiftRight1~64_combout\)) # (!\Mux5~4_combout\ & ((\entrada_a[31]~input_o\))))) # (!\Mux8~4_combout\ & (((\Mux5~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux8~4_combout\,
	datab => \ShiftRight1~64_combout\,
	datac => \Mux5~4_combout\,
	datad => \entrada_a[31]~input_o\,
	combout => \Mux5~5_combout\);

-- Location: LCCOMB_X18_Y10_N26
\Mux5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~8_combout\ = (\Mux28~8_combout\ & (((\entrada_b[26]~input_o\)))) # (!\Mux28~8_combout\ & ((\Mux28~7_combout\ & (\Mux5~5_combout\)) # (!\Mux28~7_combout\ & ((\entrada_b[26]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~8_combout\,
	datab => \Mux5~5_combout\,
	datac => \Mux28~7_combout\,
	datad => \entrada_b[26]~input_o\,
	combout => \Mux5~8_combout\);

-- Location: LCCOMB_X17_Y9_N28
\Mux5~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~9_combout\ = (\Mux5~8_combout\ & ((\Mux28~8_combout\ & ((\entrada_a[26]~input_o\) # (!\Mux28~7_combout\))) # (!\Mux28~8_combout\ & ((\Mux28~7_combout\) # (!\entrada_a[26]~input_o\))))) # (!\Mux5~8_combout\ & (((\entrada_a[26]~input_o\ & 
-- !\Mux28~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux5~8_combout\,
	datab => \Mux28~8_combout\,
	datac => \entrada_a[26]~input_o\,
	datad => \Mux28~7_combout\,
	combout => \Mux5~9_combout\);

-- Location: LCCOMB_X17_Y9_N24
\Mux5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~6_combout\ = (\Add0~13_combout\ & (\Add0~84_combout\)) # (!\Add0~13_combout\ & (((\Mux5~9_combout\ & !\seletor[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~84_combout\,
	datab => \Mux5~9_combout\,
	datac => \seletor[3]~input_o\,
	datad => \Add0~13_combout\,
	combout => \Mux5~6_combout\);

-- Location: LCCOMB_X18_Y10_N10
\Add0~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~86_combout\ = \seletor[3]~input_o\ $ (\entrada_b[27]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[3]~input_o\,
	datac => \entrada_b[27]~input_o\,
	combout => \Add0~86_combout\);

-- Location: LCCOMB_X17_Y9_N8
\Add0~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~87_combout\ = ((\entrada_a[27]~input_o\ $ (\Add0~86_combout\ $ (!\Add0~85\)))) # (GND)
-- \Add0~88\ = CARRY((\entrada_a[27]~input_o\ & ((\Add0~86_combout\) # (!\Add0~85\))) # (!\entrada_a[27]~input_o\ & (\Add0~86_combout\ & !\Add0~85\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[27]~input_o\,
	datab => \Add0~86_combout\,
	datad => VCC,
	cin => \Add0~85\,
	combout => \Add0~87_combout\,
	cout => \Add0~88\);

-- Location: LCCOMB_X19_Y13_N24
\ShiftLeft0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~98_combout\ = (\entrada_b[0]~input_o\ & (\entrada_a[26]~input_o\)) # (!\entrada_b[0]~input_o\ & ((\entrada_a[27]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[26]~input_o\,
	datab => \entrada_a[27]~input_o\,
	datad => \entrada_b[0]~input_o\,
	combout => \ShiftLeft0~98_combout\);

-- Location: LCCOMB_X17_Y9_N18
\ShiftLeft0~97\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~97_combout\ = (\entrada_b[1]~input_o\ & ((\entrada_b[0]~input_o\ & ((\entrada_a[24]~input_o\))) # (!\entrada_b[0]~input_o\ & (\entrada_a[25]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[25]~input_o\,
	datab => \entrada_a[24]~input_o\,
	datac => \entrada_b[1]~input_o\,
	datad => \entrada_b[0]~input_o\,
	combout => \ShiftLeft0~97_combout\);

-- Location: LCCOMB_X19_Y13_N26
\ShiftLeft0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~99_combout\ = (\ShiftLeft0~97_combout\) # ((\ShiftLeft0~98_combout\ & !\entrada_b[1]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~98_combout\,
	datac => \ShiftLeft0~97_combout\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftLeft0~99_combout\);

-- Location: LCCOMB_X23_Y15_N20
\Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~2_combout\ = (\Mux7~3_combout\ & (((\Mux7~2_combout\)))) # (!\Mux7~3_combout\ & ((\Mux7~2_combout\ & (\ShiftLeft0~77_combout\)) # (!\Mux7~2_combout\ & ((\ShiftLeft0~99_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~77_combout\,
	datab => \ShiftLeft0~99_combout\,
	datac => \Mux7~3_combout\,
	datad => \Mux7~2_combout\,
	combout => \Mux4~2_combout\);

-- Location: LCCOMB_X23_Y15_N14
\Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~3_combout\ = (\Mux4~2_combout\ & ((\ShiftLeft0~47_combout\) # ((!\Mux7~3_combout\)))) # (!\Mux4~2_combout\ & (((\Mux7~3_combout\ & \ShiftLeft0~88_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~47_combout\,
	datab => \Mux4~2_combout\,
	datac => \Mux7~3_combout\,
	datad => \ShiftLeft0~88_combout\,
	combout => \Mux4~3_combout\);

-- Location: LCCOMB_X23_Y14_N22
\Mux4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~7_combout\ = (!\ShiftLeft0~5_combout\ & (!\ShiftLeft0~8_combout\ & \Mux4~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~5_combout\,
	datac => \ShiftLeft0~8_combout\,
	datad => \Mux4~3_combout\,
	combout => \Mux4~7_combout\);

-- Location: LCCOMB_X22_Y14_N24
\Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~4_combout\ = (\Mux8~6_combout\ & (\ShiftRight0~73_combout\ & (\Mux8~5_combout\))) # (!\Mux8~6_combout\ & (((\Mux4~7_combout\) # (!\Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~73_combout\,
	datab => \Mux8~6_combout\,
	datac => \Mux8~5_combout\,
	datad => \Mux4~7_combout\,
	combout => \Mux4~4_combout\);

-- Location: LCCOMB_X18_Y10_N28
\Mux4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~5_combout\ = (\Mux4~4_combout\ & (((\ShiftRight1~65_combout\) # (!\Mux8~4_combout\)))) # (!\Mux4~4_combout\ & (\entrada_a[31]~input_o\ & ((\Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[31]~input_o\,
	datab => \Mux4~4_combout\,
	datac => \ShiftRight1~65_combout\,
	datad => \Mux8~4_combout\,
	combout => \Mux4~5_combout\);

-- Location: LCCOMB_X18_Y10_N6
\Mux4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~8_combout\ = (\Mux28~7_combout\ & (((\entrada_b[27]~input_o\ & \entrada_a[27]~input_o\)) # (!\Mux28~8_combout\))) # (!\Mux28~7_combout\ & ((\entrada_b[27]~input_o\ & ((\Mux28~8_combout\) # (!\entrada_a[27]~input_o\))) # (!\entrada_b[27]~input_o\ & 
-- ((\entrada_a[27]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101101011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~8_combout\,
	datab => \entrada_b[27]~input_o\,
	datac => \Mux28~7_combout\,
	datad => \entrada_a[27]~input_o\,
	combout => \Mux4~8_combout\);

-- Location: LCCOMB_X18_Y10_N0
\Mux4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~9_combout\ = (\Mux4~8_combout\ & ((\Mux28~8_combout\) # ((\Mux4~5_combout\) # (!\Mux28~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~8_combout\,
	datab => \Mux4~5_combout\,
	datac => \Mux28~7_combout\,
	datad => \Mux4~8_combout\,
	combout => \Mux4~9_combout\);

-- Location: LCCOMB_X18_Y10_N30
\Mux4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~6_combout\ = (\Add0~13_combout\ & (\Add0~87_combout\)) # (!\Add0~13_combout\ & (((\Mux4~9_combout\ & !\seletor[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~87_combout\,
	datab => \Mux4~9_combout\,
	datac => \Add0~13_combout\,
	datad => \seletor[3]~input_o\,
	combout => \Mux4~6_combout\);

-- Location: LCCOMB_X18_Y14_N4
\Mux3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~6_combout\ = (\seletor[2]~input_o\ & (!\ShiftLeft0~9_combout\ & (!\seletor[0]~input_o\ & \entrada_b[4]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[2]~input_o\,
	datab => \ShiftLeft0~9_combout\,
	datac => \seletor[0]~input_o\,
	datad => \entrada_b[4]~input_o\,
	combout => \Mux3~6_combout\);

-- Location: LCCOMB_X19_Y13_N28
\ShiftLeft0~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~100_combout\ = (\entrada_b[0]~input_o\ & (\entrada_a[27]~input_o\)) # (!\entrada_b[0]~input_o\ & ((\entrada_a[28]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_a[27]~input_o\,
	datac => \entrada_a[28]~input_o\,
	datad => \entrada_b[0]~input_o\,
	combout => \ShiftLeft0~100_combout\);

-- Location: LCCOMB_X22_Y15_N8
\Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~2_combout\ = (\Mux28~3_combout\ & (((!\ShiftRight1~38_combout\)))) # (!\Mux28~3_combout\ & ((\ShiftRight1~38_combout\ & (\ShiftLeft0~100_combout\)) # (!\ShiftRight1~38_combout\ & ((\ShiftLeft0~91_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~3_combout\,
	datab => \ShiftLeft0~100_combout\,
	datac => \ShiftRight1~38_combout\,
	datad => \ShiftLeft0~91_combout\,
	combout => \Mux3~2_combout\);

-- Location: LCCOMB_X22_Y15_N26
\Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~3_combout\ = (\Mux28~3_combout\ & ((\Mux3~2_combout\ & ((\ShiftLeft0~80_combout\))) # (!\Mux3~2_combout\ & (\ShiftLeft0~95_combout\)))) # (!\Mux28~3_combout\ & (((\Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~3_combout\,
	datab => \ShiftLeft0~95_combout\,
	datac => \Mux3~2_combout\,
	datad => \ShiftLeft0~80_combout\,
	combout => \Mux3~3_combout\);

-- Location: LCCOMB_X23_Y14_N24
\Mux3~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~9_combout\ = (!\ShiftLeft0~8_combout\ & (\Mux3~3_combout\ & !\ShiftLeft0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~8_combout\,
	datac => \Mux3~3_combout\,
	datad => \ShiftLeft0~5_combout\,
	combout => \Mux3~9_combout\);

-- Location: LCCOMB_X22_Y14_N2
\Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~4_combout\ = (\Mux8~6_combout\ & (\ShiftRight0~74_combout\ & (\Mux8~5_combout\))) # (!\Mux8~6_combout\ & (((\Mux3~9_combout\) # (!\Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~74_combout\,
	datab => \Mux8~6_combout\,
	datac => \Mux8~5_combout\,
	datad => \Mux3~9_combout\,
	combout => \Mux3~4_combout\);

-- Location: LCCOMB_X22_Y14_N4
\Mux3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~5_combout\ = (\Mux8~4_combout\ & ((\Mux3~4_combout\ & (\ShiftRight1~66_combout\)) # (!\Mux3~4_combout\ & ((\entrada_a[31]~input_o\))))) # (!\Mux8~4_combout\ & (((\Mux3~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight1~66_combout\,
	datab => \Mux8~4_combout\,
	datac => \entrada_a[31]~input_o\,
	datad => \Mux3~4_combout\,
	combout => \Mux3~5_combout\);

-- Location: LCCOMB_X18_Y10_N2
\Mux3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~10_combout\ = (\Mux28~8_combout\ & (\entrada_b[28]~input_o\)) # (!\Mux28~8_combout\ & ((\Mux28~7_combout\ & ((\Mux3~5_combout\))) # (!\Mux28~7_combout\ & (\entrada_b[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~8_combout\,
	datab => \entrada_b[28]~input_o\,
	datac => \Mux28~7_combout\,
	datad => \Mux3~5_combout\,
	combout => \Mux3~10_combout\);

-- Location: LCCOMB_X18_Y10_N4
\Mux3~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~11_combout\ = (\Mux3~10_combout\ & ((\Mux28~8_combout\ & ((\entrada_a[28]~input_o\) # (!\Mux28~7_combout\))) # (!\Mux28~8_combout\ & ((\Mux28~7_combout\) # (!\entrada_a[28]~input_o\))))) # (!\Mux3~10_combout\ & (((!\Mux28~7_combout\ & 
-- \entrada_a[28]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~8_combout\,
	datab => \Mux3~10_combout\,
	datac => \Mux28~7_combout\,
	datad => \entrada_a[28]~input_o\,
	combout => \Mux3~11_combout\);

-- Location: LCCOMB_X18_Y14_N30
\Mux3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~7_combout\ = (\Mux3~6_combout\ & (\ShiftLeft0~52_combout\)) # (!\Mux3~6_combout\ & ((\Mux3~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ShiftLeft0~52_combout\,
	datac => \Mux3~6_combout\,
	datad => \Mux3~11_combout\,
	combout => \Mux3~7_combout\);

-- Location: LCCOMB_X18_Y10_N8
\Add0~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~89_combout\ = \seletor[3]~input_o\ $ (\entrada_b[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[3]~input_o\,
	datad => \entrada_b[28]~input_o\,
	combout => \Add0~89_combout\);

-- Location: LCCOMB_X17_Y9_N10
\Add0~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~90_combout\ = (\entrada_a[28]~input_o\ & ((\Add0~89_combout\ & (\Add0~88\ & VCC)) # (!\Add0~89_combout\ & (!\Add0~88\)))) # (!\entrada_a[28]~input_o\ & ((\Add0~89_combout\ & (!\Add0~88\)) # (!\Add0~89_combout\ & ((\Add0~88\) # (GND)))))
-- \Add0~91\ = CARRY((\entrada_a[28]~input_o\ & (!\Add0~89_combout\ & !\Add0~88\)) # (!\entrada_a[28]~input_o\ & ((!\Add0~88\) # (!\Add0~89_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[28]~input_o\,
	datab => \Add0~89_combout\,
	datad => VCC,
	cin => \Add0~88\,
	combout => \Add0~90_combout\,
	cout => \Add0~91\);

-- Location: LCCOMB_X18_Y14_N0
\Mux3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~8_combout\ = (\Add0~13_combout\ & (((\Add0~90_combout\)))) # (!\Add0~13_combout\ & (\Mux3~7_combout\ & ((!\seletor[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux3~7_combout\,
	datab => \Add0~90_combout\,
	datac => \Add0~13_combout\,
	datad => \seletor[3]~input_o\,
	combout => \Mux3~8_combout\);

-- Location: LCCOMB_X17_Y8_N26
\Add0~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~92_combout\ = \seletor[3]~input_o\ $ (\entrada_b[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \seletor[3]~input_o\,
	datad => \entrada_b[29]~input_o\,
	combout => \Add0~92_combout\);

-- Location: LCCOMB_X17_Y9_N12
\Add0~93\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~93_combout\ = ((\Add0~92_combout\ $ (\entrada_a[29]~input_o\ $ (!\Add0~91\)))) # (GND)
-- \Add0~94\ = CARRY((\Add0~92_combout\ & ((\entrada_a[29]~input_o\) # (!\Add0~91\))) # (!\Add0~92_combout\ & (\entrada_a[29]~input_o\ & !\Add0~91\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~92_combout\,
	datab => \entrada_a[29]~input_o\,
	datad => VCC,
	cin => \Add0~91\,
	combout => \Add0~93_combout\,
	cout => \Add0~94\);

-- Location: LCCOMB_X18_Y12_N10
\Mux2~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~9_combout\ = (\Mux28~7_combout\ & (((\entrada_a[29]~input_o\ & \entrada_b[29]~input_o\)) # (!\Mux28~8_combout\))) # (!\Mux28~7_combout\ & ((\entrada_a[29]~input_o\ & ((\Mux28~8_combout\) # (!\entrada_b[29]~input_o\))) # (!\entrada_a[29]~input_o\ & 
-- ((\entrada_b[29]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[29]~input_o\,
	datab => \Mux28~8_combout\,
	datac => \entrada_b[29]~input_o\,
	datad => \Mux28~7_combout\,
	combout => \Mux2~9_combout\);

-- Location: LCCOMB_X19_Y13_N6
\ShiftLeft0~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~101_combout\ = (\entrada_b[0]~input_o\ & ((\entrada_a[28]~input_o\))) # (!\entrada_b[0]~input_o\ & (\entrada_a[29]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_a[29]~input_o\,
	datac => \entrada_a[28]~input_o\,
	datad => \entrada_b[0]~input_o\,
	combout => \ShiftLeft0~101_combout\);

-- Location: LCCOMB_X22_Y15_N20
\Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~2_combout\ = (\ShiftRight1~38_combout\ & (\ShiftLeft0~101_combout\ & ((!\Mux28~3_combout\)))) # (!\ShiftRight1~38_combout\ & (((\ShiftLeft0~93_combout\) # (\Mux28~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~101_combout\,
	datab => \ShiftLeft0~93_combout\,
	datac => \ShiftRight1~38_combout\,
	datad => \Mux28~3_combout\,
	combout => \Mux2~2_combout\);

-- Location: LCCOMB_X22_Y15_N22
\Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~3_combout\ = (\Mux28~3_combout\ & ((\Mux2~2_combout\ & ((\ShiftLeft0~83_combout\))) # (!\Mux2~2_combout\ & (\ShiftLeft0~98_combout\)))) # (!\Mux28~3_combout\ & (\Mux2~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux28~3_combout\,
	datab => \Mux2~2_combout\,
	datac => \ShiftLeft0~98_combout\,
	datad => \ShiftLeft0~83_combout\,
	combout => \Mux2~3_combout\);

-- Location: LCCOMB_X23_Y14_N10
\Mux2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~6_combout\ = (!\ShiftLeft0~5_combout\ & (!\ShiftLeft0~8_combout\ & \Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~5_combout\,
	datac => \ShiftLeft0~8_combout\,
	datad => \Mux2~3_combout\,
	combout => \Mux2~6_combout\);

-- Location: LCCOMB_X22_Y14_N22
\Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~4_combout\ = (\Mux8~6_combout\ & (((\Mux8~5_combout\ & \ShiftRight0~75_combout\)))) # (!\Mux8~6_combout\ & ((\Mux2~6_combout\) # ((!\Mux8~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~6_combout\,
	datab => \Mux8~6_combout\,
	datac => \Mux8~5_combout\,
	datad => \ShiftRight0~75_combout\,
	combout => \Mux2~4_combout\);

-- Location: LCCOMB_X22_Y14_N0
\Mux2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~5_combout\ = (\Mux2~4_combout\ & ((\ShiftRight1~58_combout\) # ((!\Mux8~4_combout\)))) # (!\Mux2~4_combout\ & (((\entrada_a[31]~input_o\ & \Mux8~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~4_combout\,
	datab => \ShiftRight1~58_combout\,
	datac => \entrada_a[31]~input_o\,
	datad => \Mux8~4_combout\,
	combout => \Mux2~5_combout\);

-- Location: LCCOMB_X18_Y14_N26
\Mux2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~10_combout\ = (\Mux2~9_combout\ & ((\Mux28~8_combout\) # ((\Mux2~5_combout\) # (!\Mux28~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~9_combout\,
	datab => \Mux28~8_combout\,
	datac => \Mux2~5_combout\,
	datad => \Mux28~7_combout\,
	combout => \Mux2~10_combout\);

-- Location: LCCOMB_X18_Y14_N22
\Mux2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~7_combout\ = (!\seletor[3]~input_o\ & ((\Mux3~6_combout\ & ((\ShiftLeft0~56_combout\))) # (!\Mux3~6_combout\ & (\Mux2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~10_combout\,
	datab => \Mux3~6_combout\,
	datac => \seletor[3]~input_o\,
	datad => \ShiftLeft0~56_combout\,
	combout => \Mux2~7_combout\);

-- Location: LCCOMB_X18_Y14_N24
\Mux2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~8_combout\ = (\Add0~13_combout\ & (\Add0~93_combout\)) # (!\Add0~13_combout\ & ((\Mux2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~93_combout\,
	datab => \Add0~13_combout\,
	datac => \Mux2~7_combout\,
	combout => \Mux2~8_combout\);

-- Location: LCCOMB_X19_Y13_N0
\ShiftLeft0~103\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~103_combout\ = (!\entrada_b[1]~input_o\ & ((\entrada_b[0]~input_o\ & ((\entrada_a[29]~input_o\))) # (!\entrada_b[0]~input_o\ & (\entrada_a[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[0]~input_o\,
	datab => \entrada_a[30]~input_o\,
	datac => \entrada_a[29]~input_o\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftLeft0~103_combout\);

-- Location: LCCOMB_X19_Y13_N2
\ShiftLeft0~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~104_combout\ = (!\entrada_b[2]~input_o\ & ((\ShiftLeft0~103_combout\) # ((\ShiftLeft0~100_combout\ & \entrada_b[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~100_combout\,
	datab => \ShiftLeft0~103_combout\,
	datac => \entrada_b[2]~input_o\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftLeft0~104_combout\);

-- Location: LCCOMB_X24_Y15_N12
\ShiftLeft0~105\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~105_combout\ = (!\entrada_b[3]~input_o\ & ((\ShiftLeft0~104_combout\) # ((\ShiftLeft0~96_combout\ & \entrada_b[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[3]~input_o\,
	datab => \ShiftLeft0~104_combout\,
	datac => \ShiftLeft0~96_combout\,
	datad => \entrada_b[2]~input_o\,
	combout => \ShiftLeft0~105_combout\);

-- Location: LCCOMB_X24_Y15_N26
\ShiftLeft0~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~102_combout\ = (\entrada_b[3]~input_o\ & ((\entrada_b[2]~input_o\ & (\ShiftLeft0~73_combout\)) # (!\entrada_b[2]~input_o\ & ((\ShiftLeft0~85_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[3]~input_o\,
	datab => \ShiftLeft0~73_combout\,
	datac => \ShiftLeft0~85_combout\,
	datad => \entrada_b[2]~input_o\,
	combout => \ShiftLeft0~102_combout\);

-- Location: LCCOMB_X24_Y15_N30
\ShiftLeft0~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~106_combout\ = (\entrada_b[4]~input_o\ & (((\ShiftLeft0~61_combout\)))) # (!\entrada_b[4]~input_o\ & ((\ShiftLeft0~105_combout\) # ((\ShiftLeft0~102_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~105_combout\,
	datab => \ShiftLeft0~61_combout\,
	datac => \ShiftLeft0~102_combout\,
	datad => \entrada_b[4]~input_o\,
	combout => \ShiftLeft0~106_combout\);

-- Location: LCCOMB_X24_Y14_N30
\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\Mux1~0_combout\ & ((\ShiftRight1~60_combout\ & ((\entrada_a[30]~input_o\))) # (!\ShiftRight1~60_combout\ & (\entrada_a[31]~input_o\)))) # (!\Mux1~0_combout\ & (\entrada_a[31]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~0_combout\,
	datab => \entrada_a[31]~input_o\,
	datac => \entrada_a[30]~input_o\,
	datad => \ShiftRight1~60_combout\,
	combout => \Mux1~1_combout\);

-- Location: LCCOMB_X24_Y14_N0
\Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~2_combout\ = (\seletor[1]~input_o\ & (((\Mux1~1_combout\)))) # (!\seletor[1]~input_o\ & (\ShiftRight0~77_combout\ & ((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftRight0~77_combout\,
	datab => \seletor[1]~input_o\,
	datac => \Mux1~1_combout\,
	datad => \Mux1~0_combout\,
	combout => \Mux1~2_combout\);

-- Location: LCCOMB_X24_Y14_N18
\Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~3_combout\ = (\seletor[0]~input_o\ & (((\Mux1~2_combout\)))) # (!\seletor[0]~input_o\ & (\ShiftLeft0~106_combout\ & ((!\ShiftLeft0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~106_combout\,
	datab => \Mux1~2_combout\,
	datac => \ShiftLeft0~9_combout\,
	datad => \seletor[0]~input_o\,
	combout => \Mux1~3_combout\);

-- Location: LCCOMB_X17_Y8_N4
\Add0~95\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~95_combout\ = \entrada_b[30]~input_o\ $ (\seletor[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_b[30]~input_o\,
	datac => \seletor[3]~input_o\,
	combout => \Add0~95_combout\);

-- Location: LCCOMB_X17_Y9_N14
\Add0~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~96_combout\ = (\Add0~95_combout\ & ((\entrada_a[30]~input_o\ & (\Add0~94\ & VCC)) # (!\entrada_a[30]~input_o\ & (!\Add0~94\)))) # (!\Add0~95_combout\ & ((\entrada_a[30]~input_o\ & (!\Add0~94\)) # (!\entrada_a[30]~input_o\ & ((\Add0~94\) # (GND)))))
-- \Add0~97\ = CARRY((\Add0~95_combout\ & (!\entrada_a[30]~input_o\ & !\Add0~94\)) # (!\Add0~95_combout\ & ((!\Add0~94\) # (!\entrada_a[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~95_combout\,
	datab => \entrada_a[30]~input_o\,
	datad => VCC,
	cin => \Add0~94\,
	combout => \Add0~96_combout\,
	cout => \Add0~97\);

-- Location: LCCOMB_X17_Y8_N6
\Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~4_combout\ = (\seletor[1]~input_o\ & ((\entrada_b[30]~input_o\ & (\seletor[0]~input_o\ & !\entrada_a[30]~input_o\)) # (!\entrada_b[30]~input_o\ & ((\seletor[0]~input_o\) # (!\entrada_a[30]~input_o\))))) # (!\seletor[1]~input_o\ & 
-- (\seletor[0]~input_o\ & (\entrada_b[30]~input_o\ $ (!\entrada_a[30]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => \entrada_b[30]~input_o\,
	datac => \seletor[0]~input_o\,
	datad => \entrada_a[30]~input_o\,
	combout => \Mux1~4_combout\);

-- Location: LCCOMB_X17_Y8_N16
\Mux1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~5_combout\ = (\entrada_b[30]~input_o\ & (\seletor[1]~input_o\ $ (((\seletor[0]~input_o\ & !\entrada_a[30]~input_o\))))) # (!\entrada_b[30]~input_o\ & (\entrada_a[30]~input_o\ & (\seletor[1]~input_o\ $ (\seletor[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[1]~input_o\,
	datab => \entrada_b[30]~input_o\,
	datac => \seletor[0]~input_o\,
	datad => \entrada_a[30]~input_o\,
	combout => \Mux1~5_combout\);

-- Location: LCCOMB_X17_Y8_N18
\Mux1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~6_combout\ = (\Mux1~4_combout\ & (\Add0~96_combout\ & (\seletor[3]~input_o\ $ (\Mux1~5_combout\)))) # (!\Mux1~4_combout\ & ((\seletor[3]~input_o\ & (\Add0~96_combout\ & \Mux1~5_combout\)) # (!\seletor[3]~input_o\ & ((\Add0~96_combout\) # 
-- (\Mux1~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~4_combout\,
	datab => \seletor[3]~input_o\,
	datac => \Add0~96_combout\,
	datad => \Mux1~5_combout\,
	combout => \Mux1~6_combout\);

-- Location: LCCOMB_X17_Y8_N20
\Mux1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~7_combout\ = (\seletor[2]~input_o\ & (\seletor[3]~input_o\)) # (!\seletor[2]~input_o\ & ((\Mux1~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seletor[3]~input_o\,
	datac => \seletor[2]~input_o\,
	datad => \Mux1~6_combout\,
	combout => \Mux1~7_combout\);

-- Location: LCCOMB_X17_Y8_N14
\Mux1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~8_combout\ = (\seletor[2]~input_o\ & ((\Mux1~7_combout\ & ((\Add0~96_combout\))) # (!\Mux1~7_combout\ & (\Mux1~3_combout\)))) # (!\seletor[2]~input_o\ & (((\Mux1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux1~3_combout\,
	datab => \Add0~96_combout\,
	datac => \seletor[2]~input_o\,
	datad => \Mux1~7_combout\,
	combout => \Mux1~8_combout\);

-- Location: LCCOMB_X18_Y9_N10
\Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~3_combout\ = (\seletor[0]~input_o\ & (!\seletor[2]~input_o\ & (\entrada_a[31]~input_o\ $ (\entrada_b[31]~input_o\)))) # (!\seletor[0]~input_o\ & (((\seletor[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[31]~input_o\,
	datab => \entrada_b[31]~input_o\,
	datac => \seletor[0]~input_o\,
	datad => \seletor[2]~input_o\,
	combout => \Mux0~3_combout\);

-- Location: LCCOMB_X18_Y9_N6
\Add0~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~100_combout\ = \entrada_b[31]~input_o\ $ (\seletor[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entrada_b[31]~input_o\,
	datad => \seletor[3]~input_o\,
	combout => \Add0~100_combout\);

-- Location: LCCOMB_X18_Y9_N28
\Add0~99\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~99_combout\ = (\entrada_a[31]~input_o\ & (\seletor[3]~input_o\ $ (\Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \seletor[3]~input_o\,
	datac => \entrada_a[31]~input_o\,
	datad => \Add0~2_combout\,
	combout => \Add0~99_combout\);

-- Location: LCCOMB_X17_Y9_N16
\Add0~101\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~101_combout\ = \Add0~100_combout\ $ (\Add0~97\ $ (!\Add0~99_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~100_combout\,
	datad => \Add0~99_combout\,
	cin => \Add0~97\,
	combout => \Add0~101_combout\);

-- Location: LCCOMB_X24_Y13_N2
\Add0~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~98_combout\ = (\seletor[2]~input_o\ & (!\ShiftLeft0~9_combout\ & (\entrada_a[31]~input_o\ & \Add0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \seletor[2]~input_o\,
	datab => \ShiftLeft0~9_combout\,
	datac => \entrada_a[31]~input_o\,
	datad => \Add0~0_combout\,
	combout => \Add0~98_combout\);

-- Location: LCCOMB_X18_Y9_N24
\Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~4_combout\ = (\seletor[0]~input_o\ & ((\Add0~98_combout\))) # (!\seletor[0]~input_o\ & (\Add0~101_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~101_combout\,
	datab => \Add0~98_combout\,
	datac => \seletor[0]~input_o\,
	combout => \Mux0~4_combout\);

-- Location: LCCOMB_X19_Y13_N12
\ShiftLeft0~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~108_combout\ = (!\entrada_b[1]~input_o\ & ((\entrada_b[0]~input_o\ & (\entrada_a[30]~input_o\)) # (!\entrada_b[0]~input_o\ & ((\entrada_a[31]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_b[0]~input_o\,
	datab => \entrada_a[30]~input_o\,
	datac => \entrada_a[31]~input_o\,
	datad => \entrada_b[1]~input_o\,
	combout => \ShiftLeft0~108_combout\);

-- Location: LCCOMB_X19_Y13_N14
\ShiftLeft0~109\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~109_combout\ = (!\entrada_b[2]~input_o\ & ((\ShiftLeft0~108_combout\) # ((\entrada_b[1]~input_o\ & \ShiftLeft0~101_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~108_combout\,
	datab => \entrada_b[1]~input_o\,
	datac => \entrada_b[2]~input_o\,
	datad => \ShiftLeft0~101_combout\,
	combout => \ShiftLeft0~109_combout\);

-- Location: LCCOMB_X18_Y12_N2
\ShiftLeft0~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~110_combout\ = (!\entrada_b[4]~input_o\ & ((\ShiftLeft0~109_combout\) # ((\ShiftLeft0~99_combout\ & \entrada_b[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~99_combout\,
	datab => \ShiftLeft0~109_combout\,
	datac => \entrada_b[4]~input_o\,
	datad => \entrada_b[2]~input_o\,
	combout => \ShiftLeft0~110_combout\);

-- Location: LCCOMB_X18_Y12_N28
\ShiftLeft0~111\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~111_combout\ = (!\entrada_b[3]~input_o\ & ((\ShiftLeft0~110_combout\) # ((\ShiftLeft0~65_combout\ & \entrada_b[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~65_combout\,
	datab => \entrada_b[3]~input_o\,
	datac => \entrada_b[4]~input_o\,
	datad => \ShiftLeft0~110_combout\,
	combout => \ShiftLeft0~111_combout\);

-- Location: LCCOMB_X18_Y12_N0
\ShiftLeft0~107\ : cycloneive_lcell_comb
-- Equation(s):
-- \ShiftLeft0~107_combout\ = (\entrada_b[3]~input_o\ & ((\entrada_b[4]~input_o\ & (\ShiftLeft0~62_combout\)) # (!\entrada_b[4]~input_o\ & ((\ShiftLeft0~89_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~62_combout\,
	datab => \ShiftLeft0~89_combout\,
	datac => \entrada_b[4]~input_o\,
	datad => \entrada_b[3]~input_o\,
	combout => \ShiftLeft0~107_combout\);

-- Location: LCCOMB_X18_Y12_N8
\Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~8_combout\ = (!\ShiftLeft0~8_combout\ & (!\ShiftLeft0~5_combout\ & ((\ShiftLeft0~111_combout\) # (\ShiftLeft0~107_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ShiftLeft0~8_combout\,
	datab => \ShiftLeft0~111_combout\,
	datac => \ShiftLeft0~5_combout\,
	datad => \ShiftLeft0~107_combout\,
	combout => \Mux0~8_combout\);

-- Location: LCCOMB_X18_Y9_N26
\Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~5_combout\ = (\Mux0~3_combout\ & ((\Mux0~8_combout\))) # (!\Mux0~3_combout\ & (\Mux0~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~3_combout\,
	datab => \Mux0~4_combout\,
	datad => \Mux0~8_combout\,
	combout => \Mux0~5_combout\);

-- Location: LCCOMB_X18_Y9_N0
\Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~2_combout\ = (\entrada_a[31]~input_o\ & (((\seletor[0]~input_o\) # (!\seletor[2]~input_o\)))) # (!\entrada_a[31]~input_o\ & (\entrada_b[31]~input_o\ & ((!\seletor[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_a[31]~input_o\,
	datab => \entrada_b[31]~input_o\,
	datac => \seletor[0]~input_o\,
	datad => \seletor[2]~input_o\,
	combout => \Mux0~2_combout\);

-- Location: LCCOMB_X18_Y9_N12
\Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~6_combout\ = (\Mux0~5_combout\ & ((\Mux0~2_combout\ $ (\Mux0~3_combout\)) # (!\seletor[1]~input_o\))) # (!\Mux0~5_combout\ & (\Mux0~2_combout\ & (\seletor[1]~input_o\ $ (\Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~5_combout\,
	datab => \Mux0~2_combout\,
	datac => \seletor[1]~input_o\,
	datad => \Mux0~3_combout\,
	combout => \Mux0~6_combout\);

-- Location: LCCOMB_X18_Y9_N22
\Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~7_combout\ = (\seletor[3]~input_o\ & (((\Add0~101_combout\ & !\Add0~2_combout\)))) # (!\seletor[3]~input_o\ & (\Mux0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux0~6_combout\,
	datab => \seletor[3]~input_o\,
	datac => \Add0~101_combout\,
	datad => \Add0~2_combout\,
	combout => \Mux0~7_combout\);

ww_saida(0) <= \saida[0]~output_o\;

ww_saida(1) <= \saida[1]~output_o\;

ww_saida(2) <= \saida[2]~output_o\;

ww_saida(3) <= \saida[3]~output_o\;

ww_saida(4) <= \saida[4]~output_o\;

ww_saida(5) <= \saida[5]~output_o\;

ww_saida(6) <= \saida[6]~output_o\;

ww_saida(7) <= \saida[7]~output_o\;

ww_saida(8) <= \saida[8]~output_o\;

ww_saida(9) <= \saida[9]~output_o\;

ww_saida(10) <= \saida[10]~output_o\;

ww_saida(11) <= \saida[11]~output_o\;

ww_saida(12) <= \saida[12]~output_o\;

ww_saida(13) <= \saida[13]~output_o\;

ww_saida(14) <= \saida[14]~output_o\;

ww_saida(15) <= \saida[15]~output_o\;

ww_saida(16) <= \saida[16]~output_o\;

ww_saida(17) <= \saida[17]~output_o\;

ww_saida(18) <= \saida[18]~output_o\;

ww_saida(19) <= \saida[19]~output_o\;

ww_saida(20) <= \saida[20]~output_o\;

ww_saida(21) <= \saida[21]~output_o\;

ww_saida(22) <= \saida[22]~output_o\;

ww_saida(23) <= \saida[23]~output_o\;

ww_saida(24) <= \saida[24]~output_o\;

ww_saida(25) <= \saida[25]~output_o\;

ww_saida(26) <= \saida[26]~output_o\;

ww_saida(27) <= \saida[27]~output_o\;

ww_saida(28) <= \saida[28]~output_o\;

ww_saida(29) <= \saida[29]~output_o\;

ww_saida(30) <= \saida[30]~output_o\;

ww_saida(31) <= \saida[31]~output_o\;
END structure;


