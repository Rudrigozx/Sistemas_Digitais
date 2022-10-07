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

-- DATE "10/07/2022 16:49:13"

-- 
-- Device: Altera EP4CGX15BF14C6 Package FBGA169
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIV;
LIBRARY IEEE;
USE CYCLONEIV.CYCLONEIV_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	top_level IS
    PORT (
	clk_t : IN std_logic;
	a_t : IN std_logic_vector(1 DOWNTO 0);
	op_t : IN std_logic_vector(1 DOWNTO 0);
	vout_t : OUT std_logic_vector(7 DOWNTO 0)
	);
END top_level;

-- Design Ports Information
-- clk_t	=>  Location: PIN_G10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_t[0]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a_t[1]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_t[0]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_t[1]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vout_t[0]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vout_t[1]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vout_t[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vout_t[3]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vout_t[4]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vout_t[5]	=>  Location: PIN_L12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vout_t[6]	=>  Location: PIN_K13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- vout_t[7]	=>  Location: PIN_K12,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF top_level IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_t : std_logic;
SIGNAL ww_a_t : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_op_t : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_vout_t : std_logic_vector(7 DOWNTO 0);
SIGNAL \clk_t~input_o\ : std_logic;
SIGNAL \a_t[0]~input_o\ : std_logic;
SIGNAL \a_t[1]~input_o\ : std_logic;
SIGNAL \op_t[0]~input_o\ : std_logic;
SIGNAL \op_t[1]~input_o\ : std_logic;
SIGNAL \vout_t[0]~output_o\ : std_logic;
SIGNAL \vout_t[1]~output_o\ : std_logic;
SIGNAL \vout_t[2]~output_o\ : std_logic;
SIGNAL \vout_t[3]~output_o\ : std_logic;
SIGNAL \vout_t[4]~output_o\ : std_logic;
SIGNAL \vout_t[5]~output_o\ : std_logic;
SIGNAL \vout_t[6]~output_o\ : std_logic;
SIGNAL \vout_t[7]~output_o\ : std_logic;

BEGIN

ww_clk_t <= clk_t;
ww_a_t <= a_t;
ww_op_t <= op_t;
vout_t <= ww_vout_t;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X20_Y31_N2
\vout_t[0]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vout_t[0]~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\vout_t[1]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vout_t[1]~output_o\);

-- Location: IOOBUF_X33_Y15_N9
\vout_t[2]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vout_t[2]~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\vout_t[3]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vout_t[3]~output_o\);

-- Location: IOOBUF_X26_Y31_N2
\vout_t[4]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vout_t[4]~output_o\);

-- Location: IOOBUF_X33_Y12_N2
\vout_t[5]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vout_t[5]~output_o\);

-- Location: IOOBUF_X33_Y15_N2
\vout_t[6]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vout_t[6]~output_o\);

-- Location: IOOBUF_X33_Y11_N9
\vout_t[7]~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \vout_t[7]~output_o\);

-- Location: IOIBUF_X33_Y22_N8
\clk_t~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_t,
	o => \clk_t~input_o\);

-- Location: IOIBUF_X31_Y31_N8
\a_t[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_t(0),
	o => \a_t[0]~input_o\);

-- Location: IOIBUF_X29_Y31_N8
\a_t[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a_t(1),
	o => \a_t[1]~input_o\);

-- Location: IOIBUF_X14_Y0_N1
\op_t[0]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_t(0),
	o => \op_t[0]~input_o\);

-- Location: IOIBUF_X29_Y0_N8
\op_t[1]~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_op_t(1),
	o => \op_t[1]~input_o\);

ww_vout_t(0) <= \vout_t[0]~output_o\;

ww_vout_t(1) <= \vout_t[1]~output_o\;

ww_vout_t(2) <= \vout_t[2]~output_o\;

ww_vout_t(3) <= \vout_t[3]~output_o\;

ww_vout_t(4) <= \vout_t[4]~output_o\;

ww_vout_t(5) <= \vout_t[5]~output_o\;

ww_vout_t(6) <= \vout_t[6]~output_o\;

ww_vout_t(7) <= \vout_t[7]~output_o\;
END structure;


