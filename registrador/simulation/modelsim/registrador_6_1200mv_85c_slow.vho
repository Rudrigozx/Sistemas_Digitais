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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "09/24/2022 20:38:21"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	registrador IS
    PORT (
	clk : IN std_logic;
	\in\ : IN std_logic_vector(7 DOWNTO 0);
	\out\ : OUT std_logic_vector(7 DOWNTO 0)
	);
END registrador;

-- Design Ports Information
-- out[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[1]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[3]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[4]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[5]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[6]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- out[7]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[1]	=>  Location: PIN_F12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[2]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[3]	=>  Location: PIN_M13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[4]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[5]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[6]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in[7]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_clk : std_logic;
SIGNAL \ww_in\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \ww_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \out[0]~output_o\ : std_logic;
SIGNAL \out[1]~output_o\ : std_logic;
SIGNAL \out[2]~output_o\ : std_logic;
SIGNAL \out[3]~output_o\ : std_logic;
SIGNAL \out[4]~output_o\ : std_logic;
SIGNAL \out[5]~output_o\ : std_logic;
SIGNAL \out[6]~output_o\ : std_logic;
SIGNAL \out[7]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \in[0]~input_o\ : std_logic;
SIGNAL \out[0]~reg0_q\ : std_logic;
SIGNAL \in[1]~input_o\ : std_logic;
SIGNAL \out[1]~reg0feeder_combout\ : std_logic;
SIGNAL \out[1]~reg0_q\ : std_logic;
SIGNAL \in[2]~input_o\ : std_logic;
SIGNAL \out[2]~reg0_q\ : std_logic;
SIGNAL \in[3]~input_o\ : std_logic;
SIGNAL \out[3]~reg0_q\ : std_logic;
SIGNAL \in[4]~input_o\ : std_logic;
SIGNAL \out[4]~reg0feeder_combout\ : std_logic;
SIGNAL \out[4]~reg0_q\ : std_logic;
SIGNAL \in[5]~input_o\ : std_logic;
SIGNAL \out[5]~reg0_q\ : std_logic;
SIGNAL \in[6]~input_o\ : std_logic;
SIGNAL \out[6]~reg0feeder_combout\ : std_logic;
SIGNAL \out[6]~reg0_q\ : std_logic;
SIGNAL \in[7]~input_o\ : std_logic;
SIGNAL \out[7]~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
\ww_in\ <= \in\;
\out\ <= \ww_out\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

-- Location: IOOBUF_X14_Y0_N2
\out[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out[0]~reg0_q\,
	devoe => ww_devoe,
	o => \out[0]~output_o\);

-- Location: IOOBUF_X24_Y31_N2
\out[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out[1]~reg0_q\,
	devoe => ww_devoe,
	o => \out[1]~output_o\);

-- Location: IOOBUF_X29_Y31_N2
\out[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out[2]~reg0_q\,
	devoe => ww_devoe,
	o => \out[2]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\out[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out[3]~reg0_q\,
	devoe => ww_devoe,
	o => \out[3]~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\out[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out[4]~reg0_q\,
	devoe => ww_devoe,
	o => \out[4]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\out[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out[5]~reg0_q\,
	devoe => ww_devoe,
	o => \out[5]~output_o\);

-- Location: IOOBUF_X33_Y27_N9
\out[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out[6]~reg0_q\,
	devoe => ww_devoe,
	o => \out[6]~output_o\);

-- Location: IOOBUF_X33_Y14_N2
\out[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \out[7]~reg0_q\,
	devoe => ww_devoe,
	o => \out[7]~output_o\);

-- Location: IOIBUF_X16_Y0_N15
\clk~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G17
\clk~inputclkctrl\ : cycloneiv_clkctrl
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

-- Location: IOIBUF_X33_Y16_N8
\in[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(0),
	o => \in[0]~input_o\);

-- Location: FF_X15_Y1_N25
\out[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out[0]~reg0_q\);

-- Location: IOIBUF_X33_Y16_N1
\in[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(1),
	o => \in[1]~input_o\);

-- Location: LCCOMB_X25_Y30_N0
\out[1]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out[1]~reg0feeder_combout\ = \in[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in[1]~input_o\,
	combout => \out[1]~reg0feeder_combout\);

-- Location: FF_X25_Y30_N1
\out[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \out[1]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out[1]~reg0_q\);

-- Location: IOIBUF_X26_Y31_N8
\in[2]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(2),
	o => \in[2]~input_o\);

-- Location: FF_X30_Y30_N25
\out[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out[2]~reg0_q\);

-- Location: IOIBUF_X33_Y10_N1
\in[3]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(3),
	o => \in[3]~input_o\);

-- Location: FF_X32_Y11_N9
\out[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out[3]~reg0_q\);

-- Location: IOIBUF_X33_Y15_N8
\in[4]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(4),
	o => \in[4]~input_o\);

-- Location: LCCOMB_X26_Y16_N16
\out[4]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out[4]~reg0feeder_combout\ = \in[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in[4]~input_o\,
	combout => \out[4]~reg0feeder_combout\);

-- Location: FF_X26_Y16_N17
\out[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \out[4]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out[4]~reg0_q\);

-- Location: IOIBUF_X20_Y31_N1
\in[5]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(5),
	o => \in[5]~input_o\);

-- Location: FF_X23_Y25_N17
\out[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out[5]~reg0_q\);

-- Location: IOIBUF_X33_Y25_N8
\in[6]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(6),
	o => \in[6]~input_o\);

-- Location: LCCOMB_X32_Y28_N8
\out[6]~reg0feeder\ : cycloneiv_lcell_comb
-- Equation(s):
-- \out[6]~reg0feeder_combout\ = \in[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \in[6]~input_o\,
	combout => \out[6]~reg0feeder_combout\);

-- Location: FF_X32_Y28_N9
\out[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \out[6]~reg0feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out[6]~reg0_q\);

-- Location: IOIBUF_X33_Y15_N1
\in[7]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => \ww_in\(7),
	o => \in[7]~input_o\);

-- Location: FF_X32_Y16_N9
\out[7]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	asdata => \in[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \out[7]~reg0_q\);

\ww_out\(0) <= \out[0]~output_o\;

\ww_out\(1) <= \out[1]~output_o\;

\ww_out\(2) <= \out[2]~output_o\;

\ww_out\(3) <= \out[3]~output_o\;

\ww_out\(4) <= \out[4]~output_o\;

\ww_out\(5) <= \out[5]~output_o\;

\ww_out\(6) <= \out[6]~output_o\;

\ww_out\(7) <= \out[7]~output_o\;
END structure;


