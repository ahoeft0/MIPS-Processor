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

-- DATE "04/23/2024 09:10:29"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	pipeline IS
    PORT (
	clock : IN std_logic;
	reset : IN std_logic;
	current_pc : OUT std_logic_vector(3 DOWNTO 0);
	result : OUT std_logic_vector(3 DOWNTO 0)
	);
END pipeline;

-- Design Ports Information
-- current_pc[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- current_pc[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- result[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF pipeline IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clock : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_current_pc : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_result : std_logic_vector(3 DOWNTO 0);
SIGNAL \current_pc[0]~output_o\ : std_logic;
SIGNAL \current_pc[1]~output_o\ : std_logic;
SIGNAL \current_pc[2]~output_o\ : std_logic;
SIGNAL \current_pc[3]~output_o\ : std_logic;
SIGNAL \result[0]~output_o\ : std_logic;
SIGNAL \result[1]~output_o\ : std_logic;
SIGNAL \result[2]~output_o\ : std_logic;
SIGNAL \result[3]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \pc_mux|f~0_combout\ : std_logic;
SIGNAL \addpc|stage2|s~combout\ : std_logic;
SIGNAL \addpc|stage3|s~combout\ : std_logic;
SIGNAL \addpc|stage4|s~combout\ : std_logic;
SIGNAL \im|output[0]~0_combout\ : std_logic;
SIGNAL \ID_EX14|Q~0_combout\ : std_logic;
SIGNAL \ID_EX14|Q~q\ : std_logic;
SIGNAL \EX_MEM6|Q~q\ : std_logic;
SIGNAL \MEM_WB5|Q~q\ : std_logic;
SIGNAL \rf|m1|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf|r1|Q[0]~feeder_combout\ : std_logic;
SIGNAL \im|stage_dec|s1|y[2]~0_combout\ : std_logic;
SIGNAL \IF_ID2|Q[11]~feeder_combout\ : std_logic;
SIGNAL \ID_EX11|Q[0]~feeder_combout\ : std_logic;
SIGNAL \m1|f[0]~1_combout\ : std_logic;
SIGNAL \ID_EX11|Q[1]~feeder_combout\ : std_logic;
SIGNAL \im|output[12]~2_combout\ : std_logic;
SIGNAL \IF_ID2|Q[12]~feeder_combout\ : std_logic;
SIGNAL \ID_EX12|Q[1]~feeder_combout\ : std_logic;
SIGNAL \m1|f[1]~0_combout\ : std_logic;
SIGNAL \im|output[18]~1_combout\ : std_logic;
SIGNAL \ID_EX11|Q[2]~feeder_combout\ : std_logic;
SIGNAL \im|output[13]~3_combout\ : std_logic;
SIGNAL \IF_ID2|Q[13]~feeder_combout\ : std_logic;
SIGNAL \ID_EX12|Q[2]~feeder_combout\ : std_logic;
SIGNAL \m1|f[2]~2_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f[0]~1_combout\ : std_logic;
SIGNAL \rf|m1|stage3|f[0]~2_combout\ : std_logic;
SIGNAL \rf|r3|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|m3|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \IF_ID2|Q[21]~feeder_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|r2|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|m2|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~1_combout\ : std_logic;
SIGNAL \rf|value1[0]~12_combout\ : std_logic;
SIGNAL \rf|value1[0]~13_combout\ : std_logic;
SIGNAL \rf|m15|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|m15|stage3|f~1_combout\ : std_logic;
SIGNAL \rf|r14|Q[0]~feeder_combout\ : std_logic;
SIGNAL \rf|m14|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|m13|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|m13|stage3|f~1_combout\ : std_logic;
SIGNAL \rf|m12|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|value1[0]~10_combout\ : std_logic;
SIGNAL \rf|value1[0]~11_combout\ : std_logic;
SIGNAL \rf|value1[0]~14_combout\ : std_logic;
SIGNAL \id|alu_temp[0]~0_combout\ : std_logic;
SIGNAL \im|stage_dec|s2|y[1]~0_combout\ : std_logic;
SIGNAL \IF_ID2|Q[1]~feeder_combout\ : std_logic;
SIGNAL \id|alu_temp[2]~1_combout\ : std_logic;
SIGNAL \ID_EX9|Q~q\ : std_logic;
SIGNAL \rf|m11|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|m11|stage3|f~1_combout\ : std_logic;
SIGNAL \rf|m10|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf|value2[0]~2_combout\ : std_logic;
SIGNAL \rf|value2[0]~3_combout\ : std_logic;
SIGNAL \rf|m5|stage3|f[0]~0_combout\ : std_logic;
SIGNAL \rf|m5|stage3|f[0]~1_combout\ : std_logic;
SIGNAL \rf|m4|stage3|f~0_combout\ : std_logic;
SIGNAL \rf|value2[0]~0_combout\ : std_logic;
SIGNAL \rf|value2[0]~1_combout\ : std_logic;
SIGNAL \rf|value2[0]~4_combout\ : std_logic;
SIGNAL \fwd|FWDB[0]~0_combout\ : std_logic;
SIGNAL \rf|r14|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|value2[3]~15_combout\ : std_logic;
SIGNAL \rf|r5|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|value2[3]~16_combout\ : std_logic;
SIGNAL \rf|r11|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|r0|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|value2[3]~17_combout\ : std_logic;
SIGNAL \rf|value2[3]~18_combout\ : std_logic;
SIGNAL \rf|value2[3]~19_combout\ : std_logic;
SIGNAL \mf2|stage3|f[3]~7_combout\ : std_logic;
SIGNAL \mf2|stage3|f[2]~9_combout\ : std_logic;
SIGNAL \mf2|stage3|f[3]~8_combout\ : std_logic;
SIGNAL \rf|r11|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|r1|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|r0|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|value2[1]~7_combout\ : std_logic;
SIGNAL \rf|value2[1]~8_combout\ : std_logic;
SIGNAL \rf|r5|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|value2[1]~5_combout\ : std_logic;
SIGNAL \rf|value2[1]~6_combout\ : std_logic;
SIGNAL \rf|value2[1]~9_combout\ : std_logic;
SIGNAL \fwd|FWDA~0_combout\ : std_logic;
SIGNAL \fwd|FWDA~1_combout\ : std_logic;
SIGNAL \fwd|FWDA~2_combout\ : std_logic;
SIGNAL \mf1|stage3|f~4_combout\ : std_logic;
SIGNAL \alu_ins|rc|Ys[1]~0_combout\ : std_logic;
SIGNAL \alu_ins|rc|Ys[1]~1_combout\ : std_logic;
SIGNAL \mf1|stage3|f~5_combout\ : std_logic;
SIGNAL \alu_ins|rc|stage2|Cout~0_combout\ : std_logic;
SIGNAL \mf2|stage3|f[2]~4_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~3_combout\ : std_logic;
SIGNAL \rf|r1|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|r3|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|r0|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[2]~2_combout\ : std_logic;
SIGNAL \rf|value1[2]~3_combout\ : std_logic;
SIGNAL \rf|r14|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[2]~0_combout\ : std_logic;
SIGNAL \rf|value1[2]~1_combout\ : std_logic;
SIGNAL \rf|value1[2]~4_combout\ : std_logic;
SIGNAL \mf1|stage3|f~3_combout\ : std_logic;
SIGNAL \mf1|stage3|f[2]~11_combout\ : std_logic;
SIGNAL \alu_ins|output_mux|stage1|f~4_combout\ : std_logic;
SIGNAL \rf|m4|stage3|f[2]~1_combout\ : std_logic;
SIGNAL \rf|value2[2]~10_combout\ : std_logic;
SIGNAL \rf|value2[2]~11_combout\ : std_logic;
SIGNAL \rf|value2[2]~12_combout\ : std_logic;
SIGNAL \rf|r11|Q[2]~feeder_combout\ : std_logic;
SIGNAL \rf|value2[2]~13_combout\ : std_logic;
SIGNAL \rf|value2[2]~14_combout\ : std_logic;
SIGNAL \fwd|FWDA[0]~4_combout\ : std_logic;
SIGNAL \fwd|FWDA[0]~3_combout\ : std_logic;
SIGNAL \fwd|FWDA[0]~5_combout\ : std_logic;
SIGNAL \mf1|stage3|f[3]~9_combout\ : std_logic;
SIGNAL \mf1|stage3|f[3]~10_combout\ : std_logic;
SIGNAL \mf1|stage3|f~2_combout\ : std_logic;
SIGNAL \alu_ins|rc|stage3|Cout~0_combout\ : std_logic;
SIGNAL \alu_ins|rc|stage4|s~0_combout\ : std_logic;
SIGNAL \alu_ins|output_mux|stage1|f~5_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~4_combout\ : std_logic;
SIGNAL \rf|r1|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[3]~17_combout\ : std_logic;
SIGNAL \rf|r3|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[3]~18_combout\ : std_logic;
SIGNAL \rf|r13|Q[3]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[3]~15_combout\ : std_logic;
SIGNAL \rf|value1[3]~16_combout\ : std_logic;
SIGNAL \rf|value1[3]~19_combout\ : std_logic;
SIGNAL \fwd|FWDB[0]~1_combout\ : std_logic;
SIGNAL \fwd|FWDB[0]~2_combout\ : std_logic;
SIGNAL \mf2|stage3|f[0]~5_combout\ : std_logic;
SIGNAL \mf1|stage3|f[0]~7_combout\ : std_logic;
SIGNAL \mf1|stage3|f[0]~6_combout\ : std_logic;
SIGNAL \mf1|stage3|f[0]~8_combout\ : std_logic;
SIGNAL \alu_ins|rc|stage1|Cout~0_combout\ : std_logic;
SIGNAL \alu_ins|rc|stage2|s~0_combout\ : std_logic;
SIGNAL \alu_ins|output_mux|stage1|f~3_combout\ : std_logic;
SIGNAL \rf|m0|stage3|f~2_combout\ : std_logic;
SIGNAL \rf|r14|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|r12|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[1]~5_combout\ : std_logic;
SIGNAL \rf|value1[1]~6_combout\ : std_logic;
SIGNAL \rf|m2|stage3|f[1]~1_combout\ : std_logic;
SIGNAL \rf|r2|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[1]~7_combout\ : std_logic;
SIGNAL \rf|r3|Q[1]~feeder_combout\ : std_logic;
SIGNAL \rf|value1[1]~8_combout\ : std_logic;
SIGNAL \rf|value1[1]~9_combout\ : std_logic;
SIGNAL \fwd|FWDB~3_combout\ : std_logic;
SIGNAL \fwd|FWDB~4_combout\ : std_logic;
SIGNAL \fwd|FWDB~5_combout\ : std_logic;
SIGNAL \mf2|stage3|f[0]~6_combout\ : std_logic;
SIGNAL \alu_ins|output_mux|stage1|f[0]~1_combout\ : std_logic;
SIGNAL \alu_ins|output_mux|stage1|f[0]~0_combout\ : std_logic;
SIGNAL \alu_ins|output_mux|stage1|f[0]~2_combout\ : std_logic;
SIGNAL \rf|r2|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \pc|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ID_EX7|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r14|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MEM_WB3|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r1|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MEM_WB4|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \EX_MEM3|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ID_EX6|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ID_EX10|Q\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \rf|r13|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \EX_MEM5|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alu_ins|rc|Ys\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \IF_ID2|Q\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \rf|r5|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r4|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r15|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r10|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r0|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r11|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ID_EX12|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ID_EX11|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r12|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \rf|r3|Q\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \im|stage_dec|s2|y\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \ALT_INV_reset~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clock <= clock;
ww_reset <= reset;
current_pc <= ww_current_pc;
result <= ww_result;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_reset~input_o\ <= NOT \reset~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X107_Y73_N9
\current_pc[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc|Q\(0),
	devoe => ww_devoe,
	o => \current_pc[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\current_pc[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc|Q\(1),
	devoe => ww_devoe,
	o => \current_pc[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\current_pc[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc|Q\(2),
	devoe => ww_devoe,
	o => \current_pc[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\current_pc[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pc|Q\(3),
	devoe => ww_devoe,
	o => \current_pc[3]~output_o\);

-- Location: IOOBUF_X69_Y73_N16
\result[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB3|Q\(0),
	devoe => ww_devoe,
	o => \result[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\result[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB3|Q\(1),
	devoe => ww_devoe,
	o => \result[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\result[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB3|Q\(2),
	devoe => ww_devoe,
	o => \result[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\result[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \MEM_WB3|Q\(3),
	devoe => ww_devoe,
	o => \result[3]~output_o\);

-- Location: IOIBUF_X115_Y40_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: LCCOMB_X113_Y44_N6
\pc_mux|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pc_mux|f~0_combout\ = (!\pc|Q\(0) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|Q\(0),
	datad => \reset~input_o\,
	combout => \pc_mux|f~0_combout\);

-- Location: FF_X113_Y44_N7
\pc|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \pc_mux|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(0));

-- Location: LCCOMB_X113_Y44_N16
\addpc|stage2|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc|stage2|s~combout\ = \pc|Q\(1) $ (\pc|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pc|Q\(1),
	datad => \pc|Q\(0),
	combout => \addpc|stage2|s~combout\);

-- Location: FF_X113_Y44_N17
\pc|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \addpc|stage2|s~combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(1));

-- Location: LCCOMB_X113_Y44_N10
\addpc|stage3|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc|stage3|s~combout\ = \pc|Q\(2) $ (((\pc|Q\(0) & \pc|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datac => \pc|Q\(2),
	datad => \pc|Q\(1),
	combout => \addpc|stage3|s~combout\);

-- Location: FF_X113_Y44_N11
\pc|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \addpc|stage3|s~combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(2));

-- Location: LCCOMB_X113_Y44_N8
\addpc|stage4|s\ : cycloneive_lcell_comb
-- Equation(s):
-- \addpc|stage4|s~combout\ = \pc|Q\(3) $ (((\pc|Q\(0) & (\pc|Q\(1) & \pc|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(1),
	datac => \pc|Q\(3),
	datad => \pc|Q\(2),
	combout => \addpc|stage4|s~combout\);

-- Location: FF_X113_Y44_N9
\pc|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \addpc|stage4|s~combout\,
	sclr => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pc|Q\(3));

-- Location: LCCOMB_X111_Y44_N30
\im|output[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[0]~0_combout\ = (\pc|Q\(3)) # (\pc|Q\(2) $ (((!\pc|Q\(0) & !\pc|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(1),
	datac => \pc|Q\(3),
	datad => \pc|Q\(2),
	combout => \im|output[0]~0_combout\);

-- Location: FF_X111_Y44_N31
\IF_ID2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \im|output[0]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID2|Q\(0));

-- Location: LCCOMB_X114_Y40_N0
\ID_EX14|Q~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX14|Q~0_combout\ = !\IF_ID2|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_ID2|Q\(0),
	combout => \ID_EX14|Q~0_combout\);

-- Location: FF_X114_Y40_N1
\ID_EX14|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ID_EX14|Q~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX14|Q~q\);

-- Location: FF_X109_Y44_N27
\EX_MEM6|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \ID_EX14|Q~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM6|Q~q\);

-- Location: FF_X109_Y44_N21
\MEM_WB5|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \EX_MEM6|Q~q\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB5|Q~q\);

-- Location: LCCOMB_X109_Y44_N26
\rf|m1|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f[0]~0_combout\ = (\MEM_WB3|Q\(0)) # (\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB3|Q\(0),
	datad => \reset~input_o\,
	combout => \rf|m1|stage3|f[0]~0_combout\);

-- Location: LCCOMB_X114_Y43_N24
\rf|r1|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r1|Q[0]~feeder_combout\ = \rf|m1|stage3|f[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m1|stage3|f[0]~0_combout\,
	combout => \rf|r1|Q[0]~feeder_combout\);

-- Location: LCCOMB_X113_Y44_N20
\im|stage_dec|s1|y[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|stage_dec|s1|y[2]~0_combout\ = (\pc|Q\(0)) # ((\pc|Q\(1)) # ((\pc|Q\(3)) # (!\pc|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(1),
	datac => \pc|Q\(3),
	datad => \pc|Q\(2),
	combout => \im|stage_dec|s1|y[2]~0_combout\);

-- Location: LCCOMB_X114_Y40_N22
\IF_ID2|Q[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID2|Q[11]~feeder_combout\ = \im|stage_dec|s1|y[2]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \im|stage_dec|s1|y[2]~0_combout\,
	combout => \IF_ID2|Q[11]~feeder_combout\);

-- Location: FF_X114_Y40_N23
\IF_ID2|Q[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IF_ID2|Q[11]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID2|Q\(11));

-- Location: FF_X114_Y40_N31
\ID_EX12|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \IF_ID2|Q\(11),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX12|Q\(0));

-- Location: LCCOMB_X111_Y44_N24
\im|stage_dec|s2|y[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|stage_dec|s2|y\(1) = ((\pc|Q\(1)) # ((\pc|Q\(3)) # (\pc|Q\(2)))) # (!\pc|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(1),
	datac => \pc|Q\(3),
	datad => \pc|Q\(2),
	combout => \im|stage_dec|s2|y\(1));

-- Location: FF_X111_Y44_N25
\IF_ID2|Q[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \im|stage_dec|s2|y\(1),
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID2|Q\(16));

-- Location: LCCOMB_X114_Y40_N8
\ID_EX11|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX11|Q[0]~feeder_combout\ = \IF_ID2|Q\(16)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_ID2|Q\(16),
	combout => \ID_EX11|Q[0]~feeder_combout\);

-- Location: FF_X114_Y40_N9
\ID_EX11|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ID_EX11|Q[0]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX11|Q\(0));

-- Location: LCCOMB_X114_Y40_N6
\m1|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|f[0]~1_combout\ = (\ID_EX14|Q~q\ & (\ID_EX12|Q\(0))) # (!\ID_EX14|Q~q\ & ((\ID_EX11|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX12|Q\(0),
	datac => \ID_EX11|Q\(0),
	datad => \ID_EX14|Q~q\,
	combout => \m1|f[0]~1_combout\);

-- Location: FF_X110_Y44_N23
\EX_MEM5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \m1|f[0]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM5|Q\(0));

-- Location: FF_X110_Y44_N15
\MEM_WB4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \EX_MEM5|Q\(0),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB4|Q\(0));

-- Location: LCCOMB_X114_Y40_N14
\ID_EX11|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX11|Q[1]~feeder_combout\ = \IF_ID2|Q\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_ID2|Q\(0),
	combout => \ID_EX11|Q[1]~feeder_combout\);

-- Location: FF_X114_Y40_N15
\ID_EX11|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ID_EX11|Q[1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX11|Q\(1));

-- Location: LCCOMB_X113_Y44_N2
\im|output[12]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[12]~2_combout\ = (\pc|Q\(3)) # ((\pc|Q\(2)) # (\pc|Q\(0) $ (!\pc|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(1),
	datac => \pc|Q\(3),
	datad => \pc|Q\(2),
	combout => \im|output[12]~2_combout\);

-- Location: LCCOMB_X114_Y40_N20
\IF_ID2|Q[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID2|Q[12]~feeder_combout\ = \im|output[12]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \im|output[12]~2_combout\,
	combout => \IF_ID2|Q[12]~feeder_combout\);

-- Location: FF_X114_Y40_N21
\IF_ID2|Q[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IF_ID2|Q[12]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID2|Q\(12));

-- Location: LCCOMB_X114_Y40_N24
\ID_EX12|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX12|Q[1]~feeder_combout\ = \IF_ID2|Q\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_ID2|Q\(12),
	combout => \ID_EX12|Q[1]~feeder_combout\);

-- Location: FF_X114_Y40_N25
\ID_EX12|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ID_EX12|Q[1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX12|Q\(1));

-- Location: LCCOMB_X110_Y44_N8
\m1|f[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|f[1]~0_combout\ = (\ID_EX14|Q~q\ & ((\ID_EX12|Q\(1)))) # (!\ID_EX14|Q~q\ & (\ID_EX11|Q\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX14|Q~q\,
	datab => \ID_EX11|Q\(1),
	datad => \ID_EX12|Q\(1),
	combout => \m1|f[1]~0_combout\);

-- Location: FF_X110_Y44_N9
\EX_MEM5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \m1|f[1]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM5|Q\(1));

-- Location: FF_X110_Y44_N3
\MEM_WB4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \EX_MEM5|Q\(1),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB4|Q\(1));

