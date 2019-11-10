-- Copyright (C) 2018  Intel Corporation. All rights reserved.
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
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "11/10/2019 22:28:39"

-- 
-- Device: Altera 5CEBA4F23C7 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	kadai2 IS
    PORT (
	CLK : IN std_logic;
	RSTN : IN std_logic;
	STARN : IN std_logic;
	STOPN : IN std_logic;
	LEDH : OUT std_logic_vector(6 DOWNTO 0);
	LEDL : OUT std_logic_vector(6 DOWNTO 0)
	);
END kadai2;

-- Design Ports Information
-- LEDH[0]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDH[1]	=>  Location: PIN_T18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDH[2]	=>  Location: PIN_R22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDH[3]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDH[4]	=>  Location: PIN_R21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDH[5]	=>  Location: PIN_R17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDH[6]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDL[0]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDL[1]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDL[2]	=>  Location: PIN_P17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDL[3]	=>  Location: PIN_T22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDL[4]	=>  Location: PIN_P19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDL[5]	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDL[6]	=>  Location: PIN_P18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- RSTN	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STARN	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- STOPN	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF kadai2 IS
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
SIGNAL ww_RSTN : std_logic;
SIGNAL ww_STARN : std_logic;
SIGNAL ww_STOPN : std_logic;
SIGNAL ww_LEDH : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_LEDL : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputCLKENA0_outclk\ : std_logic;
SIGNAL \RSTN~input_o\ : std_logic;
SIGNAL \U2|COUNT_IN[0]~3_combout\ : std_logic;
SIGNAL \STOPN~input_o\ : std_logic;
SIGNAL \STARN~input_o\ : std_logic;
SIGNAL \U1|STATUS~0_combout\ : std_logic;
SIGNAL \U1|STATUS~q\ : std_logic;
SIGNAL \U1|Add0~5_sumout\ : std_logic;
SIGNAL \U1|Add0~6\ : std_logic;
SIGNAL \U1|Add0~57_sumout\ : std_logic;
SIGNAL \U1|COUNT[1]~0_combout\ : std_logic;
SIGNAL \U1|COUNT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|Add0~58\ : std_logic;
SIGNAL \U1|Add0~1_sumout\ : std_logic;
SIGNAL \U1|Add0~2\ : std_logic;
SIGNAL \U1|Add0~29_sumout\ : std_logic;
SIGNAL \U1|Add0~30\ : std_logic;
SIGNAL \U1|Add0~25_sumout\ : std_logic;
SIGNAL \U1|Add0~26\ : std_logic;
SIGNAL \U1|Add0~21_sumout\ : std_logic;
SIGNAL \U1|Add0~22\ : std_logic;
SIGNAL \U1|Add0~17_sumout\ : std_logic;
SIGNAL \U1|Add0~18\ : std_logic;
SIGNAL \U1|Add0~13_sumout\ : std_logic;
SIGNAL \U1|Add0~14\ : std_logic;
SIGNAL \U1|Add0~9_sumout\ : std_logic;
SIGNAL \U1|Add0~10\ : std_logic;
SIGNAL \U1|Add0~53_sumout\ : std_logic;
SIGNAL \U1|COUNT[9]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|Add0~54\ : std_logic;
SIGNAL \U1|Add0~49_sumout\ : std_logic;
SIGNAL \U1|COUNT[10]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|Add0~50\ : std_logic;
SIGNAL \U1|Add0~77_sumout\ : std_logic;
SIGNAL \U1|Add0~78\ : std_logic;
SIGNAL \U1|Add0~81_sumout\ : std_logic;
SIGNAL \U1|COUNT[12]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|Add0~82\ : std_logic;
SIGNAL \U1|Add0~85_sumout\ : std_logic;
SIGNAL \U1|Add0~86\ : std_logic;
SIGNAL \U1|Add0~89_sumout\ : std_logic;
SIGNAL \U1|Add0~90\ : std_logic;
SIGNAL \U1|Add0~93_sumout\ : std_logic;
SIGNAL \U1|Add0~94\ : std_logic;
SIGNAL \U1|Add0~61_sumout\ : std_logic;
SIGNAL \U1|COUNT[16]~feeder_combout\ : std_logic;
SIGNAL \U1|Add0~62\ : std_logic;
SIGNAL \U1|Add0~73_sumout\ : std_logic;
SIGNAL \U1|Add0~74\ : std_logic;
SIGNAL \U1|Add0~69_sumout\ : std_logic;
SIGNAL \U1|Add0~70\ : std_logic;
SIGNAL \U1|Add0~65_sumout\ : std_logic;
SIGNAL \U1|Equal0~2_combout\ : std_logic;
SIGNAL \U1|COUNT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|Add0~66\ : std_logic;
SIGNAL \U1|Add0~45_sumout\ : std_logic;
SIGNAL \U1|Add0~46\ : std_logic;
SIGNAL \U1|Add0~41_sumout\ : std_logic;
SIGNAL \U1|Add0~42\ : std_logic;
SIGNAL \U1|Add0~37_sumout\ : std_logic;
SIGNAL \U1|Add0~38\ : std_logic;
SIGNAL \U1|Add0~33_sumout\ : std_logic;
SIGNAL \U1|Equal0~1_combout\ : std_logic;
SIGNAL \U1|Equal0~0_combout\ : std_logic;
SIGNAL \U1|Add0~34\ : std_logic;
SIGNAL \U1|Add0~101_sumout\ : std_logic;
SIGNAL \U1|Add0~102\ : std_logic;
SIGNAL \U1|Add0~97_sumout\ : std_logic;
SIGNAL \U1|Equal0~3_combout\ : std_logic;
SIGNAL \U1|Equal0~4_combout\ : std_logic;
SIGNAL \U1|ENABLE~0_combout\ : std_logic;
SIGNAL \U1|ENABLE~q\ : std_logic;
SIGNAL \U2|COUNT_IN~2_combout\ : std_logic;
SIGNAL \U2|COUNT_IN[3]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|COUNT_IN~0_combout\ : std_logic;
SIGNAL \U2|COUNT_IN[1]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|COUNT_IN~1_combout\ : std_logic;
SIGNAL \U2|COUNT_IN[2]~DUPLICATE_q\ : std_logic;
SIGNAL \CO~combout\ : std_logic;
SIGNAL \U3|COUNT_IN[2]~DUPLICATE_q\ : std_logic;
SIGNAL \U3|COUNT_IN~3_combout\ : std_logic;
SIGNAL \U2|Equal0~0_combout\ : std_logic;
SIGNAL \U3|COUNT_IN~0_combout\ : std_logic;
SIGNAL \U3|COUNT_IN~2_combout\ : std_logic;
SIGNAL \U3|COUNT_IN[0]~DUPLICATE_q\ : std_logic;
SIGNAL \U3|COUNT_IN~1_combout\ : std_logic;
SIGNAL \U3|COUNT_IN[3]~DUPLICATE_q\ : std_logic;
SIGNAL \U5|Mux6~0_combout\ : std_logic;
SIGNAL \U5|Mux5~0_combout\ : std_logic;
SIGNAL \U5|Mux4~0_combout\ : std_logic;
SIGNAL \U5|Mux2~0_combout\ : std_logic;
SIGNAL \U5|Mux1~0_combout\ : std_logic;
SIGNAL \U5|Mux0~0_combout\ : std_logic;
SIGNAL \U4|Mux6~0_combout\ : std_logic;
SIGNAL \U4|Mux5~0_combout\ : std_logic;
SIGNAL \U4|Mux4~0_combout\ : std_logic;
SIGNAL \U4|Mux2~0_combout\ : std_logic;
SIGNAL \U4|Mux1~0_combout\ : std_logic;
SIGNAL \U4|Mux0~0_combout\ : std_logic;
SIGNAL \U1|COUNT\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \U3|COUNT_IN\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U2|COUNT_IN\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|ALT_INV_COUNT[1]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|ALT_INV_COUNT_IN[3]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|ALT_INV_COUNT_IN[2]~DUPLICATE_q\ : std_logic;
SIGNAL \U2|ALT_INV_COUNT_IN[1]~DUPLICATE_q\ : std_logic;
SIGNAL \U3|ALT_INV_COUNT_IN[3]~DUPLICATE_q\ : std_logic;
SIGNAL \U3|ALT_INV_COUNT_IN[2]~DUPLICATE_q\ : std_logic;
SIGNAL \U3|ALT_INV_COUNT_IN[0]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|ALT_INV_COUNT[12]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|ALT_INV_COUNT[9]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|ALT_INV_COUNT[10]~DUPLICATE_q\ : std_logic;
SIGNAL \U1|ALT_INV_COUNT[0]~DUPLICATE_q\ : std_logic;
SIGNAL \ALT_INV_STOPN~input_o\ : std_logic;
SIGNAL \ALT_INV_STARN~input_o\ : std_logic;
SIGNAL \U1|ALT_INV_Equal0~4_combout\ : std_logic;
SIGNAL \U1|ALT_INV_Equal0~3_combout\ : std_logic;
SIGNAL \U1|ALT_INV_Equal0~2_combout\ : std_logic;
SIGNAL \U1|ALT_INV_COUNT\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \U1|ALT_INV_Equal0~1_combout\ : std_logic;
SIGNAL \U1|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \U1|ALT_INV_STATUS~q\ : std_logic;
SIGNAL \U1|ALT_INV_ENABLE~q\ : std_logic;
SIGNAL \U2|ALT_INV_Equal0~0_combout\ : std_logic;
SIGNAL \U4|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U2|ALT_INV_COUNT_IN\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U5|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \U3|ALT_INV_COUNT_IN\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \U1|ALT_INV_Add0~61_sumout\ : std_logic;
SIGNAL \U1|ALT_INV_Add0~57_sumout\ : std_logic;

