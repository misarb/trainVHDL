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

-- DATE "10/31/2022 17:00:10"

-- 
-- Device: Altera 5CGXFC7C7F23C8 Package FBGA484
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

ENTITY 	reg_4bit IS
    PORT (
	d0 : IN std_logic;
	d1 : IN std_logic;
	d2 : IN std_logic;
	d3 : IN std_logic;
	clk : IN std_logic;
	en : IN std_logic;
	q0 : BUFFER std_logic;
	q1 : BUFFER std_logic;
	q2 : BUFFER std_logic;
	q3 : BUFFER std_logic
	);
END reg_4bit;

-- Design Ports Information
-- q0	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q1	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q2	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q3	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d0	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d1	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d2	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d3	=>  Location: PIN_M22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_L22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- en	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF reg_4bit IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_d0 : std_logic;
SIGNAL ww_d1 : std_logic;
SIGNAL ww_d2 : std_logic;
SIGNAL ww_d3 : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_en : std_logic;
SIGNAL ww_q0 : std_logic;
SIGNAL ww_q1 : std_logic;
SIGNAL ww_q2 : std_logic;
SIGNAL ww_q3 : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \en~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \and2|z~combout\ : std_logic;
SIGNAL \d0~input_o\ : std_logic;
SIGNAL \bit0|q~q\ : std_logic;
SIGNAL \d1~input_o\ : std_logic;
SIGNAL \bit1|q~feeder_combout\ : std_logic;
SIGNAL \bit1|q~q\ : std_logic;
SIGNAL \d2~input_o\ : std_logic;
SIGNAL \bit2|q~feeder_combout\ : std_logic;
SIGNAL \bit2|q~q\ : std_logic;
SIGNAL \d3~input_o\ : std_logic;
SIGNAL \bit3|q~q\ : std_logic;
SIGNAL \ALT_INV_en~input_o\ : std_logic;
SIGNAL \ALT_INV_clk~input_o\ : std_logic;
SIGNAL \ALT_INV_d2~input_o\ : std_logic;
SIGNAL \ALT_INV_d1~input_o\ : std_logic;

BEGIN

ww_d0 <= d0;
ww_d1 <= d1;
ww_d2 <= d2;
ww_d3 <= d3;
ww_clk <= clk;
ww_en <= en;
q0 <= ww_q0;
q1 <= ww_q1;
q2 <= ww_q2;
q3 <= ww_q3;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_en~input_o\ <= NOT \en~input_o\;
\ALT_INV_clk~input_o\ <= NOT \clk~input_o\;
\ALT_INV_d2~input_o\ <= NOT \d2~input_o\;
\ALT_INV_d1~input_o\ <= NOT \d1~input_o\;

-- Location: IOOBUF_X89_Y35_N96
\q0~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bit0|q~q\,
	devoe => ww_devoe,
	o => ww_q0);

-- Location: IOOBUF_X89_Y38_N22
\q1~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bit1|q~q\,
	devoe => ww_devoe,
	o => ww_q1);

-- Location: IOOBUF_X89_Y37_N5
\q2~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bit2|q~q\,
	devoe => ww_devoe,
	o => ww_q2);

-- Location: IOOBUF_X89_Y35_N62
\q3~output\ : cyclonev_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false",
	shift_series_termination_control => "false")
-- pragma translate_on
PORT MAP (
	i => \bit3|q~q\,
	devoe => ww_devoe,
	o => ww_q3);

-- Location: IOIBUF_X89_Y38_N4
\en~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_en,
	o => \en~input_o\);

-- Location: IOIBUF_X89_Y36_N55
\clk~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: LABCELL_X88_Y36_N39
\and2|z\ : cyclonev_lcell_comb
-- Equation(s):
-- \and2|z~combout\ = LCELL(( \clk~input_o\ & ( \en~input_o\ ) ))

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000001010101010101010101010101010101",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataa => \ALT_INV_en~input_o\,
	dataf => \ALT_INV_clk~input_o\,
	combout => \and2|z~combout\);

-- Location: IOIBUF_X89_Y36_N21
\d0~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d0,
	o => \d0~input_o\);

-- Location: FF_X88_Y36_N40
\bit0|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \and2|z~combout\,
	asdata => \d0~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit0|q~q\);

-- Location: IOIBUF_X89_Y36_N4
\d1~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d1,
	o => \d1~input_o\);

-- Location: LABCELL_X88_Y36_N48
\bit1|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit1|q~feeder_combout\ = ( \d1~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_d1~input_o\,
	combout => \bit1|q~feeder_combout\);

-- Location: FF_X88_Y36_N49
\bit1|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \and2|z~combout\,
	d => \bit1|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit1|q~q\);

-- Location: IOIBUF_X89_Y37_N55
\d2~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d2,
	o => \d2~input_o\);

-- Location: LABCELL_X88_Y36_N51
\bit2|q~feeder\ : cyclonev_lcell_comb
-- Equation(s):
-- \bit2|q~feeder_combout\ = ( \d2~input_o\ )

-- pragma translate_off
GENERIC MAP (
	extended_lut => "off",
	lut_mask => "0000000000000000000000000000000011111111111111111111111111111111",
	shared_arith => "off")
-- pragma translate_on
PORT MAP (
	dataf => \ALT_INV_d2~input_o\,
	combout => \bit2|q~feeder_combout\);

-- Location: FF_X88_Y36_N52
\bit2|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \and2|z~combout\,
	d => \bit2|q~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit2|q~q\);

-- Location: IOIBUF_X89_Y36_N38
\d3~input\ : cyclonev_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d3,
	o => \d3~input_o\);

-- Location: FF_X88_Y36_N37
\bit3|q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \and2|z~combout\,
	asdata => \d3~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \bit3|q~q\);

-- Location: LABCELL_X17_Y6_N0
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