-- Location: FF_X110_Y44_N5
\EX_MEM5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \ID_EX11|Q\(1),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM5|Q\(3));

-- Location: FF_X110_Y44_N7
\MEM_WB4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \EX_MEM5|Q\(3),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB4|Q\(3));

-- Location: LCCOMB_X111_Y44_N8
\im|output[18]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[18]~1_combout\ = (\pc|Q\(3)) # ((\pc|Q\(1) & ((\pc|Q\(2)))) # (!\pc|Q\(1) & ((\pc|Q\(0)) # (!\pc|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(1),
	datac => \pc|Q\(3),
	datad => \pc|Q\(2),
	combout => \im|output[18]~1_combout\);

-- Location: FF_X111_Y44_N9
\IF_ID2|Q[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \im|output[18]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID2|Q\(18));

-- Location: LCCOMB_X114_Y40_N2
\ID_EX11|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX11|Q[2]~feeder_combout\ = \IF_ID2|Q\(18)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_ID2|Q\(18),
	combout => \ID_EX11|Q[2]~feeder_combout\);

-- Location: FF_X114_Y40_N3
\ID_EX11|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ID_EX11|Q[2]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX11|Q\(2));

-- Location: LCCOMB_X113_Y44_N26
\im|output[13]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|output[13]~3_combout\ = (\pc|Q\(1)) # ((\pc|Q\(3)) # (\pc|Q\(0) $ (!\pc|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datab => \pc|Q\(1),
	datac => \pc|Q\(3),
	datad => \pc|Q\(2),
	combout => \im|output[13]~3_combout\);

-- Location: LCCOMB_X114_Y40_N12
\IF_ID2|Q[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID2|Q[13]~feeder_combout\ = \im|output[13]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \im|output[13]~3_combout\,
	combout => \IF_ID2|Q[13]~feeder_combout\);

-- Location: FF_X114_Y40_N13
\IF_ID2|Q[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IF_ID2|Q[13]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID2|Q\(13));

-- Location: LCCOMB_X114_Y40_N4
\ID_EX12|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \ID_EX12|Q[2]~feeder_combout\ = \IF_ID2|Q\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IF_ID2|Q\(13),
	combout => \ID_EX12|Q[2]~feeder_combout\);

-- Location: FF_X114_Y40_N5
\ID_EX12|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \ID_EX12|Q[2]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX12|Q\(2));

-- Location: LCCOMB_X114_Y40_N16
\m1|f[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \m1|f[2]~2_combout\ = (\ID_EX14|Q~q\ & ((\ID_EX12|Q\(2)))) # (!\ID_EX14|Q~q\ & (\ID_EX11|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX11|Q\(2),
	datac => \ID_EX12|Q\(2),
	datad => \ID_EX14|Q~q\,
	combout => \m1|f[2]~2_combout\);

-- Location: FF_X110_Y44_N27
\EX_MEM5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \m1|f[2]~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM5|Q\(2));

-- Location: FF_X110_Y44_N25
\MEM_WB4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \EX_MEM5|Q\(2),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB4|Q\(2));

