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
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "01/18/2022 15:43:18"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SeqDet110 IS
    PORT (
	y : OUT std_logic;
	clk : IN std_logic;
	x : IN std_logic
	);
END SeqDet110;

ARCHITECTURE structure OF SeqDet110 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_y : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_x : std_logic;
SIGNAL \y~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \x~input_o\ : std_logic;
SIGNAL \inst1~q\ : std_logic;
SIGNAL \inst3000~0_combout\ : std_logic;
SIGNAL \inst~q\ : std_logic;
SIGNAL \inst2~0_combout\ : std_logic;

BEGIN

y <= ww_y;
ww_clk <= clk;
ww_x <= x;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\y~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~0_combout\,
	devoe => ww_devoe,
	o => \y~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\x~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_x,
	o => \x~input_o\);

inst1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \x~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1~q\);

\inst3000~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3000~0_combout\ = (\inst1~q\ & ((\inst~q\) # (\x~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1~q\,
	datab => \inst~q\,
	datac => \x~input_o\,
	combout => \inst3000~0_combout\);

inst : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \inst3000~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst~q\);

\inst2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2~0_combout\ = (\inst~q\ & (\x~input_o\ & !\inst1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst~q\,
	datab => \x~input_o\,
	datad => \inst1~q\,
	combout => \inst2~0_combout\);

ww_y <= \y~output_o\;
END structure;


