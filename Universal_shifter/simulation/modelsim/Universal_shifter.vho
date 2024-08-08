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

-- DATE "06/06/2024 15:23:59"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	DUT IS
    PORT (
	input_vector : IN std_logic_vector(11 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END DUT;

-- Design Ports Information


ARCHITECTURE structure OF DUT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_vector : std_logic_vector(11 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(7 DOWNTO 0);
SIGNAL \add_instance|in4_bit:3:lsb:b2|Y~0_combout\ : std_logic;
SIGNAL \add_instance|in3_bitreversal:7:lsb:b2|Y~0_combout\ : std_logic;
SIGNAL \add_instance|in5_bit:1:lsb:b1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|in3_bitreversal:4:lsb:b2|Y~0_combout\ : std_logic;
SIGNAL \add_instance|in6_bit:0:lsb:b0|Y~0_combout\ : std_logic;
SIGNAL \add_instance|in6_bit:0:lsb:b0|Y~1_combout\ : std_logic;
SIGNAL \add_instance|in4_bit:2:lsb:b2|Y~0_combout\ : std_logic;
SIGNAL \add_instance|in3_bitreversal:6:lsb:b2|Y~0_combout\ : std_logic;
SIGNAL \add_instance|in4_bit:2:lsb:b2|Y~1_combout\ : std_logic;
SIGNAL \add_instance|in6_bit:0:lsb:b0|Y~2_combout\ : std_logic;
SIGNAL \add_instance|in5_bit:1:lsb:b1|Y~1_combout\ : std_logic;
SIGNAL \add_instance|in3_bitreversal:5:lsb:b2|Y~0_combout\ : std_logic;
SIGNAL \add_instance|in5_bit:1:lsb:b1|Y~2_combout\ : std_logic;
SIGNAL \add_instance|in6_bit:0:lsb:b0|Y~3_combout\ : std_logic;
SIGNAL \add_instance|in7_bitreversal:0:lsb:b2|Y~0_combout\ : std_logic;
SIGNAL \add_instance|in7_bitreversal:0:lsb:b2|Y~1_combout\ : std_logic;
SIGNAL \add_instance|in6_bit:1:lsb:b0|Y~0_combout\ : std_logic;
SIGNAL \add_instance|in6_bit:1:lsb:b0|Y~1_combout\ : std_logic;
SIGNAL \add_instance|in6_bit:3:lsb:b0|Y~0_combout\ : std_logic;
SIGNAL \add_instance|in6_bit:6:lsb:b0|Y~0_combout\ : std_logic;
SIGNAL \add_instance|in7_bitreversal:1:lsb:b2|Y~0_combout\ : std_logic;
SIGNAL \add_instance|in6_bit:5:lsb:b0|Y~0_combout\ : std_logic;
SIGNAL \add_instance|in6_bit:5:lsb:b0|Y~1_combout\ : std_logic;
SIGNAL \add_instance|in4_bit:3:lsb:b2|Y~1_combout\ : std_logic;
SIGNAL \add_instance|in6_bit:1:lsb:b0|Y~2_combout\ : std_logic;
SIGNAL \add_instance|in6_bit:2:lsb:b0|Y~0_combout\ : std_logic;
SIGNAL \add_instance|in6_bit:2:lsb:b0|Y~1_combout\ : std_logic;
SIGNAL \add_instance|in6_bit:2:lsb:b0|Y~2_combout\ : std_logic;
SIGNAL \add_instance|in7_bitreversal:2:lsb:b2|Y~0_combout\ : std_logic;
SIGNAL \add_instance|in6_bit:3:lsb:b0|Y~1_combout\ : std_logic;
SIGNAL \add_instance|in6_bit:3:lsb:b0|Y~2_combout\ : std_logic;
SIGNAL \add_instance|in6_bit:3:lsb:b0|Y~3_combout\ : std_logic;
SIGNAL \add_instance|in6_bit:4:lsb:b0|Y~0_combout\ : std_logic;
SIGNAL \add_instance|in6_bit:4:lsb:b0|Y~1_combout\ : std_logic;
SIGNAL \add_instance|in7_bitreversal:3:lsb:b2|Y~0_combout\ : std_logic;
SIGNAL \add_instance|in7_bitreversal:4:lsb:b2|Y~0_combout\ : std_logic;
SIGNAL \add_instance|in7_bitreversal:5:lsb:b2|Y~0_combout\ : std_logic;
SIGNAL \add_instance|in7_bitreversal:6:lsb:b2|Y~0_combout\ : std_logic;
SIGNAL \add_instance|in7_bitreversal:7:lsb:b2|Y~0_combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(11 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(11),
	combout => \input_vector~combout\(11));

-- Location: LC_X9_Y7_N1
\add_instance|in4_bit:3:lsb:b2|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|in4_bit:3:lsb:b2|Y~0_combout\ = (\input_vector~combout\(11) & (((\input_vector~combout\(4))))) # (!\input_vector~combout\(11) & (\input_vector~combout\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(3),
	datab => \input_vector~combout\(4),
	datac => \input_vector~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in4_bit:3:lsb:b2|Y~0_combout\);

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(10),
	combout => \input_vector~combout\(10));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: LC_X7_Y7_N7
\add_instance|in3_bitreversal:7:lsb:b2|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|in3_bitreversal:7:lsb:b2|Y~0_combout\ = (\input_vector~combout\(11) & (\input_vector~combout\(0))) # (!\input_vector~combout\(11) & (((\input_vector~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \input_vector~combout\(11),
	datac => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in3_bitreversal:7:lsb:b2|Y~0_combout\);