-- Location: LCCOMB_X110_Y44_N22
\rf|m1|stage3|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f[0]~1_combout\ = (!\MEM_WB4|Q\(3) & (!\MEM_WB4|Q\(2) & \MEM_WB5|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB4|Q\(3),
	datab => \MEM_WB4|Q\(2),
	datad => \MEM_WB5|Q~q\,
	combout => \rf|m1|stage3|f[0]~1_combout\);

-- Location: LCCOMB_X114_Y43_N20
\rf|m1|stage3|f[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m1|stage3|f[0]~2_combout\ = (\reset~input_o\) # ((\MEM_WB4|Q\(0) & (!\MEM_WB4|Q\(1) & \rf|m1|stage3|f[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB4|Q\(0),
	datab => \reset~input_o\,
	datac => \MEM_WB4|Q\(1),
	datad => \rf|m1|stage3|f[0]~1_combout\,
	combout => \rf|m1|stage3|f[0]~2_combout\);

-- Location: FF_X114_Y43_N25
\rf|r1|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r1|Q[0]~feeder_combout\,
	ena => \rf|m1|stage3|f[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(0));

-- Location: LCCOMB_X114_Y44_N8
\rf|r3|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r3|Q[0]~feeder_combout\ = \rf|m1|stage3|f[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m1|stage3|f[0]~0_combout\,
	combout => \rf|r3|Q[0]~feeder_combout\);

-- Location: LCCOMB_X114_Y44_N12
\rf|m3|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m3|stage3|f[0]~0_combout\ = (\reset~input_o\) # ((\MEM_WB4|Q\(1) & (\rf|m1|stage3|f[0]~1_combout\ & \MEM_WB4|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB4|Q\(1),
	datab => \reset~input_o\,
	datac => \rf|m1|stage3|f[0]~1_combout\,
	datad => \MEM_WB4|Q\(0),
	combout => \rf|m3|stage3|f[0]~0_combout\);

-- Location: FF_X114_Y44_N9
\rf|r3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r3|Q[0]~feeder_combout\,
	ena => \rf|m3|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(0));

-- Location: LCCOMB_X114_Y40_N26
\IF_ID2|Q[21]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID2|Q[21]~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \IF_ID2|Q[21]~feeder_combout\);

-- Location: FF_X114_Y40_N27
\IF_ID2|Q[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IF_ID2|Q[21]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID2|Q\(21));

-- Location: LCCOMB_X112_Y44_N28
\rf|m0|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~0_combout\ = (!\reset~input_o\ & \MEM_WB3|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \MEM_WB3|Q\(0),
	combout => \rf|m0|stage3|f~0_combout\);

-- Location: LCCOMB_X109_Y43_N14
\rf|r2|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r2|Q[0]~feeder_combout\ = \rf|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~0_combout\,
	combout => \rf|r2|Q[0]~feeder_combout\);

-- Location: LCCOMB_X110_Y43_N22
\rf|m2|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m2|stage3|f~0_combout\ = (\reset~input_o\) # ((\MEM_WB4|Q\(1) & (\rf|m1|stage3|f[0]~1_combout\ & !\MEM_WB4|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \MEM_WB4|Q\(1),
	datac => \rf|m1|stage3|f[0]~1_combout\,
	datad => \MEM_WB4|Q\(0),
	combout => \rf|m2|stage3|f~0_combout\);

-- Location: FF_X109_Y43_N15
\rf|r2|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r2|Q[0]~feeder_combout\,
	ena => \rf|m2|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(0));

-- Location: LCCOMB_X111_Y43_N12
\rf|m0|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~1_combout\ = (\reset~input_o\) # ((!\MEM_WB4|Q\(1) & (\rf|m1|stage3|f[0]~1_combout\ & !\MEM_WB4|Q\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \MEM_WB4|Q\(1),
	datac => \rf|m1|stage3|f[0]~1_combout\,
	datad => \MEM_WB4|Q\(0),
	combout => \rf|m0|stage3|f~1_combout\);

-- Location: FF_X111_Y43_N27
\rf|r0|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf|m0|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r0|Q\(0));

-- Location: LCCOMB_X110_Y43_N20
\rf|value1[0]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~12_combout\ = (\IF_ID2|Q\(21) & (((\IF_ID2|Q\(18))))) # (!\IF_ID2|Q\(21) & ((\IF_ID2|Q\(18) & (\rf|r2|Q\(0))) # (!\IF_ID2|Q\(18) & ((\rf|r0|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r2|Q\(0),
	datab => \rf|r0|Q\(0),
	datac => \IF_ID2|Q\(21),
	datad => \IF_ID2|Q\(18),
	combout => \rf|value1[0]~12_combout\);

-- Location: LCCOMB_X110_Y43_N2
\rf|value1[0]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~13_combout\ = (\IF_ID2|Q\(21) & ((\rf|value1[0]~12_combout\ & ((\rf|r3|Q\(0)))) # (!\rf|value1[0]~12_combout\ & (\rf|r1|Q\(0))))) # (!\IF_ID2|Q\(21) & (((\rf|value1[0]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r1|Q\(0),
	datab => \rf|r3|Q\(0),
	datac => \IF_ID2|Q\(21),
	datad => \rf|value1[0]~12_combout\,
	combout => \rf|value1[0]~13_combout\);

-- Location: LCCOMB_X111_Y44_N2
\rf|m15|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m15|stage3|f~0_combout\ = (\MEM_WB4|Q\(3) & (\MEM_WB4|Q\(2) & (\MEM_WB5|Q~q\ & \MEM_WB4|Q\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB4|Q\(3),
	datab => \MEM_WB4|Q\(2),
	datac => \MEM_WB5|Q~q\,
	datad => \MEM_WB4|Q\(1),
	combout => \rf|m15|stage3|f~0_combout\);

-- Location: LCCOMB_X112_Y44_N18
\rf|m15|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m15|stage3|f~1_combout\ = (\reset~input_o\) # ((\MEM_WB4|Q\(0) & \rf|m15|stage3|f~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB4|Q\(0),
	datab => \reset~input_o\,
	datad => \rf|m15|stage3|f~0_combout\,
	combout => \rf|m15|stage3|f~1_combout\);

-- Location: FF_X112_Y44_N27
\rf|r15|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf|m15|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r15|Q\(0));

-- Location: LCCOMB_X112_Y40_N8
\rf|r14|Q[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r14|Q[0]~feeder_combout\ = \rf|m0|stage3|f~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~0_combout\,
	combout => \rf|r14|Q[0]~feeder_combout\);

-- Location: LCCOMB_X112_Y40_N12
\rf|m14|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m14|stage3|f~0_combout\ = (\reset~input_o\) # ((!\MEM_WB4|Q\(0) & \rf|m15|stage3|f~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datac => \MEM_WB4|Q\(0),
	datad => \rf|m15|stage3|f~0_combout\,
	combout => \rf|m14|stage3|f~0_combout\);

-- Location: FF_X112_Y40_N9
\rf|r14|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r14|Q[0]~feeder_combout\,
	ena => \rf|m14|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r14|Q\(0));

-- Location: LCCOMB_X112_Y43_N24
\rf|m13|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m13|stage3|f~0_combout\ = (\MEM_WB4|Q\(3) & (\MEM_WB4|Q\(2) & \MEM_WB5|Q~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB4|Q\(3),
	datab => \MEM_WB4|Q\(2),
	datad => \MEM_WB5|Q~q\,
	combout => \rf|m13|stage3|f~0_combout\);

-- Location: LCCOMB_X112_Y43_N4
\rf|m13|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m13|stage3|f~1_combout\ = (\reset~input_o\) # ((!\MEM_WB4|Q\(1) & (\MEM_WB4|Q\(0) & \rf|m13|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB4|Q\(1),
	datab => \reset~input_o\,
	datac => \MEM_WB4|Q\(0),
	datad => \rf|m13|stage3|f~0_combout\,
	combout => \rf|m13|stage3|f~1_combout\);

-- Location: FF_X112_Y43_N25
\rf|r13|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf|m13|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r13|Q\(0));

-- Location: LCCOMB_X112_Y43_N22
\rf|m12|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m12|stage3|f~0_combout\ = (\reset~input_o\) # ((!\MEM_WB4|Q\(1) & (!\MEM_WB4|Q\(0) & \rf|m13|stage3|f~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB4|Q\(1),
	datab => \reset~input_o\,
	datac => \MEM_WB4|Q\(0),
	datad => \rf|m13|stage3|f~0_combout\,
	combout => \rf|m12|stage3|f~0_combout\);

-- Location: FF_X112_Y43_N31
\rf|r12|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf|m12|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r12|Q\(0));

-- Location: LCCOMB_X112_Y43_N30
\rf|value1[0]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~10_combout\ = (\IF_ID2|Q\(18) & (((\IF_ID2|Q\(21))))) # (!\IF_ID2|Q\(18) & ((\IF_ID2|Q\(21) & (\rf|r13|Q\(0))) # (!\IF_ID2|Q\(21) & ((\rf|r12|Q\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r13|Q\(0),
	datab => \IF_ID2|Q\(18),
	datac => \rf|r12|Q\(0),
	datad => \IF_ID2|Q\(21),
	combout => \rf|value1[0]~10_combout\);

-- Location: LCCOMB_X111_Y44_N18
\rf|value1[0]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~11_combout\ = (\rf|value1[0]~10_combout\ & ((\rf|r15|Q\(0)) # ((!\IF_ID2|Q\(18))))) # (!\rf|value1[0]~10_combout\ & (((\rf|r14|Q\(0) & \IF_ID2|Q\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r15|Q\(0),
	datab => \rf|r14|Q\(0),
	datac => \rf|value1[0]~10_combout\,
	datad => \IF_ID2|Q\(18),
	combout => \rf|value1[0]~11_combout\);

-- Location: LCCOMB_X110_Y44_N30
\rf|value1[0]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[0]~14_combout\ = (\IF_ID2|Q\(0) & ((\rf|value1[0]~11_combout\))) # (!\IF_ID2|Q\(0) & (\rf|value1[0]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID2|Q\(0),
	datac => \rf|value1[0]~13_combout\,
	datad => \rf|value1[0]~11_combout\,
	combout => \rf|value1[0]~14_combout\);

-- Location: FF_X110_Y44_N31
\ID_EX6|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|value1[0]~14_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX6|Q\(0));

-- Location: LCCOMB_X114_Y40_N28
\id|alu_temp[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|alu_temp[0]~0_combout\ = (\IF_ID2|Q\(21) & !\IF_ID2|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \IF_ID2|Q\(21),
	datad => \IF_ID2|Q\(0),
	combout => \id|alu_temp[0]~0_combout\);

-- Location: FF_X114_Y40_N29
\ID_EX10|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \id|alu_temp[0]~0_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX10|Q\(0));

-- Location: LCCOMB_X113_Y44_N24
\im|stage_dec|s2|y[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \im|stage_dec|s2|y[1]~0_combout\ = ((\pc|Q\(3)) # (\pc|Q\(2))) # (!\pc|Q\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pc|Q\(0),
	datac => \pc|Q\(3),
	datad => \pc|Q\(2),
	combout => \im|stage_dec|s2|y[1]~0_combout\);

-- Location: LCCOMB_X114_Y40_N10
\IF_ID2|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \IF_ID2|Q[1]~feeder_combout\ = \im|stage_dec|s2|y[1]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \im|stage_dec|s2|y[1]~0_combout\,
	combout => \IF_ID2|Q[1]~feeder_combout\);

-- Location: FF_X114_Y40_N11
\IF_ID2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \IF_ID2|Q[1]~feeder_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \IF_ID2|Q\(1));

-- Location: LCCOMB_X114_Y40_N30
\id|alu_temp[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \id|alu_temp[2]~1_combout\ = (\IF_ID2|Q\(1) & (\IF_ID2|Q\(21) & !\IF_ID2|Q\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID2|Q\(1),
	datab => \IF_ID2|Q\(21),
	datad => \IF_ID2|Q\(0),
	combout => \id|alu_temp[2]~1_combout\);

-- Location: FF_X109_Y44_N19
\ID_EX9|Q\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \id|alu_temp[2]~1_combout\,
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX9|Q~q\);

-- Location: LCCOMB_X110_Y43_N24
\rf|m11|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m11|stage3|f~0_combout\ = (\MEM_WB4|Q\(1) & (\MEM_WB5|Q~q\ & (\MEM_WB4|Q\(3) & !\MEM_WB4|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB4|Q\(1),
	datab => \MEM_WB5|Q~q\,
	datac => \MEM_WB4|Q\(3),
	datad => \MEM_WB4|Q\(2),
	combout => \rf|m11|stage3|f~0_combout\);

-- Location: LCCOMB_X114_Y43_N10
\rf|m11|stage3|f~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m11|stage3|f~1_combout\ = (\reset~input_o\) # ((\MEM_WB4|Q\(0) & \rf|m11|stage3|f~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB4|Q\(0),
	datab => \reset~input_o\,
	datad => \rf|m11|stage3|f~0_combout\,
	combout => \rf|m11|stage3|f~1_combout\);

-- Location: FF_X114_Y43_N11
\rf|r11|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf|m11|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r11|Q\(0));

-- Location: LCCOMB_X111_Y43_N20
\rf|m10|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m10|stage3|f[0]~0_combout\ = (\reset~input_o\) # ((!\MEM_WB4|Q\(0) & \rf|m11|stage3|f~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \MEM_WB4|Q\(0),
	datad => \rf|m11|stage3|f~0_combout\,
	combout => \rf|m10|stage3|f[0]~0_combout\);

