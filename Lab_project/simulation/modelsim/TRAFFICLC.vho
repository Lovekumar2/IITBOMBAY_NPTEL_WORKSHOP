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

-- DATE "06/14/2024 11:26:58"

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

ENTITY 	TRAFFICLC IS
    PORT (
	Clk : IN std_logic;
	Reset : IN std_logic;
	State_output2 : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END TRAFFICLC;

-- Design Ports Information


ARCHITECTURE structure OF TRAFFICLC IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clk : std_logic;
SIGNAL ww_Reset : std_logic;
SIGNAL ww_State_output2 : std_logic_vector(7 DOWNTO 0);
SIGNAL \TIME2|Add0~150\ : std_logic;
SIGNAL \Clk~combout\ : std_logic;
SIGNAL \Reset~combout\ : std_logic;
SIGNAL \Y_Present.rst~regout\ : std_logic;
SIGNAL \TIME2|Add0~50_combout\ : std_logic;
SIGNAL \TIME1|Add0~5_combout\ : std_logic;
SIGNAL \TIME1|Add0~7\ : std_logic;
SIGNAL \TIME1|Add0~0_combout\ : std_logic;
SIGNAL \TIME2|Add0~152_cout0\ : std_logic;
SIGNAL \TIME2|Add0~152COUT1_156\ : std_logic;
SIGNAL \TIME2|Add0~145_combout\ : std_logic;
SIGNAL \TIME2|Add0~147\ : std_logic;
SIGNAL \TIME2|Add0~147COUT1_157\ : std_logic;
SIGNAL \TIME2|Add0~140_combout\ : std_logic;
SIGNAL \TIME2|Add0~142\ : std_logic;
SIGNAL \TIME2|Add0~142COUT1_158\ : std_logic;
SIGNAL \TIME2|Add0~135_combout\ : std_logic;
SIGNAL \TIME2|Add0~137\ : std_logic;
SIGNAL \TIME2|Add0~137COUT1_159\ : std_logic;
SIGNAL \TIME2|Add0~130_combout\ : std_logic;
SIGNAL \TIME2|Add0~132\ : std_logic;
SIGNAL \TIME2|Add0~115_combout\ : std_logic;
SIGNAL \TIME2|Add0~117\ : std_logic;
SIGNAL \TIME2|Add0~117COUT1_160\ : std_logic;
SIGNAL \TIME2|Add0~125_combout\ : std_logic;
SIGNAL \TIME2|Add0~127\ : std_logic;
SIGNAL \TIME2|Add0~127COUT1_161\ : std_logic;
SIGNAL \TIME2|Add0~120_combout\ : std_logic;
SIGNAL \TIME2|Add0~122\ : std_logic;
SIGNAL \TIME2|Add0~122COUT1_162\ : std_logic;
SIGNAL \TIME2|Add0~110_combout\ : std_logic;
SIGNAL \TIME2|Add0~112\ : std_logic;
SIGNAL \TIME2|Add0~112COUT1_163\ : std_logic;
SIGNAL \TIME2|Add0~105_combout\ : std_logic;
SIGNAL \TIME2|Add0~107\ : std_logic;
SIGNAL \TIME2|Add0~100_combout\ : std_logic;
SIGNAL \TIME2|Add0~102\ : std_logic;
SIGNAL \TIME2|Add0~102COUT1_164\ : std_logic;
SIGNAL \TIME2|Add0~95_combout\ : std_logic;
SIGNAL \TIME2|Add0~97\ : std_logic;
SIGNAL \TIME2|Add0~97COUT1_165\ : std_logic;
SIGNAL \TIME2|Add0~90_combout\ : std_logic;
SIGNAL \TIME2|Add0~92\ : std_logic;
SIGNAL \TIME2|Add0~92COUT1_166\ : std_logic;
SIGNAL \TIME2|Add0~85_combout\ : std_logic;
SIGNAL \TIME2|Add0~80_combout\ : std_logic;
SIGNAL \TIME2|Add0~82\ : std_logic;
SIGNAL \TIME2|Add0~82COUT1_168\ : std_logic;
SIGNAL \TIME2|Add0~70_combout\ : std_logic;
SIGNAL \TIME2|Add0~72\ : std_logic;
SIGNAL \TIME2|Add0~72COUT1_169\ : std_logic;
SIGNAL \TIME2|Add0~55_combout\ : std_logic;
SIGNAL \TIME2|Add0~57\ : std_logic;
SIGNAL \TIME2|Add0~57COUT1_170\ : std_logic;
SIGNAL \TIME2|Add0~67\ : std_logic;
SIGNAL \TIME2|Add0~67COUT1_171\ : std_logic;
SIGNAL \TIME2|Add0~60_combout\ : std_logic;
SIGNAL \TIME2|Add0~62\ : std_logic;
SIGNAL \TIME2|Add0~52\ : std_logic;
SIGNAL \TIME2|Add0~52COUT1_172\ : std_logic;
SIGNAL \TIME2|Add0~40_combout\ : std_logic;
SIGNAL \TIME2|Add0~42\ : std_logic;
SIGNAL \TIME2|Add0~42COUT1_173\ : std_logic;
SIGNAL \TIME2|Add0~35_combout\ : std_logic;
SIGNAL \TIME2|Add0~37\ : std_logic;
SIGNAL \TIME2|Add0~37COUT1_174\ : std_logic;
SIGNAL \TIME2|Add0~45_combout\ : std_logic;
SIGNAL \TIME2|Add0~47\ : std_logic;
SIGNAL \TIME2|Add0~47COUT1_175\ : std_logic;
SIGNAL \TIME2|Add0~30_combout\ : std_logic;
SIGNAL \TIME2|Equal0~2\ : std_logic;
SIGNAL \TIME2|Equal0~6\ : std_logic;
SIGNAL \TIME2|Equal0~7\ : std_logic;
SIGNAL \TIME2|Equal0~4\ : std_logic;
SIGNAL \TIME2|Equal0~5\ : std_logic;
SIGNAL \TIME2|Equal0~8_combout\ : std_logic;
SIGNAL \TIME2|Add0~32\ : std_logic;
SIGNAL \TIME2|Add0~5_combout\ : std_logic;
SIGNAL \TIME2|Add0~7\ : std_logic;
SIGNAL \TIME2|Add0~7COUT1_176\ : std_logic;
SIGNAL \TIME2|Add0~0_combout\ : std_logic;
SIGNAL \TIME2|Add0~2\ : std_logic;
SIGNAL \TIME2|Add0~2COUT1_177\ : std_logic;
SIGNAL \TIME2|Add0~15_combout\ : std_logic;
SIGNAL \TIME2|Add0~17\ : std_logic;
SIGNAL \TIME2|Add0~17COUT1_178\ : std_logic;
SIGNAL \TIME2|Add0~10_combout\ : std_logic;
SIGNAL \TIME2|Add0~12\ : std_logic;
SIGNAL \TIME2|Add0~12COUT1_179\ : std_logic;
SIGNAL \TIME2|Add0~25_combout\ : std_logic;
SIGNAL \TIME1|Equal0~0\ : std_logic;
SIGNAL \TIME2|Equal0~0\ : std_logic;
SIGNAL \TIME2|Add0~27\ : std_logic;
SIGNAL \TIME2|Add0~20_combout\ : std_logic;
SIGNAL \TIME2|Equal0~1\ : std_logic;
SIGNAL \TIME2|Equal0~9\ : std_logic;
SIGNAL \TIME2|Add0~87\ : std_logic;
SIGNAL \TIME2|Add0~87COUT1_167\ : std_logic;
SIGNAL \TIME2|Add0~75_combout\ : std_logic;
SIGNAL \TIME2|Add0~77\ : std_logic;
SIGNAL \TIME2|Add0~65_combout\ : std_logic;
SIGNAL \TIME2|Equal0~3\ : std_logic;
SIGNAL \TIME2|S1~regout\ : std_logic;
SIGNAL \TIME1|Add0~2\ : std_logic;
SIGNAL \TIME1|Add0~2COUT1_161\ : std_logic;
SIGNAL \TIME1|Add0~155_combout\ : std_logic;
SIGNAL \TIME1|Add0~157\ : std_logic;
SIGNAL \TIME1|Add0~157COUT1_162\ : std_logic;
SIGNAL \TIME1|Add0~150_combout\ : std_logic;
SIGNAL \TIME1|Add0~152\ : std_logic;
SIGNAL \TIME1|Add0~152COUT1_163\ : std_logic;
SIGNAL \TIME1|Add0~145_combout\ : std_logic;
SIGNAL \TIME1|Add0~147\ : std_logic;
SIGNAL \TIME1|Add0~147COUT1_164\ : std_logic;
SIGNAL \TIME1|Add0~140_combout\ : std_logic;
SIGNAL \TIME1|Add0~142\ : std_logic;
SIGNAL \TIME1|Add0~120_combout\ : std_logic;
SIGNAL \TIME1|Add0~122\ : std_logic;
SIGNAL \TIME1|Add0~122COUT1_165\ : std_logic;
SIGNAL \TIME1|Add0~135_combout\ : std_logic;
SIGNAL \TIME1|Add0~137\ : std_logic;
SIGNAL \TIME1|Add0~137COUT1_166\ : std_logic;
SIGNAL \TIME1|Add0~130_combout\ : std_logic;
SIGNAL \TIME1|Add0~132\ : std_logic;
SIGNAL \TIME1|Add0~132COUT1_167\ : std_logic;
SIGNAL \TIME1|Add0~125_combout\ : std_logic;
SIGNAL \TIME1|Add0~127\ : std_logic;
SIGNAL \TIME1|Add0~127COUT1_168\ : std_logic;
SIGNAL \TIME1|Add0~115_combout\ : std_logic;
SIGNAL \TIME1|Add0~117\ : std_logic;
SIGNAL \TIME1|Add0~110_combout\ : std_logic;
SIGNAL \TIME1|Add0~112\ : std_logic;
SIGNAL \TIME1|Add0~112COUT1_169\ : std_logic;
SIGNAL \TIME1|Add0~105_combout\ : std_logic;
SIGNAL \TIME1|Add0~107\ : std_logic;
SIGNAL \TIME1|Add0~107COUT1_170\ : std_logic;
SIGNAL \TIME1|Add0~100_combout\ : std_logic;
SIGNAL \TIME1|Add0~102\ : std_logic;
SIGNAL \TIME1|Add0~102COUT1_171\ : std_logic;
SIGNAL \TIME1|Add0~90_combout\ : std_logic;
SIGNAL \TIME1|Add0~92\ : std_logic;
SIGNAL \TIME1|Add0~92COUT1_172\ : std_logic;
SIGNAL \TIME1|Add0~85_combout\ : std_logic;
SIGNAL \TIME1|Add0~87\ : std_logic;
SIGNAL \TIME1|Add0~95_combout\ : std_logic;
SIGNAL \TIME1|Add0~97\ : std_logic;
SIGNAL \TIME1|Add0~97COUT1_173\ : std_logic;
SIGNAL \TIME1|Add0~80_combout\ : std_logic;
SIGNAL \TIME1|Add0~82\ : std_logic;
SIGNAL \TIME1|Add0~82COUT1_174\ : std_logic;
SIGNAL \TIME1|Add0~77COUT1_175\ : std_logic;
SIGNAL \TIME1|Add0~72COUT1_176\ : std_logic;
SIGNAL \TIME1|Add0~67\ : std_logic;
SIGNAL \TIME1|Add0~60_combout\ : std_logic;
SIGNAL \TIME1|Add0~75_combout\ : std_logic;
SIGNAL \TIME1|Add0~77\ : std_logic;
SIGNAL \TIME1|Add0~70_combout\ : std_logic;
SIGNAL \TIME1|Add0~72\ : std_logic;
SIGNAL \TIME1|Add0~65_combout\ : std_logic;
SIGNAL \TIME1|Equal0~4\ : std_logic;
SIGNAL \TIME1|Add0~62\ : std_logic;
SIGNAL \TIME1|Add0~62COUT1_177\ : std_logic;
SIGNAL \TIME1|Add0~50_combout\ : std_logic;
SIGNAL \TIME1|Add0~52\ : std_logic;
SIGNAL \TIME1|Add0~52COUT1_178\ : std_logic;
SIGNAL \TIME1|Add0~47\ : std_logic;
SIGNAL \TIME1|Add0~47COUT1_179\ : std_logic;
SIGNAL \TIME1|Add0~55_combout\ : std_logic;
SIGNAL \TIME1|Add0~57\ : std_logic;
SIGNAL \TIME1|Add0~57COUT1_180\ : std_logic;
SIGNAL \TIME1|Add0~40_combout\ : std_logic;
SIGNAL \TIME1|Add0~42\ : std_logic;
SIGNAL \TIME1|Add0~25_combout\ : std_logic;
SIGNAL \TIME1|Add0~27\ : std_logic;
SIGNAL \TIME1|Add0~27COUT1_181\ : std_logic;
SIGNAL \TIME1|Add0~20_combout\ : std_logic;
SIGNAL \TIME1|Add0~22\ : std_logic;
SIGNAL \TIME1|Add0~22COUT1_182\ : std_logic;
SIGNAL \TIME1|Add0~15_combout\ : std_logic;
SIGNAL \TIME1|Add0~17\ : std_logic;
SIGNAL \TIME1|Add0~17COUT1_183\ : std_logic;
SIGNAL \TIME1|Add0~10_combout\ : std_logic;
SIGNAL \TIME1|Add0~12\ : std_logic;
SIGNAL \TIME1|Add0~12COUT1_184\ : std_logic;
SIGNAL \TIME1|Add0~35_combout\ : std_logic;
SIGNAL \TIME1|Equal0~1\ : std_logic;
SIGNAL \TIME1|Add0~37\ : std_logic;
SIGNAL \TIME1|Add0~30_combout\ : std_logic;
SIGNAL \TIME1|Equal0~2\ : std_logic;
SIGNAL \TIME1|Equal0~6\ : std_logic;
SIGNAL \TIME1|Equal0~7\ : std_logic;
SIGNAL \TIME1|Equal0~5\ : std_logic;
SIGNAL \TIME1|Equal0~8\ : std_logic;
SIGNAL \TIME1|Equal0~9_combout\ : std_logic;
SIGNAL \TIME1|Equal0~10\ : std_logic;
SIGNAL \TIME1|Add0~45_combout\ : std_logic;
SIGNAL \TIME1|Equal0~3\ : std_logic;
SIGNAL \TIME1|S1~regout\ : std_logic;
SIGNAL \Y_Present.S6~regout\ : std_logic;
SIGNAL \Y_Present.S7~regout\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \Y_Present.S0~regout\ : std_logic;
SIGNAL \Y_Present.S1~regout\ : std_logic;
SIGNAL \Y_Present.S2~regout\ : std_logic;
SIGNAL \Y_Present.S3~regout\ : std_logic;
SIGNAL \Y_Present.S4~regout\ : std_logic;
SIGNAL \Y_Present.S5~regout\ : std_logic;
SIGNAL \inst3|Mux1~0_combout\ : std_logic;
SIGNAL \inst2|Mux1~0_combout\ : std_logic;
SIGNAL \inst1|Mux1~0_combout\ : std_logic;
SIGNAL \inst0|Mux1~0_combout\ : std_logic;
SIGNAL \TIME1|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \TIME2|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \inst0|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_Present.S0~regout\ : std_logic;
SIGNAL \inst1|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_Present.S2~regout\ : std_logic;
SIGNAL \inst2|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_Present.S4~regout\ : std_logic;
SIGNAL \inst3|ALT_INV_Mux1~0_combout\ : std_logic;
SIGNAL \ALT_INV_Y_Present.S6~regout\ : std_logic;

BEGIN

ww_Clk <= Clk;
ww_Reset <= Reset;
State_output2 <= ww_State_output2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\inst0|ALT_INV_Mux1~0_combout\ <= NOT \inst0|Mux1~0_combout\;
\ALT_INV_Y_Present.S0~regout\ <= NOT \Y_Present.S0~regout\;
\inst1|ALT_INV_Mux1~0_combout\ <= NOT \inst1|Mux1~0_combout\;
\ALT_INV_Y_Present.S2~regout\ <= NOT \Y_Present.S2~regout\;
\inst2|ALT_INV_Mux1~0_combout\ <= NOT \inst2|Mux1~0_combout\;
\ALT_INV_Y_Present.S4~regout\ <= NOT \Y_Present.S4~regout\;
\inst3|ALT_INV_Mux1~0_combout\ <= NOT \inst3|Mux1~0_combout\;
\ALT_INV_Y_Present.S6~regout\ <= NOT \Y_Present.S6~regout\;

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Clk~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Clk,
	combout => \Clk~combout\);

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\Reset~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_Reset,
	combout => \Reset~combout\);

