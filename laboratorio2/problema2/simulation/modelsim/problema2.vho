-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "03/14/2023 23:04:46"

-- 
-- Device: Altera 5CSEMA5F31C6 Package FBGA896
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	problema2 IS
    PORT (
	operandoA : IN std_logic_vector(3 DOWNTO 0);
	operandoB : IN std_logic_vector(3 DOWNTO 0);
	carryEntrada : IN std_logic;
	sieteSegmentos0 : BUFFER std_logic_vector(6 DOWNTO 0);
	sieteSegmentos1 : BUFFER std_logic_vector(6 DOWNTO 0)
	);
END problema2;

-- Design Ports Information
-- sieteSegmentos0[0]	=>  Location: PIN_AE26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sieteSegmentos0[1]	=>  Location: PIN_AE27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sieteSegmentos0[2]	=>  Location: PIN_AE28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sieteSegmentos0[3]	=>  Location: PIN_AG27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sieteSegmentos0[4]	=>  Location: PIN_AF28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sieteSegmentos0[5]	=>  Location: PIN_AG28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sieteSegmentos0[6]	=>  Location: PIN_AH28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sieteSegmentos1[0]	=>  Location: PIN_AJ29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sieteSegmentos1[1]	=>  Location: PIN_AH29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sieteSegmentos1[2]	=>  Location: PIN_AH30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sieteSegmentos1[3]	=>  Location: PIN_AG30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sieteSegmentos1[4]	=>  Location: PIN_AF29,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sieteSegmentos1[5]	=>  Location: PIN_AF30,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sieteSegmentos1[6]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operandoA[0]	=>  Location: PIN_AD11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operandoB[0]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- carryEntrada	=>  Location: PIN_AE12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operandoA[1]	=>  Location: PIN_AD12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operandoB[1]	=>  Location: PIN_AC12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operandoA[2]	=>  Location: PIN_AE11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operandoB[2]	=>  Location: PIN_AF9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operandoA[3]	=>  Location: PIN_AC9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- operandoB[3]	=>  Location: PIN_AF10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF problema2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_operandoA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_operandoB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_carryEntrada : std_logic;
SIGNAL ww_sieteSegmentos0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_sieteSegmentos1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \operandoB[0]~input_o\ : std_logic;
SIGNAL \carryEntrada~input_o\ : std_logic;
SIGNAL \operandoA[0]~input_o\ : std_logic;
SIGNAL \instanciaModuloSumadorCompletoCuatroBits|sumador0|resultado~combout\ : std_logic;
SIGNAL \operandoA[1]~input_o\ : std_logic;
SIGNAL \operandoB[1]~input_o\ : std_logic;
SIGNAL \instanciaModuloSumadorCompletoCuatroBits|sumador1|carrySalida~0_combout\ : std_logic;
SIGNAL \operandoA[2]~input_o\ : std_logic;
SIGNAL \operandoB[2]~input_o\ : std_logic;
SIGNAL \instanciaModuloSumadorCompletoCuatroBits|sumador2|resultado~combout\ : std_logic;
SIGNAL \instanciaModuloSumadorCompletoCuatroBits|sumador1|resultado~combout\ : std_logic;
SIGNAL \operandoB[3]~input_o\ : std_logic;
SIGNAL \operandoA[3]~input_o\ : std_logic;
SIGNAL \instanciaModuloSumadorCompletoCuatroBits|sumador3|resultado~combout\ : std_logic;
SIGNAL \instanciaModuloDisplaySieteSegmentos|Mux8~0_combout\ : std_logic;
SIGNAL \instanciaModuloDisplaySieteSegmentos|Mux7~0_combout\ : std_logic;
SIGNAL \instanciaModuloDisplaySieteSegmentos|Mux6~0_combout\ : std_logic;
SIGNAL \instanciaModuloDisplaySieteSegmentos|Mux5~0_combout\ : std_logic;
SIGNAL \instanciaModuloDisplaySieteSegmentos|Mux4~0_combout\ : std_logic;
SIGNAL \instanciaModuloDisplaySieteSegmentos|Mux3~0_combout\ : std_logic;
SIGNAL \instanciaModuloDisplaySieteSegmentos|Mux2~0_combout\ : std_logic;
SIGNAL \instanciaModuloSumadorCompletoCuatroBits|sumador3|carrySalida~0_combout\ : std_logic;
SIGNAL \instanciaModuloDisplaySieteSegmentos|sieteSegmentos1[1]~0_combout\ : std_logic;
SIGNAL \instanciaModuloDisplaySieteSegmentos|sieteSegmentos1[1]~1_combout\ : std_logic;
SIGNAL \instanciaModuloDisplaySieteSegmentos|sieteSegmentos1[4]~2_combout\ : std_logic;
SIGNAL \instanciaModuloSumadorCompletoCuatroBits|sumador0|ALT_INV_resultado~combout\ : std_logic;
SIGNAL \instanciaModuloSumadorCompletoCuatroBits|sumador1|ALT_INV_resultado~combout\ : std_logic;
SIGNAL \instanciaModuloSumadorCompletoCuatroBits|sumador1|ALT_INV_carrySalida~0_combout\ : std_logic;
SIGNAL \instanciaModuloSumadorCompletoCuatroBits|sumador2|ALT_INV_resultado~combout\ : std_logic;
SIGNAL \instanciaModuloSumadorCompletoCuatroBits|sumador3|ALT_INV_resultado~combout\ : std_logic;
SIGNAL \ALT_INV_operandoB[2]~input_o\ : std_logic;
SIGNAL \ALT_INV_operandoA[3]~input_o\ : std_logic;
SIGNAL \instanciaModuloDisplaySieteSegmentos|ALT_INV_Mux2~0_combout\ : std_logic;
SIGNAL \instanciaModuloDisplaySieteSegmentos|ALT_INV_sieteSegmentos1[1]~0_combout\ : std_logic;
SIGNAL \ALT_INV_operandoA[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_operandoB[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_carryEntrada~input_o\ : std_logic;
SIGNAL \ALT_INV_operandoA[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_operandoB[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_operandoB[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_operandoA[2]~input_o\ : std_logic;

BEGIN

ww_operandoA <= operandoA;
ww_operandoB <= operandoB;
ww_carryEntrada <= carryEntrada;
sieteSegmentos0 <= ww_sieteSegmentos0;
sieteSegmentos1 <= ww_sieteSegmentos1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\instanciaModuloSumadorCompletoCuatroBits|sumador0|ALT_INV_resultado~combout\ <= NOT \instanciaModuloSumadorCompletoCuatroBits|sumador0|resultado~combout\;
\instanciaModuloSumadorCompletoCuatroBits|sumador1|ALT_INV_resultado~combout\ <= NOT \instanciaModuloSumadorCompletoCuatroBits|sumador1|resultado~combout\;
\instanciaModuloSumadorCompletoCuatroBits|sumador1|ALT_INV_carrySalida~0_combout\ <= NOT \instanciaModuloSumadorCompletoCuatroBits|sumador1|carrySalida~0_combout\;
\instanciaModuloSumadorCompletoCuatroBits|sumador2|ALT_INV_resultado~combout\ <= NOT \instanciaModuloSumadorCompletoCuatroBits|sumador2|resultado~combout\;
\instanciaModuloSumadorCompletoCuatroBits|sumador3|ALT_INV_resultado~combout\ <= NOT \instanciaModuloSumadorCompletoCuatroBits|sumador3|resultado~combout\;
\ALT_INV_operandoB[2]~input_o\ <= NOT \operandoB[2]~input_o\;
\ALT_INV_operandoA[3]~input_o\ <= NOT \operandoA[3]~input_o\;
\instanciaModuloDisplaySieteSegmentos|ALT_INV_Mux2~0_combout\ <= NOT \instanciaModuloDisplaySieteSegmentos|Mux2~0_combout\;
\instanciaModuloDisplaySieteSegmentos|ALT_INV_sieteSegmentos1[1]~0_combout\ <= NOT \instanciaModuloDisplaySieteSegmentos|sieteSegmentos1[1]~0_combout\;
\ALT_INV_operandoA[0]~input_o\ <= NOT \operandoA[0]~input_o\;
\ALT_INV_operandoB[0]~input_o\ <= NOT \operandoB[0]~input_o\;
\ALT_INV_carryEntrada~input_o\ <= NOT \carryEntrada~input_o\;
\ALT_INV_operandoA[1]~input_o\ <= NOT \operandoA[1]~input_o\;
\ALT_INV_operandoB[1]~input_o\ <= NOT \operandoB[1]~input_o\;
\ALT_INV_operandoB[3]~input_o\ <= NOT \operandoB[3]~input_o\;
\ALT_INV_operandoA[2]~input_o\ <= NOT \operandoA[2]~input_o\;

-- Location: IOOBUF_X89_Y8_N39
\sieteSegmentos0[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instanciaModuloDisplaySieteSegmentos|Mux8~0_combout\,
	devoe => ww_devoe,
	o => ww_sieteSegmentos0(0));

-- Location: IOOBUF_X89_Y11_N79
\sieteSegmentos0[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instanciaModuloDisplaySieteSegmentos|Mux7~0_combout\,
	devoe => ww_devoe,
	o => ww_sieteSegmentos0(1));

-- Location: IOOBUF_X89_Y11_N96
\sieteSegmentos0[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instanciaModuloDisplaySieteSegmentos|Mux6~0_combout\,
	devoe => ww_devoe,
	o => ww_sieteSegmentos0(2));

-- Location: IOOBUF_X89_Y4_N79
\sieteSegmentos0[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instanciaModuloDisplaySieteSegmentos|Mux5~0_combout\,
	devoe => ww_devoe,
	o => ww_sieteSegmentos0(3));

-- Location: IOOBUF_X89_Y13_N56
\sieteSegmentos0[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instanciaModuloDisplaySieteSegmentos|Mux4~0_combout\,
	devoe => ww_devoe,
	o => ww_sieteSegmentos0(4));

-- Location: IOOBUF_X89_Y13_N39
\sieteSegmentos0[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instanciaModuloDisplaySieteSegmentos|Mux3~0_combout\,
	devoe => ww_devoe,
	o => ww_sieteSegmentos0(5));

-- Location: IOOBUF_X89_Y4_N96
\sieteSegmentos0[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instanciaModuloDisplaySieteSegmentos|ALT_INV_Mux2~0_combout\,
	devoe => ww_devoe,
	o => ww_sieteSegmentos0(6));

-- Location: IOOBUF_X89_Y6_N39
\sieteSegmentos1[0]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instanciaModuloSumadorCompletoCuatroBits|sumador3|carrySalida~0_combout\,
	devoe => ww_devoe,
	o => ww_sieteSegmentos1(0));

-- Location: IOOBUF_X89_Y6_N56
\sieteSegmentos1[1]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instanciaModuloDisplaySieteSegmentos|sieteSegmentos1[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_sieteSegmentos1(1));

-- Location: IOOBUF_X89_Y16_N39
\sieteSegmentos1[2]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instanciaModuloDisplaySieteSegmentos|sieteSegmentos1[1]~1_combout\,
	devoe => ww_devoe,
	o => ww_sieteSegmentos1(2));

-- Location: IOOBUF_X89_Y16_N56
\sieteSegmentos1[3]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instanciaModuloSumadorCompletoCuatroBits|sumador3|carrySalida~0_combout\,
	devoe => ww_devoe,
	o => ww_sieteSegmentos1(3));

-- Location: IOOBUF_X89_Y15_N39
\sieteSegmentos1[4]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instanciaModuloDisplaySieteSegmentos|sieteSegmentos1[4]~2_combout\,
	devoe => ww_devoe,
	o => ww_sieteSegmentos1(4));

-- Location: IOOBUF_X89_Y15_N56
\sieteSegmentos1[5]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \instanciaModuloDisplaySieteSegmentos|sieteSegmentos1[4]~2_combout\,
	devoe => ww_devoe,
	o => ww_sieteSegmentos1(5));