-- Location: FF_X111_Y43_N21
\rf|r10|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m1|stage3|f[0]~0_combout\,
	sload => VCC,
	ena => \rf|m10|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r10|Q\(0));

-- Location: LCCOMB_X111_Y43_N26
\rf|value2[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~2_combout\ = (\IF_ID2|Q\(0) & ((\rf|r10|Q\(0)) # ((\IF_ID2|Q\(16))))) # (!\IF_ID2|Q\(0) & (((\rf|r0|Q\(0) & !\IF_ID2|Q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID2|Q\(0),
	datab => \rf|r10|Q\(0),
	datac => \rf|r0|Q\(0),
	datad => \IF_ID2|Q\(16),
	combout => \rf|value2[0]~2_combout\);

-- Location: LCCOMB_X111_Y43_N0
\rf|value2[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~3_combout\ = (\IF_ID2|Q\(16) & ((\rf|value2[0]~2_combout\ & (\rf|r11|Q\(0))) # (!\rf|value2[0]~2_combout\ & ((\rf|r1|Q\(0)))))) # (!\IF_ID2|Q\(16) & (((\rf|value2[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID2|Q\(16),
	datab => \rf|r11|Q\(0),
	datac => \rf|value2[0]~2_combout\,
	datad => \rf|r1|Q\(0),
	combout => \rf|value2[0]~3_combout\);

-- Location: LCCOMB_X109_Y44_N16
\rf|m5|stage3|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m5|stage3|f[0]~0_combout\ = (\MEM_WB4|Q\(2) & (\MEM_WB5|Q~q\ & (!\MEM_WB4|Q\(1) & !\MEM_WB4|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB4|Q\(2),
	datab => \MEM_WB5|Q~q\,
	datac => \MEM_WB4|Q\(1),
	datad => \MEM_WB4|Q\(3),
	combout => \rf|m5|stage3|f[0]~0_combout\);

-- Location: LCCOMB_X114_Y44_N20
\rf|m5|stage3|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m5|stage3|f[0]~1_combout\ = (\reset~input_o\) # ((\MEM_WB4|Q\(0) & \rf|m5|stage3|f[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB4|Q\(0),
	datab => \reset~input_o\,
	datad => \rf|m5|stage3|f[0]~0_combout\,
	combout => \rf|m5|stage3|f[0]~1_combout\);

-- Location: FF_X114_Y44_N17
\rf|r5|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m1|stage3|f[0]~0_combout\,
	sload => VCC,
	ena => \rf|m5|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r5|Q\(0));

-- Location: LCCOMB_X111_Y44_N10
\rf|m4|stage3|f~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m4|stage3|f~0_combout\ = (\reset~input_o\) # ((!\MEM_WB4|Q\(0) & \rf|m5|stage3|f[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB4|Q\(0),
	datab => \reset~input_o\,
	datad => \rf|m5|stage3|f[0]~0_combout\,
	combout => \rf|m4|stage3|f~0_combout\);

-- Location: FF_X111_Y44_N11
\rf|r4|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~0_combout\,
	sload => VCC,
	ena => \rf|m4|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(0));

-- Location: LCCOMB_X114_Y44_N16
\rf|value2[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~0_combout\ = (\IF_ID2|Q\(16) & ((\IF_ID2|Q\(0)) # ((\rf|r5|Q\(0))))) # (!\IF_ID2|Q\(16) & (!\IF_ID2|Q\(0) & ((\rf|r4|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID2|Q\(16),
	datab => \IF_ID2|Q\(0),
	datac => \rf|r5|Q\(0),
	datad => \rf|r4|Q\(0),
	combout => \rf|value2[0]~0_combout\);

-- Location: LCCOMB_X112_Y44_N26
\rf|value2[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~1_combout\ = (\IF_ID2|Q\(0) & ((\rf|value2[0]~0_combout\ & ((\rf|r15|Q\(0)))) # (!\rf|value2[0]~0_combout\ & (\rf|r14|Q\(0))))) # (!\IF_ID2|Q\(0) & (((\rf|value2[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r14|Q\(0),
	datab => \IF_ID2|Q\(0),
	datac => \rf|r15|Q\(0),
	datad => \rf|value2[0]~0_combout\,
	combout => \rf|value2[0]~1_combout\);

-- Location: LCCOMB_X111_Y44_N0
\rf|value2[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[0]~4_combout\ = (\IF_ID2|Q\(18) & ((\rf|value2[0]~1_combout\))) # (!\IF_ID2|Q\(18) & (\rf|value2[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \rf|value2[0]~3_combout\,
	datac => \IF_ID2|Q\(18),
	datad => \rf|value2[0]~1_combout\,
	combout => \rf|value2[0]~4_combout\);

-- Location: FF_X111_Y44_N1
\ID_EX7|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|value2[0]~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX7|Q\(0));

-- Location: LCCOMB_X110_Y44_N12
\fwd|FWDB[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fwd|FWDB[0]~0_combout\ = (\ID_EX6|Q\(0) & (\EX_MEM5|Q\(0) & (\EX_MEM5|Q\(1) $ (!\ID_EX6|Q\(1))))) # (!\ID_EX6|Q\(0) & (!\EX_MEM5|Q\(0) & (\EX_MEM5|Q\(1) $ (!\ID_EX6|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX6|Q\(0),
	datab => \EX_MEM5|Q\(1),
	datac => \EX_MEM5|Q\(0),
	datad => \ID_EX6|Q\(1),
	combout => \fwd|FWDB[0]~0_combout\);

-- Location: FF_X111_Y44_N15
\rf|r4|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf|m4|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(3));

-- Location: LCCOMB_X112_Y40_N22
\rf|r14|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r14|Q[3]~feeder_combout\ = \rf|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~4_combout\,
	combout => \rf|r14|Q[3]~feeder_combout\);

-- Location: FF_X112_Y40_N23
\rf|r14|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r14|Q[3]~feeder_combout\,
	ena => \rf|m14|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r14|Q\(3));

-- Location: LCCOMB_X111_Y44_N20
\rf|value2[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~15_combout\ = (\IF_ID2|Q\(0) & ((\IF_ID2|Q\(16)) # ((\rf|r14|Q\(3))))) # (!\IF_ID2|Q\(0) & (!\IF_ID2|Q\(16) & (\rf|r4|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID2|Q\(0),
	datab => \IF_ID2|Q\(16),
	datac => \rf|r4|Q\(3),
	datad => \rf|r14|Q\(3),
	combout => \rf|value2[3]~15_combout\);

-- Location: LCCOMB_X114_Y44_N10
\rf|r5|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r5|Q[3]~feeder_combout\ = \rf|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~4_combout\,
	combout => \rf|r5|Q[3]~feeder_combout\);

-- Location: FF_X114_Y44_N11
\rf|r5|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r5|Q[3]~feeder_combout\,
	ena => \rf|m5|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r5|Q\(3));

-- Location: FF_X112_Y44_N19
\rf|r15|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf|m15|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r15|Q\(3));

-- Location: LCCOMB_X111_Y44_N26
\rf|value2[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~16_combout\ = (\rf|value2[3]~15_combout\ & (((\rf|r15|Q\(3))) # (!\IF_ID2|Q\(16)))) # (!\rf|value2[3]~15_combout\ & (\IF_ID2|Q\(16) & (\rf|r5|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value2[3]~15_combout\,
	datab => \IF_ID2|Q\(16),
	datac => \rf|r5|Q\(3),
	datad => \rf|r15|Q\(3),
	combout => \rf|value2[3]~16_combout\);

-- Location: LCCOMB_X114_Y43_N22
\rf|r11|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r11|Q[3]~feeder_combout\ = \rf|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~4_combout\,
	combout => \rf|r11|Q[3]~feeder_combout\);

-- Location: FF_X114_Y43_N23
\rf|r11|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r11|Q[3]~feeder_combout\,
	ena => \rf|m11|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r11|Q\(3));

-- Location: LCCOMB_X111_Y43_N16
\rf|r0|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r0|Q[3]~feeder_combout\ = \rf|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~4_combout\,
	combout => \rf|r0|Q[3]~feeder_combout\);

-- Location: FF_X111_Y43_N17
\rf|r0|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r0|Q[3]~feeder_combout\,
	ena => \rf|m0|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r0|Q\(3));

-- Location: FF_X111_Y43_N31
\rf|r10|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf|m10|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r10|Q\(3));

-- Location: LCCOMB_X111_Y43_N30
\rf|value2[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~17_combout\ = (\IF_ID2|Q\(0) & (((\rf|r10|Q\(3)) # (\IF_ID2|Q\(16))))) # (!\IF_ID2|Q\(0) & (\rf|r0|Q\(3) & ((!\IF_ID2|Q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID2|Q\(0),
	datab => \rf|r0|Q\(3),
	datac => \rf|r10|Q\(3),
	datad => \IF_ID2|Q\(16),
	combout => \rf|value2[3]~17_combout\);

-- Location: LCCOMB_X111_Y43_N18
\rf|value2[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~18_combout\ = (\IF_ID2|Q\(16) & ((\rf|value2[3]~17_combout\ & (\rf|r11|Q\(3))) # (!\rf|value2[3]~17_combout\ & ((\rf|r1|Q\(3)))))) # (!\IF_ID2|Q\(16) & (((\rf|value2[3]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID2|Q\(16),
	datab => \rf|r11|Q\(3),
	datac => \rf|value2[3]~17_combout\,
	datad => \rf|r1|Q\(3),
	combout => \rf|value2[3]~18_combout\);

-- Location: LCCOMB_X111_Y44_N4
\rf|value2[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[3]~19_combout\ = (\IF_ID2|Q\(18) & (\rf|value2[3]~16_combout\)) # (!\IF_ID2|Q\(18) & ((\rf|value2[3]~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID2|Q\(18),
	datac => \rf|value2[3]~16_combout\,
	datad => \rf|value2[3]~18_combout\,
	combout => \rf|value2[3]~19_combout\);

-- Location: FF_X111_Y44_N5
\ID_EX7|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|value2[3]~19_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX7|Q\(3));

-- Location: LCCOMB_X108_Y44_N22
\mf2|stage3|f[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mf2|stage3|f[3]~7_combout\ = (\fwd|FWDB[0]~2_combout\ & (\EX_MEM3|Q\(3))) # (!\fwd|FWDB[0]~2_combout\ & ((\MEM_WB3|Q\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EX_MEM3|Q\(3),
	datac => \MEM_WB3|Q\(3),
	datad => \fwd|FWDB[0]~2_combout\,
	combout => \mf2|stage3|f[3]~7_combout\);

-- Location: LCCOMB_X109_Y44_N2
\mf2|stage3|f[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mf2|stage3|f[2]~9_combout\ = (\fwd|FWDB~5_combout\) # ((\EX_MEM6|Q~q\ & (\fwd|FWDB[0]~0_combout\ & \fwd|FWDB[0]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM6|Q~q\,
	datab => \fwd|FWDB[0]~0_combout\,
	datac => \fwd|FWDB~5_combout\,
	datad => \fwd|FWDB[0]~1_combout\,
	combout => \mf2|stage3|f[2]~9_combout\);

-- Location: LCCOMB_X108_Y44_N20
\mf2|stage3|f[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mf2|stage3|f[3]~8_combout\ = (\mf2|stage3|f[2]~9_combout\ & ((\mf2|stage3|f[3]~7_combout\))) # (!\mf2|stage3|f[2]~9_combout\ & (\ID_EX7|Q\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX7|Q\(3),
	datac => \mf2|stage3|f[3]~7_combout\,
	datad => \mf2|stage3|f[2]~9_combout\,
	combout => \mf2|stage3|f[3]~8_combout\);

-- Location: LCCOMB_X114_Y43_N26
\rf|r11|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r11|Q[1]~feeder_combout\ = \rf|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~2_combout\,
	combout => \rf|r11|Q[1]~feeder_combout\);

-- Location: FF_X114_Y43_N27
\rf|r11|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r11|Q[1]~feeder_combout\,
	ena => \rf|m11|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r11|Q\(1));

-- Location: LCCOMB_X114_Y43_N16
\rf|r1|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r1|Q[1]~feeder_combout\ = \rf|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~2_combout\,
	combout => \rf|r1|Q[1]~feeder_combout\);

-- Location: FF_X114_Y43_N17
\rf|r1|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r1|Q[1]~feeder_combout\,
	ena => \rf|m1|stage3|f[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(1));

-- Location: LCCOMB_X111_Y43_N28
\rf|r0|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r0|Q[1]~feeder_combout\ = \rf|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~2_combout\,
	combout => \rf|r0|Q[1]~feeder_combout\);

