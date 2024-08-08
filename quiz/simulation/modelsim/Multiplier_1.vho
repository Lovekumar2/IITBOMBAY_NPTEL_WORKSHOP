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

-- DATE "06/10/2024 11:55:09"

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
	input_vector : IN std_logic_vector(6 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(6 DOWNTO 0)
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
SIGNAL ww_input_vector : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(6 DOWNTO 0);
SIGNAL \add_instance|inst1|Y~0_combout\ : std_logic;
SIGNAL \add_instance|inst5|Y~combout\ : std_logic;
SIGNAL \add_instance|inst7|S~combout\ : std_logic;
SIGNAL \add_instance|inst9|S~combout\ : std_logic;
SIGNAL \add_instance|inst9|C~combout\ : std_logic;
SIGNAL \add_instance|inst12|S~5_combout\ : std_logic;
SIGNAL \add_instance|inst12|S~4_combout\ : std_logic;
SIGNAL \add_instance|inst14|S~combout\ : std_logic;
SIGNAL \add_instance|inst15|Y~combout\ : std_logic;
SIGNAL \add_instance|inst14|C~0_combout\ : std_logic;
SIGNAL \add_instance|inst17|S~combout\ : std_logic;
SIGNAL \add_instance|inst17|C~0_combout\ : std_logic;
SIGNAL \add_instance|inst19|S~combout\ : std_logic;
SIGNAL \add_instance|inst19|C~combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(6 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: LC_X10_Y4_N4
\add_instance|inst1|Y~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|inst1|Y~0_combout\ = (\input_vector~combout\(0) & (((\input_vector~combout\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datac => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|inst1|Y~0_combout\);

-- Location: PIN_63,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: LC_X10_Y4_N8
\add_instance|inst5|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|inst5|Y~combout\ = (\input_vector~combout\(0) & (((\input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|inst5|Y~combout\);

-- Location: PIN_61,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: PIN_81,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: LC_X10_Y4_N7
\add_instance|inst7|S\ : maxv_lcell
-- Equation(s):
-- \add_instance|inst7|S~combout\ = \add_instance|inst5|Y~combout\ $ (((!\add_instance|inst1|Y~0_combout\ & (\input_vector~combout\(4) & \input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|inst1|Y~0_combout\,
	datab => \add_instance|inst5|Y~combout\,
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|inst7|S~combout\);

-- Location: PIN_66,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: LC_X10_Y4_N9
\add_instance|inst9|S\ : maxv_lcell
-- Equation(s):
-- \add_instance|inst9|S~combout\ = (\add_instance|inst7|S~combout\ $ (((\input_vector~combout\(3) & \input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3ccc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|inst7|S~combout\,
	datac => \input_vector~combout\(3),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|inst9|S~combout\);

-- Location: LC_X10_Y4_N6
\add_instance|inst9|C\ : maxv_lcell
-- Equation(s):
-- \add_instance|inst9|C~combout\ = ((\add_instance|inst7|S~combout\ & (\input_vector~combout\(3) & \input_vector~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|inst7|S~combout\,
	datac => \input_vector~combout\(3),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|inst9|C~combout\);

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: LC_X10_Y4_N1
\add_instance|inst12|S~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|inst12|S~5_combout\ = (\input_vector~combout\(0) & ((\input_vector~combout\(4) & (\input_vector~combout\(3) & !\input_vector~combout\(5))) # (!\input_vector~combout\(4) & ((\input_vector~combout\(5)))))) # (!\input_vector~combout\(0) & 
-- (((\input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|inst12|S~5_combout\);

-- Location: LC_X10_Y4_N2
\add_instance|inst12|S~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|inst12|S~4_combout\ = (\input_vector~combout\(0) & (\input_vector~combout\(6) $ (((\input_vector~combout\(1) & \add_instance|inst12|S~5_combout\))))) # (!\input_vector~combout\(0) & (\input_vector~combout\(1) & 
-- ((\add_instance|inst12|S~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ca0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(6),
	datad => \add_instance|inst12|S~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|inst12|S~4_combout\);

-- Location: LC_X10_Y4_N3
\add_instance|inst14|S\ : maxv_lcell
-- Equation(s):
-- \add_instance|inst14|S~combout\ = \add_instance|inst9|C~combout\ $ (\add_instance|inst12|S~4_combout\ $ (((\input_vector~combout\(4) & \input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9666",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|inst9|C~combout\,
	datab => \add_instance|inst12|S~4_combout\,
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|inst14|S~combout\);

-- Location: LC_X13_Y2_N5
\add_instance|inst15|Y\ : maxv_lcell
-- Equation(s):
-- \add_instance|inst15|Y~combout\ = ((\input_vector~combout\(6) & ((\input_vector~combout\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(6),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|inst15|Y~combout\);

-- Location: LC_X10_Y4_N5
\add_instance|inst14|C~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|inst14|C~0_combout\ = (\add_instance|inst9|C~combout\ & ((\add_instance|inst12|S~4_combout\) # ((\input_vector~combout\(4) & \input_vector~combout\(2))))) # (!\add_instance|inst9|C~combout\ & (\add_instance|inst12|S~4_combout\ & 
-- (\input_vector~combout\(4) & \input_vector~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e888",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|inst9|C~combout\,
	datab => \add_instance|inst12|S~4_combout\,
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|inst14|C~0_combout\);

-- Location: LC_X13_Y2_N2
\add_instance|inst17|S\ : maxv_lcell
-- Equation(s):
-- \add_instance|inst17|S~combout\ = \add_instance|inst15|Y~combout\ $ (\add_instance|inst14|C~0_combout\ $ (((\input_vector~combout\(5) & \input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "965a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|inst15|Y~combout\,
	datab => \input_vector~combout\(5),
	datac => \add_instance|inst14|C~0_combout\,
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|inst17|S~combout\);

-- Location: LC_X13_Y2_N4
\add_instance|inst17|C~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|inst17|C~0_combout\ = (\add_instance|inst15|Y~combout\ & ((\add_instance|inst14|C~0_combout\) # ((\input_vector~combout\(5) & \input_vector~combout\(2))))) # (!\add_instance|inst15|Y~combout\ & (\input_vector~combout\(5) & 
-- (\add_instance|inst14|C~0_combout\ & \input_vector~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|inst15|Y~combout\,
	datab => \input_vector~combout\(5),
	datac => \add_instance|inst14|C~0_combout\,
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|inst17|C~0_combout\);

-- Location: LC_X13_Y2_N6
\add_instance|inst19|S\ : maxv_lcell
-- Equation(s):
-- \add_instance|inst19|S~combout\ = (\add_instance|inst17|C~0_combout\ $ (((\input_vector~combout\(6) & \input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3cf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(6),
	datac => \add_instance|inst17|C~0_combout\,
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|inst19|S~combout\);

-- Location: LC_X13_Y2_N8
\add_instance|inst19|C\ : maxv_lcell
-- Equation(s):
-- \add_instance|inst19|C~combout\ = ((\input_vector~combout\(6) & (\add_instance|inst17|C~0_combout\ & \input_vector~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(6),
	datac => \add_instance|inst17|C~0_combout\,
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|inst19|C~combout\);

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|inst1|Y~0_combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|inst9|S~combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => GND,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|inst14|S~combout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_69,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|inst17|S~combout\,
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|inst19|S~combout\,
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|inst19|C~combout\,
	oe => VCC,
	padio => ww_output_vector(6));
END structure;


