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

-- DATE "10/31/2022 13:31:20"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA_LNSIM;
LIBRARY CYCLONEV;
LIBRARY IEEE;
USE ALTERA_LNSIM.ALTERA_LNSIM_COMPONENTS.ALL;
USE CYCLONEV.CYCLONEV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	add IS
    PORT (
	a : IN std_logic;
	b : IN std_logic;
	Cin : IN std_logic;
	s : BUFFER std_logic;
	Cout : BUFFER std_logic
	);
END add;

-- Design Ports Information
-- s	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cout	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Cin	=>  Location: PIN_U10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF add IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_Cin : std_logic;
SIGNAL ww_s : std_logic;
SIGNAL ww_Cout : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \Cin~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \u3|s~combout\ : std_logic;
SIGNAL \u4|s~combout\ : std_logic;
SIGNAL \ALT_INV_b~input_o\ : std_logic;
SIGNAL \ALT_INV_a~input_o\ : std_logic;
SIGNAL \ALT_INV_Cin~input_o\ : std_logic;

BEGIN

ww_a <= a;
ww_b <= b;
ww_Cin <= Cin;
s <= ww_s;
Cout <= ww_Cout;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_b~input_o\ <= NOT \b~input_o\;
\ALT_INV_a~input_o\ <= NOT \a~input_o\;
\ALT_INV_Cin~input_o\ <= NOT \Cin~input_o\;

-- Location: IOOBUF_X28_Y0_N19
\s~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u3|s~combout\,
	devoe => ww_devoe,
	o => ww_s);

-- Location: IOOBUF_X30_Y0_N36
\Cout~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \u4|s~combout\,
	devoe => ww_devoe,
	o => ww_Cout);

-- Location: IOIBUF_X30_Y0_N1
\Cin~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Cin,
	o => \Cin~input_o\);

-- Location: IOIBUF_X30_Y0_N18
\b~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: IOIBUF_X30_Y0_N52
\a~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: LABCELL_X30_Y1_N30
\u3|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u3|s~combout\ = ( \b~input_o\ & ( \a~input_o\ & ( \Cin~input_o\ ) ) ) # ( !\b~input_o\ & ( \a~input_o\ & ( !\Cin~input_o\ ) ) ) # ( \b~input_o\ & ( !\a~input_o\ & ( !\Cin~input_o\ ) ) ) # ( !\b~input_o\ & ( !\a~input_o\ & ( \Cin~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0011001100110011110011001100110011001100110011000011001100110011",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datab => \ALT_INV_Cin~input_o\,
	datae => \ALT_INV_b~input_o\,
	dataf => \ALT_INV_a~input_o\,
	combout => \u3|s~combout\);

-- Location: LABCELL_X30_Y1_N9
\u4|s\ : cyclonev_lcell_comb
-- Equation(s):
-- \u4|s~combout\ = ( \b~input_o\ & ( \a~input_o\ ) ) # ( !\b~input_o\ & ( \a~input_o\ & ( \Cin~input_o\ ) ) ) # ( \b~input_o\ & ( !\a~input_o\ & ( \Cin~input_o\ ) ) )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000011110000111100001111000011111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	datac => \ALT_INV_Cin~input_o\,
	datae => \ALT_INV_b~input_o\,
	dataf => \ALT_INV_a~input_o\,
	combout => \u4|s~combout\);

-- Location: MLABCELL_X15_Y33_N0
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