BEGIN

ww_CLK <= CLK;
ww_RSTN <= RSTN;
ww_STARN <= STARN;
ww_STOPN <= STOPN;
LEDH <= ww_LEDH;
LEDL <= ww_LEDL;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\U1|ALT_INV_COUNT[1]~DUPLICATE_q\ <= NOT \U1|COUNT[1]~DUPLICATE_q\;
\U2|ALT_INV_COUNT_IN[3]~DUPLICATE_q\ <= NOT \U2|COUNT_IN[3]~DUPLICATE_q\;
\U2|ALT_INV_COUNT_IN[2]~DUPLICATE_q\ <= NOT \U2|COUNT_IN[2]~DUPLICATE_q\;
\U2|ALT_INV_COUNT_IN[1]~DUPLICATE_q\ <= NOT \U2|COUNT_IN[1]~DUPLICATE_q\;
\U3|ALT_INV_COUNT_IN[3]~DUPLICATE_q\ <= NOT \U3|COUNT_IN[3]~DUPLICATE_q\;
\U3|ALT_INV_COUNT_IN[2]~DUPLICATE_q\ <= NOT \U3|COUNT_IN[2]~DUPLICATE_q\;
\U3|ALT_INV_COUNT_IN[0]~DUPLICATE_q\ <= NOT \U3|COUNT_IN[0]~DUPLICATE_q\;
\U1|ALT_INV_COUNT[12]~DUPLICATE_q\ <= NOT \U1|COUNT[12]~DUPLICATE_q\;
\U1|ALT_INV_COUNT[9]~DUPLICATE_q\ <= NOT \U1|COUNT[9]~DUPLICATE_q\;
\U1|ALT_INV_COUNT[10]~DUPLICATE_q\ <= NOT \U1|COUNT[10]~DUPLICATE_q\;
\U1|ALT_INV_COUNT[0]~DUPLICATE_q\ <= NOT \U1|COUNT[0]~DUPLICATE_q\;
\ALT_INV_STOPN~input_o\ <= NOT \STOPN~input_o\;
\ALT_INV_STARN~input_o\ <= NOT \STARN~input_o\;
\U1|ALT_INV_Equal0~4_combout\ <= NOT \U1|Equal0~4_combout\;
\U1|ALT_INV_Equal0~3_combout\ <= NOT \U1|Equal0~3_combout\;
\U1|ALT_INV_Equal0~2_combout\ <= NOT \U1|Equal0~2_combout\;
\U1|ALT_INV_COUNT\(1) <= NOT \U1|COUNT\(1);
\U1|ALT_INV_Equal0~1_combout\ <= NOT \U1|Equal0~1_combout\;
\U1|ALT_INV_Equal0~0_combout\ <= NOT \U1|Equal0~0_combout\;
\U1|ALT_INV_STATUS~q\ <= NOT \U1|STATUS~q\;
\U1|ALT_INV_ENABLE~q\ <= NOT \U1|ENABLE~q\;
\U2|ALT_INV_Equal0~0_combout\ <= NOT \U2|Equal0~0_combout\;
\U4|ALT_INV_Mux0~0_combout\ <= NOT \U4|Mux0~0_combout\;
\U2|ALT_INV_COUNT_IN\(3) <= NOT \U2|COUNT_IN\(3);
\U2|ALT_INV_COUNT_IN\(2) <= NOT \U2|COUNT_IN\(2);
\U2|ALT_INV_COUNT_IN\(1) <= NOT \U2|COUNT_IN\(1);
\U2|ALT_INV_COUNT_IN\(0) <= NOT \U2|COUNT_IN\(0);
\U5|ALT_INV_Mux0~0_combout\ <= NOT \U5|Mux0~0_combout\;
\U3|ALT_INV_COUNT_IN\(3) <= NOT \U3|COUNT_IN\(3);
\U3|ALT_INV_COUNT_IN\(2) <= NOT \U3|COUNT_IN\(2);
\U3|ALT_INV_COUNT_IN\(1) <= NOT \U3|COUNT_IN\(1);
\U3|ALT_INV_COUNT_IN\(0) <= NOT \U3|COUNT_IN\(0);
\U1|ALT_INV_Add0~61_sumout\ <= NOT \U1|Add0~61_sumout\;
\U1|ALT_INV_Add0~57_sumout\ <= NOT \U1|Add0~57_sumout\;
\U1|ALT_INV_COUNT\(24) <= NOT \U1|COUNT\(24);
\U1|ALT_INV_COUNT\(25) <= NOT \U1|COUNT\(25);
\U1|ALT_INV_COUNT\(15) <= NOT \U1|COUNT\(15);
\U1|ALT_INV_COUNT\(14) <= NOT \U1|COUNT\(14);
\U1|ALT_INV_COUNT\(13) <= NOT \U1|COUNT\(13);
\U1|ALT_INV_COUNT\(12) <= NOT \U1|COUNT\(12);
\U1|ALT_INV_COUNT\(11) <= NOT \U1|COUNT\(11);
\U1|ALT_INV_COUNT\(17) <= NOT \U1|COUNT\(17);
\U1|ALT_INV_COUNT\(18) <= NOT \U1|COUNT\(18);
\U1|ALT_INV_COUNT\(19) <= NOT \U1|COUNT\(19);
\U1|ALT_INV_COUNT\(16) <= NOT \U1|COUNT\(16);
\U1|ALT_INV_COUNT\(9) <= NOT \U1|COUNT\(9);
\U1|ALT_INV_COUNT\(10) <= NOT \U1|COUNT\(10);
\U1|ALT_INV_COUNT\(20) <= NOT \U1|COUNT\(20);
\U1|ALT_INV_COUNT\(21) <= NOT \U1|COUNT\(21);
\U1|ALT_INV_COUNT\(22) <= NOT \U1|COUNT\(22);
\U1|ALT_INV_COUNT\(23) <= NOT \U1|COUNT\(23);
\U1|ALT_INV_COUNT\(3) <= NOT \U1|COUNT\(3);
\U1|ALT_INV_COUNT\(4) <= NOT \U1|COUNT\(4);
\U1|ALT_INV_COUNT\(5) <= NOT \U1|COUNT\(5);
\U1|ALT_INV_COUNT\(6) <= NOT \U1|COUNT\(6);
\U1|ALT_INV_COUNT\(7) <= NOT \U1|COUNT\(7);
\U1|ALT_INV_COUNT\(8) <= NOT \U1|COUNT\(8);
\U1|ALT_INV_COUNT\(0) <= NOT \U1|COUNT\(0);
\U1|ALT_INV_COUNT\(2) <= NOT \U1|COUNT\(2);

-- Location: IOOBUF_X50_Y0_N2
\LEDH[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDH(0));

-- Location: IOOBUF_X54_Y14_N45
\LEDH[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDH(1));

-- Location: IOOBUF_X54_Y15_N56
\LEDH[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDH(2));

-- Location: IOOBUF_X50_Y0_N36
\LEDH[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDH(3));

-- Location: IOOBUF_X54_Y16_N39
\LEDH[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDH(4));

-- Location: IOOBUF_X54_Y16_N22
\LEDH[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDH(5));

-- Location: IOOBUF_X54_Y18_N96
\LEDH[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U5|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDH(6));

-- Location: IOOBUF_X54_Y15_N22
\LEDL[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDL(0));

-- Location: IOOBUF_X54_Y17_N5
\LEDL[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDL(1));

-- Location: IOOBUF_X54_Y17_N22
\LEDL[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDL(2));

-- Location: IOOBUF_X54_Y15_N39
\LEDL[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDL(3));

-- Location: IOOBUF_X54_Y17_N39
\LEDL[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDL(4));

-- Location: IOOBUF_X54_Y19_N39
\LEDL[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|Mux1~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDL(5));