-- Location: IOOBUF_X89_Y8_N56
\sieteSegmentos1[6]~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => ww_sieteSegmentos1(6));

-- Location: IOIBUF_X12_Y0_N18
\operandoB[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operandoB(0),
	o => \operandoB[0]~input_o\);

-- Location: IOIBUF_X2_Y0_N58
\carryEntrada~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_carryEntrada,
	o => \carryEntrada~input_o\);

-- Location: IOIBUF_X2_Y0_N41
\operandoA[0]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operandoA(0),
	o => \operandoA[0]~input_o\);

-- Location: LABCELL_X83_Y4_N0
\instanciaModuloSumadorCompletoCuatroBits|sumador0|resultado\ : cyclonev_lcell_comb
-- Equation(s):
-- \instanciaModuloSumadorCompletoCuatroBits|sumador0|resultado~combout\ = ( \operandoA[0]~input_o\ & ( !\operandoB[0]~input_o\ $ (\carryEntrada~input_o\) ) ) # ( !\operandoA[0]~input_o\ & ( !\operandoB[0]~input_o\ $ (!\carryEntrada~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_operandoB[0]~input_o\,
	datab => \ALT_INV_carryEntrada~input_o\,
	dataf => \ALT_INV_operandoA[0]~input_o\,
	combout => \instanciaModuloSumadorCompletoCuatroBits|sumador0|resultado~combout\);