-- Location: LC_X6_Y5_N9
\Y_Present.rst\ : maxv_lcell
-- Equation(s):
-- \Y_Present.rst~regout\ = DFFEAS((((!\Reset~combout\))), GLOBAL(\Clk~combout\), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \Reset~combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Y_Present.rst~regout\);

-- Location: LC_X7_Y8_N5
\TIME2|Add0~50\ : maxv_lcell
-- Equation(s):
-- \TIME2|Add0~50_combout\ = (\TIME2|count\(21) $ ((!\TIME2|Add0~62\)))
-- \TIME2|Add0~52\ = CARRY(((\TIME2|count\(21) & !\TIME2|Add0~62\)))
-- \TIME2|Add0~52COUT1_172\ = CARRY(((\TIME2|count\(21) & !\TIME2|Add0~62\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME2|count\(21),
	cin => \TIME2|Add0~62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Add0~50_combout\,
	cout0 => \TIME2|Add0~52\,
	cout1 => \TIME2|Add0~52COUT1_172\);

-- Location: LC_X6_Y9_N7
\TIME2|count[21]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(21) = DFFEAS((((\TIME2|Add0~50_combout\ & !\TIME2|Equal0~9\))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \TIME2|Add0~50_combout\,
	datad => \TIME2|Equal0~9\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(21));

-- Location: LC_X1_Y7_N4
\TIME1|Add0~5\ : maxv_lcell
-- Equation(s):
-- \TIME1|Add0~5_combout\ = ((!\TIME1|count\(0)))
-- \TIME1|Add0~7\ = CARRY(((\TIME1|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME1|count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Add0~5_combout\,
	cout => \TIME1|Add0~7\);

-- Location: LC_X5_Y8_N2
\TIME1|count[0]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(0) = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , \TIME1|Add0~5_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \TIME1|Add0~5_combout\,
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(0));

-- Location: LC_X1_Y7_N5
\TIME1|Add0~0\ : maxv_lcell
-- Equation(s):
-- \TIME1|Add0~0_combout\ = (\TIME1|count\(1) $ ((\TIME1|Add0~7\)))
-- \TIME1|Add0~2\ = CARRY(((!\TIME1|Add0~7\) # (!\TIME1|count\(1))))
-- \TIME1|Add0~2COUT1_161\ = CARRY(((!\TIME1|Add0~7\) # (!\TIME1|count\(1))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME1|count\(1),
	cin => \TIME1|Add0~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Add0~0_combout\,
	cout0 => \TIME1|Add0~2\,
	cout1 => \TIME1|Add0~2COUT1_161\);

-- Location: LC_X5_Y8_N3
\TIME1|count[1]\ : maxv_lcell
-- Equation(s):
-- \TIME1|Equal0~0\ = (((C1_count[1] & \TIME1|count\(0))))
-- \TIME1|count\(1) = DFFEAS(\TIME1|Equal0~0\, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , \TIME1|Add0~0_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \TIME1|Add0~0_combout\,
	datad => \TIME1|count\(0),
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Equal0~0\,
	regout => \TIME1|count\(1));

-- Location: LC_X5_Y8_N5
\TIME2|Add0~152\ : maxv_lcell
-- Equation(s):
-- \TIME2|Add0~152_cout0\ = CARRY((\TIME1|count\(1) & (\TIME1|count\(0))))
-- \TIME2|Add0~152COUT1_156\ = CARRY((\TIME1|count\(1) & (\TIME1|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff88",
	operation_mode => "arithmetic",
	output_mode => "none",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME1|count\(1),
	datab => \TIME1|count\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Add0~150\,
	cout0 => \TIME2|Add0~152_cout0\,
	cout1 => \TIME2|Add0~152COUT1_156\);

-- Location: LC_X5_Y8_N6
\TIME2|Add0~145\ : maxv_lcell
-- Equation(s):
-- \TIME2|Add0~145_combout\ = (\TIME2|count\(2) $ ((\TIME2|Add0~152_cout0\)))
-- \TIME2|Add0~147\ = CARRY(((!\TIME2|Add0~152_cout0\) # (!\TIME2|count\(2))))
-- \TIME2|Add0~147COUT1_157\ = CARRY(((!\TIME2|Add0~152COUT1_156\) # (!\TIME2|count\(2))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME2|count\(2),
	cin0 => \TIME2|Add0~152_cout0\,
	cin1 => \TIME2|Add0~152COUT1_156\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Add0~145_combout\,
	cout0 => \TIME2|Add0~147\,
	cout1 => \TIME2|Add0~147COUT1_157\);

-- Location: LC_X5_Y8_N1
\TIME2|count[2]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(2) = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , \TIME2|Add0~145_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \TIME2|Add0~145_combout\,
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(2));

-- Location: LC_X5_Y8_N7
\TIME2|Add0~140\ : maxv_lcell
-- Equation(s):
-- \TIME2|Add0~140_combout\ = \TIME2|count\(3) $ ((((!\TIME2|Add0~147\))))
-- \TIME2|Add0~142\ = CARRY((\TIME2|count\(3) & ((!\TIME2|Add0~147\))))
-- \TIME2|Add0~142COUT1_158\ = CARRY((\TIME2|count\(3) & ((!\TIME2|Add0~147COUT1_157\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME2|count\(3),
	cin0 => \TIME2|Add0~147\,
	cin1 => \TIME2|Add0~147COUT1_157\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Add0~140_combout\,
	cout0 => \TIME2|Add0~142\,
	cout1 => \TIME2|Add0~142COUT1_158\);

-- Location: LC_X5_Y8_N4
\TIME2|count[3]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(3) = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , \TIME2|Add0~140_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \TIME2|Add0~140_combout\,
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(3));

-- Location: LC_X5_Y8_N8
\TIME2|Add0~135\ : maxv_lcell
-- Equation(s):
-- \TIME2|Add0~135_combout\ = (\TIME2|count\(4) $ ((\TIME2|Add0~142\)))
-- \TIME2|Add0~137\ = CARRY(((!\TIME2|Add0~142\) # (!\TIME2|count\(4))))
-- \TIME2|Add0~137COUT1_159\ = CARRY(((!\TIME2|Add0~142COUT1_158\) # (!\TIME2|count\(4))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME2|count\(4),
	cin0 => \TIME2|Add0~142\,
	cin1 => \TIME2|Add0~142COUT1_158\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Add0~135_combout\,
	cout0 => \TIME2|Add0~137\,
	cout1 => \TIME2|Add0~137COUT1_159\);

-- Location: LC_X5_Y8_N0
\TIME2|count[4]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(4) = DFFEAS((((\TIME2|Add0~135_combout\))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datad => \TIME2|Add0~135_combout\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(4));

-- Location: LC_X5_Y8_N9
\TIME2|Add0~130\ : maxv_lcell
-- Equation(s):
-- \TIME2|Add0~130_combout\ = (\TIME2|count\(5) $ ((!\TIME2|Add0~137\)))
-- \TIME2|Add0~132\ = CARRY(((\TIME2|count\(5) & !\TIME2|Add0~137COUT1_159\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME2|count\(5),
	cin0 => \TIME2|Add0~137\,
	cin1 => \TIME2|Add0~137COUT1_159\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Add0~130_combout\,
	cout => \TIME2|Add0~132\);

-- Location: LC_X6_Y9_N6
\TIME2|count[5]\ : maxv_lcell
-- Equation(s):
-- \TIME2|Equal0~7\ = (\TIME2|count\(4) & (\TIME2|count\(2) & (D1_count[5] & \TIME2|count\(3))))
-- \TIME2|count\(5) = DFFEAS(\TIME2|Equal0~7\, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , \TIME2|Add0~130_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME2|count\(4),
	datab => \TIME2|count\(2),
	datac => \TIME2|Add0~130_combout\,
	datad => \TIME2|count\(3),
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Equal0~7\,
	regout => \TIME2|count\(5));

-- Location: LC_X6_Y8_N0
\TIME2|Add0~115\ : maxv_lcell
-- Equation(s):
-- \TIME2|Add0~115_combout\ = (\TIME2|count\(6) $ ((\TIME2|Add0~132\)))
-- \TIME2|Add0~117\ = CARRY(((!\TIME2|Add0~132\) # (!\TIME2|count\(6))))
-- \TIME2|Add0~117COUT1_160\ = CARRY(((!\TIME2|Add0~132\) # (!\TIME2|count\(6))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME2|count\(6),
	cin => \TIME2|Add0~132\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Add0~115_combout\,
	cout0 => \TIME2|Add0~117\,
	cout1 => \TIME2|Add0~117COUT1_160\);

-- Location: LC_X6_Y9_N1
\TIME2|count[6]\ : maxv_lcell
-- Equation(s):
-- \TIME2|Equal0~6\ = (!\TIME2|count\(8) & (!\TIME2|count\(7) & (D1_count[6] & \TIME2|count\(9))))
-- \TIME2|count\(6) = DFFEAS(\TIME2|Equal0~6\, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , \TIME2|Add0~115_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME2|count\(8),
	datab => \TIME2|count\(7),
	datac => \TIME2|Add0~115_combout\,
	datad => \TIME2|count\(9),
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Equal0~6\,
	regout => \TIME2|count\(6));

-- Location: LC_X6_Y8_N1
\TIME2|Add0~125\ : maxv_lcell
-- Equation(s):
-- \TIME2|Add0~125_combout\ = \TIME2|count\(7) $ ((((!(!\TIME2|Add0~132\ & \TIME2|Add0~117\) # (\TIME2|Add0~132\ & \TIME2|Add0~117COUT1_160\)))))
-- \TIME2|Add0~127\ = CARRY((\TIME2|count\(7) & ((!\TIME2|Add0~117\))))
-- \TIME2|Add0~127COUT1_161\ = CARRY((\TIME2|count\(7) & ((!\TIME2|Add0~117COUT1_160\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME2|count\(7),
	cin => \TIME2|Add0~132\,
	cin0 => \TIME2|Add0~117\,
	cin1 => \TIME2|Add0~117COUT1_160\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Add0~125_combout\,
	cout0 => \TIME2|Add0~127\,
	cout1 => \TIME2|Add0~127COUT1_161\);

-- Location: LC_X7_Y9_N2
\TIME2|count[7]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(7) = DFFEAS((!\TIME2|Equal0~9\ & (((\TIME2|Add0~125_combout\)))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME2|Equal0~9\,
	datac => \TIME2|Add0~125_combout\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(7));

-- Location: LC_X6_Y8_N2
\TIME2|Add0~120\ : maxv_lcell
-- Equation(s):
-- \TIME2|Add0~120_combout\ = (\TIME2|count\(8) $ (((!\TIME2|Add0~132\ & \TIME2|Add0~127\) # (\TIME2|Add0~132\ & \TIME2|Add0~127COUT1_161\))))
-- \TIME2|Add0~122\ = CARRY(((!\TIME2|Add0~127\) # (!\TIME2|count\(8))))
-- \TIME2|Add0~122COUT1_162\ = CARRY(((!\TIME2|Add0~127COUT1_161\) # (!\TIME2|count\(8))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME2|count\(8),
	cin => \TIME2|Add0~132\,
	cin0 => \TIME2|Add0~127\,
	cin1 => \TIME2|Add0~127COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Add0~120_combout\,
	cout0 => \TIME2|Add0~122\,
	cout1 => \TIME2|Add0~122COUT1_162\);

-- Location: LC_X6_Y9_N3
\TIME2|count[8]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(8) = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , \TIME2|Add0~120_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \TIME2|Add0~120_combout\,
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(8));

-- Location: LC_X6_Y8_N3
\TIME2|Add0~110\ : maxv_lcell
-- Equation(s):
-- \TIME2|Add0~110_combout\ = (\TIME2|count\(9) $ ((!(!\TIME2|Add0~132\ & \TIME2|Add0~122\) # (\TIME2|Add0~132\ & \TIME2|Add0~122COUT1_162\))))
-- \TIME2|Add0~112\ = CARRY(((\TIME2|count\(9) & !\TIME2|Add0~122\)))
-- \TIME2|Add0~112COUT1_163\ = CARRY(((\TIME2|count\(9) & !\TIME2|Add0~122COUT1_162\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME2|count\(9),
	cin => \TIME2|Add0~132\,
	cin0 => \TIME2|Add0~122\,
	cin1 => \TIME2|Add0~122COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Add0~110_combout\,
	cout0 => \TIME2|Add0~112\,
	cout1 => \TIME2|Add0~112COUT1_163\);

-- Location: LC_X7_Y9_N1
\TIME2|count[9]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(9) = DFFEAS((((!\TIME2|Equal0~9\ & \TIME2|Add0~110_combout\))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \TIME2|Equal0~9\,
	datad => \TIME2|Add0~110_combout\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(9));

-- Location: LC_X6_Y8_N4
\TIME2|Add0~105\ : maxv_lcell
-- Equation(s):
-- \TIME2|Add0~105_combout\ = (\TIME2|count\(10) $ (((!\TIME2|Add0~132\ & \TIME2|Add0~112\) # (\TIME2|Add0~132\ & \TIME2|Add0~112COUT1_163\))))
-- \TIME2|Add0~107\ = CARRY(((!\TIME2|Add0~112COUT1_163\) # (!\TIME2|count\(10))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME2|count\(10),
	cin => \TIME2|Add0~132\,
	cin0 => \TIME2|Add0~112\,
	cin1 => \TIME2|Add0~112COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Add0~105_combout\,
	cout => \TIME2|Add0~107\);

-- Location: LC_X6_Y9_N8
\TIME2|count[10]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(10) = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , \TIME2|Add0~105_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \TIME2|Add0~105_combout\,
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(10));

-- Location: LC_X6_Y8_N5
\TIME2|Add0~100\ : maxv_lcell
-- Equation(s):
-- \TIME2|Add0~100_combout\ = (\TIME2|count\(11) $ ((!\TIME2|Add0~107\)))
-- \TIME2|Add0~102\ = CARRY(((\TIME2|count\(11) & !\TIME2|Add0~107\)))
-- \TIME2|Add0~102COUT1_164\ = CARRY(((\TIME2|count\(11) & !\TIME2|Add0~107\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME2|count\(11),
	cin => \TIME2|Add0~107\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Add0~100_combout\,
	cout0 => \TIME2|Add0~102\,
	cout1 => \TIME2|Add0~102COUT1_164\);

-- Location: LC_X7_Y9_N3
\TIME2|count[11]\ : maxv_lcell
-- Equation(s):
-- \TIME2|Equal0~5\ = (\TIME2|count\(13) & (\TIME2|count\(12) & (!D1_count[11] & !\TIME2|count\(10))))
-- \TIME2|count\(11) = DFFEAS(\TIME2|Equal0~5\, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , \TIME2|Add0~100_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0008",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME2|count\(13),
	datab => \TIME2|count\(12),
	datac => \TIME2|Add0~100_combout\,
	datad => \TIME2|count\(10),
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Equal0~5\,
	regout => \TIME2|count\(11));

-- Location: LC_X6_Y8_N6
\TIME2|Add0~95\ : maxv_lcell
-- Equation(s):
-- \TIME2|Add0~95_combout\ = (\TIME2|count\(12) $ (((!\TIME2|Add0~107\ & \TIME2|Add0~102\) # (\TIME2|Add0~107\ & \TIME2|Add0~102COUT1_164\))))
-- \TIME2|Add0~97\ = CARRY(((!\TIME2|Add0~102\) # (!\TIME2|count\(12))))
-- \TIME2|Add0~97COUT1_165\ = CARRY(((!\TIME2|Add0~102COUT1_164\) # (!\TIME2|count\(12))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME2|count\(12),
	cin => \TIME2|Add0~107\,
	cin0 => \TIME2|Add0~102\,
	cin1 => \TIME2|Add0~102COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Add0~95_combout\,
	cout0 => \TIME2|Add0~97\,
	cout1 => \TIME2|Add0~97COUT1_165\);

-- Location: LC_X7_Y9_N8
\TIME2|count[12]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(12) = DFFEAS((!\TIME2|Equal0~9\ & (((\TIME2|Add0~95_combout\)))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5050",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME2|Equal0~9\,
	datac => \TIME2|Add0~95_combout\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(12));

-- Location: LC_X6_Y8_N7
\TIME2|Add0~90\ : maxv_lcell
-- Equation(s):
-- \TIME2|Add0~90_combout\ = (\TIME2|count\(13) $ ((!(!\TIME2|Add0~107\ & \TIME2|Add0~97\) # (\TIME2|Add0~107\ & \TIME2|Add0~97COUT1_165\))))
-- \TIME2|Add0~92\ = CARRY(((\TIME2|count\(13) & !\TIME2|Add0~97\)))
-- \TIME2|Add0~92COUT1_166\ = CARRY(((\TIME2|count\(13) & !\TIME2|Add0~97COUT1_165\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME2|count\(13),
	cin => \TIME2|Add0~107\,
	cin0 => \TIME2|Add0~97\,
	cin1 => \TIME2|Add0~97COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Add0~90_combout\,
	cout0 => \TIME2|Add0~92\,
	cout1 => \TIME2|Add0~92COUT1_166\);

-- Location: LC_X7_Y9_N6
\TIME2|count[13]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(13) = DFFEAS((((!\TIME2|Equal0~9\ & \TIME2|Add0~90_combout\))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \TIME2|Equal0~9\,
	datad => \TIME2|Add0~90_combout\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(13));

-- Location: LC_X6_Y8_N8
\TIME2|Add0~85\ : maxv_lcell
-- Equation(s):
-- \TIME2|Add0~85_combout\ = \TIME2|count\(14) $ (((((!\TIME2|Add0~107\ & \TIME2|Add0~92\) # (\TIME2|Add0~107\ & \TIME2|Add0~92COUT1_166\)))))
-- \TIME2|Add0~87\ = CARRY(((!\TIME2|Add0~92\)) # (!\TIME2|count\(14)))
-- \TIME2|Add0~87COUT1_167\ = CARRY(((!\TIME2|Add0~92COUT1_166\)) # (!\TIME2|count\(14)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME2|count\(14),
	cin => \TIME2|Add0~107\,
	cin0 => \TIME2|Add0~92\,
	cin1 => \TIME2|Add0~92COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Add0~85_combout\,
	cout0 => \TIME2|Add0~87\,
	cout1 => \TIME2|Add0~87COUT1_167\);

-- Location: LC_X6_Y9_N0
\TIME2|count[14]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(14) = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , \TIME2|Add0~85_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \TIME2|Add0~85_combout\,
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(14));

-- Location: LC_X7_Y8_N0
\TIME2|Add0~80\ : maxv_lcell
-- Equation(s):
-- \TIME2|Add0~80_combout\ = \TIME2|count\(16) $ ((((\TIME2|Add0~77\))))
-- \TIME2|Add0~82\ = CARRY(((!\TIME2|Add0~77\)) # (!\TIME2|count\(16)))
-- \TIME2|Add0~82COUT1_168\ = CARRY(((!\TIME2|Add0~77\)) # (!\TIME2|count\(16)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME2|count\(16),
	cin => \TIME2|Add0~77\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Add0~80_combout\,
	cout0 => \TIME2|Add0~82\,
	cout1 => \TIME2|Add0~82COUT1_168\);

-- Location: LC_X7_Y9_N7
\TIME2|count[16]\ : maxv_lcell
-- Equation(s):
-- \TIME2|Equal0~4\ = (!\TIME2|count\(14) & (\TIME2|count\(15) & (!D1_count[16] & \TIME2|count\(17))))
-- \TIME2|count\(16) = DFFEAS(\TIME2|Equal0~4\, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , \TIME2|Add0~80_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME2|count\(14),
	datab => \TIME2|count\(15),
	datac => \TIME2|Add0~80_combout\,
	datad => \TIME2|count\(17),
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Equal0~4\,
	regout => \TIME2|count\(16));

-- Location: LC_X7_Y8_N1
\TIME2|Add0~70\ : maxv_lcell
-- Equation(s):
-- \TIME2|Add0~70_combout\ = (\TIME2|count\(17) $ ((!(!\TIME2|Add0~77\ & \TIME2|Add0~82\) # (\TIME2|Add0~77\ & \TIME2|Add0~82COUT1_168\))))
-- \TIME2|Add0~72\ = CARRY(((\TIME2|count\(17) & !\TIME2|Add0~82\)))
-- \TIME2|Add0~72COUT1_169\ = CARRY(((\TIME2|count\(17) & !\TIME2|Add0~82COUT1_168\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME2|count\(17),
	cin => \TIME2|Add0~77\,
	cin0 => \TIME2|Add0~82\,
	cin1 => \TIME2|Add0~82COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Add0~70_combout\,
	cout0 => \TIME2|Add0~72\,
	cout1 => \TIME2|Add0~72COUT1_169\);

-- Location: LC_X7_Y9_N0
\TIME2|count[17]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(17) = DFFEAS((((!\TIME2|Equal0~9\ & \TIME2|Add0~70_combout\))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \TIME2|Equal0~9\,
	datad => \TIME2|Add0~70_combout\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(17));

-- Location: LC_X7_Y8_N2
\TIME2|Add0~55\ : maxv_lcell
-- Equation(s):
-- \TIME2|Add0~55_combout\ = (\TIME2|count\(18) $ (((!\TIME2|Add0~77\ & \TIME2|Add0~72\) # (\TIME2|Add0~77\ & \TIME2|Add0~72COUT1_169\))))
-- \TIME2|Add0~57\ = CARRY(((!\TIME2|Add0~72\) # (!\TIME2|count\(18))))
-- \TIME2|Add0~57COUT1_170\ = CARRY(((!\TIME2|Add0~72COUT1_169\) # (!\TIME2|count\(18))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME2|count\(18),
	cin => \TIME2|Add0~77\,
	cin0 => \TIME2|Add0~72\,
	cin1 => \TIME2|Add0~72COUT1_169\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Add0~55_combout\,
	cout0 => \TIME2|Add0~57\,
	cout1 => \TIME2|Add0~57COUT1_170\);

-- Location: LC_X6_Y9_N2
\TIME2|count[18]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(18) = DFFEAS((((!\TIME2|Equal0~9\ & \TIME2|Add0~55_combout\))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \TIME2|Equal0~9\,
	datad => \TIME2|Add0~55_combout\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(18));

-- Location: LC_X7_Y8_N3
\TIME2|Add0~65\ : maxv_lcell
-- Equation(s):
-- \TIME2|Add0~65_combout\ = \TIME2|count\(19) $ ((((!(!\TIME2|Add0~77\ & \TIME2|Add0~57\) # (\TIME2|Add0~77\ & \TIME2|Add0~57COUT1_170\)))))
-- \TIME2|Add0~67\ = CARRY((\TIME2|count\(19) & ((!\TIME2|Add0~57\))))
-- \TIME2|Add0~67COUT1_171\ = CARRY((\TIME2|count\(19) & ((!\TIME2|Add0~57COUT1_170\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME2|count\(19),
	cin => \TIME2|Add0~77\,
	cin0 => \TIME2|Add0~57\,
	cin1 => \TIME2|Add0~57COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Add0~65_combout\,
	cout0 => \TIME2|Add0~67\,
	cout1 => \TIME2|Add0~67COUT1_171\);

-- Location: LC_X7_Y8_N4
\TIME2|Add0~60\ : maxv_lcell
-- Equation(s):
-- \TIME2|Add0~60_combout\ = (\TIME2|count\(20) $ (((!\TIME2|Add0~77\ & \TIME2|Add0~67\) # (\TIME2|Add0~77\ & \TIME2|Add0~67COUT1_171\))))
-- \TIME2|Add0~62\ = CARRY(((!\TIME2|Add0~67COUT1_171\) # (!\TIME2|count\(20))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME2|count\(20),
	cin => \TIME2|Add0~77\,
	cin0 => \TIME2|Add0~67\,
	cin1 => \TIME2|Add0~67COUT1_171\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Add0~60_combout\,
	cout => \TIME2|Add0~62\);

-- Location: LC_X6_Y9_N9
\TIME2|count[20]\ : maxv_lcell
-- Equation(s):
-- \TIME2|Equal0~3\ = (!\TIME2|count\(19) & (\TIME2|count\(21) & (!D1_count[20] & \TIME2|count\(18))))
-- \TIME2|count\(20) = DFFEAS(\TIME2|Equal0~3\, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , \TIME2|Add0~60_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME2|count\(19),
	datab => \TIME2|count\(21),
	datac => \TIME2|Add0~60_combout\,
	datad => \TIME2|count\(18),
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Equal0~3\,
	regout => \TIME2|count\(20));

-- Location: LC_X7_Y8_N6
\TIME2|Add0~40\ : maxv_lcell
-- Equation(s):
-- \TIME2|Add0~40_combout\ = (\TIME2|count\(22) $ (((!\TIME2|Add0~62\ & \TIME2|Add0~52\) # (\TIME2|Add0~62\ & \TIME2|Add0~52COUT1_172\))))
-- \TIME2|Add0~42\ = CARRY(((!\TIME2|Add0~52\) # (!\TIME2|count\(22))))
-- \TIME2|Add0~42COUT1_173\ = CARRY(((!\TIME2|Add0~52COUT1_172\) # (!\TIME2|count\(22))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME2|count\(22),
	cin => \TIME2|Add0~62\,
	cin0 => \TIME2|Add0~52\,
	cin1 => \TIME2|Add0~52COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Add0~40_combout\,
	cout0 => \TIME2|Add0~42\,
	cout1 => \TIME2|Add0~42COUT1_173\);

-- Location: LC_X8_Y9_N9
\TIME2|count[22]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(22) = DFFEAS((((\TIME2|Add0~40_combout\ & !\TIME2|Equal0~9\))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \TIME2|Add0~40_combout\,
	datad => \TIME2|Equal0~9\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(22));

-- Location: LC_X7_Y8_N7
\TIME2|Add0~35\ : maxv_lcell
-- Equation(s):
-- \TIME2|Add0~35_combout\ = (\TIME2|count\(23) $ ((!(!\TIME2|Add0~62\ & \TIME2|Add0~42\) # (\TIME2|Add0~62\ & \TIME2|Add0~42COUT1_173\))))
-- \TIME2|Add0~37\ = CARRY(((\TIME2|count\(23) & !\TIME2|Add0~42\)))
-- \TIME2|Add0~37COUT1_174\ = CARRY(((\TIME2|count\(23) & !\TIME2|Add0~42COUT1_173\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME2|count\(23),
	cin => \TIME2|Add0~62\,
	cin0 => \TIME2|Add0~42\,
	cin1 => \TIME2|Add0~42COUT1_173\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Add0~35_combout\,
	cout0 => \TIME2|Add0~37\,
	cout1 => \TIME2|Add0~37COUT1_174\);

-- Location: LC_X8_Y9_N7
\TIME2|count[23]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(23) = DFFEAS((((\TIME2|Add0~35_combout\ & !\TIME2|Equal0~9\))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \TIME2|Add0~35_combout\,
	datad => \TIME2|Equal0~9\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(23));

-- Location: LC_X7_Y8_N8
\TIME2|Add0~45\ : maxv_lcell
-- Equation(s):
-- \TIME2|Add0~45_combout\ = (\TIME2|count\(24) $ (((!\TIME2|Add0~62\ & \TIME2|Add0~37\) # (\TIME2|Add0~62\ & \TIME2|Add0~37COUT1_174\))))
-- \TIME2|Add0~47\ = CARRY(((!\TIME2|Add0~37\) # (!\TIME2|count\(24))))
-- \TIME2|Add0~47COUT1_175\ = CARRY(((!\TIME2|Add0~37COUT1_174\) # (!\TIME2|count\(24))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME2|count\(24),
	cin => \TIME2|Add0~62\,
	cin0 => \TIME2|Add0~37\,
	cin1 => \TIME2|Add0~37COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Add0~45_combout\,
	cout0 => \TIME2|Add0~47\,
	cout1 => \TIME2|Add0~47COUT1_175\);

-- Location: LC_X8_Y9_N3
\TIME2|count[24]\ : maxv_lcell
-- Equation(s):
-- \TIME2|Equal0~2\ = (\TIME2|count\(25) & (\TIME2|count\(23) & (!D1_count[24] & \TIME2|count\(22))))
-- \TIME2|count\(24) = DFFEAS(\TIME2|Equal0~2\, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , \TIME2|Add0~45_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME2|count\(25),
	datab => \TIME2|count\(23),
	datac => \TIME2|Add0~45_combout\,
	datad => \TIME2|count\(22),
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Equal0~2\,
	regout => \TIME2|count\(24));

-- Location: LC_X7_Y8_N9
\TIME2|Add0~30\ : maxv_lcell
-- Equation(s):
-- \TIME2|Add0~30_combout\ = (\TIME2|count\(25) $ ((!(!\TIME2|Add0~62\ & \TIME2|Add0~47\) # (\TIME2|Add0~62\ & \TIME2|Add0~47COUT1_175\))))
-- \TIME2|Add0~32\ = CARRY(((\TIME2|count\(25) & !\TIME2|Add0~47COUT1_175\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME2|count\(25),
	cin => \TIME2|Add0~62\,
	cin0 => \TIME2|Add0~47\,
	cin1 => \TIME2|Add0~47COUT1_175\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Add0~30_combout\,
	cout => \TIME2|Add0~32\);

-- Location: LC_X8_Y9_N6
\TIME2|count[25]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(25) = DFFEAS((!\TIME2|Equal0~9\ & (((\TIME2|Add0~30_combout\)))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME2|Equal0~9\,
	datad => \TIME2|Add0~30_combout\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(25));

-- Location: LC_X7_Y9_N4
\TIME2|Equal0~8\ : maxv_lcell
-- Equation(s):
-- \TIME2|Equal0~8_combout\ = (\TIME2|Equal0~6\ & (\TIME2|Equal0~7\ & (\TIME2|Equal0~4\ & \TIME2|Equal0~5\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME2|Equal0~6\,
	datab => \TIME2|Equal0~7\,
	datac => \TIME2|Equal0~4\,
	datad => \TIME2|Equal0~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Equal0~8_combout\);

-- Location: LC_X8_Y8_N0
\TIME2|Add0~5\ : maxv_lcell
-- Equation(s):
-- \TIME2|Add0~5_combout\ = \TIME2|count\(26) $ ((((\TIME2|Add0~32\))))
-- \TIME2|Add0~7\ = CARRY(((!\TIME2|Add0~32\)) # (!\TIME2|count\(26)))
-- \TIME2|Add0~7COUT1_176\ = CARRY(((!\TIME2|Add0~32\)) # (!\TIME2|count\(26)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME2|count\(26),
	cin => \TIME2|Add0~32\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Add0~5_combout\,
	cout0 => \TIME2|Add0~7\,
	cout1 => \TIME2|Add0~7COUT1_176\);

-- Location: LC_X8_Y9_N5
\TIME2|count[26]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(26) = DFFEAS((((\TIME2|Add0~5_combout\ & !\TIME2|Equal0~9\))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \TIME2|Add0~5_combout\,
	datad => \TIME2|Equal0~9\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(26));

-- Location: LC_X8_Y8_N1
\TIME2|Add0~0\ : maxv_lcell
-- Equation(s):
-- \TIME2|Add0~0_combout\ = \TIME2|count\(27) $ ((((!(!\TIME2|Add0~32\ & \TIME2|Add0~7\) # (\TIME2|Add0~32\ & \TIME2|Add0~7COUT1_176\)))))
-- \TIME2|Add0~2\ = CARRY((\TIME2|count\(27) & ((!\TIME2|Add0~7\))))
-- \TIME2|Add0~2COUT1_177\ = CARRY((\TIME2|count\(27) & ((!\TIME2|Add0~7COUT1_176\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME2|count\(27),
	cin => \TIME2|Add0~32\,
	cin0 => \TIME2|Add0~7\,
	cin1 => \TIME2|Add0~7COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Add0~0_combout\,
	cout0 => \TIME2|Add0~2\,
	cout1 => \TIME2|Add0~2COUT1_177\);

-- Location: LC_X8_Y8_N7
\TIME2|count[27]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(27) = DFFEAS((((!\TIME2|Equal0~9\ & \TIME2|Add0~0_combout\))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \TIME2|Equal0~9\,
	datad => \TIME2|Add0~0_combout\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(27));

-- Location: LC_X8_Y8_N2
\TIME2|Add0~15\ : maxv_lcell
-- Equation(s):
-- \TIME2|Add0~15_combout\ = (\TIME2|count\(28) $ (((!\TIME2|Add0~32\ & \TIME2|Add0~2\) # (\TIME2|Add0~32\ & \TIME2|Add0~2COUT1_177\))))
-- \TIME2|Add0~17\ = CARRY(((!\TIME2|Add0~2\) # (!\TIME2|count\(28))))
-- \TIME2|Add0~17COUT1_178\ = CARRY(((!\TIME2|Add0~2COUT1_177\) # (!\TIME2|count\(28))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME2|count\(28),
	cin => \TIME2|Add0~32\,
	cin0 => \TIME2|Add0~2\,
	cin1 => \TIME2|Add0~2COUT1_177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Add0~15_combout\,
	cout0 => \TIME2|Add0~17\,
	cout1 => \TIME2|Add0~17COUT1_178\);

-- Location: LC_X9_Y8_N8
\TIME2|count[28]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(28) = DFFEAS((((\TIME2|Add0~15_combout\))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datad => \TIME2|Add0~15_combout\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(28));

-- Location: LC_X8_Y8_N3
\TIME2|Add0~10\ : maxv_lcell
-- Equation(s):
-- \TIME2|Add0~10_combout\ = (\TIME2|count\(29) $ ((!(!\TIME2|Add0~32\ & \TIME2|Add0~17\) # (\TIME2|Add0~32\ & \TIME2|Add0~17COUT1_178\))))
-- \TIME2|Add0~12\ = CARRY(((\TIME2|count\(29) & !\TIME2|Add0~17\)))
-- \TIME2|Add0~12COUT1_179\ = CARRY(((\TIME2|count\(29) & !\TIME2|Add0~17COUT1_178\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME2|count\(29),
	cin => \TIME2|Add0~32\,
	cin0 => \TIME2|Add0~17\,
	cin1 => \TIME2|Add0~17COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Add0~10_combout\,
	cout0 => \TIME2|Add0~12\,
	cout1 => \TIME2|Add0~12COUT1_179\);

-- Location: LC_X8_Y8_N9
\TIME2|count[29]\ : maxv_lcell
-- Equation(s):
-- \TIME2|Equal0~0\ = (\TIME2|count\(27) & (!\TIME2|count\(28) & (!D1_count[29] & \TIME2|count\(26))))
-- \TIME2|count\(29) = DFFEAS(\TIME2|Equal0~0\, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , \TIME2|Add0~10_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME2|count\(27),
	datab => \TIME2|count\(28),
	datac => \TIME2|Add0~10_combout\,
	datad => \TIME2|count\(26),
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Equal0~0\,
	regout => \TIME2|count\(29));

-- Location: LC_X8_Y8_N4
\TIME2|Add0~25\ : maxv_lcell
-- Equation(s):
-- \TIME2|Add0~25_combout\ = \TIME2|count\(30) $ (((((!\TIME2|Add0~32\ & \TIME2|Add0~12\) # (\TIME2|Add0~32\ & \TIME2|Add0~12COUT1_179\)))))
-- \TIME2|Add0~27\ = CARRY(((!\TIME2|Add0~12COUT1_179\)) # (!\TIME2|count\(30)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME2|count\(30),
	cin => \TIME2|Add0~32\,
	cin0 => \TIME2|Add0~12\,
	cin1 => \TIME2|Add0~12COUT1_179\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Add0~25_combout\,
	cout => \TIME2|Add0~27\);

-- Location: LC_X8_Y8_N8
\TIME2|count[30]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(30) = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , \TIME2|Add0~25_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \TIME2|Add0~25_combout\,
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(30));

-- Location: LC_X8_Y8_N6
\TIME2|count[31]\ : maxv_lcell
-- Equation(s):
-- \TIME2|Equal0~1\ = (!\TIME2|count\(30) & (\TIME1|Equal0~0\ & (!D1_count[31] & \TIME2|Equal0~0\)))
-- \TIME2|count\(31) = DFFEAS(\TIME2|Equal0~1\, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , \TIME2|Add0~20_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME2|count\(30),
	datab => \TIME1|Equal0~0\,
	datac => \TIME2|Add0~20_combout\,
	datad => \TIME2|Equal0~0\,
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Equal0~1\,
	regout => \TIME2|count\(31));

-- Location: LC_X8_Y8_N5
\TIME2|Add0~20\ : maxv_lcell
-- Equation(s):
-- \TIME2|Add0~20_combout\ = \TIME2|count\(31) $ ((((!\TIME2|Add0~27\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a5a5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME2|count\(31),
	cin => \TIME2|Add0~27\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Add0~20_combout\);

-- Location: LC_X7_Y9_N5
\TIME2|S1\ : maxv_lcell
-- Equation(s):
-- \TIME2|Equal0~9\ = (\TIME2|Equal0~3\ & (\TIME2|Equal0~2\ & (\TIME2|Equal0~8_combout\ & \TIME2|Equal0~1\)))
-- \TIME2|S1~regout\ = DFFEAS(\TIME2|Equal0~9\, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME2|Equal0~3\,
	datab => \TIME2|Equal0~2\,
	datac => \TIME2|Equal0~8_combout\,
	datad => \TIME2|Equal0~1\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Equal0~9\,
	regout => \TIME2|S1~regout\);

-- Location: LC_X6_Y8_N9
\TIME2|Add0~75\ : maxv_lcell
-- Equation(s):
-- \TIME2|Add0~75_combout\ = (\TIME2|count\(15) $ ((!(!\TIME2|Add0~107\ & \TIME2|Add0~87\) # (\TIME2|Add0~107\ & \TIME2|Add0~87COUT1_167\))))
-- \TIME2|Add0~77\ = CARRY(((\TIME2|count\(15) & !\TIME2|Add0~87COUT1_167\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME2|count\(15),
	cin => \TIME2|Add0~107\,
	cin0 => \TIME2|Add0~87\,
	cin1 => \TIME2|Add0~87COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME2|Add0~75_combout\,
	cout => \TIME2|Add0~77\);

-- Location: LC_X7_Y9_N9
\TIME2|count[15]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(15) = DFFEAS((((!\TIME2|Equal0~9\ & \TIME2|Add0~75_combout\))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \TIME2|Equal0~9\,
	datad => \TIME2|Add0~75_combout\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(15));

-- Location: LC_X6_Y9_N5
\TIME2|count[19]\ : maxv_lcell
-- Equation(s):
-- \TIME2|count\(19) = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , \TIME2|Add0~65_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \TIME2|Add0~65_combout\,
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME2|count\(19));

-- Location: LC_X1_Y7_N6
\TIME1|Add0~155\ : maxv_lcell
-- Equation(s):
-- \TIME1|Add0~155_combout\ = \TIME1|count\(2) $ ((((!(!\TIME1|Add0~7\ & \TIME1|Add0~2\) # (\TIME1|Add0~7\ & \TIME1|Add0~2COUT1_161\)))))
-- \TIME1|Add0~157\ = CARRY((\TIME1|count\(2) & ((!\TIME1|Add0~2\))))
-- \TIME1|Add0~157COUT1_162\ = CARRY((\TIME1|count\(2) & ((!\TIME1|Add0~2COUT1_161\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME1|count\(2),
	cin => \TIME1|Add0~7\,
	cin0 => \TIME1|Add0~2\,
	cin1 => \TIME1|Add0~2COUT1_161\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Add0~155_combout\,
	cout0 => \TIME1|Add0~157\,
	cout1 => \TIME1|Add0~157COUT1_162\);

-- Location: LC_X1_Y7_N3
\TIME1|count[2]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(2) = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , \TIME1|Add0~155_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \TIME1|Add0~155_combout\,
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(2));

-- Location: LC_X1_Y7_N7
\TIME1|Add0~150\ : maxv_lcell
-- Equation(s):
-- \TIME1|Add0~150_combout\ = (\TIME1|count\(3) $ (((!\TIME1|Add0~7\ & \TIME1|Add0~157\) # (\TIME1|Add0~7\ & \TIME1|Add0~157COUT1_162\))))
-- \TIME1|Add0~152\ = CARRY(((!\TIME1|Add0~157\) # (!\TIME1|count\(3))))
-- \TIME1|Add0~152COUT1_163\ = CARRY(((!\TIME1|Add0~157COUT1_162\) # (!\TIME1|count\(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME1|count\(3),
	cin => \TIME1|Add0~7\,
	cin0 => \TIME1|Add0~157\,
	cin1 => \TIME1|Add0~157COUT1_162\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Add0~150_combout\,
	cout0 => \TIME1|Add0~152\,
	cout1 => \TIME1|Add0~152COUT1_163\);

-- Location: LC_X1_Y7_N1
\TIME1|count[3]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(3) = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , \TIME1|Add0~150_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \TIME1|Add0~150_combout\,
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(3));

-- Location: LC_X1_Y7_N8
\TIME1|Add0~145\ : maxv_lcell
-- Equation(s):
-- \TIME1|Add0~145_combout\ = (\TIME1|count\(4) $ ((!(!\TIME1|Add0~7\ & \TIME1|Add0~152\) # (\TIME1|Add0~7\ & \TIME1|Add0~152COUT1_163\))))
-- \TIME1|Add0~147\ = CARRY(((\TIME1|count\(4) & !\TIME1|Add0~152\)))
-- \TIME1|Add0~147COUT1_164\ = CARRY(((\TIME1|count\(4) & !\TIME1|Add0~152COUT1_163\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME1|count\(4),
	cin => \TIME1|Add0~7\,
	cin0 => \TIME1|Add0~152\,
	cin1 => \TIME1|Add0~152COUT1_163\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Add0~145_combout\,
	cout0 => \TIME1|Add0~147\,
	cout1 => \TIME1|Add0~147COUT1_164\);

-- Location: LC_X1_Y7_N2
\TIME1|count[4]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(4) = DFFEAS((((\TIME1|Add0~145_combout\))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datad => \TIME1|Add0~145_combout\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(4));

-- Location: LC_X1_Y7_N9
\TIME1|Add0~140\ : maxv_lcell
-- Equation(s):
-- \TIME1|Add0~140_combout\ = (\TIME1|count\(5) $ (((!\TIME1|Add0~7\ & \TIME1|Add0~147\) # (\TIME1|Add0~7\ & \TIME1|Add0~147COUT1_164\))))
-- \TIME1|Add0~142\ = CARRY(((!\TIME1|Add0~147COUT1_164\) # (!\TIME1|count\(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME1|count\(5),
	cin => \TIME1|Add0~7\,
	cin0 => \TIME1|Add0~147\,
	cin1 => \TIME1|Add0~147COUT1_164\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Add0~140_combout\,
	cout => \TIME1|Add0~142\);

-- Location: LC_X1_Y7_N0
\TIME1|count[5]\ : maxv_lcell
-- Equation(s):
-- \TIME1|Equal0~8\ = (\TIME1|count\(2) & (\TIME1|count\(4) & (C1_count[5] & \TIME1|count\(3))))
-- \TIME1|count\(5) = DFFEAS(\TIME1|Equal0~8\, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , \TIME1|Add0~140_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME1|count\(2),
	datab => \TIME1|count\(4),
	datac => \TIME1|Add0~140_combout\,
	datad => \TIME1|count\(3),
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Equal0~8\,
	regout => \TIME1|count\(5));

-- Location: LC_X2_Y7_N0
\TIME1|Add0~120\ : maxv_lcell
-- Equation(s):
-- \TIME1|Add0~120_combout\ = (\TIME1|count\(6) $ ((!\TIME1|Add0~142\)))
-- \TIME1|Add0~122\ = CARRY(((\TIME1|count\(6) & !\TIME1|Add0~142\)))
-- \TIME1|Add0~122COUT1_165\ = CARRY(((\TIME1|count\(6) & !\TIME1|Add0~142\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME1|count\(6),
	cin => \TIME1|Add0~142\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Add0~120_combout\,
	cout0 => \TIME1|Add0~122\,
	cout1 => \TIME1|Add0~122COUT1_165\);

-- Location: LC_X6_Y7_N2
\TIME1|count[6]\ : maxv_lcell
-- Equation(s):
-- \TIME1|Equal0~7\ = (!\TIME1|count\(9) & (!\TIME1|count\(8) & (C1_count[6] & !\TIME1|count\(7))))
-- \TIME1|count\(6) = DFFEAS(\TIME1|Equal0~7\, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , \TIME1|Add0~120_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME1|count\(9),
	datab => \TIME1|count\(8),
	datac => \TIME1|Add0~120_combout\,
	datad => \TIME1|count\(7),
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Equal0~7\,
	regout => \TIME1|count\(6));

-- Location: LC_X2_Y7_N1
\TIME1|Add0~135\ : maxv_lcell
-- Equation(s):
-- \TIME1|Add0~135_combout\ = \TIME1|count\(7) $ (((((!\TIME1|Add0~142\ & \TIME1|Add0~122\) # (\TIME1|Add0~142\ & \TIME1|Add0~122COUT1_165\)))))
-- \TIME1|Add0~137\ = CARRY(((!\TIME1|Add0~122\)) # (!\TIME1|count\(7)))
-- \TIME1|Add0~137COUT1_166\ = CARRY(((!\TIME1|Add0~122COUT1_165\)) # (!\TIME1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME1|count\(7),
	cin => \TIME1|Add0~142\,
	cin0 => \TIME1|Add0~122\,
	cin1 => \TIME1|Add0~122COUT1_165\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Add0~135_combout\,
	cout0 => \TIME1|Add0~137\,
	cout1 => \TIME1|Add0~137COUT1_166\);

-- Location: LC_X6_Y7_N1
\TIME1|count[7]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(7) = DFFEAS(((\TIME1|Add0~135_combout\ & ((!\TIME1|Equal0~10\)))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datab => \TIME1|Add0~135_combout\,
	datad => \TIME1|Equal0~10\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(7));

-- Location: LC_X2_Y7_N2
\TIME1|Add0~130\ : maxv_lcell
-- Equation(s):
-- \TIME1|Add0~130_combout\ = (\TIME1|count\(8) $ ((!(!\TIME1|Add0~142\ & \TIME1|Add0~137\) # (\TIME1|Add0~142\ & \TIME1|Add0~137COUT1_166\))))
-- \TIME1|Add0~132\ = CARRY(((\TIME1|count\(8) & !\TIME1|Add0~137\)))
-- \TIME1|Add0~132COUT1_167\ = CARRY(((\TIME1|count\(8) & !\TIME1|Add0~137COUT1_166\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME1|count\(8),
	cin => \TIME1|Add0~142\,
	cin0 => \TIME1|Add0~137\,
	cin1 => \TIME1|Add0~137COUT1_166\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Add0~130_combout\,
	cout0 => \TIME1|Add0~132\,
	cout1 => \TIME1|Add0~132COUT1_167\);

-- Location: LC_X6_Y7_N0
\TIME1|count[8]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(8) = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , \TIME1|Add0~130_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \TIME1|Add0~130_combout\,
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(8));

-- Location: LC_X2_Y7_N3
\TIME1|Add0~125\ : maxv_lcell
-- Equation(s):
-- \TIME1|Add0~125_combout\ = (\TIME1|count\(9) $ (((!\TIME1|Add0~142\ & \TIME1|Add0~132\) # (\TIME1|Add0~142\ & \TIME1|Add0~132COUT1_167\))))
-- \TIME1|Add0~127\ = CARRY(((!\TIME1|Add0~132\) # (!\TIME1|count\(9))))
-- \TIME1|Add0~127COUT1_168\ = CARRY(((!\TIME1|Add0~132COUT1_167\) # (!\TIME1|count\(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME1|count\(9),
	cin => \TIME1|Add0~142\,
	cin0 => \TIME1|Add0~132\,
	cin1 => \TIME1|Add0~132COUT1_167\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Add0~125_combout\,
	cout0 => \TIME1|Add0~127\,
	cout1 => \TIME1|Add0~127COUT1_168\);

-- Location: LC_X7_Y7_N7
\TIME1|count[9]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(9) = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , \TIME1|Add0~125_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \TIME1|Add0~125_combout\,
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(9));

-- Location: LC_X2_Y7_N4
\TIME1|Add0~115\ : maxv_lcell
-- Equation(s):
-- \TIME1|Add0~115_combout\ = (\TIME1|count\(10) $ ((!(!\TIME1|Add0~142\ & \TIME1|Add0~127\) # (\TIME1|Add0~142\ & \TIME1|Add0~127COUT1_168\))))
-- \TIME1|Add0~117\ = CARRY(((\TIME1|count\(10) & !\TIME1|Add0~127COUT1_168\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME1|count\(10),
	cin => \TIME1|Add0~142\,
	cin0 => \TIME1|Add0~127\,
	cin1 => \TIME1|Add0~127COUT1_168\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Add0~115_combout\,
	cout => \TIME1|Add0~117\);

-- Location: LC_X7_Y7_N9
\TIME1|count[10]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(10) = DFFEAS((((\TIME1|Add0~115_combout\))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datad => \TIME1|Add0~115_combout\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(10));

-- Location: LC_X2_Y7_N5
\TIME1|Add0~110\ : maxv_lcell
-- Equation(s):
-- \TIME1|Add0~110_combout\ = \TIME1|count\(11) $ ((((\TIME1|Add0~117\))))
-- \TIME1|Add0~112\ = CARRY(((!\TIME1|Add0~117\)) # (!\TIME1|count\(11)))
-- \TIME1|Add0~112COUT1_169\ = CARRY(((!\TIME1|Add0~117\)) # (!\TIME1|count\(11)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME1|count\(11),
	cin => \TIME1|Add0~117\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Add0~110_combout\,
	cout0 => \TIME1|Add0~112\,
	cout1 => \TIME1|Add0~112COUT1_169\);

-- Location: LC_X6_Y7_N8
\TIME1|count[11]\ : maxv_lcell
-- Equation(s):
-- \TIME1|Equal0~6\ = (\TIME1|count\(12) & (!\TIME1|count\(10) & (!C1_count[11] & \TIME1|count\(13))))
-- \TIME1|count\(11) = DFFEAS(\TIME1|Equal0~6\, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , \TIME1|Add0~110_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME1|count\(12),
	datab => \TIME1|count\(10),
	datac => \TIME1|Add0~110_combout\,
	datad => \TIME1|count\(13),
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Equal0~6\,
	regout => \TIME1|count\(11));

-- Location: LC_X2_Y7_N6
\TIME1|Add0~105\ : maxv_lcell
-- Equation(s):
-- \TIME1|Add0~105_combout\ = (\TIME1|count\(12) $ ((!(!\TIME1|Add0~117\ & \TIME1|Add0~112\) # (\TIME1|Add0~117\ & \TIME1|Add0~112COUT1_169\))))
-- \TIME1|Add0~107\ = CARRY(((\TIME1|count\(12) & !\TIME1|Add0~112\)))
-- \TIME1|Add0~107COUT1_170\ = CARRY(((\TIME1|count\(12) & !\TIME1|Add0~112COUT1_169\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME1|count\(12),
	cin => \TIME1|Add0~117\,
	cin0 => \TIME1|Add0~112\,
	cin1 => \TIME1|Add0~112COUT1_169\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Add0~105_combout\,
	cout0 => \TIME1|Add0~107\,
	cout1 => \TIME1|Add0~107COUT1_170\);

-- Location: LC_X6_Y7_N4
\TIME1|count[12]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(12) = DFFEAS((((!\TIME1|Equal0~10\ & \TIME1|Add0~105_combout\))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \TIME1|Equal0~10\,
	datad => \TIME1|Add0~105_combout\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(12));

-- Location: LC_X2_Y7_N7
\TIME1|Add0~100\ : maxv_lcell
-- Equation(s):
-- \TIME1|Add0~100_combout\ = \TIME1|count\(13) $ (((((!\TIME1|Add0~117\ & \TIME1|Add0~107\) # (\TIME1|Add0~117\ & \TIME1|Add0~107COUT1_170\)))))
-- \TIME1|Add0~102\ = CARRY(((!\TIME1|Add0~107\)) # (!\TIME1|count\(13)))
-- \TIME1|Add0~102COUT1_171\ = CARRY(((!\TIME1|Add0~107COUT1_170\)) # (!\TIME1|count\(13)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME1|count\(13),
	cin => \TIME1|Add0~117\,
	cin0 => \TIME1|Add0~107\,
	cin1 => \TIME1|Add0~107COUT1_170\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Add0~100_combout\,
	cout0 => \TIME1|Add0~102\,
	cout1 => \TIME1|Add0~102COUT1_171\);

-- Location: LC_X6_Y7_N3
\TIME1|count[13]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(13) = DFFEAS((((!\TIME1|Equal0~10\ & \TIME1|Add0~100_combout\))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \TIME1|Equal0~10\,
	datad => \TIME1|Add0~100_combout\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(13));

-- Location: LC_X2_Y7_N8
\TIME1|Add0~90\ : maxv_lcell
-- Equation(s):
-- \TIME1|Add0~90_combout\ = (\TIME1|count\(14) $ ((!(!\TIME1|Add0~117\ & \TIME1|Add0~102\) # (\TIME1|Add0~117\ & \TIME1|Add0~102COUT1_171\))))
-- \TIME1|Add0~92\ = CARRY(((\TIME1|count\(14) & !\TIME1|Add0~102\)))
-- \TIME1|Add0~92COUT1_172\ = CARRY(((\TIME1|count\(14) & !\TIME1|Add0~102COUT1_171\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME1|count\(14),
	cin => \TIME1|Add0~117\,
	cin0 => \TIME1|Add0~102\,
	cin1 => \TIME1|Add0~102COUT1_171\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Add0~90_combout\,
	cout0 => \TIME1|Add0~92\,
	cout1 => \TIME1|Add0~92COUT1_172\);

-- Location: LC_X6_Y7_N7
\TIME1|count[14]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(14) = DFFEAS((((\TIME1|Add0~90_combout\ & !\TIME1|Equal0~10\))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \TIME1|Add0~90_combout\,
	datad => \TIME1|Equal0~10\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(14));

-- Location: LC_X2_Y7_N9
\TIME1|Add0~85\ : maxv_lcell
-- Equation(s):
-- \TIME1|Add0~85_combout\ = (\TIME1|count\(15) $ (((!\TIME1|Add0~117\ & \TIME1|Add0~92\) # (\TIME1|Add0~117\ & \TIME1|Add0~92COUT1_172\))))
-- \TIME1|Add0~87\ = CARRY(((!\TIME1|Add0~92COUT1_172\) # (!\TIME1|count\(15))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME1|count\(15),
	cin => \TIME1|Add0~117\,
	cin0 => \TIME1|Add0~92\,
	cin1 => \TIME1|Add0~92COUT1_172\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Add0~85_combout\,
	cout => \TIME1|Add0~87\);

-- Location: LC_X6_Y7_N9
\TIME1|count[15]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(15) = DFFEAS((((\TIME1|Add0~85_combout\ & !\TIME1|Equal0~10\))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \TIME1|Add0~85_combout\,
	datad => \TIME1|Equal0~10\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(15));

-- Location: LC_X3_Y7_N0
\TIME1|Add0~95\ : maxv_lcell
-- Equation(s):
-- \TIME1|Add0~95_combout\ = (\TIME1|count\(16) $ ((!\TIME1|Add0~87\)))
-- \TIME1|Add0~97\ = CARRY(((\TIME1|count\(16) & !\TIME1|Add0~87\)))
-- \TIME1|Add0~97COUT1_173\ = CARRY(((\TIME1|count\(16) & !\TIME1|Add0~87\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME1|count\(16),
	cin => \TIME1|Add0~87\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Add0~95_combout\,
	cout0 => \TIME1|Add0~97\,
	cout1 => \TIME1|Add0~97COUT1_173\);

-- Location: LC_X6_Y7_N6
\TIME1|count[16]\ : maxv_lcell
-- Equation(s):
-- \TIME1|Equal0~5\ = (\TIME1|count\(14) & (\TIME1|count\(17) & (!C1_count[16] & \TIME1|count\(15))))
-- \TIME1|count\(16) = DFFEAS(\TIME1|Equal0~5\, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , \TIME1|Add0~95_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME1|count\(14),
	datab => \TIME1|count\(17),
	datac => \TIME1|Add0~95_combout\,
	datad => \TIME1|count\(15),
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Equal0~5\,
	regout => \TIME1|count\(16));

-- Location: LC_X3_Y7_N1
\TIME1|Add0~80\ : maxv_lcell
-- Equation(s):
-- \TIME1|Add0~80_combout\ = (\TIME1|count\(17) $ (((!\TIME1|Add0~87\ & \TIME1|Add0~97\) # (\TIME1|Add0~87\ & \TIME1|Add0~97COUT1_173\))))
-- \TIME1|Add0~82\ = CARRY(((!\TIME1|Add0~97\) # (!\TIME1|count\(17))))
-- \TIME1|Add0~82COUT1_174\ = CARRY(((!\TIME1|Add0~97COUT1_173\) # (!\TIME1|count\(17))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME1|count\(17),
	cin => \TIME1|Add0~87\,
	cin0 => \TIME1|Add0~97\,
	cin1 => \TIME1|Add0~97COUT1_173\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Add0~80_combout\,
	cout0 => \TIME1|Add0~82\,
	cout1 => \TIME1|Add0~82COUT1_174\);

-- Location: LC_X5_Y7_N6
\TIME1|count[17]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(17) = DFFEAS((((!\TIME1|Equal0~10\ & \TIME1|Add0~80_combout\))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \TIME1|Equal0~10\,
	datad => \TIME1|Add0~80_combout\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(17));

-- Location: LC_X3_Y7_N2
\TIME1|Add0~75\ : maxv_lcell
-- Equation(s):
-- \TIME1|Add0~75_combout\ = \TIME1|count\(18) $ ((((!(!\TIME1|Add0~87\ & \TIME1|Add0~82\) # (\TIME1|Add0~87\ & \TIME1|Add0~82COUT1_174\)))))
-- \TIME1|Add0~77\ = CARRY((\TIME1|count\(18) & ((!\TIME1|Add0~82\))))
-- \TIME1|Add0~77COUT1_175\ = CARRY((\TIME1|count\(18) & ((!\TIME1|Add0~82COUT1_174\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME1|count\(18),
	cin => \TIME1|Add0~87\,
	cin0 => \TIME1|Add0~82\,
	cin1 => \TIME1|Add0~82COUT1_174\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Add0~75_combout\,
	cout0 => \TIME1|Add0~77\,
	cout1 => \TIME1|Add0~77COUT1_175\);

-- Location: LC_X3_Y7_N3
\TIME1|Add0~70\ : maxv_lcell
-- Equation(s):
-- \TIME1|Add0~70_combout\ = (\TIME1|count\(19) $ (((!\TIME1|Add0~87\ & \TIME1|Add0~77\) # (\TIME1|Add0~87\ & \TIME1|Add0~77COUT1_175\))))
-- \TIME1|Add0~72\ = CARRY(((!\TIME1|Add0~77\) # (!\TIME1|count\(19))))
-- \TIME1|Add0~72COUT1_176\ = CARRY(((!\TIME1|Add0~77COUT1_175\) # (!\TIME1|count\(19))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME1|count\(19),
	cin => \TIME1|Add0~87\,
	cin0 => \TIME1|Add0~77\,
	cin1 => \TIME1|Add0~77COUT1_175\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Add0~70_combout\,
	cout0 => \TIME1|Add0~72\,
	cout1 => \TIME1|Add0~72COUT1_176\);

-- Location: LC_X3_Y7_N4
\TIME1|Add0~65\ : maxv_lcell
-- Equation(s):
-- \TIME1|Add0~65_combout\ = (\TIME1|count\(20) $ ((!(!\TIME1|Add0~87\ & \TIME1|Add0~72\) # (\TIME1|Add0~87\ & \TIME1|Add0~72COUT1_176\))))
-- \TIME1|Add0~67\ = CARRY(((\TIME1|count\(20) & !\TIME1|Add0~72COUT1_176\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME1|count\(20),
	cin => \TIME1|Add0~87\,
	cin0 => \TIME1|Add0~72\,
	cin1 => \TIME1|Add0~72COUT1_176\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Add0~65_combout\,
	cout => \TIME1|Add0~67\);

-- Location: LC_X3_Y7_N5
\TIME1|Add0~60\ : maxv_lcell
-- Equation(s):
-- \TIME1|Add0~60_combout\ = (\TIME1|count\(21) $ ((\TIME1|Add0~67\)))
-- \TIME1|Add0~62\ = CARRY(((!\TIME1|Add0~67\) # (!\TIME1|count\(21))))
-- \TIME1|Add0~62COUT1_177\ = CARRY(((!\TIME1|Add0~67\) # (!\TIME1|count\(21))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME1|count\(21),
	cin => \TIME1|Add0~67\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Add0~60_combout\,
	cout0 => \TIME1|Add0~62\,
	cout1 => \TIME1|Add0~62COUT1_177\);

-- Location: LC_X5_Y7_N8
\TIME1|count[21]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(21) = DFFEAS((((!\TIME1|Equal0~10\ & \TIME1|Add0~60_combout\))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \TIME1|Equal0~10\,
	datad => \TIME1|Add0~60_combout\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(21));

-- Location: LC_X5_Y7_N9
\TIME1|count[18]\ : maxv_lcell
-- Equation(s):
-- \TIME1|Equal0~4\ = (\TIME1|count\(20) & (\TIME1|count\(21) & (!C1_count[18] & \TIME1|count\(19))))
-- \TIME1|count\(18) = DFFEAS(\TIME1|Equal0~4\, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , \TIME1|Add0~75_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME1|count\(20),
	datab => \TIME1|count\(21),
	datac => \TIME1|Add0~75_combout\,
	datad => \TIME1|count\(19),
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Equal0~4\,
	regout => \TIME1|count\(18));

-- Location: LC_X5_Y7_N2
\TIME1|count[19]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(19) = DFFEAS((((!\TIME1|Equal0~10\ & \TIME1|Add0~70_combout\))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \TIME1|Equal0~10\,
	datad => \TIME1|Add0~70_combout\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(19));

-- Location: LC_X5_Y7_N7
\TIME1|count[20]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(20) = DFFEAS((((!\TIME1|Equal0~10\ & \TIME1|Add0~65_combout\))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \TIME1|Equal0~10\,
	datad => \TIME1|Add0~65_combout\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(20));

-- Location: LC_X3_Y7_N6
\TIME1|Add0~50\ : maxv_lcell
-- Equation(s):
-- \TIME1|Add0~50_combout\ = (\TIME1|count\(22) $ ((!(!\TIME1|Add0~67\ & \TIME1|Add0~62\) # (\TIME1|Add0~67\ & \TIME1|Add0~62COUT1_177\))))
-- \TIME1|Add0~52\ = CARRY(((\TIME1|count\(22) & !\TIME1|Add0~62\)))
-- \TIME1|Add0~52COUT1_178\ = CARRY(((\TIME1|count\(22) & !\TIME1|Add0~62COUT1_177\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME1|count\(22),
	cin => \TIME1|Add0~67\,
	cin0 => \TIME1|Add0~62\,
	cin1 => \TIME1|Add0~62COUT1_177\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Add0~50_combout\,
	cout0 => \TIME1|Add0~52\,
	cout1 => \TIME1|Add0~52COUT1_178\);

-- Location: LC_X5_Y7_N5
\TIME1|count[22]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(22) = DFFEAS((((!\TIME1|Equal0~10\ & \TIME1|Add0~50_combout\))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \TIME1|Equal0~10\,
	datad => \TIME1|Add0~50_combout\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(22));

-- Location: LC_X3_Y7_N7
\TIME1|Add0~45\ : maxv_lcell
-- Equation(s):
-- \TIME1|Add0~45_combout\ = (\TIME1|count\(23) $ (((!\TIME1|Add0~67\ & \TIME1|Add0~52\) # (\TIME1|Add0~67\ & \TIME1|Add0~52COUT1_178\))))
-- \TIME1|Add0~47\ = CARRY(((!\TIME1|Add0~52\) # (!\TIME1|count\(23))))
-- \TIME1|Add0~47COUT1_179\ = CARRY(((!\TIME1|Add0~52COUT1_178\) # (!\TIME1|count\(23))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME1|count\(23),
	cin => \TIME1|Add0~67\,
	cin0 => \TIME1|Add0~52\,
	cin1 => \TIME1|Add0~52COUT1_178\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Add0~45_combout\,
	cout0 => \TIME1|Add0~47\,
	cout1 => \TIME1|Add0~47COUT1_179\);

-- Location: LC_X3_Y7_N8
\TIME1|Add0~55\ : maxv_lcell
-- Equation(s):
-- \TIME1|Add0~55_combout\ = \TIME1|count\(24) $ ((((!(!\TIME1|Add0~67\ & \TIME1|Add0~47\) # (\TIME1|Add0~67\ & \TIME1|Add0~47COUT1_179\)))))
-- \TIME1|Add0~57\ = CARRY((\TIME1|count\(24) & ((!\TIME1|Add0~47\))))
-- \TIME1|Add0~57COUT1_180\ = CARRY((\TIME1|count\(24) & ((!\TIME1|Add0~47COUT1_179\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME1|count\(24),
	cin => \TIME1|Add0~67\,
	cin0 => \TIME1|Add0~47\,
	cin1 => \TIME1|Add0~47COUT1_179\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Add0~55_combout\,
	cout0 => \TIME1|Add0~57\,
	cout1 => \TIME1|Add0~57COUT1_180\);

-- Location: LC_X4_Y7_N9
\TIME1|count[24]\ : maxv_lcell
-- Equation(s):
-- \TIME1|Equal0~3\ = (\TIME1|count\(23) & (\TIME1|count\(25) & (!C1_count[24] & \TIME1|count\(22))))
-- \TIME1|count\(24) = DFFEAS(\TIME1|Equal0~3\, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , \TIME1|Add0~55_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME1|count\(23),
	datab => \TIME1|count\(25),
	datac => \TIME1|Add0~55_combout\,
	datad => \TIME1|count\(22),
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Equal0~3\,
	regout => \TIME1|count\(24));

-- Location: LC_X3_Y7_N9
\TIME1|Add0~40\ : maxv_lcell
-- Equation(s):
-- \TIME1|Add0~40_combout\ = (\TIME1|count\(25) $ (((!\TIME1|Add0~67\ & \TIME1|Add0~57\) # (\TIME1|Add0~67\ & \TIME1|Add0~57COUT1_180\))))
-- \TIME1|Add0~42\ = CARRY(((!\TIME1|Add0~57COUT1_180\) # (!\TIME1|count\(25))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME1|count\(25),
	cin => \TIME1|Add0~67\,
	cin0 => \TIME1|Add0~57\,
	cin1 => \TIME1|Add0~57COUT1_180\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Add0~40_combout\,
	cout => \TIME1|Add0~42\);

-- Location: LC_X4_Y8_N3
\TIME1|count[25]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(25) = DFFEAS((((!\TIME1|Equal0~10\ & \TIME1|Add0~40_combout\))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \TIME1|Equal0~10\,
	datad => \TIME1|Add0~40_combout\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(25));

-- Location: LC_X4_Y7_N0
\TIME1|Add0~25\ : maxv_lcell
-- Equation(s):
-- \TIME1|Add0~25_combout\ = \TIME1|count\(26) $ ((((!\TIME1|Add0~42\))))
-- \TIME1|Add0~27\ = CARRY((\TIME1|count\(26) & ((!\TIME1|Add0~42\))))
-- \TIME1|Add0~27COUT1_181\ = CARRY((\TIME1|count\(26) & ((!\TIME1|Add0~42\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME1|count\(26),
	cin => \TIME1|Add0~42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Add0~25_combout\,
	cout0 => \TIME1|Add0~27\,
	cout1 => \TIME1|Add0~27COUT1_181\);

-- Location: LC_X5_Y7_N1
\TIME1|count[26]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(26) = DFFEAS((((\TIME1|Add0~25_combout\))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datad => \TIME1|Add0~25_combout\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(26));

-- Location: LC_X4_Y7_N1
\TIME1|Add0~20\ : maxv_lcell
-- Equation(s):
-- \TIME1|Add0~20_combout\ = \TIME1|count\(27) $ (((((!\TIME1|Add0~42\ & \TIME1|Add0~27\) # (\TIME1|Add0~42\ & \TIME1|Add0~27COUT1_181\)))))
-- \TIME1|Add0~22\ = CARRY(((!\TIME1|Add0~27\)) # (!\TIME1|count\(27)))
-- \TIME1|Add0~22COUT1_182\ = CARRY(((!\TIME1|Add0~27COUT1_181\)) # (!\TIME1|count\(27)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME1|count\(27),
	cin => \TIME1|Add0~42\,
	cin0 => \TIME1|Add0~27\,
	cin1 => \TIME1|Add0~27COUT1_181\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Add0~20_combout\,
	cout0 => \TIME1|Add0~22\,
	cout1 => \TIME1|Add0~22COUT1_182\);

-- Location: LC_X4_Y7_N7
\TIME1|count[27]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(27) = DFFEAS((((\TIME1|Add0~20_combout\))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datad => \TIME1|Add0~20_combout\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(27));

-- Location: LC_X4_Y7_N2
\TIME1|Add0~15\ : maxv_lcell
-- Equation(s):
-- \TIME1|Add0~15_combout\ = (\TIME1|count\(28) $ ((!(!\TIME1|Add0~42\ & \TIME1|Add0~22\) # (\TIME1|Add0~42\ & \TIME1|Add0~22COUT1_182\))))
-- \TIME1|Add0~17\ = CARRY(((\TIME1|count\(28) & !\TIME1|Add0~22\)))
-- \TIME1|Add0~17COUT1_183\ = CARRY(((\TIME1|count\(28) & !\TIME1|Add0~22COUT1_182\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME1|count\(28),
	cin => \TIME1|Add0~42\,
	cin0 => \TIME1|Add0~22\,
	cin1 => \TIME1|Add0~22COUT1_182\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Add0~15_combout\,
	cout0 => \TIME1|Add0~17\,
	cout1 => \TIME1|Add0~17COUT1_183\);

-- Location: LC_X4_Y8_N2
\TIME1|count[28]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(28) = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , \TIME1|Add0~15_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \TIME1|Add0~15_combout\,
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(28));

-- Location: LC_X4_Y7_N3
\TIME1|Add0~10\ : maxv_lcell
-- Equation(s):
-- \TIME1|Add0~10_combout\ = (\TIME1|count\(29) $ (((!\TIME1|Add0~42\ & \TIME1|Add0~17\) # (\TIME1|Add0~42\ & \TIME1|Add0~17COUT1_183\))))
-- \TIME1|Add0~12\ = CARRY(((!\TIME1|Add0~17\) # (!\TIME1|count\(29))))
-- \TIME1|Add0~12COUT1_184\ = CARRY(((!\TIME1|Add0~17COUT1_183\) # (!\TIME1|count\(29))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \TIME1|count\(29),
	cin => \TIME1|Add0~42\,
	cin0 => \TIME1|Add0~17\,
	cin1 => \TIME1|Add0~17COUT1_183\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Add0~10_combout\,
	cout0 => \TIME1|Add0~12\,
	cout1 => \TIME1|Add0~12COUT1_184\);

-- Location: LC_X4_Y7_N8
\TIME1|count[29]\ : maxv_lcell
-- Equation(s):
-- \TIME1|Equal0~1\ = (!\TIME1|count\(27) & (!\TIME1|count\(28) & (!C1_count[29] & !\TIME1|count\(26))))
-- \TIME1|count\(29) = DFFEAS(\TIME1|Equal0~1\, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , \TIME1|Add0~10_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME1|count\(27),
	datab => \TIME1|count\(28),
	datac => \TIME1|Add0~10_combout\,
	datad => \TIME1|count\(26),
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Equal0~1\,
	regout => \TIME1|count\(29));

-- Location: LC_X4_Y7_N4
\TIME1|Add0~35\ : maxv_lcell
-- Equation(s):
-- \TIME1|Add0~35_combout\ = \TIME1|count\(30) $ ((((!(!\TIME1|Add0~42\ & \TIME1|Add0~12\) # (\TIME1|Add0~42\ & \TIME1|Add0~12COUT1_184\)))))
-- \TIME1|Add0~37\ = CARRY((\TIME1|count\(30) & ((!\TIME1|Add0~12COUT1_184\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME1|count\(30),
	cin => \TIME1|Add0~42\,
	cin0 => \TIME1|Add0~12\,
	cin1 => \TIME1|Add0~12COUT1_184\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Add0~35_combout\,
	cout => \TIME1|Add0~37\);

-- Location: LC_X5_Y7_N0
\TIME1|count[30]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(30) = DFFEAS(GND, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , \TIME1|Add0~35_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \TIME1|Add0~35_combout\,
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(30));

-- Location: LC_X4_Y7_N6
\TIME1|count[31]\ : maxv_lcell
-- Equation(s):
-- \TIME1|Equal0~2\ = (!\TIME1|count\(30) & (\TIME1|Equal0~0\ & (!C1_count[31] & \TIME1|Equal0~1\)))
-- \TIME1|count\(31) = DFFEAS(\TIME1|Equal0~2\, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , \TIME1|Add0~30_combout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0400",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME1|count\(30),
	datab => \TIME1|Equal0~0\,
	datac => \TIME1|Add0~30_combout\,
	datad => \TIME1|Equal0~1\,
	aclr => \Reset~combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Equal0~2\,
	regout => \TIME1|count\(31));

-- Location: LC_X4_Y7_N5
\TIME1|Add0~30\ : maxv_lcell
-- Equation(s):
-- \TIME1|Add0~30_combout\ = \TIME1|count\(31) $ ((((\TIME1|Add0~37\))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME1|count\(31),
	cin => \TIME1|Add0~37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Add0~30_combout\);

-- Location: LC_X6_Y7_N5
\TIME1|Equal0~9\ : maxv_lcell
-- Equation(s):
-- \TIME1|Equal0~9_combout\ = (\TIME1|Equal0~6\ & (\TIME1|Equal0~7\ & (\TIME1|Equal0~5\ & \TIME1|Equal0~8\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \TIME1|Equal0~6\,
	datab => \TIME1|Equal0~7\,
	datac => \TIME1|Equal0~5\,
	datad => \TIME1|Equal0~8\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Equal0~9_combout\);

-- Location: LC_X5_Y7_N4
\TIME1|S1\ : maxv_lcell
-- Equation(s):
-- \TIME1|Equal0~10\ = (\TIME1|Equal0~3\ & (\TIME1|Equal0~4\ & (\TIME1|Equal0~2\ & \TIME1|Equal0~9_combout\)))
-- \TIME1|S1~regout\ = DFFEAS(\TIME1|Equal0~10\, GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \TIME1|Equal0~3\,
	datab => \TIME1|Equal0~4\,
	datac => \TIME1|Equal0~2\,
	datad => \TIME1|Equal0~9_combout\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \TIME1|Equal0~10\,
	regout => \TIME1|S1~regout\);

-- Location: LC_X5_Y7_N3
\TIME1|count[23]\ : maxv_lcell
-- Equation(s):
-- \TIME1|count\(23) = DFFEAS((((!\TIME1|Equal0~10\ & \TIME1|Add0~45_combout\))), GLOBAL(\Clk~combout\), !GLOBAL(\Reset~combout\), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	datac => \TIME1|Equal0~10\,
	datad => \TIME1|Add0~45_combout\,
	aclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \TIME1|count\(23));

-- Location: LC_X7_Y5_N9
\Y_Present.S6\ : maxv_lcell
-- Equation(s):
-- \Y_Present.S6~regout\ = DFFEAS((\Y_Present.S5~regout\ & ((\TIME1|S1~regout\) # ((!\TIME2|S1~regout\ & \Y_Present.S6~regout\)))) # (!\Y_Present.S5~regout\ & (((!\TIME2|S1~regout\ & \Y_Present.S6~regout\)))), GLOBAL(\Clk~combout\), VCC, , , , , 
-- \Reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8f88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \Y_Present.S5~regout\,
	datab => \TIME1|S1~regout\,
	datac => \TIME2|S1~regout\,
	datad => \Y_Present.S6~regout\,
	aclr => GND,
	sclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Y_Present.S6~regout\);

-- Location: LC_X7_Y5_N8
\Y_Present.S7\ : maxv_lcell
-- Equation(s):
-- \Y_Present.S7~regout\ = DFFEAS((\Y_Present.S7~regout\ & (((\TIME2|S1~regout\ & \Y_Present.S6~regout\)) # (!\TIME1|S1~regout\))) # (!\Y_Present.S7~regout\ & (((\TIME2|S1~regout\ & \Y_Present.S6~regout\)))), GLOBAL(\Clk~combout\), VCC, , , , , 
-- \Reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f222",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \Y_Present.S7~regout\,
	datab => \TIME1|S1~regout\,
	datac => \TIME2|S1~regout\,
	datad => \Y_Present.S6~regout\,
	aclr => GND,
	sclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Y_Present.S7~regout\);

-- Location: LC_X6_Y5_N2
\Selector0~0\ : maxv_lcell
-- Equation(s):
-- \Selector0~0_combout\ = (((\TIME1|S1~regout\ & \Y_Present.S7~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \TIME1|S1~regout\,
	datad => \Y_Present.S7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Selector0~0_combout\);

-- Location: LC_X6_Y5_N6
\Y_Present.S0\ : maxv_lcell
-- Equation(s):
-- \Y_Present.S0~regout\ = DFFEAS(((\Selector0~0_combout\) # ((\Y_Present.S0~regout\ & !\TIME2|S1~regout\))) # (!\Y_Present.rst~regout\), GLOBAL(\Clk~combout\), VCC, , , , , \Reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff3b",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \Y_Present.S0~regout\,
	datab => \Y_Present.rst~regout\,
	datac => \TIME2|S1~regout\,
	datad => \Selector0~0_combout\,
	aclr => GND,
	sclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Y_Present.S0~regout\);

-- Location: LC_X6_Y5_N8
\Y_Present.S1\ : maxv_lcell
-- Equation(s):
-- \Y_Present.S1~regout\ = DFFEAS((\Y_Present.S0~regout\ & ((\TIME2|S1~regout\) # ((!\TIME1|S1~regout\ & \Y_Present.S1~regout\)))) # (!\Y_Present.S0~regout\ & (!\TIME1|S1~regout\ & ((\Y_Present.S1~regout\)))), GLOBAL(\Clk~combout\), VCC, , , , , 
-- \Reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b3a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \Y_Present.S0~regout\,
	datab => \TIME1|S1~regout\,
	datac => \TIME2|S1~regout\,
	datad => \Y_Present.S1~regout\,
	aclr => GND,
	sclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Y_Present.S1~regout\);

-- Location: LC_X6_Y5_N3
\Y_Present.S2\ : maxv_lcell
-- Equation(s):
-- \Y_Present.S2~regout\ = DFFEAS((\Y_Present.S1~regout\ & ((\TIME1|S1~regout\) # ((!\TIME2|S1~regout\ & \Y_Present.S2~regout\)))) # (!\Y_Present.S1~regout\ & (((!\TIME2|S1~regout\ & \Y_Present.S2~regout\)))), GLOBAL(\Clk~combout\), VCC, , , , , 
-- \Reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8f88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \Y_Present.S1~regout\,
	datab => \TIME1|S1~regout\,
	datac => \TIME2|S1~regout\,
	datad => \Y_Present.S2~regout\,
	aclr => GND,
	sclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Y_Present.S2~regout\);

-- Location: LC_X6_Y5_N1
\Y_Present.S3\ : maxv_lcell
-- Equation(s):
-- \Y_Present.S3~regout\ = DFFEAS((\Y_Present.S2~regout\ & ((\TIME2|S1~regout\) # ((!\TIME1|S1~regout\ & \Y_Present.S3~regout\)))) # (!\Y_Present.S2~regout\ & (!\TIME1|S1~regout\ & ((\Y_Present.S3~regout\)))), GLOBAL(\Clk~combout\), VCC, , , , , 
-- \Reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b3a0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \Y_Present.S2~regout\,
	datab => \TIME1|S1~regout\,
	datac => \TIME2|S1~regout\,
	datad => \Y_Present.S3~regout\,
	aclr => GND,
	sclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Y_Present.S3~regout\);

-- Location: LC_X7_Y5_N5
\Y_Present.S4\ : maxv_lcell
-- Equation(s):
-- \Y_Present.S4~regout\ = DFFEAS((\Y_Present.S4~regout\ & (((\Y_Present.S3~regout\ & \TIME1|S1~regout\)) # (!\TIME2|S1~regout\))) # (!\Y_Present.S4~regout\ & (\Y_Present.S3~regout\ & ((\TIME1|S1~regout\)))), GLOBAL(\Clk~combout\), VCC, , , , , 
-- \Reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ce0a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \Y_Present.S4~regout\,
	datab => \Y_Present.S3~regout\,
	datac => \TIME2|S1~regout\,
	datad => \TIME1|S1~regout\,
	aclr => GND,
	sclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Y_Present.S4~regout\);

-- Location: LC_X7_Y5_N4
\Y_Present.S5\ : maxv_lcell
-- Equation(s):
-- \Y_Present.S5~regout\ = DFFEAS((\Y_Present.S4~regout\ & ((\TIME2|S1~regout\) # ((!\TIME1|S1~regout\ & \Y_Present.S5~regout\)))) # (!\Y_Present.S4~regout\ & (!\TIME1|S1~regout\ & (\Y_Present.S5~regout\))), GLOBAL(\Clk~combout\), VCC, , , , , 
-- \Reset~combout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba30",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \Clk~combout\,
	dataa => \Y_Present.S4~regout\,
	datab => \TIME1|S1~regout\,
	datac => \Y_Present.S5~regout\,
	datad => \TIME2|S1~regout\,
	aclr => GND,
	sclr => \Reset~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \Y_Present.S5~regout\);

-- Location: LC_X7_Y5_N6
\inst3|Mux1~0\ : maxv_lcell
-- Equation(s):
-- \inst3|Mux1~0_combout\ = (!\Y_Present.S6~regout\ & ((\Y_Present.S5~regout\) # ((\Y_Present.S7~regout\) # (!\Y_Present.rst~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3323",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Y_Present.S5~regout\,
	datab => \Y_Present.S6~regout\,
	datac => \Y_Present.rst~regout\,
	datad => \Y_Present.S7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst3|Mux1~0_combout\);

-- Location: LC_X7_Y5_N2
\inst2|Mux1~0\ : maxv_lcell
-- Equation(s):
-- \inst2|Mux1~0_combout\ = (!\Y_Present.S4~regout\ & (((\Y_Present.S5~regout\) # (\Y_Present.S3~regout\)) # (!\Y_Present.rst~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5551",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Y_Present.S4~regout\,
	datab => \Y_Present.rst~regout\,
	datac => \Y_Present.S5~regout\,
	datad => \Y_Present.S3~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst2|Mux1~0_combout\);

-- Location: LC_X6_Y5_N5
\inst1|Mux1~0\ : maxv_lcell
-- Equation(s):
-- \inst1|Mux1~0_combout\ = (!\Y_Present.S2~regout\ & ((\Y_Present.S3~regout\) # ((\Y_Present.S1~regout\) # (!\Y_Present.rst~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5545",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Y_Present.S2~regout\,
	datab => \Y_Present.S3~regout\,
	datac => \Y_Present.rst~regout\,
	datad => \Y_Present.S1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst1|Mux1~0_combout\);

-- Location: LC_X6_Y5_N4
\inst0|Mux1~0\ : maxv_lcell
-- Equation(s):
-- \inst0|Mux1~0_combout\ = (!\Y_Present.S0~regout\ & ((\Y_Present.S1~regout\) # ((\Y_Present.S7~regout\) # (!\Y_Present.rst~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Y_Present.S1~regout\,
	datab => \Y_Present.rst~regout\,
	datac => \Y_Present.S0~regout\,
	datad => \Y_Present.S7~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst0|Mux1~0_combout\);

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\State_output2[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst3|ALT_INV_Mux1~0_combout\,
	oe => VCC,
	padio => ww_State_output2(0));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\State_output2[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Y_Present.S6~regout\,
	oe => VCC,
	padio => ww_State_output2(1));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\State_output2[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst2|ALT_INV_Mux1~0_combout\,
	oe => VCC,
	padio => ww_State_output2(2));

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\State_output2[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Y_Present.S4~regout\,
	oe => VCC,
	padio => ww_State_output2(3));

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\State_output2[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst1|ALT_INV_Mux1~0_combout\,
	oe => VCC,
	padio => ww_State_output2(4));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\State_output2[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Y_Present.S2~regout\,
	oe => VCC,
	padio => ww_State_output2(5));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\State_output2[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst0|ALT_INV_Mux1~0_combout\,
	oe => VCC,
	padio => ww_State_output2(6));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\State_output2[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \ALT_INV_Y_Present.S0~regout\,
	oe => VCC,
	padio => ww_State_output2(7));
END structure;