-- Location: IOOBUF_X54_Y17_N56
\LEDL[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \U4|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => ww_LEDL(6));

-- Location: IOIBUF_X54_Y18_N61
\CLK~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G10
\CLK~inputCLKENA0\ : cyclonev_clkena
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	disable_mode => "low",
	ena_register_mode => "always enabled",
	ena_register_power_up => "high",
	test_syn => "high")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~input_o\,
	outclk => \CLK~inputCLKENA0_outclk\);

-- Location: IOIBUF_X54_Y15_N4
\RSTN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_RSTN,
	o => \RSTN~input_o\);

-- Location: LABCELL_X50_Y16_N48
\U2|COUNT_IN[0]~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT_IN[0]~3_combout\ = !\U2|COUNT_IN\(0)

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000011111111000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U2|ALT_INV_COUNT_IN\(0),
	combout => \U2|COUNT_IN[0]~3_combout\);

-- Location: IOIBUF_X54_Y16_N4
\STOPN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STOPN,
	o => \STOPN~input_o\);

-- Location: IOIBUF_X54_Y16_N55
\STARN~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_STARN,
	o => \STARN~input_o\);

-- Location: LABCELL_X53_Y16_N39
\U1|STATUS~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|STATUS~0_combout\ = ( \U1|STATUS~q\ & ( (!\STARN~input_o\) # (\STOPN~input_o\) ) ) # ( !\U1|STATUS~q\ & ( !\STARN~input_o\ ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1010101010101010101011111010111110101010101010101010111110101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_STARN~input_o\,
	datac => \ALT_INV_STOPN~input_o\,
	datae => \U1|ALT_INV_STATUS~q\,
	combout => \U1|STATUS~0_combout\);

-- Location: FF_X53_Y16_N41
\U1|STATUS\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|STATUS~0_combout\,
	ena => \RSTN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|STATUS~q\);