-- Location: FF_X111_Y43_N29
\rf|r0|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r0|Q[1]~feeder_combout\,
	ena => \rf|m0|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r0|Q\(1));

-- Location: FF_X111_Y43_N23
\rf|r10|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf|m10|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r10|Q\(1));

-- Location: LCCOMB_X111_Y43_N22
\rf|value2[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~7_combout\ = (\IF_ID2|Q\(0) & (((\rf|r10|Q\(1)) # (\IF_ID2|Q\(16))))) # (!\IF_ID2|Q\(0) & (\rf|r0|Q\(1) & ((!\IF_ID2|Q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID2|Q\(0),
	datab => \rf|r0|Q\(1),
	datac => \rf|r10|Q\(1),
	datad => \IF_ID2|Q\(16),
	combout => \rf|value2[1]~7_combout\);

-- Location: LCCOMB_X111_Y43_N6
\rf|value2[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~8_combout\ = (\rf|value2[1]~7_combout\ & ((\rf|r11|Q\(1)) # ((!\IF_ID2|Q\(16))))) # (!\rf|value2[1]~7_combout\ & (((\rf|r1|Q\(1) & \IF_ID2|Q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r11|Q\(1),
	datab => \rf|r1|Q\(1),
	datac => \rf|value2[1]~7_combout\,
	datad => \IF_ID2|Q\(16),
	combout => \rf|value2[1]~8_combout\);

-- Location: FF_X112_Y44_N29
\rf|r15|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf|m15|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r15|Q\(1));

-- Location: LCCOMB_X114_Y44_N2
\rf|r5|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r5|Q[1]~feeder_combout\ = \rf|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~2_combout\,
	combout => \rf|r5|Q[1]~feeder_combout\);

-- Location: FF_X114_Y44_N3
\rf|r5|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r5|Q[1]~feeder_combout\,
	ena => \rf|m5|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r5|Q\(1));

-- Location: FF_X111_Y44_N23
\rf|r4|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf|m4|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(1));

-- Location: LCCOMB_X111_Y44_N22
\rf|value2[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~5_combout\ = (\IF_ID2|Q\(0) & ((\rf|r14|Q\(1)) # ((\IF_ID2|Q\(16))))) # (!\IF_ID2|Q\(0) & (((\rf|r4|Q\(1) & !\IF_ID2|Q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID2|Q\(0),
	datab => \rf|r14|Q\(1),
	datac => \rf|r4|Q\(1),
	datad => \IF_ID2|Q\(16),
	combout => \rf|value2[1]~5_combout\);

-- Location: LCCOMB_X112_Y44_N2
\rf|value2[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~6_combout\ = (\IF_ID2|Q\(16) & ((\rf|value2[1]~5_combout\ & (\rf|r15|Q\(1))) # (!\rf|value2[1]~5_combout\ & ((\rf|r5|Q\(1)))))) # (!\IF_ID2|Q\(16) & (((\rf|value2[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID2|Q\(16),
	datab => \rf|r15|Q\(1),
	datac => \rf|r5|Q\(1),
	datad => \rf|value2[1]~5_combout\,
	combout => \rf|value2[1]~6_combout\);

-- Location: LCCOMB_X111_Y44_N6
\rf|value2[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[1]~9_combout\ = (\IF_ID2|Q\(18) & ((\rf|value2[1]~6_combout\))) # (!\IF_ID2|Q\(18) & (\rf|value2[1]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \IF_ID2|Q\(18),
	datac => \rf|value2[1]~8_combout\,
	datad => \rf|value2[1]~6_combout\,
	combout => \rf|value2[1]~9_combout\);

-- Location: FF_X111_Y44_N7
\ID_EX7|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|value2[1]~9_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX7|Q\(1));

-- Location: LCCOMB_X110_Y44_N2
\fwd|FWDA~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fwd|FWDA~0_combout\ = (\MEM_WB4|Q\(0) & (\ID_EX7|Q\(0) & (\MEM_WB4|Q\(1) $ (!\ID_EX7|Q\(1))))) # (!\MEM_WB4|Q\(0) & (!\ID_EX7|Q\(0) & (\MEM_WB4|Q\(1) $ (!\ID_EX7|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB4|Q\(0),
	datab => \ID_EX7|Q\(0),
	datac => \MEM_WB4|Q\(1),
	datad => \ID_EX7|Q\(1),
	combout => \fwd|FWDA~0_combout\);

-- Location: LCCOMB_X110_Y44_N6
\fwd|FWDA~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fwd|FWDA~1_combout\ = (\ID_EX7|Q\(2) & (\MEM_WB4|Q\(2) & (\MEM_WB4|Q\(3) $ (!\ID_EX7|Q\(3))))) # (!\ID_EX7|Q\(2) & (!\MEM_WB4|Q\(2) & (\MEM_WB4|Q\(3) $ (!\ID_EX7|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX7|Q\(2),
	datab => \MEM_WB4|Q\(2),
	datac => \MEM_WB4|Q\(3),
	datad => \ID_EX7|Q\(3),
	combout => \fwd|FWDA~1_combout\);

-- Location: LCCOMB_X112_Y44_N8
\fwd|FWDA~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fwd|FWDA~2_combout\ = (\MEM_WB5|Q~q\ & (\fwd|FWDA~0_combout\ & \fwd|FWDA~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB5|Q~q\,
	datac => \fwd|FWDA~0_combout\,
	datad => \fwd|FWDA~1_combout\,
	combout => \fwd|FWDA~2_combout\);

-- Location: LCCOMB_X112_Y44_N30
\mf1|stage3|f~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mf1|stage3|f~4_combout\ = (\MEM_WB3|Q\(1) & (\fwd|FWDA~2_combout\ & !\fwd|FWDA[0]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_WB3|Q\(1),
	datac => \fwd|FWDA~2_combout\,
	datad => \fwd|FWDA[0]~5_combout\,
	combout => \mf1|stage3|f~4_combout\);

-- Location: LCCOMB_X109_Y44_N30
\alu_ins|rc|Ys[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|rc|Ys[1]~0_combout\ = \ID_EX9|Q~q\ $ (((\fwd|FWDB[0]~2_combout\ & (\EX_MEM3|Q\(1))) # (!\fwd|FWDB[0]~2_combout\ & ((\MEM_WB3|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX9|Q~q\,
	datab => \EX_MEM3|Q\(1),
	datac => \MEM_WB3|Q\(1),
	datad => \fwd|FWDB[0]~2_combout\,
	combout => \alu_ins|rc|Ys[1]~0_combout\);

-- Location: LCCOMB_X109_Y44_N6
\alu_ins|rc|Ys[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|rc|Ys[1]~1_combout\ = (\mf2|stage3|f[2]~9_combout\ & (((\alu_ins|rc|Ys[1]~0_combout\)))) # (!\mf2|stage3|f[2]~9_combout\ & (\ID_EX7|Q\(1) $ ((\ID_EX9|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX7|Q\(1),
	datab => \ID_EX9|Q~q\,
	datac => \alu_ins|rc|Ys[1]~0_combout\,
	datad => \mf2|stage3|f[2]~9_combout\,
	combout => \alu_ins|rc|Ys[1]~1_combout\);

-- Location: LCCOMB_X112_Y44_N16
\mf1|stage3|f~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mf1|stage3|f~5_combout\ = (\fwd|FWDA[0]~5_combout\ & (((\EX_MEM3|Q\(1))))) # (!\fwd|FWDA[0]~5_combout\ & (\ID_EX6|Q\(1) & ((!\fwd|FWDA~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX6|Q\(1),
	datab => \EX_MEM3|Q\(1),
	datac => \fwd|FWDA~2_combout\,
	datad => \fwd|FWDA[0]~5_combout\,
	combout => \mf1|stage3|f~5_combout\);

-- Location: LCCOMB_X108_Y44_N10
\alu_ins|rc|stage2|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|rc|stage2|Cout~0_combout\ = (\alu_ins|rc|Ys[1]~1_combout\ & ((\mf1|stage3|f~4_combout\) # ((\alu_ins|rc|stage1|Cout~0_combout\) # (\mf1|stage3|f~5_combout\)))) # (!\alu_ins|rc|Ys[1]~1_combout\ & (\alu_ins|rc|stage1|Cout~0_combout\ & 
-- ((\mf1|stage3|f~4_combout\) # (\mf1|stage3|f~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mf1|stage3|f~4_combout\,
	datab => \alu_ins|rc|Ys[1]~1_combout\,
	datac => \alu_ins|rc|stage1|Cout~0_combout\,
	datad => \mf1|stage3|f~5_combout\,
	combout => \alu_ins|rc|stage2|Cout~0_combout\);

-- Location: LCCOMB_X108_Y44_N14
\mf2|stage3|f[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \mf2|stage3|f[2]~4_combout\ = (\fwd|FWDB[0]~2_combout\ & ((\EX_MEM3|Q\(2)))) # (!\fwd|FWDB[0]~2_combout\ & (\MEM_WB3|Q\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB3|Q\(2),
	datac => \EX_MEM3|Q\(2),
	datad => \fwd|FWDB[0]~2_combout\,
	combout => \mf2|stage3|f[2]~4_combout\);

-- Location: LCCOMB_X108_Y44_N28
\alu_ins|rc|Ys[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|rc|Ys\(2) = \ID_EX9|Q~q\ $ (((\mf2|stage3|f[2]~9_combout\ & ((\mf2|stage3|f[2]~4_combout\))) # (!\mf2|stage3|f[2]~9_combout\ & (\ID_EX7|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX9|Q~q\,
	datab => \ID_EX7|Q\(2),
	datac => \mf2|stage3|f[2]~4_combout\,
	datad => \mf2|stage3|f[2]~9_combout\,
	combout => \alu_ins|rc|Ys\(2));

-- Location: LCCOMB_X111_Y44_N14
\rf|m0|stage3|f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~3_combout\ = (!\reset~input_o\ & \MEM_WB3|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \MEM_WB3|Q\(2),
	combout => \rf|m0|stage3|f~3_combout\);

-- Location: LCCOMB_X114_Y43_N12
\rf|r1|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r1|Q[2]~feeder_combout\ = \rf|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~3_combout\,
	combout => \rf|r1|Q[2]~feeder_combout\);

-- Location: FF_X114_Y43_N13
\rf|r1|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r1|Q[2]~feeder_combout\,
	ena => \rf|m1|stage3|f[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(2));

-- Location: LCCOMB_X114_Y44_N4
\rf|r3|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r3|Q[2]~feeder_combout\ = \rf|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~3_combout\,
	combout => \rf|r3|Q[2]~feeder_combout\);

-- Location: FF_X114_Y44_N5
\rf|r3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r3|Q[2]~feeder_combout\,
	ena => \rf|m3|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(2));

-- Location: LCCOMB_X111_Y43_N14
\rf|r0|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r0|Q[2]~feeder_combout\ = \rf|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~3_combout\,
	combout => \rf|r0|Q[2]~feeder_combout\);

-- Location: FF_X111_Y43_N15
\rf|r0|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r0|Q[2]~feeder_combout\,
	ena => \rf|m0|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r0|Q\(2));

-- Location: FF_X110_Y43_N17
\rf|r2|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m2|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(2));

-- Location: LCCOMB_X110_Y43_N16
\rf|value1[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~2_combout\ = (\IF_ID2|Q\(21) & (((\IF_ID2|Q\(18))))) # (!\IF_ID2|Q\(21) & ((\IF_ID2|Q\(18) & ((\rf|r2|Q\(2)))) # (!\IF_ID2|Q\(18) & (\rf|r0|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID2|Q\(21),
	datab => \rf|r0|Q\(2),
	datac => \rf|r2|Q\(2),
	datad => \IF_ID2|Q\(18),
	combout => \rf|value1[2]~2_combout\);

-- Location: LCCOMB_X110_Y43_N26
\rf|value1[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~3_combout\ = (\IF_ID2|Q\(21) & ((\rf|value1[2]~2_combout\ & ((\rf|r3|Q\(2)))) # (!\rf|value1[2]~2_combout\ & (\rf|r1|Q\(2))))) # (!\IF_ID2|Q\(21) & (((\rf|value1[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID2|Q\(21),
	datab => \rf|r1|Q\(2),
	datac => \rf|r3|Q\(2),
	datad => \rf|value1[2]~2_combout\,
	combout => \rf|value1[2]~3_combout\);

-- Location: FF_X112_Y44_N23
\rf|r15|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m15|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r15|Q\(2));

-- Location: FF_X112_Y43_N1
\rf|r13|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m13|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r13|Q\(2));

-- Location: LCCOMB_X112_Y40_N28
\rf|r14|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r14|Q[2]~feeder_combout\ = \rf|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~3_combout\,
	combout => \rf|r14|Q[2]~feeder_combout\);

-- Location: FF_X112_Y40_N29
\rf|r14|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r14|Q[2]~feeder_combout\,
	ena => \rf|m14|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r14|Q\(2));

-- Location: FF_X112_Y43_N19
\rf|r12|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m12|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r12|Q\(2));

