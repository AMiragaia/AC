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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "12/05/2021 19:01:05"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          16bitcomparator
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY 16bitcomparator_vhd_vec_tst IS
END 16bitcomparator_vhd_vec_tst;
ARCHITECTURE 16bitcomparator_arch OF 16bitcomparator_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL cmpPort : STD_LOGIC;
SIGNAL input0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL input1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT 16bitcomparator
	PORT (
	cmpPort : OUT STD_LOGIC;
	input0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	input1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : 16bitcomparator
	PORT MAP (
-- list connections between master ports and signals
	cmpPort => cmpPort,
	input0 => input0,
	input1 => input1
	);
-- input0[3]
t_prcs_input0_3: PROCESS
BEGIN
	input0(3) <= '0';
WAIT;
END PROCESS t_prcs_input0_3;
-- input0[2]
t_prcs_input0_2: PROCESS
BEGIN
	input0(2) <= '0';
WAIT;
END PROCESS t_prcs_input0_2;
-- input0[1]
t_prcs_input0_1: PROCESS
BEGIN
	input0(1) <= '0';
WAIT;
END PROCESS t_prcs_input0_1;
-- input0[0]
t_prcs_input0_0: PROCESS
BEGIN
	input0(0) <= '0';
WAIT;
END PROCESS t_prcs_input0_0;
-- input1[3]
t_prcs_input1_3: PROCESS
BEGIN
	input1(3) <= '0';
WAIT;
END PROCESS t_prcs_input1_3;
-- input1[2]
t_prcs_input1_2: PROCESS
BEGIN
	input1(2) <= '0';
WAIT;
END PROCESS t_prcs_input1_2;
-- input1[1]
t_prcs_input1_1: PROCESS
BEGIN
	input1(1) <= '0';
WAIT;
END PROCESS t_prcs_input1_1;
-- input1[0]
t_prcs_input1_0: PROCESS
BEGIN
	input1(0) <= '0';
WAIT;
END PROCESS t_prcs_input1_0;
END 16bitcomparator_arch;
