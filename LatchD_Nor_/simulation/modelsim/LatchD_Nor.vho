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

-- DATE "09/30/2022 11:15:38"

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

ENTITY 	LatchD_Nor IS
    PORT (
	D : IN std_logic;
	E : IN std_logic;
	Q : OUT std_logic;
	Qn : OUT std_logic
	);
END LatchD_Nor;

-- Design Ports Information
-- E	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Qn	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LatchD_Nor IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_Q : std_logic;
SIGNAL ww_Qn : std_logic;
SIGNAL \E~input_o\ : std_logic;
SIGNAL \Q~output_o\ : std_logic;
SIGNAL \Qn~output_o\ : std_logic;
SIGNAL \D~input_o\ : std_logic;
SIGNAL \ALT_INV_D~input_o\ : std_logic;

BEGIN

ww_D <= D;
ww_E <= E;
Q <= ww_Q;
Qn <= ww_Qn;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_D~input_o\ <= NOT \D~input_o\;

-- Location: IOOBUF_X24_Y0_N9
\Q~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \D~input_o\,
	devoe => ww_devoe,
	o => \Q~output_o\);

-- Location: IOOBUF_X20_Y0_N9
\Qn~output\ : cycloneiv_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_D~input_o\,
	devoe => ww_devoe,
	o => \Qn~output_o\);

-- Location: IOIBUF_X31_Y0_N8
\D~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_D,
	o => \D~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\E~input\ : cycloneiv_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_E,
	o => \E~input_o\);

ww_Q <= \Q~output_o\;

ww_Qn <= \Qn~output_o\;
END structure;


