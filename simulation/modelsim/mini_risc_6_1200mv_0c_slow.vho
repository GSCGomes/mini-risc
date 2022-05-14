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

-- DATE "05/13/2022 22:08:55"

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


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	registrador IS
    PORT (
	entrada_dados : IN std_logic_vector(31 DOWNTO 0);
	WE : IN std_logic;
	clk : IN std_logic;
	reset : IN std_logic;
	saida_dados : BUFFER std_logic_vector(31 DOWNTO 0)
	);
END registrador;

-- Design Ports Information
-- saida_dados[0]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[1]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[2]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[4]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[5]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[6]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[7]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[8]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[9]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[10]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[11]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[12]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[13]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[14]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[15]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[16]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[17]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[18]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[19]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[20]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[21]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[22]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[23]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[24]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[25]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[26]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[27]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[28]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[29]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[30]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- saida_dados[31]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[0]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- WE	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[1]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[2]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[3]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[4]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[5]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[6]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[7]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[8]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[9]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[10]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[11]	=>  Location: PIN_N14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[12]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[13]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[14]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[15]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[16]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[17]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[18]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[19]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[20]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[21]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[22]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[23]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[24]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[25]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[26]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[27]	=>  Location: PIN_M12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[28]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[29]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[30]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- entrada_dados[31]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF registrador IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_entrada_dados : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_WE : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_saida_dados : std_logic_vector(31 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \saida_dados[0]~output_o\ : std_logic;
SIGNAL \saida_dados[1]~output_o\ : std_logic;
SIGNAL \saida_dados[2]~output_o\ : std_logic;
SIGNAL \saida_dados[3]~output_o\ : std_logic;
SIGNAL \saida_dados[4]~output_o\ : std_logic;
SIGNAL \saida_dados[5]~output_o\ : std_logic;
SIGNAL \saida_dados[6]~output_o\ : std_logic;
SIGNAL \saida_dados[7]~output_o\ : std_logic;
SIGNAL \saida_dados[8]~output_o\ : std_logic;
SIGNAL \saida_dados[9]~output_o\ : std_logic;
SIGNAL \saida_dados[10]~output_o\ : std_logic;
SIGNAL \saida_dados[11]~output_o\ : std_logic;
SIGNAL \saida_dados[12]~output_o\ : std_logic;
SIGNAL \saida_dados[13]~output_o\ : std_logic;
SIGNAL \saida_dados[14]~output_o\ : std_logic;
SIGNAL \saida_dados[15]~output_o\ : std_logic;
SIGNAL \saida_dados[16]~output_o\ : std_logic;
SIGNAL \saida_dados[17]~output_o\ : std_logic;
SIGNAL \saida_dados[18]~output_o\ : std_logic;
SIGNAL \saida_dados[19]~output_o\ : std_logic;
SIGNAL \saida_dados[20]~output_o\ : std_logic;
SIGNAL \saida_dados[21]~output_o\ : std_logic;
SIGNAL \saida_dados[22]~output_o\ : std_logic;
SIGNAL \saida_dados[23]~output_o\ : std_logic;
SIGNAL \saida_dados[24]~output_o\ : std_logic;
SIGNAL \saida_dados[25]~output_o\ : std_logic;
SIGNAL \saida_dados[26]~output_o\ : std_logic;
SIGNAL \saida_dados[27]~output_o\ : std_logic;
SIGNAL \saida_dados[28]~output_o\ : std_logic;
SIGNAL \saida_dados[29]~output_o\ : std_logic;
SIGNAL \saida_dados[30]~output_o\ : std_logic;
SIGNAL \saida_dados[31]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \entrada_dados[0]~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \saida_dados~0_combout\ : std_logic;
SIGNAL \WE~input_o\ : std_logic;
SIGNAL \saida_dados[0]~1_combout\ : std_logic;
SIGNAL \saida_dados[0]~reg0_q\ : std_logic;
SIGNAL \entrada_dados[1]~input_o\ : std_logic;
SIGNAL \saida_dados~2_combout\ : std_logic;
SIGNAL \saida_dados[1]~reg0_q\ : std_logic;
SIGNAL \entrada_dados[2]~input_o\ : std_logic;
SIGNAL \saida_dados~3_combout\ : std_logic;
SIGNAL \saida_dados[2]~reg0_q\ : std_logic;
SIGNAL \entrada_dados[3]~input_o\ : std_logic;
SIGNAL \saida_dados~4_combout\ : std_logic;
SIGNAL \saida_dados[3]~reg0_q\ : std_logic;
SIGNAL \entrada_dados[4]~input_o\ : std_logic;
SIGNAL \saida_dados~5_combout\ : std_logic;
SIGNAL \saida_dados[4]~reg0_q\ : std_logic;
SIGNAL \entrada_dados[5]~input_o\ : std_logic;
SIGNAL \saida_dados~6_combout\ : std_logic;
SIGNAL \saida_dados[5]~reg0_q\ : std_logic;
SIGNAL \entrada_dados[6]~input_o\ : std_logic;
SIGNAL \saida_dados~7_combout\ : std_logic;
SIGNAL \saida_dados[6]~reg0_q\ : std_logic;
SIGNAL \entrada_dados[7]~input_o\ : std_logic;
SIGNAL \saida_dados~8_combout\ : std_logic;
SIGNAL \saida_dados[7]~reg0_q\ : std_logic;
SIGNAL \entrada_dados[8]~input_o\ : std_logic;
SIGNAL \saida_dados~9_combout\ : std_logic;
SIGNAL \saida_dados[8]~reg0_q\ : std_logic;
SIGNAL \entrada_dados[9]~input_o\ : std_logic;
SIGNAL \saida_dados~10_combout\ : std_logic;
SIGNAL \saida_dados[9]~reg0_q\ : std_logic;
SIGNAL \entrada_dados[10]~input_o\ : std_logic;
SIGNAL \saida_dados~11_combout\ : std_logic;
SIGNAL \saida_dados[10]~reg0_q\ : std_logic;
SIGNAL \entrada_dados[11]~input_o\ : std_logic;
SIGNAL \saida_dados~12_combout\ : std_logic;
SIGNAL \saida_dados[11]~reg0_q\ : std_logic;
SIGNAL \entrada_dados[12]~input_o\ : std_logic;
SIGNAL \saida_dados~13_combout\ : std_logic;
SIGNAL \saida_dados[12]~reg0_q\ : std_logic;
SIGNAL \entrada_dados[13]~input_o\ : std_logic;
SIGNAL \saida_dados~14_combout\ : std_logic;
SIGNAL \saida_dados[13]~reg0_q\ : std_logic;
SIGNAL \entrada_dados[14]~input_o\ : std_logic;
SIGNAL \saida_dados~15_combout\ : std_logic;
SIGNAL \saida_dados[14]~reg0_q\ : std_logic;
SIGNAL \entrada_dados[15]~input_o\ : std_logic;
SIGNAL \saida_dados~16_combout\ : std_logic;
SIGNAL \saida_dados[15]~reg0_q\ : std_logic;
SIGNAL \entrada_dados[16]~input_o\ : std_logic;
SIGNAL \saida_dados~17_combout\ : std_logic;
SIGNAL \saida_dados[16]~reg0_q\ : std_logic;
SIGNAL \entrada_dados[17]~input_o\ : std_logic;
SIGNAL \saida_dados~18_combout\ : std_logic;
SIGNAL \saida_dados[17]~reg0_q\ : std_logic;
SIGNAL \entrada_dados[18]~input_o\ : std_logic;
SIGNAL \saida_dados~19_combout\ : std_logic;
SIGNAL \saida_dados[18]~reg0_q\ : std_logic;
SIGNAL \entrada_dados[19]~input_o\ : std_logic;
SIGNAL \saida_dados~20_combout\ : std_logic;
SIGNAL \saida_dados[19]~reg0_q\ : std_logic;
SIGNAL \entrada_dados[20]~input_o\ : std_logic;
SIGNAL \saida_dados~21_combout\ : std_logic;
SIGNAL \saida_dados[20]~reg0_q\ : std_logic;
SIGNAL \entrada_dados[21]~input_o\ : std_logic;
SIGNAL \saida_dados~22_combout\ : std_logic;
SIGNAL \saida_dados[21]~reg0_q\ : std_logic;
SIGNAL \entrada_dados[22]~input_o\ : std_logic;
SIGNAL \saida_dados~23_combout\ : std_logic;
SIGNAL \saida_dados[22]~reg0_q\ : std_logic;
SIGNAL \entrada_dados[23]~input_o\ : std_logic;
SIGNAL \saida_dados~24_combout\ : std_logic;
SIGNAL \saida_dados[23]~reg0_q\ : std_logic;
SIGNAL \entrada_dados[24]~input_o\ : std_logic;
SIGNAL \saida_dados~25_combout\ : std_logic;
SIGNAL \saida_dados[24]~reg0_q\ : std_logic;
SIGNAL \entrada_dados[25]~input_o\ : std_logic;
SIGNAL \saida_dados~26_combout\ : std_logic;
SIGNAL \saida_dados[25]~reg0_q\ : std_logic;
SIGNAL \entrada_dados[26]~input_o\ : std_logic;
SIGNAL \saida_dados~27_combout\ : std_logic;
SIGNAL \saida_dados[26]~reg0_q\ : std_logic;
SIGNAL \entrada_dados[27]~input_o\ : std_logic;
SIGNAL \saida_dados~28_combout\ : std_logic;
SIGNAL \saida_dados[27]~reg0_q\ : std_logic;
SIGNAL \entrada_dados[28]~input_o\ : std_logic;
SIGNAL \saida_dados~29_combout\ : std_logic;
SIGNAL \saida_dados[28]~reg0_q\ : std_logic;
SIGNAL \entrada_dados[29]~input_o\ : std_logic;
SIGNAL \saida_dados~30_combout\ : std_logic;
SIGNAL \saida_dados[29]~reg0_q\ : std_logic;
SIGNAL \entrada_dados[30]~input_o\ : std_logic;
SIGNAL \saida_dados~31_combout\ : std_logic;
SIGNAL \saida_dados[30]~reg0_q\ : std_logic;
SIGNAL \entrada_dados[31]~input_o\ : std_logic;
SIGNAL \saida_dados~32_combout\ : std_logic;
SIGNAL \saida_dados[31]~reg0_q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_entrada_dados <= entrada_dados;
ww_WE <= WE;
ww_clk <= clk;
ww_reset <= reset;
saida_dados <= ww_saida_dados;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X23_Y0_N9
\saida_dados[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_dados[0]~reg0_q\,
	devoe => ww_devoe,
	o => \saida_dados[0]~output_o\);

-- Location: IOOBUF_X34_Y11_N9
\saida_dados[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_dados[1]~reg0_q\,
	devoe => ww_devoe,
	o => \saida_dados[1]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\saida_dados[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_dados[2]~reg0_q\,
	devoe => ww_devoe,
	o => \saida_dados[2]~output_o\);

-- Location: IOOBUF_X21_Y24_N16
\saida_dados[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_dados[3]~reg0_q\,
	devoe => ww_devoe,
	o => \saida_dados[3]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\saida_dados[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_dados[4]~reg0_q\,
	devoe => ww_devoe,
	o => \saida_dados[4]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\saida_dados[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_dados[5]~reg0_q\,
	devoe => ww_devoe,
	o => \saida_dados[5]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\saida_dados[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_dados[6]~reg0_q\,
	devoe => ww_devoe,
	o => \saida_dados[6]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\saida_dados[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_dados[7]~reg0_q\,
	devoe => ww_devoe,
	o => \saida_dados[7]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\saida_dados[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_dados[8]~reg0_q\,
	devoe => ww_devoe,
	o => \saida_dados[8]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\saida_dados[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_dados[9]~reg0_q\,
	devoe => ww_devoe,
	o => \saida_dados[9]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\saida_dados[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_dados[10]~reg0_q\,
	devoe => ww_devoe,
	o => \saida_dados[10]~output_o\);

-- Location: IOOBUF_X34_Y7_N23
\saida_dados[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_dados[11]~reg0_q\,
	devoe => ww_devoe,
	o => \saida_dados[11]~output_o\);

-- Location: IOOBUF_X34_Y8_N16
\saida_dados[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_dados[12]~reg0_q\,
	devoe => ww_devoe,
	o => \saida_dados[12]~output_o\);

-- Location: IOOBUF_X21_Y0_N16
\saida_dados[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_dados[13]~reg0_q\,
	devoe => ww_devoe,
	o => \saida_dados[13]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\saida_dados[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_dados[14]~reg0_q\,
	devoe => ww_devoe,
	o => \saida_dados[14]~output_o\);

-- Location: IOOBUF_X34_Y9_N16
\saida_dados[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_dados[15]~reg0_q\,
	devoe => ww_devoe,
	o => \saida_dados[15]~output_o\);

-- Location: IOOBUF_X34_Y17_N2
\saida_dados[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_dados[16]~reg0_q\,
	devoe => ww_devoe,
	o => \saida_dados[16]~output_o\);

-- Location: IOOBUF_X34_Y3_N16
\saida_dados[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_dados[17]~reg0_q\,
	devoe => ww_devoe,
	o => \saida_dados[17]~output_o\);

-- Location: IOOBUF_X34_Y5_N23
\saida_dados[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_dados[18]~reg0_q\,
	devoe => ww_devoe,
	o => \saida_dados[18]~output_o\);

-- Location: IOOBUF_X34_Y11_N2
\saida_dados[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_dados[19]~reg0_q\,
	devoe => ww_devoe,
	o => \saida_dados[19]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\saida_dados[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_dados[20]~reg0_q\,
	devoe => ww_devoe,
	o => \saida_dados[20]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\saida_dados[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_dados[21]~reg0_q\,
	devoe => ww_devoe,
	o => \saida_dados[21]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\saida_dados[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_dados[22]~reg0_q\,
	devoe => ww_devoe,
	o => \saida_dados[22]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\saida_dados[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_dados[23]~reg0_q\,
	devoe => ww_devoe,
	o => \saida_dados[23]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\saida_dados[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_dados[24]~reg0_q\,
	devoe => ww_devoe,
	o => \saida_dados[24]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\saida_dados[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_dados[25]~reg0_q\,
	devoe => ww_devoe,
	o => \saida_dados[25]~output_o\);

-- Location: IOOBUF_X34_Y10_N2
\saida_dados[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_dados[26]~reg0_q\,
	devoe => ww_devoe,
	o => \saida_dados[26]~output_o\);

-- Location: IOOBUF_X34_Y3_N23
\saida_dados[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_dados[27]~reg0_q\,
	devoe => ww_devoe,
	o => \saida_dados[27]~output_o\);

-- Location: IOOBUF_X34_Y9_N23
\saida_dados[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_dados[28]~reg0_q\,
	devoe => ww_devoe,
	o => \saida_dados[28]~output_o\);

-- Location: IOOBUF_X34_Y8_N23
\saida_dados[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_dados[29]~reg0_q\,
	devoe => ww_devoe,
	o => \saida_dados[29]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\saida_dados[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_dados[30]~reg0_q\,
	devoe => ww_devoe,
	o => \saida_dados[30]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\saida_dados[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \saida_dados[31]~reg0_q\,
	devoe => ww_devoe,
	o => \saida_dados[31]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
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

-- Location: IOIBUF_X11_Y0_N22
\entrada_dados[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(0),
	o => \entrada_dados[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X17_Y4_N24
\saida_dados~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida_dados~0_combout\ = (\entrada_dados[0]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_dados[0]~input_o\,
	datac => \reset~input_o\,
	combout => \saida_dados~0_combout\);

-- Location: IOIBUF_X23_Y0_N15
\WE~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_WE,
	o => \WE~input_o\);

-- Location: LCCOMB_X23_Y3_N24
\saida_dados[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida_dados[0]~1_combout\ = (\WE~input_o\) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \WE~input_o\,
	datac => \reset~input_o\,
	combout => \saida_dados[0]~1_combout\);

-- Location: FF_X17_Y4_N25
\saida_dados[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida_dados~0_combout\,
	ena => \saida_dados[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida_dados[0]~reg0_q\);

-- Location: IOIBUF_X34_Y17_N22
\entrada_dados[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(1),
	o => \entrada_dados[1]~input_o\);

-- Location: LCCOMB_X31_Y7_N8
\saida_dados~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida_dados~2_combout\ = (!\reset~input_o\ & \entrada_dados[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \entrada_dados[1]~input_o\,
	combout => \saida_dados~2_combout\);

-- Location: FF_X31_Y7_N9
\saida_dados[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida_dados~2_combout\,
	ena => \saida_dados[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida_dados[1]~reg0_q\);

-- Location: IOIBUF_X16_Y24_N8
\entrada_dados[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(2),
	o => \entrada_dados[2]~input_o\);

-- Location: LCCOMB_X17_Y4_N26
\saida_dados~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida_dados~3_combout\ = (!\reset~input_o\ & \entrada_dados[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \entrada_dados[2]~input_o\,
	combout => \saida_dados~3_combout\);

-- Location: FF_X17_Y4_N27
\saida_dados[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida_dados~3_combout\,
	ena => \saida_dados[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida_dados[2]~reg0_q\);

-- Location: IOIBUF_X18_Y0_N1
\entrada_dados[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(3),
	o => \entrada_dados[3]~input_o\);

-- Location: LCCOMB_X17_Y4_N28
\saida_dados~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida_dados~4_combout\ = (\entrada_dados[3]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_dados[3]~input_o\,
	datac => \reset~input_o\,
	combout => \saida_dados~4_combout\);

-- Location: FF_X17_Y4_N29
\saida_dados[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida_dados~4_combout\,
	ena => \saida_dados[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida_dados[3]~reg0_q\);

-- Location: IOIBUF_X21_Y0_N8
\entrada_dados[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(4),
	o => \entrada_dados[4]~input_o\);

-- Location: LCCOMB_X17_Y4_N30
\saida_dados~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida_dados~5_combout\ = (!\reset~input_o\ & \entrada_dados[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \entrada_dados[4]~input_o\,
	combout => \saida_dados~5_combout\);

-- Location: FF_X17_Y4_N31
\saida_dados[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida_dados~5_combout\,
	ena => \saida_dados[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida_dados[4]~reg0_q\);

-- Location: IOIBUF_X34_Y7_N8
\entrada_dados[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(5),
	o => \entrada_dados[5]~input_o\);

-- Location: LCCOMB_X31_Y7_N26
\saida_dados~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida_dados~6_combout\ = (!\reset~input_o\ & \entrada_dados[5]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \entrada_dados[5]~input_o\,
	combout => \saida_dados~6_combout\);

-- Location: FF_X31_Y7_N27
\saida_dados[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida_dados~6_combout\,
	ena => \saida_dados[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida_dados[5]~reg0_q\);

-- Location: IOIBUF_X13_Y0_N1
\entrada_dados[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(6),
	o => \entrada_dados[6]~input_o\);

-- Location: LCCOMB_X17_Y4_N0
\saida_dados~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida_dados~7_combout\ = (!\reset~input_o\ & \entrada_dados[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \entrada_dados[6]~input_o\,
	combout => \saida_dados~7_combout\);

-- Location: FF_X17_Y4_N1
\saida_dados[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida_dados~7_combout\,
	ena => \saida_dados[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida_dados[6]~reg0_q\);

-- Location: IOIBUF_X13_Y0_N15
\entrada_dados[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(7),
	o => \entrada_dados[7]~input_o\);

-- Location: LCCOMB_X17_Y4_N18
\saida_dados~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida_dados~8_combout\ = (!\reset~input_o\ & \entrada_dados[7]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \entrada_dados[7]~input_o\,
	combout => \saida_dados~8_combout\);

-- Location: FF_X17_Y4_N19
\saida_dados[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida_dados~8_combout\,
	ena => \saida_dados[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida_dados[7]~reg0_q\);

-- Location: IOIBUF_X23_Y0_N1
\entrada_dados[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(8),
	o => \entrada_dados[8]~input_o\);

-- Location: LCCOMB_X17_Y4_N4
\saida_dados~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida_dados~9_combout\ = (!\reset~input_o\ & \entrada_dados[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \entrada_dados[8]~input_o\,
	combout => \saida_dados~9_combout\);

-- Location: FF_X17_Y4_N5
\saida_dados[8]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida_dados~9_combout\,
	ena => \saida_dados[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida_dados[8]~reg0_q\);

-- Location: IOIBUF_X18_Y0_N15
\entrada_dados[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(9),
	o => \entrada_dados[9]~input_o\);

-- Location: LCCOMB_X17_Y4_N6
\saida_dados~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida_dados~10_combout\ = (\entrada_dados[9]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_dados[9]~input_o\,
	datac => \reset~input_o\,
	combout => \saida_dados~10_combout\);

-- Location: FF_X17_Y4_N7
\saida_dados[9]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida_dados~10_combout\,
	ena => \saida_dados[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida_dados[9]~reg0_q\);

-- Location: IOIBUF_X34_Y6_N15
\entrada_dados[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(10),
	o => \entrada_dados[10]~input_o\);

-- Location: LCCOMB_X31_Y7_N12
\saida_dados~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida_dados~11_combout\ = (!\reset~input_o\ & \entrada_dados[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \entrada_dados[10]~input_o\,
	combout => \saida_dados~11_combout\);

-- Location: FF_X31_Y7_N13
\saida_dados[10]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida_dados~11_combout\,
	ena => \saida_dados[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida_dados[10]~reg0_q\);

-- Location: IOIBUF_X34_Y4_N22
\entrada_dados[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(11),
	o => \entrada_dados[11]~input_o\);

-- Location: LCCOMB_X31_Y7_N30
\saida_dados~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida_dados~12_combout\ = (\entrada_dados[11]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entrada_dados[11]~input_o\,
	datad => \reset~input_o\,
	combout => \saida_dados~12_combout\);

-- Location: FF_X31_Y7_N31
\saida_dados[11]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida_dados~12_combout\,
	ena => \saida_dados[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida_dados[11]~reg0_q\);

-- Location: IOIBUF_X30_Y24_N22
\entrada_dados[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(12),
	o => \entrada_dados[12]~input_o\);

-- Location: LCCOMB_X31_Y7_N0
\saida_dados~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida_dados~13_combout\ = (!\reset~input_o\ & \entrada_dados[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \entrada_dados[12]~input_o\,
	combout => \saida_dados~13_combout\);

-- Location: FF_X31_Y7_N1
\saida_dados[12]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida_dados~13_combout\,
	ena => \saida_dados[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida_dados[12]~reg0_q\);

-- Location: IOIBUF_X16_Y0_N22
\entrada_dados[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(13),
	o => \entrada_dados[13]~input_o\);

-- Location: LCCOMB_X17_Y4_N8
\saida_dados~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida_dados~14_combout\ = (!\reset~input_o\ & \entrada_dados[13]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \entrada_dados[13]~input_o\,
	combout => \saida_dados~14_combout\);

-- Location: FF_X17_Y4_N9
\saida_dados[13]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida_dados~14_combout\,
	ena => \saida_dados[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida_dados[13]~reg0_q\);

-- Location: IOIBUF_X25_Y0_N8
\entrada_dados[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(14),
	o => \entrada_dados[14]~input_o\);

-- Location: LCCOMB_X17_Y4_N10
\saida_dados~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida_dados~15_combout\ = (!\reset~input_o\ & \entrada_dados[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \entrada_dados[14]~input_o\,
	combout => \saida_dados~15_combout\);

-- Location: FF_X17_Y4_N11
\saida_dados[14]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida_dados~15_combout\,
	ena => \saida_dados[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida_dados[14]~reg0_q\);

-- Location: IOIBUF_X34_Y19_N8
\entrada_dados[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(15),
	o => \entrada_dados[15]~input_o\);

-- Location: LCCOMB_X31_Y7_N2
\saida_dados~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida_dados~16_combout\ = (\entrada_dados[15]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entrada_dados[15]~input_o\,
	datad => \reset~input_o\,
	combout => \saida_dados~16_combout\);

-- Location: FF_X31_Y7_N3
\saida_dados[15]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida_dados~16_combout\,
	ena => \saida_dados[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida_dados[15]~reg0_q\);

-- Location: IOIBUF_X34_Y8_N8
\entrada_dados[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(16),
	o => \entrada_dados[16]~input_o\);

-- Location: LCCOMB_X31_Y7_N28
\saida_dados~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida_dados~17_combout\ = (!\reset~input_o\ & \entrada_dados[16]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \entrada_dados[16]~input_o\,
	combout => \saida_dados~17_combout\);

-- Location: FF_X31_Y7_N29
\saida_dados[16]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida_dados~17_combout\,
	ena => \saida_dados[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida_dados[16]~reg0_q\);

-- Location: IOIBUF_X34_Y9_N8
\entrada_dados[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(17),
	o => \entrada_dados[17]~input_o\);

-- Location: LCCOMB_X31_Y7_N14
\saida_dados~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida_dados~18_combout\ = (!\reset~input_o\ & \entrada_dados[17]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \entrada_dados[17]~input_o\,
	combout => \saida_dados~18_combout\);

-- Location: FF_X31_Y7_N15
\saida_dados[17]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida_dados~18_combout\,
	ena => \saida_dados[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida_dados[17]~reg0_q\);

-- Location: IOIBUF_X34_Y18_N15
\entrada_dados[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(18),
	o => \entrada_dados[18]~input_o\);

-- Location: LCCOMB_X31_Y7_N24
\saida_dados~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida_dados~19_combout\ = (!\reset~input_o\ & \entrada_dados[18]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \entrada_dados[18]~input_o\,
	combout => \saida_dados~19_combout\);

-- Location: FF_X31_Y7_N25
\saida_dados[18]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida_dados~19_combout\,
	ena => \saida_dados[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida_dados[18]~reg0_q\);

-- Location: IOIBUF_X34_Y19_N1
\entrada_dados[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(19),
	o => \entrada_dados[19]~input_o\);

-- Location: LCCOMB_X31_Y7_N18
\saida_dados~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida_dados~20_combout\ = (\entrada_dados[19]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entrada_dados[19]~input_o\,
	datad => \reset~input_o\,
	combout => \saida_dados~20_combout\);

-- Location: FF_X31_Y7_N19
\saida_dados[19]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida_dados~20_combout\,
	ena => \saida_dados[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida_dados[19]~reg0_q\);

-- Location: IOIBUF_X34_Y10_N8
\entrada_dados[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(20),
	o => \entrada_dados[20]~input_o\);

-- Location: LCCOMB_X31_Y7_N4
\saida_dados~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida_dados~21_combout\ = (\entrada_dados[20]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entrada_dados[20]~input_o\,
	datad => \reset~input_o\,
	combout => \saida_dados~21_combout\);

-- Location: FF_X31_Y7_N5
\saida_dados[20]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida_dados~21_combout\,
	ena => \saida_dados[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida_dados[20]~reg0_q\);

-- Location: IOIBUF_X13_Y0_N22
\entrada_dados[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(21),
	o => \entrada_dados[21]~input_o\);

-- Location: LCCOMB_X17_Y4_N12
\saida_dados~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida_dados~22_combout\ = (!\reset~input_o\ & \entrada_dados[21]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \entrada_dados[21]~input_o\,
	combout => \saida_dados~22_combout\);

-- Location: FF_X17_Y4_N13
\saida_dados[21]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida_dados~22_combout\,
	ena => \saida_dados[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida_dados[21]~reg0_q\);

-- Location: IOIBUF_X21_Y0_N1
\entrada_dados[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(22),
	o => \entrada_dados[22]~input_o\);

-- Location: LCCOMB_X17_Y4_N14
\saida_dados~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida_dados~23_combout\ = (\entrada_dados[22]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \entrada_dados[22]~input_o\,
	datac => \reset~input_o\,
	combout => \saida_dados~23_combout\);

-- Location: FF_X17_Y4_N15
\saida_dados[22]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida_dados~23_combout\,
	ena => \saida_dados[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida_dados[22]~reg0_q\);

-- Location: IOIBUF_X16_Y0_N8
\entrada_dados[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(23),
	o => \entrada_dados[23]~input_o\);

-- Location: LCCOMB_X17_Y4_N16
\saida_dados~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida_dados~24_combout\ = (!\reset~input_o\ & \entrada_dados[23]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \entrada_dados[23]~input_o\,
	combout => \saida_dados~24_combout\);

-- Location: FF_X17_Y4_N17
\saida_dados[23]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida_dados~24_combout\,
	ena => \saida_dados[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida_dados[23]~reg0_q\);

-- Location: IOIBUF_X0_Y11_N15
\entrada_dados[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(24),
	o => \entrada_dados[24]~input_o\);

-- Location: LCCOMB_X31_Y7_N6
\saida_dados~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida_dados~25_combout\ = (\entrada_dados[24]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entrada_dados[24]~input_o\,
	datad => \reset~input_o\,
	combout => \saida_dados~25_combout\);

-- Location: FF_X31_Y7_N7
\saida_dados[24]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida_dados~25_combout\,
	ena => \saida_dados[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida_dados[24]~reg0_q\);

-- Location: IOIBUF_X0_Y11_N22
\entrada_dados[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(25),
	o => \entrada_dados[25]~input_o\);

-- Location: LCCOMB_X17_Y4_N2
\saida_dados~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida_dados~26_combout\ = (!\reset~input_o\ & \entrada_dados[25]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \entrada_dados[25]~input_o\,
	combout => \saida_dados~26_combout\);

-- Location: FF_X17_Y4_N3
\saida_dados[25]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida_dados~26_combout\,
	ena => \saida_dados[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida_dados[25]~reg0_q\);

-- Location: IOIBUF_X30_Y0_N22
\entrada_dados[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(26),
	o => \entrada_dados[26]~input_o\);

-- Location: LCCOMB_X31_Y7_N16
\saida_dados~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida_dados~27_combout\ = (!\reset~input_o\ & \entrada_dados[26]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datac => \entrada_dados[26]~input_o\,
	combout => \saida_dados~27_combout\);

-- Location: FF_X31_Y7_N17
\saida_dados[26]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida_dados~27_combout\,
	ena => \saida_dados[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida_dados[26]~reg0_q\);

-- Location: IOIBUF_X34_Y2_N15
\entrada_dados[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(27),
	o => \entrada_dados[27]~input_o\);

-- Location: LCCOMB_X31_Y7_N10
\saida_dados~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida_dados~28_combout\ = (\entrada_dados[27]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \entrada_dados[27]~input_o\,
	datad => \reset~input_o\,
	combout => \saida_dados~28_combout\);

-- Location: FF_X31_Y7_N11
\saida_dados[27]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida_dados~28_combout\,
	ena => \saida_dados[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida_dados[27]~reg0_q\);

-- Location: IOIBUF_X34_Y5_N15
\entrada_dados[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(28),
	o => \entrada_dados[28]~input_o\);

-- Location: LCCOMB_X31_Y7_N20
\saida_dados~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida_dados~29_combout\ = (!\reset~input_o\ & \entrada_dados[28]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \entrada_dados[28]~input_o\,
	combout => \saida_dados~29_combout\);

-- Location: FF_X31_Y7_N21
\saida_dados[28]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida_dados~29_combout\,
	ena => \saida_dados[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida_dados[28]~reg0_q\);

-- Location: IOIBUF_X34_Y7_N15
\entrada_dados[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(29),
	o => \entrada_dados[29]~input_o\);

-- Location: LCCOMB_X31_Y7_N22
\saida_dados~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida_dados~30_combout\ = (!\reset~input_o\ & \entrada_dados[29]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \entrada_dados[29]~input_o\,
	combout => \saida_dados~30_combout\);

-- Location: FF_X31_Y7_N23
\saida_dados[29]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida_dados~30_combout\,
	ena => \saida_dados[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida_dados[29]~reg0_q\);

-- Location: IOIBUF_X18_Y0_N8
\entrada_dados[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(30),
	o => \entrada_dados[30]~input_o\);

-- Location: LCCOMB_X17_Y4_N20
\saida_dados~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida_dados~31_combout\ = (\entrada_dados[30]~input_o\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \entrada_dados[30]~input_o\,
	datac => \reset~input_o\,
	combout => \saida_dados~31_combout\);

-- Location: FF_X17_Y4_N21
\saida_dados[30]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida_dados~31_combout\,
	ena => \saida_dados[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida_dados[30]~reg0_q\);

-- Location: IOIBUF_X16_Y24_N15
\entrada_dados[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_entrada_dados(31),
	o => \entrada_dados[31]~input_o\);

-- Location: LCCOMB_X17_Y4_N22
\saida_dados~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \saida_dados~32_combout\ = (!\reset~input_o\ & \entrada_dados[31]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \entrada_dados[31]~input_o\,
	combout => \saida_dados~32_combout\);

-- Location: FF_X17_Y4_N23
\saida_dados[31]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \saida_dados~32_combout\,
	ena => \saida_dados[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \saida_dados[31]~reg0_q\);

ww_saida_dados(0) <= \saida_dados[0]~output_o\;

ww_saida_dados(1) <= \saida_dados[1]~output_o\;

ww_saida_dados(2) <= \saida_dados[2]~output_o\;

ww_saida_dados(3) <= \saida_dados[3]~output_o\;

ww_saida_dados(4) <= \saida_dados[4]~output_o\;

ww_saida_dados(5) <= \saida_dados[5]~output_o\;

ww_saida_dados(6) <= \saida_dados[6]~output_o\;

ww_saida_dados(7) <= \saida_dados[7]~output_o\;

ww_saida_dados(8) <= \saida_dados[8]~output_o\;

ww_saida_dados(9) <= \saida_dados[9]~output_o\;

ww_saida_dados(10) <= \saida_dados[10]~output_o\;

ww_saida_dados(11) <= \saida_dados[11]~output_o\;

ww_saida_dados(12) <= \saida_dados[12]~output_o\;

ww_saida_dados(13) <= \saida_dados[13]~output_o\;

ww_saida_dados(14) <= \saida_dados[14]~output_o\;

ww_saida_dados(15) <= \saida_dados[15]~output_o\;

ww_saida_dados(16) <= \saida_dados[16]~output_o\;

ww_saida_dados(17) <= \saida_dados[17]~output_o\;

ww_saida_dados(18) <= \saida_dados[18]~output_o\;

ww_saida_dados(19) <= \saida_dados[19]~output_o\;

ww_saida_dados(20) <= \saida_dados[20]~output_o\;

ww_saida_dados(21) <= \saida_dados[21]~output_o\;

ww_saida_dados(22) <= \saida_dados[22]~output_o\;

ww_saida_dados(23) <= \saida_dados[23]~output_o\;

ww_saida_dados(24) <= \saida_dados[24]~output_o\;

ww_saida_dados(25) <= \saida_dados[25]~output_o\;

ww_saida_dados(26) <= \saida_dados[26]~output_o\;

ww_saida_dados(27) <= \saida_dados[27]~output_o\;

ww_saida_dados(28) <= \saida_dados[28]~output_o\;

ww_saida_dados(29) <= \saida_dados[29]~output_o\;

ww_saida_dados(30) <= \saida_dados[30]~output_o\;

ww_saida_dados(31) <= \saida_dados[31]~output_o\;
END structure;