-- Location: IOIBUF_X16_Y0_N18
\operandoA[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operandoA(1),
	o => \operandoA[1]~input_o\);

-- Location: IOIBUF_X16_Y0_N1
\operandoB[1]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operandoB(1),
	o => \operandoB[1]~input_o\);

-- Location: LABCELL_X83_Y4_N36
\instanciaModuloSumadorCompletoCuatroBits|sumador1|carrySalida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \instanciaModuloSumadorCompletoCuatroBits|sumador1|carrySalida~0_combout\ = ( \carryEntrada~input_o\ & ( (!\operandoA[1]~input_o\ & (\operandoB[1]~input_o\ & ((\operandoB[0]~input_o\) # (\operandoA[0]~input_o\)))) # (\operandoA[1]~input_o\ & 
-- (((\operandoB[1]~input_o\) # (\operandoB[0]~input_o\)) # (\operandoA[0]~input_o\))) ) ) # ( !\carryEntrada~input_o\ & ( (!\operandoA[1]~input_o\ & (\operandoA[0]~input_o\ & (\operandoB[0]~input_o\ & \operandoB[1]~input_o\))) # (\operandoA[1]~input_o\ & 
-- (((\operandoA[0]~input_o\ & \operandoB[0]~input_o\)) # (\operandoB[1]~input_o\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100110111000000010011011100010011011111110001001101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_operandoA[0]~input_o\,
	datab => \ALT_INV_operandoA[1]~input_o\,
	datac => \ALT_INV_operandoB[0]~input_o\,
	datad => \ALT_INV_operandoB[1]~input_o\,
	dataf => \ALT_INV_carryEntrada~input_o\,
	combout => \instanciaModuloSumadorCompletoCuatroBits|sumador1|carrySalida~0_combout\);

-- Location: IOIBUF_X4_Y0_N35
\operandoA[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operandoA(2),
	o => \operandoA[2]~input_o\);

-- Location: IOIBUF_X8_Y0_N35
\operandoB[2]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operandoB(2),
	o => \operandoB[2]~input_o\);

-- Location: LABCELL_X83_Y4_N12
\instanciaModuloSumadorCompletoCuatroBits|sumador2|resultado\ : cyclonev_lcell_comb
-- Equation(s):
-- \instanciaModuloSumadorCompletoCuatroBits|sumador2|resultado~combout\ = ( \operandoB[2]~input_o\ & ( !\instanciaModuloSumadorCompletoCuatroBits|sumador1|carrySalida~0_combout\ $ (\operandoA[2]~input_o\) ) ) # ( !\operandoB[2]~input_o\ & ( 
-- !\instanciaModuloSumadorCompletoCuatroBits|sumador1|carrySalida~0_combout\ $ (!\operandoA[2]~input_o\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110011001100110011001100110011010011001100110011001100110011001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instanciaModuloSumadorCompletoCuatroBits|sumador1|ALT_INV_carrySalida~0_combout\,
	datab => \ALT_INV_operandoA[2]~input_o\,
	dataf => \ALT_INV_operandoB[2]~input_o\,
	combout => \instanciaModuloSumadorCompletoCuatroBits|sumador2|resultado~combout\);

-- Location: LABCELL_X83_Y4_N3
\instanciaModuloSumadorCompletoCuatroBits|sumador1|resultado\ : cyclonev_lcell_comb
-- Equation(s):
-- \instanciaModuloSumadorCompletoCuatroBits|sumador1|resultado~combout\ = ( \operandoA[0]~input_o\ & ( !\operandoB[1]~input_o\ $ (!\operandoA[1]~input_o\ $ (((\carryEntrada~input_o\) # (\operandoB[0]~input_o\)))) ) ) # ( !\operandoA[0]~input_o\ & ( 
-- !\operandoB[1]~input_o\ $ (!\operandoA[1]~input_o\ $ (((\operandoB[0]~input_o\ & \carryEntrada~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101110000101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_operandoB[0]~input_o\,
	datab => \ALT_INV_carryEntrada~input_o\,
	datac => \ALT_INV_operandoB[1]~input_o\,
	datad => \ALT_INV_operandoA[1]~input_o\,
	dataf => \ALT_INV_operandoA[0]~input_o\,
	combout => \instanciaModuloSumadorCompletoCuatroBits|sumador1|resultado~combout\);

-- Location: IOIBUF_X4_Y0_N52
\operandoB[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operandoB(3),
	o => \operandoB[3]~input_o\);

-- Location: IOIBUF_X4_Y0_N1
\operandoA[3]~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_operandoA(3),
	o => \operandoA[3]~input_o\);

-- Location: LABCELL_X83_Y4_N15
\instanciaModuloSumadorCompletoCuatroBits|sumador3|resultado\ : cyclonev_lcell_comb
-- Equation(s):
-- \instanciaModuloSumadorCompletoCuatroBits|sumador3|resultado~combout\ = ( \operandoB[2]~input_o\ & ( !\operandoB[3]~input_o\ $ (!\operandoA[3]~input_o\ $ (((\operandoA[2]~input_o\) # 
-- (\instanciaModuloSumadorCompletoCuatroBits|sumador1|carrySalida~0_combout\)))) ) ) # ( !\operandoB[2]~input_o\ & ( !\operandoB[3]~input_o\ $ (!\operandoA[3]~input_o\ $ (((\instanciaModuloSumadorCompletoCuatroBits|sumador1|carrySalida~0_combout\ & 
-- \operandoA[2]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001111011100001000111101110000101111000100001110111100010000111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instanciaModuloSumadorCompletoCuatroBits|sumador1|ALT_INV_carrySalida~0_combout\,
	datab => \ALT_INV_operandoA[2]~input_o\,
	datac => \ALT_INV_operandoB[3]~input_o\,
	datad => \ALT_INV_operandoA[3]~input_o\,
	dataf => \ALT_INV_operandoB[2]~input_o\,
	combout => \instanciaModuloSumadorCompletoCuatroBits|sumador3|resultado~combout\);

-- Location: LABCELL_X83_Y4_N51
\instanciaModuloDisplaySieteSegmentos|Mux8~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \instanciaModuloDisplaySieteSegmentos|Mux8~0_combout\ = ( \instanciaModuloSumadorCompletoCuatroBits|sumador3|resultado~combout\ & ( (\instanciaModuloSumadorCompletoCuatroBits|sumador0|resultado~combout\ & 
-- (!\instanciaModuloSumadorCompletoCuatroBits|sumador2|resultado~combout\ $ (!\instanciaModuloSumadorCompletoCuatroBits|sumador1|resultado~combout\))) ) ) # ( !\instanciaModuloSumadorCompletoCuatroBits|sumador3|resultado~combout\ & ( 
-- (!\instanciaModuloSumadorCompletoCuatroBits|sumador1|resultado~combout\ & (!\instanciaModuloSumadorCompletoCuatroBits|sumador0|resultado~combout\ $ (!\instanciaModuloSumadorCompletoCuatroBits|sumador2|resultado~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0101101000000000010110100000000000000101010100000000010101010000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instanciaModuloSumadorCompletoCuatroBits|sumador0|ALT_INV_resultado~combout\,
	datac => \instanciaModuloSumadorCompletoCuatroBits|sumador2|ALT_INV_resultado~combout\,
	datad => \instanciaModuloSumadorCompletoCuatroBits|sumador1|ALT_INV_resultado~combout\,
	dataf => \instanciaModuloSumadorCompletoCuatroBits|sumador3|ALT_INV_resultado~combout\,
	combout => \instanciaModuloDisplaySieteSegmentos|Mux8~0_combout\);

-- Location: LABCELL_X83_Y4_N27
\instanciaModuloDisplaySieteSegmentos|Mux7~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \instanciaModuloDisplaySieteSegmentos|Mux7~0_combout\ = ( \instanciaModuloSumadorCompletoCuatroBits|sumador3|resultado~combout\ & ( (!\instanciaModuloSumadorCompletoCuatroBits|sumador0|resultado~combout\ & 
-- (\instanciaModuloSumadorCompletoCuatroBits|sumador2|resultado~combout\)) # (\instanciaModuloSumadorCompletoCuatroBits|sumador0|resultado~combout\ & ((\instanciaModuloSumadorCompletoCuatroBits|sumador1|resultado~combout\))) ) ) # ( 
-- !\instanciaModuloSumadorCompletoCuatroBits|sumador3|resultado~combout\ & ( (\instanciaModuloSumadorCompletoCuatroBits|sumador2|resultado~combout\ & (!\instanciaModuloSumadorCompletoCuatroBits|sumador0|resultado~combout\ $ 
-- (!\instanciaModuloSumadorCompletoCuatroBits|sumador1|resultado~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001000100100010000100010010001000100010011101110010001001110111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instanciaModuloSumadorCompletoCuatroBits|sumador0|ALT_INV_resultado~combout\,
	datab => \instanciaModuloSumadorCompletoCuatroBits|sumador2|ALT_INV_resultado~combout\,
	datad => \instanciaModuloSumadorCompletoCuatroBits|sumador1|ALT_INV_resultado~combout\,
	dataf => \instanciaModuloSumadorCompletoCuatroBits|sumador3|ALT_INV_resultado~combout\,
	combout => \instanciaModuloDisplaySieteSegmentos|Mux7~0_combout\);

-- Location: LABCELL_X83_Y4_N30
\instanciaModuloDisplaySieteSegmentos|Mux6~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \instanciaModuloDisplaySieteSegmentos|Mux6~0_combout\ = ( \instanciaModuloSumadorCompletoCuatroBits|sumador3|resultado~combout\ & ( (\instanciaModuloSumadorCompletoCuatroBits|sumador2|resultado~combout\ & 
-- ((!\instanciaModuloSumadorCompletoCuatroBits|sumador0|resultado~combout\) # (\instanciaModuloSumadorCompletoCuatroBits|sumador1|resultado~combout\))) ) ) # ( !\instanciaModuloSumadorCompletoCuatroBits|sumador3|resultado~combout\ & ( 
-- (!\instanciaModuloSumadorCompletoCuatroBits|sumador0|resultado~combout\ & (!\instanciaModuloSumadorCompletoCuatroBits|sumador2|resultado~combout\ & \instanciaModuloSumadorCompletoCuatroBits|sumador1|resultado~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000010001000000000001000100000100010001100110010001000110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instanciaModuloSumadorCompletoCuatroBits|sumador0|ALT_INV_resultado~combout\,
	datab => \instanciaModuloSumadorCompletoCuatroBits|sumador2|ALT_INV_resultado~combout\,
	datad => \instanciaModuloSumadorCompletoCuatroBits|sumador1|ALT_INV_resultado~combout\,
	dataf => \instanciaModuloSumadorCompletoCuatroBits|sumador3|ALT_INV_resultado~combout\,
	combout => \instanciaModuloDisplaySieteSegmentos|Mux6~0_combout\);

-- Location: LABCELL_X83_Y4_N48
\instanciaModuloDisplaySieteSegmentos|Mux5~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \instanciaModuloDisplaySieteSegmentos|Mux5~0_combout\ = ( \instanciaModuloSumadorCompletoCuatroBits|sumador3|resultado~combout\ & ( (!\instanciaModuloSumadorCompletoCuatroBits|sumador0|resultado~combout\ & 
-- (!\instanciaModuloSumadorCompletoCuatroBits|sumador2|resultado~combout\ & \instanciaModuloSumadorCompletoCuatroBits|sumador1|resultado~combout\)) # (\instanciaModuloSumadorCompletoCuatroBits|sumador0|resultado~combout\ & 
-- (!\instanciaModuloSumadorCompletoCuatroBits|sumador2|resultado~combout\ $ (\instanciaModuloSumadorCompletoCuatroBits|sumador1|resultado~combout\))) ) ) # ( !\instanciaModuloSumadorCompletoCuatroBits|sumador3|resultado~combout\ & ( 
-- (!\instanciaModuloSumadorCompletoCuatroBits|sumador0|resultado~combout\ & (\instanciaModuloSumadorCompletoCuatroBits|sumador2|resultado~combout\ & !\instanciaModuloSumadorCompletoCuatroBits|sumador1|resultado~combout\)) # 
-- (\instanciaModuloSumadorCompletoCuatroBits|sumador0|resultado~combout\ & (!\instanciaModuloSumadorCompletoCuatroBits|sumador2|resultado~combout\ $ (\instanciaModuloSumadorCompletoCuatroBits|sumador1|resultado~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0110000101100001011000010110000101001001010010010100100101001001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instanciaModuloSumadorCompletoCuatroBits|sumador0|ALT_INV_resultado~combout\,
	datab => \instanciaModuloSumadorCompletoCuatroBits|sumador2|ALT_INV_resultado~combout\,
	datac => \instanciaModuloSumadorCompletoCuatroBits|sumador1|ALT_INV_resultado~combout\,
	dataf => \instanciaModuloSumadorCompletoCuatroBits|sumador3|ALT_INV_resultado~combout\,
	combout => \instanciaModuloDisplaySieteSegmentos|Mux5~0_combout\);

-- Location: LABCELL_X83_Y4_N33
\instanciaModuloDisplaySieteSegmentos|Mux4~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \instanciaModuloDisplaySieteSegmentos|Mux4~0_combout\ = ( \instanciaModuloSumadorCompletoCuatroBits|sumador3|resultado~combout\ & ( (\instanciaModuloSumadorCompletoCuatroBits|sumador0|resultado~combout\ & 
-- (!\instanciaModuloSumadorCompletoCuatroBits|sumador2|resultado~combout\ & !\instanciaModuloSumadorCompletoCuatroBits|sumador1|resultado~combout\)) ) ) # ( !\instanciaModuloSumadorCompletoCuatroBits|sumador3|resultado~combout\ & ( 
-- ((\instanciaModuloSumadorCompletoCuatroBits|sumador2|resultado~combout\ & !\instanciaModuloSumadorCompletoCuatroBits|sumador1|resultado~combout\)) # (\instanciaModuloSumadorCompletoCuatroBits|sumador0|resultado~combout\) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0111011101010101011101110101010101000100000000000100010000000000",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instanciaModuloSumadorCompletoCuatroBits|sumador0|ALT_INV_resultado~combout\,
	datab => \instanciaModuloSumadorCompletoCuatroBits|sumador2|ALT_INV_resultado~combout\,
	datad => \instanciaModuloSumadorCompletoCuatroBits|sumador1|ALT_INV_resultado~combout\,
	dataf => \instanciaModuloSumadorCompletoCuatroBits|sumador3|ALT_INV_resultado~combout\,
	combout => \instanciaModuloDisplaySieteSegmentos|Mux4~0_combout\);

-- Location: LABCELL_X83_Y4_N6
\instanciaModuloDisplaySieteSegmentos|Mux3~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \instanciaModuloDisplaySieteSegmentos|Mux3~0_combout\ = ( \instanciaModuloSumadorCompletoCuatroBits|sumador0|resultado~combout\ & ( !\instanciaModuloSumadorCompletoCuatroBits|sumador3|resultado~combout\ $ 
-- (((!\instanciaModuloSumadorCompletoCuatroBits|sumador1|resultado~combout\ & \instanciaModuloSumadorCompletoCuatroBits|sumador2|resultado~combout\))) ) ) # ( !\instanciaModuloSumadorCompletoCuatroBits|sumador0|resultado~combout\ & ( 
-- (!\instanciaModuloSumadorCompletoCuatroBits|sumador3|resultado~combout\ & (\instanciaModuloSumadorCompletoCuatroBits|sumador1|resultado~combout\ & !\instanciaModuloSumadorCompletoCuatroBits|sumador2|resultado~combout\)) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000110000000000110011000011110000001100000000001100110000111100",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \instanciaModuloSumadorCompletoCuatroBits|sumador3|ALT_INV_resultado~combout\,
	datac => \instanciaModuloSumadorCompletoCuatroBits|sumador1|ALT_INV_resultado~combout\,
	datad => \instanciaModuloSumadorCompletoCuatroBits|sumador2|ALT_INV_resultado~combout\,
	datae => \instanciaModuloSumadorCompletoCuatroBits|sumador0|ALT_INV_resultado~combout\,
	combout => \instanciaModuloDisplaySieteSegmentos|Mux3~0_combout\);

-- Location: LABCELL_X83_Y4_N24
\instanciaModuloDisplaySieteSegmentos|Mux2~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \instanciaModuloDisplaySieteSegmentos|Mux2~0_combout\ = ( \instanciaModuloSumadorCompletoCuatroBits|sumador3|resultado~combout\ & ( ((!\instanciaModuloSumadorCompletoCuatroBits|sumador2|resultado~combout\) # 
-- (\instanciaModuloSumadorCompletoCuatroBits|sumador1|resultado~combout\)) # (\instanciaModuloSumadorCompletoCuatroBits|sumador0|resultado~combout\) ) ) # ( !\instanciaModuloSumadorCompletoCuatroBits|sumador3|resultado~combout\ & ( 
-- (!\instanciaModuloSumadorCompletoCuatroBits|sumador2|resultado~combout\ & ((\instanciaModuloSumadorCompletoCuatroBits|sumador1|resultado~combout\))) # (\instanciaModuloSumadorCompletoCuatroBits|sumador2|resultado~combout\ & 
-- ((!\instanciaModuloSumadorCompletoCuatroBits|sumador0|resultado~combout\) # (!\instanciaModuloSumadorCompletoCuatroBits|sumador1|resultado~combout\))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001111101110001100111110111011011101111111111101110111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \instanciaModuloSumadorCompletoCuatroBits|sumador0|ALT_INV_resultado~combout\,
	datab => \instanciaModuloSumadorCompletoCuatroBits|sumador2|ALT_INV_resultado~combout\,
	datad => \instanciaModuloSumadorCompletoCuatroBits|sumador1|ALT_INV_resultado~combout\,
	dataf => \instanciaModuloSumadorCompletoCuatroBits|sumador3|ALT_INV_resultado~combout\,
	combout => \instanciaModuloDisplaySieteSegmentos|Mux2~0_combout\);

-- Location: LABCELL_X83_Y4_N42
\instanciaModuloSumadorCompletoCuatroBits|sumador3|carrySalida~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \instanciaModuloSumadorCompletoCuatroBits|sumador3|carrySalida~0_combout\ = ( \instanciaModuloSumadorCompletoCuatroBits|sumador1|carrySalida~0_combout\ & ( \operandoA[3]~input_o\ & ( ((\operandoA[2]~input_o\) # (\operandoB[3]~input_o\)) # 
-- (\operandoB[2]~input_o\) ) ) ) # ( !\instanciaModuloSumadorCompletoCuatroBits|sumador1|carrySalida~0_combout\ & ( \operandoA[3]~input_o\ & ( ((\operandoB[2]~input_o\ & \operandoA[2]~input_o\)) # (\operandoB[3]~input_o\) ) ) ) # ( 
-- \instanciaModuloSumadorCompletoCuatroBits|sumador1|carrySalida~0_combout\ & ( !\operandoA[3]~input_o\ & ( (\operandoB[3]~input_o\ & ((\operandoA[2]~input_o\) # (\operandoB[2]~input_o\))) ) ) ) # ( 
-- !\instanciaModuloSumadorCompletoCuatroBits|sumador1|carrySalida~0_combout\ & ( !\operandoA[3]~input_o\ & ( (\operandoB[2]~input_o\ & (\operandoB[3]~input_o\ & \operandoA[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000100110001001100110111001101110111111101111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_operandoB[2]~input_o\,
	datab => \ALT_INV_operandoB[3]~input_o\,
	datac => \ALT_INV_operandoA[2]~input_o\,
	datae => \instanciaModuloSumadorCompletoCuatroBits|sumador1|ALT_INV_carrySalida~0_combout\,
	dataf => \ALT_INV_operandoA[3]~input_o\,
	combout => \instanciaModuloSumadorCompletoCuatroBits|sumador3|carrySalida~0_combout\);

-- Location: LABCELL_X83_Y4_N39
\instanciaModuloDisplaySieteSegmentos|sieteSegmentos1[1]~0\ : cyclonev_lcell_comb
-- Equation(s):
-- \instanciaModuloDisplaySieteSegmentos|sieteSegmentos1[1]~0_combout\ = ( \operandoB[0]~input_o\ & ( (!\operandoA[0]~input_o\ & (!\carryEntrada~input_o\ & (!\operandoA[1]~input_o\ $ (!\operandoB[1]~input_o\)))) # (\operandoA[0]~input_o\ & 
-- (\carryEntrada~input_o\ & (!\operandoA[1]~input_o\ $ (\operandoB[1]~input_o\)))) ) ) # ( !\operandoB[0]~input_o\ & ( (!\operandoA[0]~input_o\ & (\carryEntrada~input_o\ & (!\operandoA[1]~input_o\ $ (!\operandoB[1]~input_o\)))) # (\operandoA[0]~input_o\ & 
-- (!\carryEntrada~input_o\ & (!\operandoA[1]~input_o\ $ (!\operandoB[1]~input_o\)))) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0001001001001000000100100100100000100100100000010010010010000001",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_operandoA[0]~input_o\,
	datab => \ALT_INV_operandoA[1]~input_o\,
	datac => \ALT_INV_carryEntrada~input_o\,
	datad => \ALT_INV_operandoB[1]~input_o\,
	dataf => \ALT_INV_operandoB[0]~input_o\,
	combout => \instanciaModuloDisplaySieteSegmentos|sieteSegmentos1[1]~0_combout\);

-- Location: LABCELL_X83_Y4_N18
\instanciaModuloDisplaySieteSegmentos|sieteSegmentos1[1]~1\ : cyclonev_lcell_comb
-- Equation(s):
-- \instanciaModuloDisplaySieteSegmentos|sieteSegmentos1[1]~1_combout\ = ( \instanciaModuloSumadorCompletoCuatroBits|sumador1|carrySalida~0_combout\ & ( \operandoA[3]~input_o\ & ( (\operandoB[3]~input_o\ & 
-- (\instanciaModuloDisplaySieteSegmentos|sieteSegmentos1[1]~0_combout\ & (!\operandoB[2]~input_o\ $ (!\operandoA[2]~input_o\)))) ) ) ) # ( !\instanciaModuloSumadorCompletoCuatroBits|sumador1|carrySalida~0_combout\ & ( \operandoA[3]~input_o\ & ( 
-- (\operandoB[2]~input_o\ & (\operandoB[3]~input_o\ & (\operandoA[2]~input_o\ & \instanciaModuloDisplaySieteSegmentos|sieteSegmentos1[1]~0_combout\))) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000000000000000000010000000000010010",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_operandoB[2]~input_o\,
	datab => \ALT_INV_operandoB[3]~input_o\,
	datac => \ALT_INV_operandoA[2]~input_o\,
	datad => \instanciaModuloDisplaySieteSegmentos|ALT_INV_sieteSegmentos1[1]~0_combout\,
	datae => \instanciaModuloSumadorCompletoCuatroBits|sumador1|ALT_INV_carrySalida~0_combout\,
	dataf => \ALT_INV_operandoA[3]~input_o\,
	combout => \instanciaModuloDisplaySieteSegmentos|sieteSegmentos1[1]~1_combout\);

-- Location: LABCELL_X83_Y4_N54
\instanciaModuloDisplaySieteSegmentos|sieteSegmentos1[4]~2\ : cyclonev_lcell_comb
-- Equation(s):
-- \instanciaModuloDisplaySieteSegmentos|sieteSegmentos1[4]~2_combout\ = ( \instanciaModuloSumadorCompletoCuatroBits|sumador1|carrySalida~0_combout\ & ( \operandoA[3]~input_o\ & ( (!\operandoB[3]~input_o\ & (((\operandoA[2]~input_o\)) # 
-- (\operandoB[2]~input_o\))) # (\operandoB[3]~input_o\ & ((!\instanciaModuloDisplaySieteSegmentos|sieteSegmentos1[1]~0_combout\) # (!\operandoB[2]~input_o\ $ (\operandoA[2]~input_o\)))) ) ) ) # ( 
-- !\instanciaModuloSumadorCompletoCuatroBits|sumador1|carrySalida~0_combout\ & ( \operandoA[3]~input_o\ & ( (!\operandoB[2]~input_o\ & (\operandoB[3]~input_o\)) # (\operandoB[2]~input_o\ & ((!\operandoB[3]~input_o\ & (\operandoA[2]~input_o\)) # 
-- (\operandoB[3]~input_o\ & ((!\operandoA[2]~input_o\) # (!\instanciaModuloDisplaySieteSegmentos|sieteSegmentos1[1]~0_combout\))))) ) ) ) # ( \instanciaModuloSumadorCompletoCuatroBits|sumador1|carrySalida~0_combout\ & ( !\operandoA[3]~input_o\ & ( 
-- (\operandoB[3]~input_o\ & ((\operandoA[2]~input_o\) # (\operandoB[2]~input_o\))) ) ) ) # ( !\instanciaModuloSumadorCompletoCuatroBits|sumador1|carrySalida~0_combout\ & ( !\operandoA[3]~input_o\ & ( (\operandoB[2]~input_o\ & (\operandoB[3]~input_o\ & 
-- \operandoA[2]~input_o\)) ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000100000001000100110001001100110111001101100111111101101101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_operandoB[2]~input_o\,
	datab => \ALT_INV_operandoB[3]~input_o\,
	datac => \ALT_INV_operandoA[2]~input_o\,
	datad => \instanciaModuloDisplaySieteSegmentos|ALT_INV_sieteSegmentos1[1]~0_combout\,
	datae => \instanciaModuloSumadorCompletoCuatroBits|sumador1|ALT_INV_carrySalida~0_combout\,
	dataf => \ALT_INV_operandoA[3]~input_o\,
	combout => \instanciaModuloDisplaySieteSegmentos|sieteSegmentos1[4]~2_combout\);

-- Location: LABCELL_X24_Y40_N3
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