-- Location: PIN_144,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(9),
	combout => \input_vector~combout\(9));

-- Location: LC_X8_Y7_N1
\add_instance|in5_bit:1:lsb:b1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|in5_bit:1:lsb:b1|Y~0_combout\ = (\input_vector~combout\(9) & ((\input_vector~combout\(10) & ((\add_instance|in3_bitreversal:7:lsb:b2|Y~0_combout\))) # (!\input_vector~combout\(10) & (\add_instance|in4_bit:3:lsb:b2|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e200",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|in4_bit:3:lsb:b2|Y~0_combout\,
	datab => \input_vector~combout\(10),
	datac => \add_instance|in3_bitreversal:7:lsb:b2|Y~0_combout\,
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in5_bit:1:lsb:b1|Y~0_combout\);

-- Location: LC_X9_Y7_N4
\add_instance|in3_bitreversal:4:lsb:b2|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|in3_bitreversal:4:lsb:b2|Y~0_combout\ = (\input_vector~combout\(11) & (\input_vector~combout\(3))) # (!\input_vector~combout\(11) & (((\input_vector~combout\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(3),
	datab => \input_vector~combout\(4),
	datac => \input_vector~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in3_bitreversal:4:lsb:b2|Y~0_combout\);

-- Location: LC_X7_Y7_N0
\add_instance|in6_bit:0:lsb:b0|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|in6_bit:0:lsb:b0|Y~0_combout\ = (\input_vector~combout\(11) & (((\input_vector~combout\(7))))) # (!\input_vector~combout\(11) & (\input_vector~combout\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \input_vector~combout\(11),
	datac => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in6_bit:0:lsb:b0|Y~0_combout\);