-- Location: LABCELL_X52_Y16_N30
\U1|Add0~5\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~5_sumout\ = SUM(( \U1|COUNT\(0) ) + ( VCC ) + ( !VCC ))
-- \U1|Add0~6\ = CARRY(( \U1|COUNT\(0) ) + ( VCC ) + ( !VCC ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_COUNT\(0),
	cin => GND,
	sumout => \U1|Add0~5_sumout\,
	cout => \U1|Add0~6\);

-- Location: FF_X52_Y16_N31
\U1|COUNT[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|Add0~5_sumout\,
	clrn => \RSTN~input_o\,
	sclr => \U1|Equal0~4_combout\,
	ena => \U1|STATUS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(0));

-- Location: LABCELL_X52_Y16_N33
\U1|Add0~57\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~57_sumout\ = SUM(( !\U1|COUNT[1]~DUPLICATE_q\ ) + ( VCC ) + ( \U1|Add0~6\ ))
-- \U1|Add0~58\ = CARRY(( !\U1|COUNT[1]~DUPLICATE_q\ ) + ( VCC ) + ( \U1|Add0~6\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000001111111100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|ALT_INV_COUNT[1]~DUPLICATE_q\,
	cin => \U1|Add0~6\,
	sumout => \U1|Add0~57_sumout\,
	cout => \U1|Add0~58\);

-- Location: LABCELL_X52_Y16_N0
\U1|COUNT[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|COUNT[1]~0_combout\ = ( !\U1|Add0~57_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111111111111111111111111111100000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U1|ALT_INV_Add0~57_sumout\,
	combout => \U1|COUNT[1]~0_combout\);

-- Location: FF_X52_Y16_N2
\U1|COUNT[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|COUNT[1]~0_combout\,
	clrn => \RSTN~input_o\,
	ena => \U1|STATUS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT[1]~DUPLICATE_q\);

-- Location: LABCELL_X52_Y16_N36
\U1|Add0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~1_sumout\ = SUM(( \U1|COUNT\(2) ) + ( VCC ) + ( \U1|Add0~58\ ))
-- \U1|Add0~2\ = CARRY(( \U1|COUNT\(2) ) + ( VCC ) + ( \U1|Add0~58\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|ALT_INV_COUNT\(2),
	cin => \U1|Add0~58\,
	sumout => \U1|Add0~1_sumout\,
	cout => \U1|Add0~2\);

-- Location: FF_X52_Y16_N38
\U1|COUNT[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|Add0~1_sumout\,
	clrn => \RSTN~input_o\,
	sclr => \U1|Equal0~4_combout\,
	ena => \U1|STATUS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(2));

-- Location: LABCELL_X52_Y16_N39
\U1|Add0~29\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~29_sumout\ = SUM(( \U1|COUNT\(3) ) + ( VCC ) + ( \U1|Add0~2\ ))
-- \U1|Add0~30\ = CARRY(( \U1|COUNT\(3) ) + ( VCC ) + ( \U1|Add0~2\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_COUNT\(3),
	cin => \U1|Add0~2\,
	sumout => \U1|Add0~29_sumout\,
	cout => \U1|Add0~30\);

-- Location: FF_X52_Y16_N41
\U1|COUNT[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|Add0~29_sumout\,
	clrn => \RSTN~input_o\,
	sclr => \U1|Equal0~4_combout\,
	ena => \U1|STATUS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(3));

-- Location: LABCELL_X52_Y16_N42
\U1|Add0~25\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~25_sumout\ = SUM(( \U1|COUNT\(4) ) + ( VCC ) + ( \U1|Add0~30\ ))
-- \U1|Add0~26\ = CARRY(( \U1|COUNT\(4) ) + ( VCC ) + ( \U1|Add0~30\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|ALT_INV_COUNT\(4),
	cin => \U1|Add0~30\,
	sumout => \U1|Add0~25_sumout\,
	cout => \U1|Add0~26\);

-- Location: FF_X52_Y16_N43
\U1|COUNT[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|Add0~25_sumout\,
	clrn => \RSTN~input_o\,
	sclr => \U1|Equal0~4_combout\,
	ena => \U1|STATUS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(4));

-- Location: LABCELL_X52_Y16_N45
\U1|Add0~21\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~21_sumout\ = SUM(( \U1|COUNT\(5) ) + ( VCC ) + ( \U1|Add0~26\ ))
-- \U1|Add0~22\ = CARRY(( \U1|COUNT\(5) ) + ( VCC ) + ( \U1|Add0~26\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|ALT_INV_COUNT\(5),
	cin => \U1|Add0~26\,
	sumout => \U1|Add0~21_sumout\,
	cout => \U1|Add0~22\);

-- Location: FF_X52_Y16_N47
\U1|COUNT[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|Add0~21_sumout\,
	clrn => \RSTN~input_o\,
	sclr => \U1|Equal0~4_combout\,
	ena => \U1|STATUS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(5));

-- Location: LABCELL_X52_Y16_N48
\U1|Add0~17\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~17_sumout\ = SUM(( \U1|COUNT\(6) ) + ( VCC ) + ( \U1|Add0~22\ ))
-- \U1|Add0~18\ = CARRY(( \U1|COUNT\(6) ) + ( VCC ) + ( \U1|Add0~22\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_COUNT\(6),
	cin => \U1|Add0~22\,
	sumout => \U1|Add0~17_sumout\,
	cout => \U1|Add0~18\);

-- Location: FF_X52_Y16_N50
\U1|COUNT[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|Add0~17_sumout\,
	clrn => \RSTN~input_o\,
	sclr => \U1|Equal0~4_combout\,
	ena => \U1|STATUS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(6));

-- Location: LABCELL_X52_Y16_N51
\U1|Add0~13\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~13_sumout\ = SUM(( \U1|COUNT\(7) ) + ( VCC ) + ( \U1|Add0~18\ ))
-- \U1|Add0~14\ = CARRY(( \U1|COUNT\(7) ) + ( VCC ) + ( \U1|Add0~18\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_COUNT\(7),
	cin => \U1|Add0~18\,
	sumout => \U1|Add0~13_sumout\,
	cout => \U1|Add0~14\);

-- Location: FF_X52_Y16_N53
\U1|COUNT[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|Add0~13_sumout\,
	clrn => \RSTN~input_o\,
	sclr => \U1|Equal0~4_combout\,
	ena => \U1|STATUS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(7));

-- Location: LABCELL_X52_Y16_N54
\U1|Add0~9\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~9_sumout\ = SUM(( \U1|COUNT\(8) ) + ( VCC ) + ( \U1|Add0~14\ ))
-- \U1|Add0~10\ = CARRY(( \U1|COUNT\(8) ) + ( VCC ) + ( \U1|Add0~14\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|ALT_INV_COUNT\(8),
	cin => \U1|Add0~14\,
	sumout => \U1|Add0~9_sumout\,
	cout => \U1|Add0~10\);

-- Location: FF_X52_Y16_N56
\U1|COUNT[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|Add0~9_sumout\,
	clrn => \RSTN~input_o\,
	sclr => \U1|Equal0~4_combout\,
	ena => \U1|STATUS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(8));

-- Location: LABCELL_X52_Y16_N57
\U1|Add0~53\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~53_sumout\ = SUM(( \U1|COUNT[9]~DUPLICATE_q\ ) + ( VCC ) + ( \U1|Add0~10\ ))
-- \U1|Add0~54\ = CARRY(( \U1|COUNT[9]~DUPLICATE_q\ ) + ( VCC ) + ( \U1|Add0~10\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|ALT_INV_COUNT[9]~DUPLICATE_q\,
	cin => \U1|Add0~10\,
	sumout => \U1|Add0~53_sumout\,
	cout => \U1|Add0~54\);

-- Location: FF_X52_Y16_N59
\U1|COUNT[9]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|Add0~53_sumout\,
	clrn => \RSTN~input_o\,
	sclr => \U1|Equal0~4_combout\,
	ena => \U1|STATUS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT[9]~DUPLICATE_q\);

-- Location: LABCELL_X52_Y15_N0
\U1|Add0~49\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~49_sumout\ = SUM(( \U1|COUNT[10]~DUPLICATE_q\ ) + ( VCC ) + ( \U1|Add0~54\ ))
-- \U1|Add0~50\ = CARRY(( \U1|COUNT[10]~DUPLICATE_q\ ) + ( VCC ) + ( \U1|Add0~54\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|ALT_INV_COUNT[10]~DUPLICATE_q\,
	cin => \U1|Add0~54\,
	sumout => \U1|Add0~49_sumout\,
	cout => \U1|Add0~50\);

-- Location: FF_X52_Y15_N2
\U1|COUNT[10]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|Add0~49_sumout\,
	clrn => \RSTN~input_o\,
	sclr => \U1|Equal0~4_combout\,
	ena => \U1|STATUS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT[10]~DUPLICATE_q\);

-- Location: LABCELL_X52_Y15_N3
\U1|Add0~77\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~77_sumout\ = SUM(( \U1|COUNT\(11) ) + ( VCC ) + ( \U1|Add0~50\ ))
-- \U1|Add0~78\ = CARRY(( \U1|COUNT\(11) ) + ( VCC ) + ( \U1|Add0~50\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|ALT_INV_COUNT\(11),
	cin => \U1|Add0~50\,
	sumout => \U1|Add0~77_sumout\,
	cout => \U1|Add0~78\);

-- Location: FF_X52_Y15_N5
\U1|COUNT[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|Add0~77_sumout\,
	clrn => \RSTN~input_o\,
	sclr => \U1|Equal0~4_combout\,
	ena => \U1|STATUS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(11));

-- Location: LABCELL_X52_Y15_N6
\U1|Add0~81\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~81_sumout\ = SUM(( \U1|COUNT[12]~DUPLICATE_q\ ) + ( VCC ) + ( \U1|Add0~78\ ))
-- \U1|Add0~82\ = CARRY(( \U1|COUNT[12]~DUPLICATE_q\ ) + ( VCC ) + ( \U1|Add0~78\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_COUNT[12]~DUPLICATE_q\,
	cin => \U1|Add0~78\,
	sumout => \U1|Add0~81_sumout\,
	cout => \U1|Add0~82\);

-- Location: FF_X52_Y15_N8
\U1|COUNT[12]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|Add0~81_sumout\,
	clrn => \RSTN~input_o\,
	sclr => \U1|Equal0~4_combout\,
	ena => \U1|STATUS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT[12]~DUPLICATE_q\);

-- Location: LABCELL_X52_Y15_N9
\U1|Add0~85\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~85_sumout\ = SUM(( \U1|COUNT\(13) ) + ( VCC ) + ( \U1|Add0~82\ ))
-- \U1|Add0~86\ = CARRY(( \U1|COUNT\(13) ) + ( VCC ) + ( \U1|Add0~82\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_COUNT\(13),
	cin => \U1|Add0~82\,
	sumout => \U1|Add0~85_sumout\,
	cout => \U1|Add0~86\);

-- Location: FF_X52_Y15_N11
\U1|COUNT[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|Add0~85_sumout\,
	clrn => \RSTN~input_o\,
	sclr => \U1|Equal0~4_combout\,
	ena => \U1|STATUS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(13));

-- Location: LABCELL_X52_Y15_N12
\U1|Add0~89\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~89_sumout\ = SUM(( \U1|COUNT\(14) ) + ( VCC ) + ( \U1|Add0~86\ ))
-- \U1|Add0~90\ = CARRY(( \U1|COUNT\(14) ) + ( VCC ) + ( \U1|Add0~86\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_COUNT\(14),
	cin => \U1|Add0~86\,
	sumout => \U1|Add0~89_sumout\,
	cout => \U1|Add0~90\);

-- Location: FF_X52_Y15_N14
\U1|COUNT[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|Add0~89_sumout\,
	clrn => \RSTN~input_o\,
	sclr => \U1|Equal0~4_combout\,
	ena => \U1|STATUS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(14));

-- Location: LABCELL_X52_Y15_N15
\U1|Add0~93\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~93_sumout\ = SUM(( \U1|COUNT\(15) ) + ( VCC ) + ( \U1|Add0~90\ ))
-- \U1|Add0~94\ = CARRY(( \U1|COUNT\(15) ) + ( VCC ) + ( \U1|Add0~90\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_COUNT\(15),
	cin => \U1|Add0~90\,
	sumout => \U1|Add0~93_sumout\,
	cout => \U1|Add0~94\);

-- Location: FF_X52_Y15_N17
\U1|COUNT[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|Add0~93_sumout\,
	clrn => \RSTN~input_o\,
	sclr => \U1|Equal0~4_combout\,
	ena => \U1|STATUS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(15));

-- Location: LABCELL_X52_Y15_N18
\U1|Add0~61\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~61_sumout\ = SUM(( \U1|COUNT\(16) ) + ( VCC ) + ( \U1|Add0~94\ ))
-- \U1|Add0~62\ = CARRY(( \U1|COUNT\(16) ) + ( VCC ) + ( \U1|Add0~94\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|ALT_INV_COUNT\(16),
	cin => \U1|Add0~94\,
	sumout => \U1|Add0~61_sumout\,
	cout => \U1|Add0~62\);

-- Location: LABCELL_X53_Y16_N3
\U1|COUNT[16]~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|COUNT[16]~feeder_combout\ = ( \U1|Add0~61_sumout\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \U1|ALT_INV_Add0~61_sumout\,
	combout => \U1|COUNT[16]~feeder_combout\);

-- Location: FF_X53_Y16_N5
\U1|COUNT[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|COUNT[16]~feeder_combout\,
	clrn => \RSTN~input_o\,
	sclr => \U1|Equal0~4_combout\,
	ena => \U1|STATUS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(16));

-- Location: FF_X52_Y16_N1
\U1|COUNT[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|COUNT[1]~0_combout\,
	clrn => \RSTN~input_o\,
	ena => \U1|STATUS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(1));

-- Location: LABCELL_X52_Y15_N21
\U1|Add0~73\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~73_sumout\ = SUM(( \U1|COUNT\(17) ) + ( VCC ) + ( \U1|Add0~62\ ))
-- \U1|Add0~74\ = CARRY(( \U1|COUNT\(17) ) + ( VCC ) + ( \U1|Add0~62\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000011111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datad => \U1|ALT_INV_COUNT\(17),
	cin => \U1|Add0~62\,
	sumout => \U1|Add0~73_sumout\,
	cout => \U1|Add0~74\);

-- Location: FF_X52_Y15_N23
\U1|COUNT[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|Add0~73_sumout\,
	clrn => \RSTN~input_o\,
	sclr => \U1|Equal0~4_combout\,
	ena => \U1|STATUS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(17));

-- Location: LABCELL_X52_Y15_N24
\U1|Add0~69\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~69_sumout\ = SUM(( \U1|COUNT\(18) ) + ( VCC ) + ( \U1|Add0~74\ ))
-- \U1|Add0~70\ = CARRY(( \U1|COUNT\(18) ) + ( VCC ) + ( \U1|Add0~74\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_COUNT\(18),
	cin => \U1|Add0~74\,
	sumout => \U1|Add0~69_sumout\,
	cout => \U1|Add0~70\);

-- Location: FF_X52_Y15_N26
\U1|COUNT[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|Add0~69_sumout\,
	clrn => \RSTN~input_o\,
	sclr => \U1|Equal0~4_combout\,
	ena => \U1|STATUS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(18));

-- Location: LABCELL_X52_Y15_N27
\U1|Add0~65\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~65_sumout\ = SUM(( \U1|COUNT\(19) ) + ( VCC ) + ( \U1|Add0~70\ ))
-- \U1|Add0~66\ = CARRY(( \U1|COUNT\(19) ) + ( VCC ) + ( \U1|Add0~70\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_COUNT\(19),
	cin => \U1|Add0~70\,
	sumout => \U1|Add0~65_sumout\,
	cout => \U1|Add0~66\);

-- Location: FF_X52_Y15_N28
\U1|COUNT[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|Add0~65_sumout\,
	clrn => \RSTN~input_o\,
	sclr => \U1|Equal0~4_combout\,
	ena => \U1|STATUS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(19));

-- Location: LABCELL_X52_Y16_N18
\U1|Equal0~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Equal0~2_combout\ = ( !\U1|COUNT\(17) & ( !\U1|COUNT\(19) & ( (!\U1|COUNT\(16) & (\U1|COUNT\(1) & (!\U1|COUNT\(11) & !\U1|COUNT\(18)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_COUNT\(16),
	datab => \U1|ALT_INV_COUNT\(1),
	datac => \U1|ALT_INV_COUNT\(11),
	datad => \U1|ALT_INV_COUNT\(18),
	datae => \U1|ALT_INV_COUNT\(17),
	dataf => \U1|ALT_INV_COUNT\(19),
	combout => \U1|Equal0~2_combout\);

-- Location: FF_X52_Y16_N32
\U1|COUNT[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|Add0~5_sumout\,
	clrn => \RSTN~input_o\,
	sclr => \U1|Equal0~4_combout\,
	ena => \U1|STATUS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT[0]~DUPLICATE_q\);

-- Location: FF_X52_Y16_N58
\U1|COUNT[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|Add0~53_sumout\,
	clrn => \RSTN~input_o\,
	sclr => \U1|Equal0~4_combout\,
	ena => \U1|STATUS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(9));

-- Location: LABCELL_X52_Y15_N30
\U1|Add0~45\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~45_sumout\ = SUM(( \U1|COUNT\(20) ) + ( VCC ) + ( \U1|Add0~66\ ))
-- \U1|Add0~46\ = CARRY(( \U1|COUNT\(20) ) + ( VCC ) + ( \U1|Add0~66\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_COUNT\(20),
	cin => \U1|Add0~66\,
	sumout => \U1|Add0~45_sumout\,
	cout => \U1|Add0~46\);

-- Location: FF_X52_Y15_N31
\U1|COUNT[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|Add0~45_sumout\,
	clrn => \RSTN~input_o\,
	sclr => \U1|Equal0~4_combout\,
	ena => \U1|STATUS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(20));

-- Location: LABCELL_X52_Y15_N33
\U1|Add0~41\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~41_sumout\ = SUM(( \U1|COUNT\(21) ) + ( VCC ) + ( \U1|Add0~46\ ))
-- \U1|Add0~42\ = CARRY(( \U1|COUNT\(21) ) + ( VCC ) + ( \U1|Add0~46\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_COUNT\(21),
	cin => \U1|Add0~46\,
	sumout => \U1|Add0~41_sumout\,
	cout => \U1|Add0~42\);

-- Location: FF_X52_Y15_N35
\U1|COUNT[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|Add0~41_sumout\,
	clrn => \RSTN~input_o\,
	sclr => \U1|Equal0~4_combout\,
	ena => \U1|STATUS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(21));

-- Location: LABCELL_X52_Y15_N36
\U1|Add0~37\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~37_sumout\ = SUM(( \U1|COUNT\(22) ) + ( VCC ) + ( \U1|Add0~42\ ))
-- \U1|Add0~38\ = CARRY(( \U1|COUNT\(22) ) + ( VCC ) + ( \U1|Add0~42\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_COUNT\(22),
	cin => \U1|Add0~42\,
	sumout => \U1|Add0~37_sumout\,
	cout => \U1|Add0~38\);

-- Location: FF_X52_Y15_N38
\U1|COUNT[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|Add0~37_sumout\,
	clrn => \RSTN~input_o\,
	sclr => \U1|Equal0~4_combout\,
	ena => \U1|STATUS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(22));

-- Location: FF_X52_Y15_N1
\U1|COUNT[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|Add0~49_sumout\,
	clrn => \RSTN~input_o\,
	sclr => \U1|Equal0~4_combout\,
	ena => \U1|STATUS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(10));

-- Location: LABCELL_X52_Y15_N39
\U1|Add0~33\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~33_sumout\ = SUM(( \U1|COUNT\(23) ) + ( VCC ) + ( \U1|Add0~38\ ))
-- \U1|Add0~34\ = CARRY(( \U1|COUNT\(23) ) + ( VCC ) + ( \U1|Add0~38\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_COUNT\(23),
	cin => \U1|Add0~38\,
	sumout => \U1|Add0~33_sumout\,
	cout => \U1|Add0~34\);

-- Location: FF_X52_Y15_N40
\U1|COUNT[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|Add0~33_sumout\,
	clrn => \RSTN~input_o\,
	sclr => \U1|Equal0~4_combout\,
	ena => \U1|STATUS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(23));

-- Location: LABCELL_X52_Y16_N24
\U1|Equal0~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Equal0~1_combout\ = ( !\U1|COUNT\(10) & ( !\U1|COUNT\(23) & ( (!\U1|COUNT\(9) & (!\U1|COUNT\(20) & (!\U1|COUNT\(21) & !\U1|COUNT\(22)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_COUNT\(9),
	datab => \U1|ALT_INV_COUNT\(20),
	datac => \U1|ALT_INV_COUNT\(21),
	datad => \U1|ALT_INV_COUNT\(22),
	datae => \U1|ALT_INV_COUNT\(10),
	dataf => \U1|ALT_INV_COUNT\(23),
	combout => \U1|Equal0~1_combout\);

-- Location: LABCELL_X52_Y16_N6
\U1|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Equal0~0_combout\ = ( !\U1|COUNT\(4) & ( !\U1|COUNT\(6) & ( (!\U1|COUNT\(8) & (!\U1|COUNT\(3) & (!\U1|COUNT\(7) & !\U1|COUNT\(5)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_COUNT\(8),
	datab => \U1|ALT_INV_COUNT\(3),
	datac => \U1|ALT_INV_COUNT\(7),
	datad => \U1|ALT_INV_COUNT\(5),
	datae => \U1|ALT_INV_COUNT\(4),
	dataf => \U1|ALT_INV_COUNT\(6),
	combout => \U1|Equal0~0_combout\);

-- Location: FF_X52_Y15_N7
\U1|COUNT[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|Add0~81_sumout\,
	clrn => \RSTN~input_o\,
	sclr => \U1|Equal0~4_combout\,
	ena => \U1|STATUS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(12));

-- Location: LABCELL_X52_Y15_N42
\U1|Add0~101\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~101_sumout\ = SUM(( \U1|COUNT\(24) ) + ( VCC ) + ( \U1|Add0~34\ ))
-- \U1|Add0~102\ = CARRY(( \U1|COUNT\(24) ) + ( VCC ) + ( \U1|Add0~34\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U1|ALT_INV_COUNT\(24),
	cin => \U1|Add0~34\,
	sumout => \U1|Add0~101_sumout\,
	cout => \U1|Add0~102\);

-- Location: FF_X52_Y15_N44
\U1|COUNT[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|Add0~101_sumout\,
	clrn => \RSTN~input_o\,
	sclr => \U1|Equal0~4_combout\,
	ena => \U1|STATUS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(24));

-- Location: LABCELL_X52_Y15_N45
\U1|Add0~97\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Add0~97_sumout\ = SUM(( \U1|COUNT\(25) ) + ( VCC ) + ( \U1|Add0~102\ ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000111100001111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \U1|ALT_INV_COUNT\(25),
	cin => \U1|Add0~102\,
	sumout => \U1|Add0~97_sumout\);

-- Location: FF_X52_Y15_N47
\U1|COUNT[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|Add0~97_sumout\,
	clrn => \RSTN~input_o\,
	sclr => \U1|Equal0~4_combout\,
	ena => \U1|STATUS~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|COUNT\(25));

-- Location: LABCELL_X52_Y15_N48
\U1|Equal0~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Equal0~3_combout\ = ( !\U1|COUNT\(25) & ( !\U1|COUNT\(15) & ( (!\U1|COUNT\(12) & (!\U1|COUNT\(14) & (!\U1|COUNT\(13) & !\U1|COUNT\(24)))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_COUNT\(12),
	datab => \U1|ALT_INV_COUNT\(14),
	datac => \U1|ALT_INV_COUNT\(13),
	datad => \U1|ALT_INV_COUNT\(24),
	datae => \U1|ALT_INV_COUNT\(25),
	dataf => \U1|ALT_INV_COUNT\(15),
	combout => \U1|Equal0~3_combout\);

-- Location: LABCELL_X52_Y16_N12
\U1|Equal0~4\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|Equal0~4_combout\ = ( !\U1|COUNT\(2) & ( \U1|Equal0~3_combout\ & ( (\U1|Equal0~2_combout\ & (!\U1|COUNT[0]~DUPLICATE_q\ & (\U1|Equal0~1_combout\ & \U1|Equal0~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000001000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U1|ALT_INV_Equal0~2_combout\,
	datab => \U1|ALT_INV_COUNT[0]~DUPLICATE_q\,
	datac => \U1|ALT_INV_Equal0~1_combout\,
	datad => \U1|ALT_INV_Equal0~0_combout\,
	datae => \U1|ALT_INV_COUNT\(2),
	dataf => \U1|ALT_INV_Equal0~3_combout\,
	combout => \U1|Equal0~4_combout\);

-- Location: LABCELL_X53_Y16_N42
\U1|ENABLE~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U1|ENABLE~0_combout\ = ( \U1|ENABLE~q\ & ( \U1|Equal0~4_combout\ & ( ((!\STARN~input_o\) # (\U1|STATUS~q\)) # (\STOPN~input_o\) ) ) ) # ( !\U1|ENABLE~q\ & ( \U1|Equal0~4_combout\ & ( \U1|STATUS~q\ ) ) ) # ( \U1|ENABLE~q\ & ( !\U1|Equal0~4_combout\ & ( 
-- (!\U1|STATUS~q\ & ((!\STARN~input_o\) # (\STOPN~input_o\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111100110000000000000000111111111111001111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_STOPN~input_o\,
	datac => \ALT_INV_STARN~input_o\,
	datad => \U1|ALT_INV_STATUS~q\,
	datae => \U1|ALT_INV_ENABLE~q\,
	dataf => \U1|ALT_INV_Equal0~4_combout\,
	combout => \U1|ENABLE~0_combout\);

-- Location: FF_X53_Y16_N44
\U1|ENABLE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U1|ENABLE~0_combout\,
	clrn => \RSTN~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U1|ENABLE~q\);

-- Location: FF_X50_Y16_N50
\U2|COUNT_IN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT_IN[0]~3_combout\,
	clrn => \RSTN~input_o\,
	ena => \U1|ENABLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT_IN\(0));

-- Location: FF_X50_Y16_N23
\U2|COUNT_IN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT_IN~1_combout\,
	clrn => \RSTN~input_o\,
	ena => \U1|ENABLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT_IN\(2));

-- Location: FF_X50_Y16_N20
\U2|COUNT_IN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT_IN~0_combout\,
	clrn => \RSTN~input_o\,
	ena => \U1|ENABLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT_IN\(1));

-- Location: FF_X50_Y16_N29
\U2|COUNT_IN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT_IN~2_combout\,
	clrn => \RSTN~input_o\,
	ena => \U1|ENABLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT_IN\(3));

-- Location: LABCELL_X50_Y16_N27
\U2|COUNT_IN~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT_IN~2_combout\ = ( \U2|COUNT_IN\(3) & ( \U2|COUNT_IN[2]~DUPLICATE_q\ & ( (!\U2|COUNT_IN\(1)) # (!\U2|COUNT_IN\(0)) ) ) ) # ( !\U2|COUNT_IN\(3) & ( \U2|COUNT_IN[2]~DUPLICATE_q\ & ( (\U2|COUNT_IN\(1) & \U2|COUNT_IN\(0)) ) ) ) # ( \U2|COUNT_IN\(3) & 
-- ( !\U2|COUNT_IN[2]~DUPLICATE_q\ & ( (!\U2|COUNT_IN\(0)) # (\U2|COUNT_IN\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000111111110101010100000000010101011111111110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_COUNT_IN\(1),
	datad => \U2|ALT_INV_COUNT_IN\(0),
	datae => \U2|ALT_INV_COUNT_IN\(3),
	dataf => \U2|ALT_INV_COUNT_IN[2]~DUPLICATE_q\,
	combout => \U2|COUNT_IN~2_combout\);

-- Location: FF_X50_Y16_N28
\U2|COUNT_IN[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT_IN~2_combout\,
	clrn => \RSTN~input_o\,
	ena => \U1|ENABLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT_IN[3]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y16_N18
\U2|COUNT_IN~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT_IN~0_combout\ = ( \U2|COUNT_IN[3]~DUPLICATE_q\ & ( (!\U2|COUNT_IN\(0) & ((\U2|COUNT_IN\(1)))) # (\U2|COUNT_IN\(0) & (\U2|COUNT_IN\(2) & !\U2|COUNT_IN\(1))) ) ) # ( !\U2|COUNT_IN[3]~DUPLICATE_q\ & ( !\U2|COUNT_IN\(0) $ (!\U2|COUNT_IN\(1)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101010110101010010101011010101000000101101010100000010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_COUNT_IN\(0),
	datac => \U2|ALT_INV_COUNT_IN\(2),
	datad => \U2|ALT_INV_COUNT_IN\(1),
	dataf => \U2|ALT_INV_COUNT_IN[3]~DUPLICATE_q\,
	combout => \U2|COUNT_IN~0_combout\);

-- Location: FF_X50_Y16_N19
\U2|COUNT_IN[1]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT_IN~0_combout\,
	clrn => \RSTN~input_o\,
	ena => \U1|ENABLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT_IN[1]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y16_N21
\U2|COUNT_IN~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|COUNT_IN~1_combout\ = ( \U2|COUNT_IN[1]~DUPLICATE_q\ & ( !\U2|COUNT_IN\(0) $ (!\U2|COUNT_IN\(2)) ) ) # ( !\U2|COUNT_IN[1]~DUPLICATE_q\ & ( \U2|COUNT_IN\(2) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011111111000000001111111101010101101010100101010110101010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_COUNT_IN\(0),
	datad => \U2|ALT_INV_COUNT_IN\(2),
	dataf => \U2|ALT_INV_COUNT_IN[1]~DUPLICATE_q\,
	combout => \U2|COUNT_IN~1_combout\);

-- Location: FF_X50_Y16_N22
\U2|COUNT_IN[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U2|COUNT_IN~1_combout\,
	clrn => \RSTN~input_o\,
	ena => \U1|ENABLE~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U2|COUNT_IN[2]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y16_N51
CO : cyclonev_lcell_comb
-- Equation(s):
-- \CO~combout\ = ( \U2|COUNT_IN[3]~DUPLICATE_q\ & ( (\U2|COUNT_IN\(0) & (!\U2|COUNT_IN[2]~DUPLICATE_q\ & (\U1|ENABLE~q\ & !\U2|COUNT_IN[1]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000100000000000000010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_COUNT_IN\(0),
	datab => \U2|ALT_INV_COUNT_IN[2]~DUPLICATE_q\,
	datac => \U1|ALT_INV_ENABLE~q\,
	datad => \U2|ALT_INV_COUNT_IN[1]~DUPLICATE_q\,
	dataf => \U2|ALT_INV_COUNT_IN[3]~DUPLICATE_q\,
	combout => \CO~combout\);

-- Location: FF_X50_Y16_N32
\U3|COUNT_IN[2]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|COUNT_IN~2_combout\,
	clrn => \RSTN~input_o\,
	ena => \CO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|COUNT_IN[2]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y16_N15
\U3|COUNT_IN~3\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|COUNT_IN~3_combout\ = ( \U3|COUNT_IN\(1) & ( !\U3|COUNT_IN\(3) $ (((!\U3|COUNT_IN\(0)) # (!\U3|COUNT_IN[2]~DUPLICATE_q\))) ) ) # ( !\U3|COUNT_IN\(1) & ( (\U3|COUNT_IN\(3) & ((!\U3|COUNT_IN\(0)) # (\U3|COUNT_IN[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010101111000000001010111100000101111110100000010111111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_COUNT_IN\(0),
	datac => \U3|ALT_INV_COUNT_IN[2]~DUPLICATE_q\,
	datad => \U3|ALT_INV_COUNT_IN\(3),
	dataf => \U3|ALT_INV_COUNT_IN\(1),
	combout => \U3|COUNT_IN~3_combout\);

-- Location: FF_X50_Y16_N17
\U3|COUNT_IN[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|COUNT_IN~3_combout\,
	clrn => \RSTN~input_o\,
	ena => \CO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|COUNT_IN\(3));

-- Location: LABCELL_X50_Y16_N12
\U2|Equal0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U2|Equal0~0_combout\ = ( \U2|COUNT_IN\(0) & ( (!\U2|COUNT_IN[2]~DUPLICATE_q\ & (!\U2|COUNT_IN[1]~DUPLICATE_q\ & \U2|COUNT_IN\(3))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000110000000000000011000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U2|ALT_INV_COUNT_IN[2]~DUPLICATE_q\,
	datac => \U2|ALT_INV_COUNT_IN[1]~DUPLICATE_q\,
	datad => \U2|ALT_INV_COUNT_IN\(3),
	dataf => \U2|ALT_INV_COUNT_IN\(0),
	combout => \U2|Equal0~0_combout\);

-- Location: LABCELL_X50_Y16_N0
\U3|COUNT_IN~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|COUNT_IN~0_combout\ = ( \U2|Equal0~0_combout\ & ( (!\U3|COUNT_IN\(0) & (((\U3|COUNT_IN\(2) & \U3|COUNT_IN\(1))) # (\U3|COUNT_IN\(3)))) ) ) # ( !\U2|Equal0~0_combout\ & ( !\U3|COUNT_IN\(0) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "1111111100000000111111110000000000110111000000000011011100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_COUNT_IN\(2),
	datab => \U3|ALT_INV_COUNT_IN\(3),
	datac => \U3|ALT_INV_COUNT_IN\(1),
	datad => \U3|ALT_INV_COUNT_IN\(0),
	dataf => \U2|ALT_INV_Equal0~0_combout\,
	combout => \U3|COUNT_IN~0_combout\);

-- Location: FF_X50_Y16_N2
\U3|COUNT_IN[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|COUNT_IN~0_combout\,
	clrn => \RSTN~input_o\,
	ena => \CO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|COUNT_IN\(0));

-- Location: LABCELL_X50_Y16_N30
\U3|COUNT_IN~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|COUNT_IN~2_combout\ = ( \U2|Equal0~0_combout\ & ( (!\U3|COUNT_IN\(0) & (\U3|COUNT_IN\(2) & ((\U3|COUNT_IN\(1)) # (\U3|COUNT_IN\(3))))) # (\U3|COUNT_IN\(0) & (\U3|COUNT_IN\(3) & (!\U3|COUNT_IN\(1) $ (!\U3|COUNT_IN\(2))))) ) ) # ( !\U2|Equal0~0_combout\ 
-- & ( !\U3|COUNT_IN\(2) $ (((!\U3|COUNT_IN\(0)) # (!\U3|COUNT_IN\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010111111010000001011111101000000001001110100000000100111010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_COUNT_IN\(0),
	datab => \U3|ALT_INV_COUNT_IN\(3),
	datac => \U3|ALT_INV_COUNT_IN\(1),
	datad => \U3|ALT_INV_COUNT_IN\(2),
	dataf => \U2|ALT_INV_Equal0~0_combout\,
	combout => \U3|COUNT_IN~2_combout\);

-- Location: FF_X50_Y16_N31
\U3|COUNT_IN[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|COUNT_IN~2_combout\,
	clrn => \RSTN~input_o\,
	ena => \CO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|COUNT_IN\(2));

-- Location: FF_X50_Y16_N1
\U3|COUNT_IN[0]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|COUNT_IN~0_combout\,
	clrn => \RSTN~input_o\,
	ena => \CO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|COUNT_IN[0]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y16_N3
\U3|COUNT_IN~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \U3|COUNT_IN~1_combout\ = ( \U3|COUNT_IN[0]~DUPLICATE_q\ & ( (!\U3|COUNT_IN\(1) & ((!\U3|COUNT_IN\(3) & ((!\U2|Equal0~0_combout\))) # (\U3|COUNT_IN\(3) & (\U3|COUNT_IN\(2))))) ) ) # ( !\U3|COUNT_IN[0]~DUPLICATE_q\ & ( (\U3|COUNT_IN\(1) & 
-- (((!\U2|Equal0~0_combout\) # (\U3|COUNT_IN\(3))) # (\U3|COUNT_IN\(2)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000011110111000000001111011111010001000000001101000100000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_COUNT_IN\(2),
	datab => \U3|ALT_INV_COUNT_IN\(3),
	datac => \U2|ALT_INV_Equal0~0_combout\,
	datad => \U3|ALT_INV_COUNT_IN\(1),
	dataf => \U3|ALT_INV_COUNT_IN[0]~DUPLICATE_q\,
	combout => \U3|COUNT_IN~1_combout\);

-- Location: FF_X50_Y16_N5
\U3|COUNT_IN[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|COUNT_IN~1_combout\,
	clrn => \RSTN~input_o\,
	ena => \CO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|COUNT_IN\(1));

-- Location: FF_X50_Y16_N16
\U3|COUNT_IN[3]~DUPLICATE\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputCLKENA0_outclk\,
	d => \U3|COUNT_IN~3_combout\,
	clrn => \RSTN~input_o\,
	ena => \CO~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \U3|COUNT_IN[3]~DUPLICATE_q\);

-- Location: LABCELL_X50_Y16_N54
\U5|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U5|Mux6~0_combout\ = ( !\U3|COUNT_IN[3]~DUPLICATE_q\ & ( (!\U3|COUNT_IN\(1) & (!\U3|COUNT_IN[2]~DUPLICATE_q\ $ (!\U3|COUNT_IN\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010100000101000001010000010100000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_COUNT_IN\(1),
	datab => \U3|ALT_INV_COUNT_IN[2]~DUPLICATE_q\,
	datac => \U3|ALT_INV_COUNT_IN\(0),
	dataf => \U3|ALT_INV_COUNT_IN[3]~DUPLICATE_q\,
	combout => \U5|Mux6~0_combout\);

-- Location: LABCELL_X50_Y16_N57
\U5|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U5|Mux5~0_combout\ = ( \U3|COUNT_IN[3]~DUPLICATE_q\ & ( (\U3|COUNT_IN[2]~DUPLICATE_q\) # (\U3|COUNT_IN\(1)) ) ) # ( !\U3|COUNT_IN[3]~DUPLICATE_q\ & ( (\U3|COUNT_IN[2]~DUPLICATE_q\ & (!\U3|COUNT_IN\(1) $ (!\U3|COUNT_IN\(0)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100001010000001010000101001011111010111110101111101011111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_COUNT_IN\(1),
	datac => \U3|ALT_INV_COUNT_IN[2]~DUPLICATE_q\,
	datad => \U3|ALT_INV_COUNT_IN\(0),
	dataf => \U3|ALT_INV_COUNT_IN[3]~DUPLICATE_q\,
	combout => \U5|Mux5~0_combout\);

-- Location: LABCELL_X50_Y16_N36
\U5|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U5|Mux4~0_combout\ = ( \U3|COUNT_IN[3]~DUPLICATE_q\ & ( (\U3|COUNT_IN\(1)) # (\U3|COUNT_IN[2]~DUPLICATE_q\) ) ) # ( !\U3|COUNT_IN[3]~DUPLICATE_q\ & ( (!\U3|COUNT_IN[2]~DUPLICATE_q\ & (\U3|COUNT_IN\(1) & !\U3|COUNT_IN\(0))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000000011000000000000111111001111110011111100111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \U3|ALT_INV_COUNT_IN[2]~DUPLICATE_q\,
	datac => \U3|ALT_INV_COUNT_IN\(1),
	datad => \U3|ALT_INV_COUNT_IN\(0),
	dataf => \U3|ALT_INV_COUNT_IN[3]~DUPLICATE_q\,
	combout => \U5|Mux4~0_combout\);

-- Location: LABCELL_X50_Y16_N39
\U5|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U5|Mux2~0_combout\ = ( \U3|COUNT_IN[3]~DUPLICATE_q\ & ( ((\U3|COUNT_IN[0]~DUPLICATE_q\) # (\U3|COUNT_IN[2]~DUPLICATE_q\)) # (\U3|COUNT_IN\(1)) ) ) # ( !\U3|COUNT_IN[3]~DUPLICATE_q\ & ( ((!\U3|COUNT_IN\(1) & \U3|COUNT_IN[2]~DUPLICATE_q\)) # 
-- (\U3|COUNT_IN[0]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010111100101111001011110010111101111111011111110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_COUNT_IN\(1),
	datab => \U3|ALT_INV_COUNT_IN[2]~DUPLICATE_q\,
	datac => \U3|ALT_INV_COUNT_IN[0]~DUPLICATE_q\,
	dataf => \U3|ALT_INV_COUNT_IN[3]~DUPLICATE_q\,
	combout => \U5|Mux2~0_combout\);

-- Location: LABCELL_X50_Y16_N33
\U5|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U5|Mux1~0_combout\ = ( \U3|COUNT_IN[3]~DUPLICATE_q\ & ( (\U3|COUNT_IN\(1)) # (\U3|COUNT_IN[2]~DUPLICATE_q\) ) ) # ( !\U3|COUNT_IN[3]~DUPLICATE_q\ & ( (!\U3|COUNT_IN\(0) & (!\U3|COUNT_IN[2]~DUPLICATE_q\ & \U3|COUNT_IN\(1))) # (\U3|COUNT_IN\(0) & 
-- ((!\U3|COUNT_IN[2]~DUPLICATE_q\) # (\U3|COUNT_IN\(1)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101000011110101010100001111010100001111111111110000111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_COUNT_IN\(0),
	datac => \U3|ALT_INV_COUNT_IN[2]~DUPLICATE_q\,
	datad => \U3|ALT_INV_COUNT_IN\(1),
	dataf => \U3|ALT_INV_COUNT_IN[3]~DUPLICATE_q\,
	combout => \U5|Mux1~0_combout\);

-- Location: LABCELL_X50_Y16_N45
\U5|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U5|Mux0~0_combout\ = ( \U3|COUNT_IN\(0) & ( \U3|COUNT_IN[3]~DUPLICATE_q\ ) ) # ( !\U3|COUNT_IN\(0) & ( \U3|COUNT_IN[3]~DUPLICATE_q\ ) ) # ( \U3|COUNT_IN\(0) & ( !\U3|COUNT_IN[3]~DUPLICATE_q\ & ( !\U3|COUNT_IN\(1) $ (!\U3|COUNT_IN[2]~DUPLICATE_q\) ) ) ) # 
-- ( !\U3|COUNT_IN\(0) & ( !\U3|COUNT_IN[3]~DUPLICATE_q\ & ( (\U3|COUNT_IN[2]~DUPLICATE_q\) # (\U3|COUNT_IN\(1)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101111101011111010110100101101011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U3|ALT_INV_COUNT_IN\(1),
	datac => \U3|ALT_INV_COUNT_IN[2]~DUPLICATE_q\,
	datae => \U3|ALT_INV_COUNT_IN\(0),
	dataf => \U3|ALT_INV_COUNT_IN[3]~DUPLICATE_q\,
	combout => \U5|Mux0~0_combout\);

-- Location: LABCELL_X52_Y17_N36
\U4|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|Mux6~0_combout\ = ( \U2|COUNT_IN\(0) & ( (!\U2|COUNT_IN[1]~DUPLICATE_q\ & (!\U2|COUNT_IN[2]~DUPLICATE_q\ & !\U2|COUNT_IN[3]~DUPLICATE_q\)) ) ) # ( !\U2|COUNT_IN\(0) & ( (!\U2|COUNT_IN[1]~DUPLICATE_q\ & (\U2|COUNT_IN[2]~DUPLICATE_q\ & 
-- !\U2|COUNT_IN[3]~DUPLICATE_q\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010000000100000100000001000000000100000001000001000000010000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_COUNT_IN[1]~DUPLICATE_q\,
	datab => \U2|ALT_INV_COUNT_IN[2]~DUPLICATE_q\,
	datac => \U2|ALT_INV_COUNT_IN[3]~DUPLICATE_q\,
	datae => \U2|ALT_INV_COUNT_IN\(0),
	combout => \U4|Mux6~0_combout\);

-- Location: LABCELL_X52_Y17_N42
\U4|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|Mux5~0_combout\ = ( \U2|COUNT_IN\(0) & ( (!\U2|COUNT_IN[1]~DUPLICATE_q\ & (\U2|COUNT_IN[2]~DUPLICATE_q\)) # (\U2|COUNT_IN[1]~DUPLICATE_q\ & ((\U2|COUNT_IN[3]~DUPLICATE_q\))) ) ) # ( !\U2|COUNT_IN\(0) & ( (!\U2|COUNT_IN[1]~DUPLICATE_q\ & 
-- (\U2|COUNT_IN[2]~DUPLICATE_q\ & \U2|COUNT_IN[3]~DUPLICATE_q\)) # (\U2|COUNT_IN[1]~DUPLICATE_q\ & ((\U2|COUNT_IN[3]~DUPLICATE_q\) # (\U2|COUNT_IN[2]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001011100010111001001110010011100010111000101110010011100100111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_COUNT_IN[1]~DUPLICATE_q\,
	datab => \U2|ALT_INV_COUNT_IN[2]~DUPLICATE_q\,
	datac => \U2|ALT_INV_COUNT_IN[3]~DUPLICATE_q\,
	datae => \U2|ALT_INV_COUNT_IN\(0),
	combout => \U4|Mux5~0_combout\);

-- Location: LABCELL_X52_Y17_N24
\U4|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|Mux4~0_combout\ = ( \U2|COUNT_IN\(0) & ( (\U2|COUNT_IN[3]~DUPLICATE_q\ & ((\U2|COUNT_IN[2]~DUPLICATE_q\) # (\U2|COUNT_IN[1]~DUPLICATE_q\))) ) ) # ( !\U2|COUNT_IN\(0) & ( (!\U2|COUNT_IN[2]~DUPLICATE_q\ & (\U2|COUNT_IN[1]~DUPLICATE_q\)) # 
-- (\U2|COUNT_IN[2]~DUPLICATE_q\ & ((\U2|COUNT_IN[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0100011101000111000001110000011101000111010001110000011100000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_COUNT_IN[1]~DUPLICATE_q\,
	datab => \U2|ALT_INV_COUNT_IN[2]~DUPLICATE_q\,
	datac => \U2|ALT_INV_COUNT_IN[3]~DUPLICATE_q\,
	datae => \U2|ALT_INV_COUNT_IN\(0),
	combout => \U4|Mux4~0_combout\);

-- Location: LABCELL_X52_Y17_N18
\U4|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|Mux2~0_combout\ = ( \U2|COUNT_IN\(0) ) # ( !\U2|COUNT_IN\(0) & ( (!\U2|COUNT_IN[1]~DUPLICATE_q\ & (\U2|COUNT_IN[2]~DUPLICATE_q\)) # (\U2|COUNT_IN[1]~DUPLICATE_q\ & ((\U2|COUNT_IN[3]~DUPLICATE_q\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0010011100100111111111111111111100100111001001111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_COUNT_IN[1]~DUPLICATE_q\,
	datab => \U2|ALT_INV_COUNT_IN[2]~DUPLICATE_q\,
	datac => \U2|ALT_INV_COUNT_IN[3]~DUPLICATE_q\,
	datae => \U2|ALT_INV_COUNT_IN\(0),
	combout => \U4|Mux2~0_combout\);

-- Location: LABCELL_X52_Y17_N15
\U4|Mux1~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|Mux1~0_combout\ = ( \U2|COUNT_IN\(0) & ( \U2|COUNT_IN[1]~DUPLICATE_q\ ) ) # ( !\U2|COUNT_IN\(0) & ( \U2|COUNT_IN[1]~DUPLICATE_q\ & ( (!\U2|COUNT_IN[2]~DUPLICATE_q\) # (\U2|COUNT_IN[3]~DUPLICATE_q\) ) ) ) # ( \U2|COUNT_IN\(0) & ( 
-- !\U2|COUNT_IN[1]~DUPLICATE_q\ & ( !\U2|COUNT_IN[3]~DUPLICATE_q\ $ (\U2|COUNT_IN[2]~DUPLICATE_q\) ) ) ) # ( !\U2|COUNT_IN\(0) & ( !\U2|COUNT_IN[1]~DUPLICATE_q\ & ( (\U2|COUNT_IN[3]~DUPLICATE_q\ & \U2|COUNT_IN[2]~DUPLICATE_q\) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000010100000101101001011010010111110101111101011111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_COUNT_IN[3]~DUPLICATE_q\,
	datac => \U2|ALT_INV_COUNT_IN[2]~DUPLICATE_q\,
	datae => \U2|ALT_INV_COUNT_IN\(0),
	dataf => \U2|ALT_INV_COUNT_IN[1]~DUPLICATE_q\,
	combout => \U4|Mux1~0_combout\);

-- Location: LABCELL_X52_Y17_N54
\U4|Mux0~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \U4|Mux0~0_combout\ = ( \U2|COUNT_IN\(0) & ( (!\U2|COUNT_IN[1]~DUPLICATE_q\ $ (!\U2|COUNT_IN[2]~DUPLICATE_q\)) # (\U2|COUNT_IN[3]~DUPLICATE_q\) ) ) # ( !\U2|COUNT_IN\(0) & ( ((\U2|COUNT_IN[3]~DUPLICATE_q\) # (\U2|COUNT_IN[2]~DUPLICATE_q\)) # 
-- (\U2|COUNT_IN[1]~DUPLICATE_q\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111111101111111011011110110111101111111011111110110111101101111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \U2|ALT_INV_COUNT_IN[1]~DUPLICATE_q\,
	datab => \U2|ALT_INV_COUNT_IN[2]~DUPLICATE_q\,
	datac => \U2|ALT_INV_COUNT_IN[3]~DUPLICATE_q\,
	datae => \U2|ALT_INV_COUNT_IN\(0),
	combout => \U4|Mux0~0_combout\);

-- Location: LABCELL_X43_Y25_N3
\~QUARTUS_CREATED_GND~I\ : cyclonev_lcell_comb
-- Equation(s):

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000000000000000000000",
	shared_arith => "off")
-- pragma translate_on
;
END structure;