-- Location: LCCOMB_X112_Y43_N18
\rf|value1[2]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~0_combout\ = (\IF_ID2|Q\(21) & (((\IF_ID2|Q\(18))))) # (!\IF_ID2|Q\(21) & ((\IF_ID2|Q\(18) & (\rf|r14|Q\(2))) # (!\IF_ID2|Q\(18) & ((\rf|r12|Q\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r14|Q\(2),
	datab => \IF_ID2|Q\(21),
	datac => \rf|r12|Q\(2),
	datad => \IF_ID2|Q\(18),
	combout => \rf|value1[2]~0_combout\);

-- Location: LCCOMB_X112_Y43_N0
\rf|value1[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~1_combout\ = (\IF_ID2|Q\(21) & ((\rf|value1[2]~0_combout\ & (\rf|r15|Q\(2))) # (!\rf|value1[2]~0_combout\ & ((\rf|r13|Q\(2)))))) # (!\IF_ID2|Q\(21) & (((\rf|value1[2]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r15|Q\(2),
	datab => \IF_ID2|Q\(21),
	datac => \rf|r13|Q\(2),
	datad => \rf|value1[2]~0_combout\,
	combout => \rf|value1[2]~1_combout\);

-- Location: LCCOMB_X110_Y44_N18
\rf|value1[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[2]~4_combout\ = (\IF_ID2|Q\(0) & ((\rf|value1[2]~1_combout\))) # (!\IF_ID2|Q\(0) & (\rf|value1[2]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID2|Q\(0),
	datab => \rf|value1[2]~3_combout\,
	datac => \rf|value1[2]~1_combout\,
	combout => \rf|value1[2]~4_combout\);

-- Location: FF_X110_Y44_N19
\ID_EX6|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|value1[2]~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX6|Q\(2));

-- Location: LCCOMB_X109_Y44_N0
\mf1|stage3|f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \mf1|stage3|f~3_combout\ = (\fwd|FWDA[0]~5_combout\ & (\EX_MEM3|Q\(2))) # (!\fwd|FWDA[0]~5_combout\ & (((\ID_EX6|Q\(2) & !\fwd|FWDA~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM3|Q\(2),
	datab => \ID_EX6|Q\(2),
	datac => \fwd|FWDA[0]~5_combout\,
	datad => \fwd|FWDA~2_combout\,
	combout => \mf1|stage3|f~3_combout\);

-- Location: LCCOMB_X109_Y44_N28
\mf1|stage3|f[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \mf1|stage3|f[2]~11_combout\ = (\mf1|stage3|f~3_combout\) # ((\fwd|FWDA~2_combout\ & (!\fwd|FWDA[0]~5_combout\ & \MEM_WB3|Q\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fwd|FWDA~2_combout\,
	datab => \fwd|FWDA[0]~5_combout\,
	datac => \MEM_WB3|Q\(2),
	datad => \mf1|stage3|f~3_combout\,
	combout => \mf1|stage3|f[2]~11_combout\);

-- Location: LCCOMB_X108_Y44_N16
\alu_ins|output_mux|stage1|f~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|output_mux|stage1|f~4_combout\ = (\ID_EX10|Q\(0) & (\alu_ins|rc|stage2|Cout~0_combout\ $ (\alu_ins|rc|Ys\(2) $ (\mf1|stage3|f[2]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|rc|stage2|Cout~0_combout\,
	datab => \ID_EX10|Q\(0),
	datac => \alu_ins|rc|Ys\(2),
	datad => \mf1|stage3|f[2]~11_combout\,
	combout => \alu_ins|output_mux|stage1|f~4_combout\);

-- Location: FF_X108_Y44_N17
\EX_MEM3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \alu_ins|output_mux|stage1|f~4_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM3|Q\(2));

-- Location: FF_X108_Y44_N13
\MEM_WB3|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \EX_MEM3|Q\(2),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB3|Q\(2));

-- Location: LCCOMB_X111_Y44_N12
\rf|m4|stage3|f[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m4|stage3|f[2]~1_combout\ = (\reset~input_o\) # (\MEM_WB3|Q\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \reset~input_o\,
	datad => \MEM_WB3|Q\(2),
	combout => \rf|m4|stage3|f[2]~1_combout\);

-- Location: FF_X114_Y44_N21
\rf|r5|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m4|stage3|f[2]~1_combout\,
	sload => VCC,
	ena => \rf|m5|stage3|f[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r5|Q\(2));

-- Location: FF_X111_Y44_N13
\rf|r4|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|m4|stage3|f[2]~1_combout\,
	ena => \rf|m4|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r4|Q\(2));