-- Location: LC_X7_Y7_N4
\add_instance|in6_bit:0:lsb:b0|Y~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|in6_bit:0:lsb:b0|Y~1_combout\ = (\input_vector~combout\(10) & (\add_instance|in3_bitreversal:4:lsb:b2|Y~0_combout\)) # (!\input_vector~combout\(10) & (((\add_instance|in6_bit:0:lsb:b0|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b8b8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|in3_bitreversal:4:lsb:b2|Y~0_combout\,
	datab => \input_vector~combout\(10),
	datac => \add_instance|in6_bit:0:lsb:b0|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in6_bit:0:lsb:b0|Y~1_combout\);

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: LC_X9_Y7_N6
\add_instance|in4_bit:2:lsb:b2|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|in4_bit:2:lsb:b2|Y~0_combout\ = (\input_vector~combout\(11) & (\input_vector~combout\(5))) # (!\input_vector~combout\(11) & (((\input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8d8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(11),
	datab => \input_vector~combout\(5),
	datac => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in4_bit:2:lsb:b2|Y~0_combout\);

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: PIN_45,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: LC_X9_Y7_N7
\add_instance|in3_bitreversal:6:lsb:b2|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|in3_bitreversal:6:lsb:b2|Y~0_combout\ = ((\input_vector~combout\(11) & ((\input_vector~combout\(1)))) # (!\input_vector~combout\(11) & (\input_vector~combout\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datac => \input_vector~combout\(11),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in3_bitreversal:6:lsb:b2|Y~0_combout\);

-- Location: LC_X9_Y7_N8
\add_instance|in4_bit:2:lsb:b2|Y~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|in4_bit:2:lsb:b2|Y~1_combout\ = ((\input_vector~combout\(10) & ((\add_instance|in3_bitreversal:6:lsb:b2|Y~0_combout\))) # (!\input_vector~combout\(10) & (\add_instance|in4_bit:2:lsb:b2|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|in4_bit:2:lsb:b2|Y~0_combout\,
	datac => \input_vector~combout\(10),
	datad => \add_instance|in3_bitreversal:6:lsb:b2|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in4_bit:2:lsb:b2|Y~1_combout\);

-- Location: LC_X7_Y7_N9
\add_instance|in6_bit:0:lsb:b0|Y~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|in6_bit:0:lsb:b0|Y~2_combout\ = (\input_vector~combout\(9) & (((\add_instance|in4_bit:2:lsb:b2|Y~1_combout\)))) # (!\input_vector~combout\(9) & (((\add_instance|in6_bit:0:lsb:b0|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datac => \add_instance|in6_bit:0:lsb:b0|Y~1_combout\,
	datad => \add_instance|in4_bit:2:lsb:b2|Y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in6_bit:0:lsb:b0|Y~2_combout\);

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(8),
	combout => \input_vector~combout\(8));

-- Location: LC_X9_Y7_N0
\add_instance|in5_bit:1:lsb:b1|Y~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|in5_bit:1:lsb:b1|Y~1_combout\ = ((\input_vector~combout\(11) & (\input_vector~combout\(6))) # (!\input_vector~combout\(11) & ((\input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(6),
	datac => \input_vector~combout\(11),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in5_bit:1:lsb:b1|Y~1_combout\);

-- Location: LC_X9_Y7_N9
\add_instance|in3_bitreversal:5:lsb:b2|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|in3_bitreversal:5:lsb:b2|Y~0_combout\ = (\input_vector~combout\(11) & (((\input_vector~combout\(2))))) # (!\input_vector~combout\(11) & (\input_vector~combout\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(11),
	datab => \input_vector~combout\(5),
	datac => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in3_bitreversal:5:lsb:b2|Y~0_combout\);