-- Location: LCCOMB_X112_Y44_N24
\rf|value2[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~10_combout\ = (\IF_ID2|Q\(0) & ((\rf|r14|Q\(2)) # ((\IF_ID2|Q\(16))))) # (!\IF_ID2|Q\(0) & (((!\IF_ID2|Q\(16) & \rf|r4|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r14|Q\(2),
	datab => \IF_ID2|Q\(0),
	datac => \IF_ID2|Q\(16),
	datad => \rf|r4|Q\(2),
	combout => \rf|value2[2]~10_combout\);

-- Location: LCCOMB_X112_Y44_N0
\rf|value2[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~11_combout\ = (\IF_ID2|Q\(16) & ((\rf|value2[2]~10_combout\ & ((\rf|r15|Q\(2)))) # (!\rf|value2[2]~10_combout\ & (\rf|r5|Q\(2))))) # (!\IF_ID2|Q\(16) & (((\rf|value2[2]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r5|Q\(2),
	datab => \rf|r15|Q\(2),
	datac => \IF_ID2|Q\(16),
	datad => \rf|value2[2]~10_combout\,
	combout => \rf|value2[2]~11_combout\);

-- Location: FF_X111_Y43_N9
\rf|r10|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~3_combout\,
	sload => VCC,
	ena => \rf|m10|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r10|Q\(2));

-- Location: LCCOMB_X111_Y43_N8
\rf|value2[2]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~12_combout\ = (\IF_ID2|Q\(0) & (((\rf|r10|Q\(2)) # (\IF_ID2|Q\(16))))) # (!\IF_ID2|Q\(0) & (\rf|r0|Q\(2) & ((!\IF_ID2|Q\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID2|Q\(0),
	datab => \rf|r0|Q\(2),
	datac => \rf|r10|Q\(2),
	datad => \IF_ID2|Q\(16),
	combout => \rf|value2[2]~12_combout\);

-- Location: LCCOMB_X114_Y43_N18
\rf|r11|Q[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r11|Q[2]~feeder_combout\ = \rf|m0|stage3|f~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~3_combout\,
	combout => \rf|r11|Q[2]~feeder_combout\);

-- Location: FF_X114_Y43_N19
\rf|r11|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r11|Q[2]~feeder_combout\,
	ena => \rf|m11|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r11|Q\(2));

-- Location: LCCOMB_X111_Y43_N24
\rf|value2[2]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~13_combout\ = (\IF_ID2|Q\(16) & ((\rf|value2[2]~12_combout\ & (\rf|r11|Q\(2))) # (!\rf|value2[2]~12_combout\ & ((\rf|r1|Q\(2)))))) # (!\IF_ID2|Q\(16) & (\rf|value2[2]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID2|Q\(16),
	datab => \rf|value2[2]~12_combout\,
	datac => \rf|r11|Q\(2),
	datad => \rf|r1|Q\(2),
	combout => \rf|value2[2]~13_combout\);

-- Location: LCCOMB_X110_Y44_N10
\rf|value2[2]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value2[2]~14_combout\ = (\IF_ID2|Q\(18) & (\rf|value2[2]~11_combout\)) # (!\IF_ID2|Q\(18) & ((\rf|value2[2]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID2|Q\(18),
	datac => \rf|value2[2]~11_combout\,
	datad => \rf|value2[2]~13_combout\,
	combout => \rf|value2[2]~14_combout\);

-- Location: FF_X110_Y44_N11
\ID_EX7|Q[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|value2[2]~14_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX7|Q\(2));

-- Location: LCCOMB_X110_Y44_N26
\fwd|FWDA[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fwd|FWDA[0]~4_combout\ = (\ID_EX7|Q\(2) & (\EX_MEM5|Q\(2) & (\EX_MEM5|Q\(3) $ (!\ID_EX7|Q\(3))))) # (!\ID_EX7|Q\(2) & (!\EX_MEM5|Q\(2) & (\EX_MEM5|Q\(3) $ (!\ID_EX7|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX7|Q\(2),
	datab => \EX_MEM5|Q\(3),
	datac => \EX_MEM5|Q\(2),
	datad => \ID_EX7|Q\(3),
	combout => \fwd|FWDA[0]~4_combout\);

-- Location: LCCOMB_X110_Y44_N16
\fwd|FWDA[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fwd|FWDA[0]~3_combout\ = (\EX_MEM5|Q\(0) & (\ID_EX7|Q\(0) & (\EX_MEM5|Q\(1) $ (!\ID_EX7|Q\(1))))) # (!\EX_MEM5|Q\(0) & (!\ID_EX7|Q\(0) & (\EX_MEM5|Q\(1) $ (!\ID_EX7|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM5|Q\(0),
	datab => \EX_MEM5|Q\(1),
	datac => \ID_EX7|Q\(0),
	datad => \ID_EX7|Q\(1),
	combout => \fwd|FWDA[0]~3_combout\);

-- Location: LCCOMB_X110_Y44_N28
\fwd|FWDA[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fwd|FWDA[0]~5_combout\ = (\EX_MEM6|Q~q\ & (\fwd|FWDA[0]~4_combout\ & \fwd|FWDA[0]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM6|Q~q\,
	datac => \fwd|FWDA[0]~4_combout\,
	datad => \fwd|FWDA[0]~3_combout\,
	combout => \fwd|FWDA[0]~5_combout\);

-- Location: LCCOMB_X112_Y44_N12
\mf1|stage3|f[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \mf1|stage3|f[3]~9_combout\ = (!\fwd|FWDA[0]~5_combout\ & ((\fwd|FWDA~2_combout\ & ((\MEM_WB3|Q\(3)))) # (!\fwd|FWDA~2_combout\ & (\ID_EX6|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fwd|FWDA[0]~5_combout\,
	datab => \ID_EX6|Q\(3),
	datac => \MEM_WB3|Q\(3),
	datad => \fwd|FWDA~2_combout\,
	combout => \mf1|stage3|f[3]~9_combout\);

-- Location: LCCOMB_X112_Y44_N10
\mf1|stage3|f[3]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \mf1|stage3|f[3]~10_combout\ = (\mf1|stage3|f[3]~9_combout\) # ((\EX_MEM3|Q\(3) & \fwd|FWDA[0]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM3|Q\(3),
	datac => \fwd|FWDA[0]~5_combout\,
	datad => \mf1|stage3|f[3]~9_combout\,
	combout => \mf1|stage3|f[3]~10_combout\);

-- Location: LCCOMB_X108_Y44_N8
\mf1|stage3|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \mf1|stage3|f~2_combout\ = (\MEM_WB3|Q\(2) & (!\fwd|FWDA[0]~5_combout\ & \fwd|FWDA~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB3|Q\(2),
	datab => \fwd|FWDA[0]~5_combout\,
	datad => \fwd|FWDA~2_combout\,
	combout => \mf1|stage3|f~2_combout\);

-- Location: LCCOMB_X108_Y44_N24
\alu_ins|rc|stage3|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|rc|stage3|Cout~0_combout\ = (\alu_ins|rc|Ys\(2) & ((\mf1|stage3|f~2_combout\) # ((\mf1|stage3|f~3_combout\) # (\alu_ins|rc|stage2|Cout~0_combout\)))) # (!\alu_ins|rc|Ys\(2) & (\alu_ins|rc|stage2|Cout~0_combout\ & ((\mf1|stage3|f~2_combout\) # 
-- (\mf1|stage3|f~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mf1|stage3|f~2_combout\,
	datab => \alu_ins|rc|Ys\(2),
	datac => \mf1|stage3|f~3_combout\,
	datad => \alu_ins|rc|stage2|Cout~0_combout\,
	combout => \alu_ins|rc|stage3|Cout~0_combout\);

-- Location: LCCOMB_X108_Y44_N0
\alu_ins|rc|stage4|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|rc|stage4|s~0_combout\ = \ID_EX9|Q~q\ $ (\mf2|stage3|f[3]~8_combout\ $ (\mf1|stage3|f[3]~10_combout\ $ (\alu_ins|rc|stage3|Cout~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX9|Q~q\,
	datab => \mf2|stage3|f[3]~8_combout\,
	datac => \mf1|stage3|f[3]~10_combout\,
	datad => \alu_ins|rc|stage3|Cout~0_combout\,
	combout => \alu_ins|rc|stage4|s~0_combout\);

-- Location: LCCOMB_X108_Y44_N26
\alu_ins|output_mux|stage1|f~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|output_mux|stage1|f~5_combout\ = (\ID_EX10|Q\(0) & \alu_ins|rc|stage4|s~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX10|Q\(0),
	datad => \alu_ins|rc|stage4|s~0_combout\,
	combout => \alu_ins|output_mux|stage1|f~5_combout\);

-- Location: FF_X108_Y44_N27
\EX_MEM3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \alu_ins|output_mux|stage1|f~5_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM3|Q\(3));

-- Location: FF_X112_Y44_N13
\MEM_WB3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \EX_MEM3|Q\(3),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB3|Q\(3));

-- Location: LCCOMB_X112_Y44_N4
\rf|m0|stage3|f~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~4_combout\ = (\MEM_WB3|Q\(3) & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_WB3|Q\(3),
	datac => \reset~input_o\,
	combout => \rf|m0|stage3|f~4_combout\);

-- Location: LCCOMB_X114_Y43_N28
\rf|r1|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r1|Q[3]~feeder_combout\ = \rf|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~4_combout\,
	combout => \rf|r1|Q[3]~feeder_combout\);

-- Location: FF_X114_Y43_N29
\rf|r1|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r1|Q[3]~feeder_combout\,
	ena => \rf|m1|stage3|f[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r1|Q\(3));

-- Location: FF_X110_Y43_N29
\rf|r2|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf|m2|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(3));

-- Location: LCCOMB_X110_Y43_N28
\rf|value1[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~17_combout\ = (\IF_ID2|Q\(21) & (((\IF_ID2|Q\(18))))) # (!\IF_ID2|Q\(21) & ((\IF_ID2|Q\(18) & ((\rf|r2|Q\(3)))) # (!\IF_ID2|Q\(18) & (\rf|r0|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID2|Q\(21),
	datab => \rf|r0|Q\(3),
	datac => \rf|r2|Q\(3),
	datad => \IF_ID2|Q\(18),
	combout => \rf|value1[3]~17_combout\);

-- Location: LCCOMB_X114_Y44_N30
\rf|r3|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r3|Q[3]~feeder_combout\ = \rf|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~4_combout\,
	combout => \rf|r3|Q[3]~feeder_combout\);

-- Location: FF_X114_Y44_N31
\rf|r3|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r3|Q[3]~feeder_combout\,
	ena => \rf|m3|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(3));

-- Location: LCCOMB_X110_Y43_N6
\rf|value1[3]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~18_combout\ = (\rf|value1[3]~17_combout\ & (((\rf|r3|Q\(3)) # (!\IF_ID2|Q\(21))))) # (!\rf|value1[3]~17_combout\ & (\rf|r1|Q\(3) & (\IF_ID2|Q\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r1|Q\(3),
	datab => \rf|value1[3]~17_combout\,
	datac => \IF_ID2|Q\(21),
	datad => \rf|r3|Q\(3),
	combout => \rf|value1[3]~18_combout\);

-- Location: LCCOMB_X112_Y43_N12
\rf|r13|Q[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r13|Q[3]~feeder_combout\ = \rf|m0|stage3|f~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~4_combout\,
	combout => \rf|r13|Q[3]~feeder_combout\);

-- Location: FF_X112_Y43_N13
\rf|r13|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r13|Q[3]~feeder_combout\,
	ena => \rf|m13|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r13|Q\(3));

-- Location: FF_X112_Y43_N11
\rf|r12|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~4_combout\,
	sload => VCC,
	ena => \rf|m12|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r12|Q\(3));

-- Location: LCCOMB_X112_Y43_N10
\rf|value1[3]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~15_combout\ = (\IF_ID2|Q\(21) & ((\rf|r13|Q\(3)) # ((\IF_ID2|Q\(18))))) # (!\IF_ID2|Q\(21) & (((\rf|r12|Q\(3) & !\IF_ID2|Q\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r13|Q\(3),
	datab => \IF_ID2|Q\(21),
	datac => \rf|r12|Q\(3),
	datad => \IF_ID2|Q\(18),
	combout => \rf|value1[3]~15_combout\);

-- Location: LCCOMB_X111_Y44_N28
\rf|value1[3]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~16_combout\ = (\rf|value1[3]~15_combout\ & ((\rf|r15|Q\(3)) # ((!\IF_ID2|Q\(18))))) # (!\rf|value1[3]~15_combout\ & (((\IF_ID2|Q\(18) & \rf|r14|Q\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[3]~15_combout\,
	datab => \rf|r15|Q\(3),
	datac => \IF_ID2|Q\(18),
	datad => \rf|r14|Q\(3),
	combout => \rf|value1[3]~16_combout\);

-- Location: LCCOMB_X110_Y44_N0
\rf|value1[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[3]~19_combout\ = (\IF_ID2|Q\(0) & ((\rf|value1[3]~16_combout\))) # (!\IF_ID2|Q\(0) & (\rf|value1[3]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID2|Q\(0),
	datac => \rf|value1[3]~18_combout\,
	datad => \rf|value1[3]~16_combout\,
	combout => \rf|value1[3]~19_combout\);

-- Location: FF_X110_Y44_N1
\ID_EX6|Q[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|value1[3]~19_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX6|Q\(3));

-- Location: LCCOMB_X110_Y44_N4
\fwd|FWDB[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fwd|FWDB[0]~1_combout\ = (\ID_EX6|Q\(3) & (\EX_MEM5|Q\(3) & (\ID_EX6|Q\(2) $ (!\EX_MEM5|Q\(2))))) # (!\ID_EX6|Q\(3) & (!\EX_MEM5|Q\(3) & (\ID_EX6|Q\(2) $ (!\EX_MEM5|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX6|Q\(3),
	datab => \ID_EX6|Q\(2),
	datac => \EX_MEM5|Q\(3),
	datad => \EX_MEM5|Q\(2),
	combout => \fwd|FWDB[0]~1_combout\);

-- Location: LCCOMB_X109_Y44_N18
\fwd|FWDB[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \fwd|FWDB[0]~2_combout\ = (\EX_MEM6|Q~q\ & (\fwd|FWDB[0]~0_combout\ & \fwd|FWDB[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM6|Q~q\,
	datab => \fwd|FWDB[0]~0_combout\,
	datad => \fwd|FWDB[0]~1_combout\,
	combout => \fwd|FWDB[0]~2_combout\);

-- Location: LCCOMB_X109_Y44_N14
\mf2|stage3|f[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \mf2|stage3|f[0]~5_combout\ = (\ID_EX7|Q\(0) & (!\fwd|FWDB~5_combout\ & !\fwd|FWDB[0]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX7|Q\(0),
	datac => \fwd|FWDB~5_combout\,
	datad => \fwd|FWDB[0]~2_combout\,
	combout => \mf2|stage3|f[0]~5_combout\);

-- Location: LCCOMB_X109_Y44_N4
\mf1|stage3|f[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \mf1|stage3|f[0]~7_combout\ = (\fwd|FWDA~1_combout\ & (\MEM_WB5|Q~q\ & (\MEM_WB3|Q\(0) & \fwd|FWDA~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fwd|FWDA~1_combout\,
	datab => \MEM_WB5|Q~q\,
	datac => \MEM_WB3|Q\(0),
	datad => \fwd|FWDA~0_combout\,
	combout => \mf1|stage3|f[0]~7_combout\);

-- Location: LCCOMB_X109_Y44_N8
\mf1|stage3|f[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mf1|stage3|f[0]~6_combout\ = (\ID_EX6|Q\(0) & (((!\fwd|FWDA~0_combout\) # (!\MEM_WB5|Q~q\)) # (!\fwd|FWDA~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fwd|FWDA~1_combout\,
	datab => \MEM_WB5|Q~q\,
	datac => \ID_EX6|Q\(0),
	datad => \fwd|FWDA~0_combout\,
	combout => \mf1|stage3|f[0]~6_combout\);

-- Location: LCCOMB_X109_Y44_N24
\mf1|stage3|f[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \mf1|stage3|f[0]~8_combout\ = (\fwd|FWDA[0]~5_combout\ & (\EX_MEM3|Q\(0))) # (!\fwd|FWDA[0]~5_combout\ & (((\mf1|stage3|f[0]~7_combout\) # (\mf1|stage3|f[0]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \EX_MEM3|Q\(0),
	datab => \mf1|stage3|f[0]~7_combout\,
	datac => \mf1|stage3|f[0]~6_combout\,
	datad => \fwd|FWDA[0]~5_combout\,
	combout => \mf1|stage3|f[0]~8_combout\);

-- Location: LCCOMB_X109_Y44_N12
\alu_ins|rc|stage1|Cout~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|rc|stage1|Cout~0_combout\ = (\mf2|stage3|f[0]~6_combout\ & (((\mf1|stage3|f[0]~8_combout\)))) # (!\mf2|stage3|f[0]~6_combout\ & ((\mf2|stage3|f[0]~5_combout\ & ((\mf1|stage3|f[0]~8_combout\))) # (!\mf2|stage3|f[0]~5_combout\ & (\ID_EX9|Q~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mf2|stage3|f[0]~6_combout\,
	datab => \ID_EX9|Q~q\,
	datac => \mf2|stage3|f[0]~5_combout\,
	datad => \mf1|stage3|f[0]~8_combout\,
	combout => \alu_ins|rc|stage1|Cout~0_combout\);

-- Location: LCCOMB_X112_Y44_N20
\alu_ins|rc|stage2|s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|rc|stage2|s~0_combout\ = \alu_ins|rc|Ys[1]~1_combout\ $ (((\mf1|stage3|f~5_combout\) # ((\mf1|stage3|f~4_combout\ & !\fwd|FWDA[0]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|rc|Ys[1]~1_combout\,
	datab => \mf1|stage3|f~5_combout\,
	datac => \mf1|stage3|f~4_combout\,
	datad => \fwd|FWDA[0]~5_combout\,
	combout => \alu_ins|rc|stage2|s~0_combout\);

-- Location: LCCOMB_X112_Y44_N14
\alu_ins|output_mux|stage1|f~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|output_mux|stage1|f~3_combout\ = (\ID_EX10|Q\(0) & (\alu_ins|rc|stage1|Cout~0_combout\ $ (\alu_ins|rc|stage2|s~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \ID_EX10|Q\(0),
	datac => \alu_ins|rc|stage1|Cout~0_combout\,
	datad => \alu_ins|rc|stage2|s~0_combout\,
	combout => \alu_ins|output_mux|stage1|f~3_combout\);

-- Location: FF_X112_Y44_N15
\EX_MEM3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \alu_ins|output_mux|stage1|f~3_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM3|Q\(1));

-- Location: FF_X109_Y44_N31
\MEM_WB3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \EX_MEM3|Q\(1),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB3|Q\(1));

-- Location: LCCOMB_X112_Y44_N22
\rf|m0|stage3|f~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m0|stage3|f~2_combout\ = (!\reset~input_o\ & \MEM_WB3|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \MEM_WB3|Q\(1),
	combout => \rf|m0|stage3|f~2_combout\);

-- Location: LCCOMB_X112_Y40_N2
\rf|r14|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r14|Q[1]~feeder_combout\ = \rf|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m0|stage3|f~2_combout\,
	combout => \rf|r14|Q[1]~feeder_combout\);

-- Location: FF_X112_Y40_N3
\rf|r14|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r14|Q[1]~feeder_combout\,
	ena => \rf|m14|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r14|Q\(1));

-- Location: LCCOMB_X112_Y43_N26
\rf|r12|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r12|Q[1]~feeder_combout\ = \rf|m0|stage3|f~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \rf|m0|stage3|f~2_combout\,
	combout => \rf|r12|Q[1]~feeder_combout\);

-- Location: FF_X112_Y43_N27
\rf|r12|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r12|Q[1]~feeder_combout\,
	ena => \rf|m12|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r12|Q\(1));

-- Location: FF_X112_Y43_N29
\rf|r13|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \rf|m0|stage3|f~2_combout\,
	sload => VCC,
	ena => \rf|m13|stage3|f~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r13|Q\(1));

-- Location: LCCOMB_X112_Y43_N28
\rf|value1[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~5_combout\ = (\IF_ID2|Q\(18) & (((\IF_ID2|Q\(21))))) # (!\IF_ID2|Q\(18) & ((\IF_ID2|Q\(21) & ((\rf|r13|Q\(1)))) # (!\IF_ID2|Q\(21) & (\rf|r12|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r12|Q\(1),
	datab => \IF_ID2|Q\(18),
	datac => \rf|r13|Q\(1),
	datad => \IF_ID2|Q\(21),
	combout => \rf|value1[1]~5_combout\);

-- Location: LCCOMB_X111_Y44_N16
\rf|value1[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~6_combout\ = (\IF_ID2|Q\(18) & ((\rf|value1[1]~5_combout\ & ((\rf|r15|Q\(1)))) # (!\rf|value1[1]~5_combout\ & (\rf|r14|Q\(1))))) # (!\IF_ID2|Q\(18) & (((\rf|value1[1]~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID2|Q\(18),
	datab => \rf|r14|Q\(1),
	datac => \rf|value1[1]~5_combout\,
	datad => \rf|r15|Q\(1),
	combout => \rf|value1[1]~6_combout\);

-- Location: LCCOMB_X112_Y44_N6
\rf|m2|stage3|f[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|m2|stage3|f[1]~1_combout\ = (\reset~input_o\) # (\MEM_WB3|Q\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \reset~input_o\,
	datad => \MEM_WB3|Q\(1),
	combout => \rf|m2|stage3|f[1]~1_combout\);

-- Location: LCCOMB_X109_Y43_N12
\rf|r2|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r2|Q[1]~feeder_combout\ = \rf|m2|stage3|f[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m2|stage3|f[1]~1_combout\,
	combout => \rf|r2|Q[1]~feeder_combout\);

-- Location: FF_X109_Y43_N13
\rf|r2|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r2|Q[1]~feeder_combout\,
	ena => \rf|m2|stage3|f~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r2|Q\(1));

-- Location: LCCOMB_X110_Y43_N12
\rf|value1[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~7_combout\ = (\IF_ID2|Q\(21) & (((\IF_ID2|Q\(18))))) # (!\IF_ID2|Q\(21) & ((\IF_ID2|Q\(18) & (\rf|r2|Q\(1))) # (!\IF_ID2|Q\(18) & ((\rf|r0|Q\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|r2|Q\(1),
	datab => \rf|r0|Q\(1),
	datac => \IF_ID2|Q\(21),
	datad => \IF_ID2|Q\(18),
	combout => \rf|value1[1]~7_combout\);

-- Location: LCCOMB_X114_Y44_N18
\rf|r3|Q[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|r3|Q[1]~feeder_combout\ = \rf|m2|stage3|f[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \rf|m2|stage3|f[1]~1_combout\,
	combout => \rf|r3|Q[1]~feeder_combout\);

-- Location: FF_X114_Y44_N19
\rf|r3|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|r3|Q[1]~feeder_combout\,
	ena => \rf|m3|stage3|f[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \rf|r3|Q\(1));

-- Location: LCCOMB_X110_Y43_N10
\rf|value1[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~8_combout\ = (\rf|value1[1]~7_combout\ & (((\rf|r3|Q\(1)) # (!\IF_ID2|Q\(21))))) # (!\rf|value1[1]~7_combout\ & (\rf|r1|Q\(1) & (\IF_ID2|Q\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rf|value1[1]~7_combout\,
	datab => \rf|r1|Q\(1),
	datac => \IF_ID2|Q\(21),
	datad => \rf|r3|Q\(1),
	combout => \rf|value1[1]~8_combout\);

-- Location: LCCOMB_X110_Y44_N20
\rf|value1[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \rf|value1[1]~9_combout\ = (\IF_ID2|Q\(0) & (\rf|value1[1]~6_combout\)) # (!\IF_ID2|Q\(0) & ((\rf|value1[1]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \IF_ID2|Q\(0),
	datab => \rf|value1[1]~6_combout\,
	datad => \rf|value1[1]~8_combout\,
	combout => \rf|value1[1]~9_combout\);

-- Location: FF_X110_Y44_N21
\ID_EX6|Q[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \rf|value1[1]~9_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \ID_EX6|Q\(1));

-- Location: LCCOMB_X110_Y44_N14
\fwd|FWDB~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \fwd|FWDB~3_combout\ = (\ID_EX6|Q\(0) & (\MEM_WB4|Q\(0) & (\MEM_WB4|Q\(1) $ (!\ID_EX6|Q\(1))))) # (!\ID_EX6|Q\(0) & (!\MEM_WB4|Q\(0) & (\MEM_WB4|Q\(1) $ (!\ID_EX6|Q\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \ID_EX6|Q\(0),
	datab => \MEM_WB4|Q\(1),
	datac => \MEM_WB4|Q\(0),
	datad => \ID_EX6|Q\(1),
	combout => \fwd|FWDB~3_combout\);

-- Location: LCCOMB_X110_Y44_N24
\fwd|FWDB~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \fwd|FWDB~4_combout\ = (\MEM_WB4|Q\(3) & (\ID_EX6|Q\(3) & (\ID_EX6|Q\(2) $ (!\MEM_WB4|Q\(2))))) # (!\MEM_WB4|Q\(3) & (!\ID_EX6|Q\(3) & (\ID_EX6|Q\(2) $ (!\MEM_WB4|Q\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MEM_WB4|Q\(3),
	datab => \ID_EX6|Q\(2),
	datac => \MEM_WB4|Q\(2),
	datad => \ID_EX6|Q\(3),
	combout => \fwd|FWDB~4_combout\);

-- Location: LCCOMB_X109_Y44_N22
\fwd|FWDB~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \fwd|FWDB~5_combout\ = (\MEM_WB5|Q~q\ & (\fwd|FWDB~3_combout\ & \fwd|FWDB~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MEM_WB5|Q~q\,
	datac => \fwd|FWDB~3_combout\,
	datad => \fwd|FWDB~4_combout\,
	combout => \fwd|FWDB~5_combout\);

-- Location: LCCOMB_X109_Y44_N10
\mf2|stage3|f[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \mf2|stage3|f[0]~6_combout\ = (\fwd|FWDB[0]~2_combout\ & (((\EX_MEM3|Q\(0))))) # (!\fwd|FWDB[0]~2_combout\ & (\fwd|FWDB~5_combout\ & ((\MEM_WB3|Q\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fwd|FWDB~5_combout\,
	datab => \EX_MEM3|Q\(0),
	datac => \MEM_WB3|Q\(0),
	datad => \fwd|FWDB[0]~2_combout\,
	combout => \mf2|stage3|f[0]~6_combout\);

-- Location: LCCOMB_X109_Y44_N20
\alu_ins|output_mux|stage1|f[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|output_mux|stage1|f[0]~1_combout\ = \mf1|stage3|f[0]~8_combout\ $ (((\mf2|stage3|f[0]~6_combout\) # (\mf2|stage3|f[0]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mf2|stage3|f[0]~6_combout\,
	datab => \mf2|stage3|f[0]~5_combout\,
	datad => \mf1|stage3|f[0]~8_combout\,
	combout => \alu_ins|output_mux|stage1|f[0]~1_combout\);

-- Location: LCCOMB_X108_Y44_N18
\alu_ins|output_mux|stage1|f[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|output_mux|stage1|f[0]~0_combout\ = \mf2|stage3|f[3]~8_combout\ $ (\ID_EX9|Q~q\ $ (!\mf1|stage3|f[3]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \mf2|stage3|f[3]~8_combout\,
	datac => \ID_EX9|Q~q\,
	datad => \mf1|stage3|f[3]~10_combout\,
	combout => \alu_ins|output_mux|stage1|f[0]~0_combout\);

-- Location: LCCOMB_X108_Y44_N6
\alu_ins|output_mux|stage1|f[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_ins|output_mux|stage1|f[0]~2_combout\ = (\ID_EX10|Q\(0) & (\alu_ins|output_mux|stage1|f[0]~1_combout\)) # (!\ID_EX10|Q\(0) & ((\alu_ins|rc|stage3|Cout~0_combout\ $ (!\alu_ins|output_mux|stage1|f[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_ins|output_mux|stage1|f[0]~1_combout\,
	datab => \alu_ins|rc|stage3|Cout~0_combout\,
	datac => \ID_EX10|Q\(0),
	datad => \alu_ins|output_mux|stage1|f[0]~0_combout\,
	combout => \alu_ins|output_mux|stage1|f[0]~2_combout\);

-- Location: FF_X108_Y44_N7
\EX_MEM3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	d => \alu_ins|output_mux|stage1|f[0]~2_combout\,
	clrn => \ALT_INV_reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \EX_MEM3|Q\(0));

-- Location: FF_X109_Y44_N11
\MEM_WB3|Q[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~input_o\,
	asdata => \EX_MEM3|Q\(0),
	clrn => \ALT_INV_reset~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \MEM_WB3|Q\(0));

ww_current_pc(0) <= \current_pc[0]~output_o\;

ww_current_pc(1) <= \current_pc[1]~output_o\;

ww_current_pc(2) <= \current_pc[2]~output_o\;

ww_current_pc(3) <= \current_pc[3]~output_o\;

ww_result(0) <= \result[0]~output_o\;

ww_result(1) <= \result[1]~output_o\;

ww_result(2) <= \result[2]~output_o\;

ww_result(3) <= \result[3]~output_o\;
END structure;