-- Location: LC_X9_Y7_N3
\add_instance|in5_bit:1:lsb:b1|Y~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|in5_bit:1:lsb:b1|Y~2_combout\ = (!\input_vector~combout\(9) & ((\input_vector~combout\(10) & ((\add_instance|in3_bitreversal:5:lsb:b2|Y~0_combout\))) # (!\input_vector~combout\(10) & (\add_instance|in5_bit:1:lsb:b1|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0e04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(10),
	datab => \add_instance|in5_bit:1:lsb:b1|Y~1_combout\,
	datac => \input_vector~combout\(9),
	datad => \add_instance|in3_bitreversal:5:lsb:b2|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in5_bit:1:lsb:b1|Y~2_combout\);

-- Location: LC_X7_Y7_N8
\add_instance|in6_bit:0:lsb:b0|Y~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|in6_bit:0:lsb:b0|Y~3_combout\ = (\input_vector~combout\(8) & ((\add_instance|in5_bit:1:lsb:b1|Y~0_combout\) # ((\add_instance|in5_bit:1:lsb:b1|Y~2_combout\)))) # (!\input_vector~combout\(8) & 
-- (((\add_instance|in6_bit:0:lsb:b0|Y~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcac",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|in5_bit:1:lsb:b1|Y~0_combout\,
	datab => \add_instance|in6_bit:0:lsb:b0|Y~2_combout\,
	datac => \input_vector~combout\(8),
	datad => \add_instance|in5_bit:1:lsb:b1|Y~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in6_bit:0:lsb:b0|Y~3_combout\);

-- Location: LC_X7_Y7_N3
\add_instance|in7_bitreversal:0:lsb:b2|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|in7_bitreversal:0:lsb:b2|Y~0_combout\ = (!\input_vector~combout\(9) & (!\input_vector~combout\(10) & (!\input_vector~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \input_vector~combout\(10),
	datac => \input_vector~combout\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in7_bitreversal:0:lsb:b2|Y~0_combout\);

-- Location: LC_X7_Y7_N6
\add_instance|in7_bitreversal:0:lsb:b2|Y~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|in7_bitreversal:0:lsb:b2|Y~1_combout\ = (\input_vector~combout\(11) & (((\input_vector~combout\(0) & \add_instance|in7_bitreversal:0:lsb:b2|Y~0_combout\)))) # (!\input_vector~combout\(11) & (\add_instance|in6_bit:0:lsb:b0|Y~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e222",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|in6_bit:0:lsb:b0|Y~3_combout\,
	datab => \input_vector~combout\(11),
	datac => \input_vector~combout\(0),
	datad => \add_instance|in7_bitreversal:0:lsb:b2|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in7_bitreversal:0:lsb:b2|Y~1_combout\);

-- Location: LC_X7_Y7_N2
\add_instance|in6_bit:1:lsb:b0|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|in6_bit:1:lsb:b0|Y~0_combout\ = (\input_vector~combout\(9) & (!\input_vector~combout\(10) & (\add_instance|in3_bitreversal:4:lsb:b2|Y~0_combout\))) # (!\input_vector~combout\(9) & (((\add_instance|in4_bit:2:lsb:b2|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7520",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \input_vector~combout\(10),
	datac => \add_instance|in3_bitreversal:4:lsb:b2|Y~0_combout\,
	datad => \add_instance|in4_bit:2:lsb:b2|Y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in6_bit:1:lsb:b0|Y~0_combout\);

-- Location: LC_X7_Y7_N1
\add_instance|in6_bit:1:lsb:b0|Y~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|in6_bit:1:lsb:b0|Y~1_combout\ = (\input_vector~combout\(8) & (((\add_instance|in6_bit:1:lsb:b0|Y~0_combout\)))) # (!\input_vector~combout\(8) & ((\add_instance|in5_bit:1:lsb:b1|Y~0_combout\) # 
-- ((\add_instance|in5_bit:1:lsb:b1|Y~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|in5_bit:1:lsb:b1|Y~0_combout\,
	datab => \add_instance|in6_bit:1:lsb:b0|Y~0_combout\,
	datac => \input_vector~combout\(8),
	datad => \add_instance|in5_bit:1:lsb:b1|Y~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in6_bit:1:lsb:b0|Y~1_combout\);

-- Location: LC_X16_Y5_N7
\add_instance|in6_bit:3:lsb:b0|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|in6_bit:3:lsb:b0|Y~0_combout\ = ((!\input_vector~combout\(9) & ((!\input_vector~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(9),
	datad => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in6_bit:3:lsb:b0|Y~0_combout\);

-- Location: LC_X8_Y7_N4
\add_instance|in6_bit:6:lsb:b0|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|in6_bit:6:lsb:b0|Y~0_combout\ = (\add_instance|in6_bit:3:lsb:b0|Y~0_combout\ & ((\input_vector~combout\(8) & ((\add_instance|in3_bitreversal:7:lsb:b2|Y~0_combout\))) # (!\input_vector~combout\(8) & 
-- (\add_instance|in3_bitreversal:6:lsb:b2|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ca00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|in3_bitreversal:6:lsb:b2|Y~0_combout\,
	datab => \add_instance|in3_bitreversal:7:lsb:b2|Y~0_combout\,
	datac => \input_vector~combout\(8),
	datad => \add_instance|in6_bit:3:lsb:b0|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in6_bit:6:lsb:b0|Y~0_combout\);

-- Location: LC_X9_Y7_N5
\add_instance|in7_bitreversal:1:lsb:b2|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|in7_bitreversal:1:lsb:b2|Y~0_combout\ = ((\input_vector~combout\(11) & ((\add_instance|in6_bit:6:lsb:b0|Y~0_combout\))) # (!\input_vector~combout\(11) & (\add_instance|in6_bit:1:lsb:b0|Y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|in6_bit:1:lsb:b0|Y~1_combout\,
	datac => \input_vector~combout\(11),
	datad => \add_instance|in6_bit:6:lsb:b0|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in7_bitreversal:1:lsb:b2|Y~0_combout\);

-- Location: LC_X8_Y6_N2
\add_instance|in6_bit:5:lsb:b0|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|in6_bit:5:lsb:b0|Y~0_combout\ = ((\input_vector~combout\(9) & (\add_instance|in3_bitreversal:7:lsb:b2|Y~0_combout\)) # (!\input_vector~combout\(9) & ((\add_instance|in3_bitreversal:5:lsb:b2|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|in3_bitreversal:7:lsb:b2|Y~0_combout\,
	datac => \input_vector~combout\(9),
	datad => \add_instance|in3_bitreversal:5:lsb:b2|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in6_bit:5:lsb:b0|Y~0_combout\);

-- Location: LC_X16_Y5_N4
\add_instance|in6_bit:5:lsb:b0|Y~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|in6_bit:5:lsb:b0|Y~1_combout\ = (\input_vector~combout\(8) & (((!\input_vector~combout\(9) & \add_instance|in3_bitreversal:6:lsb:b2|Y~0_combout\)))) # (!\input_vector~combout\(8) & (\add_instance|in6_bit:5:lsb:b0|Y~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3a0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|in6_bit:5:lsb:b0|Y~0_combout\,
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(8),
	datad => \add_instance|in3_bitreversal:6:lsb:b2|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in6_bit:5:lsb:b0|Y~1_combout\);

-- Location: LC_X8_Y7_N3
\add_instance|in4_bit:3:lsb:b2|Y~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|in4_bit:3:lsb:b2|Y~1_combout\ = ((\input_vector~combout\(10) & (\add_instance|in3_bitreversal:7:lsb:b2|Y~0_combout\)) # (!\input_vector~combout\(10) & ((\add_instance|in4_bit:3:lsb:b2|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(10),
	datac => \add_instance|in3_bitreversal:7:lsb:b2|Y~0_combout\,
	datad => \add_instance|in4_bit:3:lsb:b2|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in4_bit:3:lsb:b2|Y~1_combout\);

-- Location: LC_X8_Y7_N7
\add_instance|in6_bit:1:lsb:b0|Y~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|in6_bit:1:lsb:b0|Y~2_combout\ = ((\input_vector~combout\(9) & ((!\input_vector~combout\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(9),
	datad => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in6_bit:1:lsb:b0|Y~2_combout\);

-- Location: LC_X8_Y7_N9
\add_instance|in6_bit:2:lsb:b0|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|in6_bit:2:lsb:b0|Y~0_combout\ = (\add_instance|in6_bit:1:lsb:b0|Y~2_combout\ & ((\input_vector~combout\(8) & (\add_instance|in3_bitreversal:5:lsb:b2|Y~0_combout\)) # (!\input_vector~combout\(8) & 
-- ((\add_instance|in3_bitreversal:4:lsb:b2|Y~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c480",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \add_instance|in6_bit:1:lsb:b0|Y~2_combout\,
	datac => \add_instance|in3_bitreversal:5:lsb:b2|Y~0_combout\,
	datad => \add_instance|in3_bitreversal:4:lsb:b2|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in6_bit:2:lsb:b0|Y~0_combout\);

-- Location: LC_X8_Y7_N5
\add_instance|in6_bit:2:lsb:b0|Y~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|in6_bit:2:lsb:b0|Y~1_combout\ = (\add_instance|in6_bit:2:lsb:b0|Y~0_combout\) # ((\add_instance|in4_bit:3:lsb:b2|Y~1_combout\ & (!\input_vector~combout\(9) & \input_vector~combout\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff20",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|in4_bit:3:lsb:b2|Y~1_combout\,
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(8),
	datad => \add_instance|in6_bit:2:lsb:b0|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in6_bit:2:lsb:b0|Y~1_combout\);

-- Location: LC_X8_Y7_N6
\add_instance|in6_bit:2:lsb:b0|Y~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|in6_bit:2:lsb:b0|Y~2_combout\ = (\add_instance|in6_bit:2:lsb:b0|Y~1_combout\) # ((!\input_vector~combout\(9) & (!\input_vector~combout\(8) & \add_instance|in4_bit:2:lsb:b2|Y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "abaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|in6_bit:2:lsb:b0|Y~1_combout\,
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(8),
	datad => \add_instance|in4_bit:2:lsb:b2|Y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in6_bit:2:lsb:b0|Y~2_combout\);

-- Location: LC_X16_Y5_N2
\add_instance|in7_bitreversal:2:lsb:b2|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|in7_bitreversal:2:lsb:b2|Y~0_combout\ = (\input_vector~combout\(11) & (!\input_vector~combout\(10) & (\add_instance|in6_bit:5:lsb:b0|Y~1_combout\))) # (!\input_vector~combout\(11) & (((\add_instance|in6_bit:2:lsb:b0|Y~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7340",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(10),
	datab => \input_vector~combout\(11),
	datac => \add_instance|in6_bit:5:lsb:b0|Y~1_combout\,
	datad => \add_instance|in6_bit:2:lsb:b0|Y~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in7_bitreversal:2:lsb:b2|Y~0_combout\);

-- Location: LC_X8_Y7_N2
\add_instance|in6_bit:3:lsb:b0|Y~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|in6_bit:3:lsb:b0|Y~1_combout\ = (\add_instance|in6_bit:1:lsb:b0|Y~2_combout\ & ((\input_vector~combout\(8) & ((\add_instance|in3_bitreversal:6:lsb:b2|Y~0_combout\))) # (!\input_vector~combout\(8) & 
-- (\add_instance|in3_bitreversal:5:lsb:b2|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c840",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \add_instance|in6_bit:1:lsb:b0|Y~2_combout\,
	datac => \add_instance|in3_bitreversal:5:lsb:b2|Y~0_combout\,
	datad => \add_instance|in3_bitreversal:6:lsb:b2|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in6_bit:3:lsb:b0|Y~1_combout\);

-- Location: LC_X8_Y7_N8
\add_instance|in6_bit:3:lsb:b0|Y~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|in6_bit:3:lsb:b0|Y~2_combout\ = (\add_instance|in6_bit:3:lsb:b0|Y~1_combout\) # ((\add_instance|in6_bit:3:lsb:b0|Y~0_combout\ & (\input_vector~combout\(8) & \add_instance|in3_bitreversal:4:lsb:b2|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|in6_bit:3:lsb:b0|Y~0_combout\,
	datab => \add_instance|in6_bit:3:lsb:b0|Y~1_combout\,
	datac => \input_vector~combout\(8),
	datad => \add_instance|in3_bitreversal:4:lsb:b2|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in6_bit:3:lsb:b0|Y~2_combout\);

-- Location: LC_X8_Y7_N0
\add_instance|in6_bit:3:lsb:b0|Y~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|in6_bit:3:lsb:b0|Y~3_combout\ = (\add_instance|in6_bit:3:lsb:b0|Y~2_combout\) # ((!\input_vector~combout\(9) & (!\input_vector~combout\(8) & \add_instance|in4_bit:3:lsb:b2|Y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "abaa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|in6_bit:3:lsb:b0|Y~2_combout\,
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(8),
	datad => \add_instance|in4_bit:3:lsb:b2|Y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in6_bit:3:lsb:b0|Y~3_combout\);

-- Location: LC_X16_Y5_N9
\add_instance|in6_bit:4:lsb:b0|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|in6_bit:4:lsb:b0|Y~0_combout\ = ((\input_vector~combout\(9) & ((\add_instance|in3_bitreversal:6:lsb:b2|Y~0_combout\))) # (!\input_vector~combout\(9) & (\add_instance|in3_bitreversal:4:lsb:b2|Y~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(9),
	datac => \add_instance|in3_bitreversal:4:lsb:b2|Y~0_combout\,
	datad => \add_instance|in3_bitreversal:6:lsb:b2|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in6_bit:4:lsb:b0|Y~0_combout\);

-- Location: LC_X16_Y5_N5
\add_instance|in6_bit:4:lsb:b0|Y~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|in6_bit:4:lsb:b0|Y~1_combout\ = (!\input_vector~combout\(10) & ((\input_vector~combout\(8) & (\add_instance|in6_bit:5:lsb:b0|Y~0_combout\)) # (!\input_vector~combout\(8) & ((\add_instance|in6_bit:4:lsb:b0|Y~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2320",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|in6_bit:5:lsb:b0|Y~0_combout\,
	datab => \input_vector~combout\(10),
	datac => \input_vector~combout\(8),
	datad => \add_instance|in6_bit:4:lsb:b0|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in6_bit:4:lsb:b0|Y~1_combout\);

-- Location: LC_X16_Y5_N3
\add_instance|in7_bitreversal:3:lsb:b2|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|in7_bitreversal:3:lsb:b2|Y~0_combout\ = (\input_vector~combout\(11) & (((\add_instance|in6_bit:4:lsb:b0|Y~1_combout\)))) # (!\input_vector~combout\(11) & (\add_instance|in6_bit:3:lsb:b0|Y~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e2e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|in6_bit:3:lsb:b0|Y~3_combout\,
	datab => \input_vector~combout\(11),
	datac => \add_instance|in6_bit:4:lsb:b0|Y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in7_bitreversal:3:lsb:b2|Y~0_combout\);

-- Location: LC_X16_Y5_N6
\add_instance|in7_bitreversal:4:lsb:b2|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|in7_bitreversal:4:lsb:b2|Y~0_combout\ = (\input_vector~combout\(11) & (\add_instance|in6_bit:3:lsb:b0|Y~3_combout\)) # (!\input_vector~combout\(11) & (((\add_instance|in6_bit:4:lsb:b0|Y~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|in6_bit:3:lsb:b0|Y~3_combout\,
	datab => \input_vector~combout\(11),
	datad => \add_instance|in6_bit:4:lsb:b0|Y~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in7_bitreversal:4:lsb:b2|Y~0_combout\);

-- Location: LC_X16_Y5_N8
\add_instance|in7_bitreversal:5:lsb:b2|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|in7_bitreversal:5:lsb:b2|Y~0_combout\ = (\input_vector~combout\(11) & (((\add_instance|in6_bit:2:lsb:b0|Y~2_combout\)))) # (!\input_vector~combout\(11) & (!\input_vector~combout\(10) & (\add_instance|in6_bit:5:lsb:b0|Y~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc10",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(10),
	datab => \input_vector~combout\(11),
	datac => \add_instance|in6_bit:5:lsb:b0|Y~1_combout\,
	datad => \add_instance|in6_bit:2:lsb:b0|Y~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in7_bitreversal:5:lsb:b2|Y~0_combout\);

-- Location: LC_X9_Y7_N2
\add_instance|in7_bitreversal:6:lsb:b2|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|in7_bitreversal:6:lsb:b2|Y~0_combout\ = ((\input_vector~combout\(11) & (\add_instance|in6_bit:1:lsb:b0|Y~1_combout\)) # (!\input_vector~combout\(11) & ((\add_instance|in6_bit:6:lsb:b0|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|in6_bit:1:lsb:b0|Y~1_combout\,
	datac => \input_vector~combout\(11),
	datad => \add_instance|in6_bit:6:lsb:b0|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in7_bitreversal:6:lsb:b2|Y~0_combout\);

-- Location: LC_X7_Y7_N5
\add_instance|in7_bitreversal:7:lsb:b2|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|in7_bitreversal:7:lsb:b2|Y~0_combout\ = (\input_vector~combout\(11) & (\add_instance|in6_bit:0:lsb:b0|Y~3_combout\)) # (!\input_vector~combout\(11) & (((\input_vector~combout\(7) & \add_instance|in7_bitreversal:0:lsb:b2|Y~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|in6_bit:0:lsb:b0|Y~3_combout\,
	datab => \input_vector~combout\(11),
	datac => \input_vector~combout\(7),
	datad => \add_instance|in7_bitreversal:0:lsb:b2|Y~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|in7_bitreversal:7:lsb:b2|Y~0_combout\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|in7_bitreversal:0:lsb:b2|Y~1_combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|in7_bitreversal:1:lsb:b2|Y~0_combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|in7_bitreversal:2:lsb:b2|Y~0_combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|in7_bitreversal:3:lsb:b2|Y~0_combout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|in7_bitreversal:4:lsb:b2|Y~0_combout\,
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|in7_bitreversal:5:lsb:b2|Y~0_combout\,
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|in7_bitreversal:6:lsb:b2|Y~0_combout\,
	oe => VCC,
	padio => ww_output_vector(6));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|in7_bitreversal:7:lsb:b2|Y~0_combout\,
	oe => VCC,
	padio => ww_output_vector(7));
END structure;


