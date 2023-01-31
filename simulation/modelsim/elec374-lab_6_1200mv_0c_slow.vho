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
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "01/30/2023 14:57:25"

-- 
-- Device: Altera EP3C16F484C6 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DataPath IS
    PORT (
	Mdatain : IN std_logic_vector(31 DOWNTO 0);
	R0out : IN std_logic;
	R1out : IN std_logic;
	R2out : IN std_logic;
	R3out : IN std_logic;
	R4out : IN std_logic;
	R5out : IN std_logic;
	R6out : IN std_logic;
	R7out : IN std_logic;
	R8out : IN std_logic;
	R9out : IN std_logic;
	R10out : IN std_logic;
	R11out : IN std_logic;
	R12out : IN std_logic;
	R13out : IN std_logic;
	R14out : IN std_logic;
	R15out : IN std_logic;
	HIout : IN std_logic;
	LOout : IN std_logic;
	ZHIout : IN std_logic;
	ZLOout : IN std_logic;
	PCout : IN std_logic;
	MDRout : IN std_logic;
	PortInout : IN std_logic;
	CSignout : IN std_logic;
	Read : IN std_logic;
	incPc : IN std_logic;
	IRin : IN std_logic;
	PCin : IN std_logic;
	MDRin : IN std_logic;
	Yin : IN std_logic;
	MARin : IN std_logic;
	aluControl : IN std_logic_vector(4 DOWNTO 0);
	clock : IN std_logic;
	clear : IN std_logic;
	R2in : IN std_logic;
	R4in : IN std_logic;
	R5in : IN std_logic
	);
END DataPath;

-- Design Ports Information
-- Mdatain[0]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[1]	=>  Location: PIN_T1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[2]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[3]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[4]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[5]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[6]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[7]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[8]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[9]	=>  Location: PIN_R19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[11]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[12]	=>  Location: PIN_AA15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[13]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[14]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[15]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[16]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[17]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[18]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[19]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[20]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[21]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[22]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[23]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[24]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[25]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[26]	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[27]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[28]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[29]	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[30]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Mdatain[31]	=>  Location: PIN_Y13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R0out	=>  Location: PIN_W17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R1out	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2out	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R3out	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4out	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R5out	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R6out	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R7out	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R8out	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R9out	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R10out	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R11out	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R12out	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R13out	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R14out	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R15out	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HIout	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LOout	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ZHIout	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ZLOout	=>  Location: PIN_W14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCout	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDRout	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PortInout	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CSignout	=>  Location: PIN_V14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Read	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- incPc	=>  Location: PIN_P22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IRin	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PCin	=>  Location: PIN_AA20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MDRin	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Yin	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MARin	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluControl[0]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluControl[1]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluControl[2]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluControl[3]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- aluControl[4]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clear	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R2in	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R4in	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- R5in	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DataPath IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Mdatain : std_logic_vector(31 DOWNTO 0);
SIGNAL ww_R0out : std_logic;
SIGNAL ww_R1out : std_logic;
SIGNAL ww_R2out : std_logic;
SIGNAL ww_R3out : std_logic;
SIGNAL ww_R4out : std_logic;
SIGNAL ww_R5out : std_logic;
SIGNAL ww_R6out : std_logic;
SIGNAL ww_R7out : std_logic;
SIGNAL ww_R8out : std_logic;
SIGNAL ww_R9out : std_logic;
SIGNAL ww_R10out : std_logic;
SIGNAL ww_R11out : std_logic;
SIGNAL ww_R12out : std_logic;
SIGNAL ww_R13out : std_logic;
SIGNAL ww_R14out : std_logic;
SIGNAL ww_R15out : std_logic;
SIGNAL ww_HIout : std_logic;
SIGNAL ww_LOout : std_logic;
SIGNAL ww_ZHIout : std_logic;
SIGNAL ww_ZLOout : std_logic;
SIGNAL ww_PCout : std_logic;
SIGNAL ww_MDRout : std_logic;
SIGNAL ww_PortInout : std_logic;
SIGNAL ww_CSignout : std_logic;
SIGNAL ww_Read : std_logic;
SIGNAL ww_incPc : std_logic;
SIGNAL ww_IRin : std_logic;
SIGNAL ww_PCin : std_logic;
SIGNAL ww_MDRin : std_logic;
SIGNAL ww_Yin : std_logic;
SIGNAL ww_MARin : std_logic;
SIGNAL ww_aluControl : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_clear : std_logic;
SIGNAL ww_R2in : std_logic;
SIGNAL ww_R4in : std_logic;
SIGNAL ww_R5in : std_logic;
SIGNAL \Mdatain[0]~input_o\ : std_logic;
SIGNAL \Mdatain[1]~input_o\ : std_logic;
SIGNAL \Mdatain[2]~input_o\ : std_logic;
SIGNAL \Mdatain[3]~input_o\ : std_logic;
SIGNAL \Mdatain[4]~input_o\ : std_logic;
SIGNAL \Mdatain[5]~input_o\ : std_logic;
SIGNAL \Mdatain[6]~input_o\ : std_logic;
SIGNAL \Mdatain[7]~input_o\ : std_logic;
SIGNAL \Mdatain[8]~input_o\ : std_logic;
SIGNAL \Mdatain[9]~input_o\ : std_logic;
SIGNAL \Mdatain[10]~input_o\ : std_logic;
SIGNAL \Mdatain[11]~input_o\ : std_logic;
SIGNAL \Mdatain[12]~input_o\ : std_logic;
SIGNAL \Mdatain[13]~input_o\ : std_logic;
SIGNAL \Mdatain[14]~input_o\ : std_logic;
SIGNAL \Mdatain[15]~input_o\ : std_logic;
SIGNAL \Mdatain[16]~input_o\ : std_logic;
SIGNAL \Mdatain[17]~input_o\ : std_logic;
SIGNAL \Mdatain[18]~input_o\ : std_logic;
SIGNAL \Mdatain[19]~input_o\ : std_logic;
SIGNAL \Mdatain[20]~input_o\ : std_logic;
SIGNAL \Mdatain[21]~input_o\ : std_logic;
SIGNAL \Mdatain[22]~input_o\ : std_logic;
SIGNAL \Mdatain[23]~input_o\ : std_logic;
SIGNAL \Mdatain[24]~input_o\ : std_logic;
SIGNAL \Mdatain[25]~input_o\ : std_logic;
SIGNAL \Mdatain[26]~input_o\ : std_logic;
SIGNAL \Mdatain[27]~input_o\ : std_logic;
SIGNAL \Mdatain[28]~input_o\ : std_logic;
SIGNAL \Mdatain[29]~input_o\ : std_logic;
SIGNAL \Mdatain[30]~input_o\ : std_logic;
SIGNAL \Mdatain[31]~input_o\ : std_logic;
SIGNAL \R0out~input_o\ : std_logic;
SIGNAL \R1out~input_o\ : std_logic;
SIGNAL \R2out~input_o\ : std_logic;
SIGNAL \R3out~input_o\ : std_logic;
SIGNAL \R4out~input_o\ : std_logic;
SIGNAL \R5out~input_o\ : std_logic;
SIGNAL \R6out~input_o\ : std_logic;
SIGNAL \R7out~input_o\ : std_logic;
SIGNAL \R8out~input_o\ : std_logic;
SIGNAL \R9out~input_o\ : std_logic;
SIGNAL \R10out~input_o\ : std_logic;
SIGNAL \R11out~input_o\ : std_logic;
SIGNAL \R12out~input_o\ : std_logic;
SIGNAL \R13out~input_o\ : std_logic;
SIGNAL \R14out~input_o\ : std_logic;
SIGNAL \R15out~input_o\ : std_logic;
SIGNAL \HIout~input_o\ : std_logic;
SIGNAL \LOout~input_o\ : std_logic;
SIGNAL \ZHIout~input_o\ : std_logic;
SIGNAL \ZLOout~input_o\ : std_logic;
SIGNAL \PCout~input_o\ : std_logic;
SIGNAL \MDRout~input_o\ : std_logic;
SIGNAL \PortInout~input_o\ : std_logic;
SIGNAL \CSignout~input_o\ : std_logic;
SIGNAL \Read~input_o\ : std_logic;
SIGNAL \incPc~input_o\ : std_logic;
SIGNAL \IRin~input_o\ : std_logic;
SIGNAL \PCin~input_o\ : std_logic;
SIGNAL \MDRin~input_o\ : std_logic;
SIGNAL \Yin~input_o\ : std_logic;
SIGNAL \MARin~input_o\ : std_logic;
SIGNAL \aluControl[0]~input_o\ : std_logic;
SIGNAL \aluControl[1]~input_o\ : std_logic;
SIGNAL \aluControl[2]~input_o\ : std_logic;
SIGNAL \aluControl[3]~input_o\ : std_logic;
SIGNAL \aluControl[4]~input_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clear~input_o\ : std_logic;
SIGNAL \R2in~input_o\ : std_logic;
SIGNAL \R4in~input_o\ : std_logic;
SIGNAL \R5in~input_o\ : std_logic;

BEGIN

ww_Mdatain <= Mdatain;
ww_R0out <= R0out;
ww_R1out <= R1out;
ww_R2out <= R2out;
ww_R3out <= R3out;
ww_R4out <= R4out;
ww_R5out <= R5out;
ww_R6out <= R6out;
ww_R7out <= R7out;
ww_R8out <= R8out;
ww_R9out <= R9out;
ww_R10out <= R10out;
ww_R11out <= R11out;
ww_R12out <= R12out;
ww_R13out <= R13out;
ww_R14out <= R14out;
ww_R15out <= R15out;
ww_HIout <= HIout;
ww_LOout <= LOout;
ww_ZHIout <= ZHIout;
ww_ZLOout <= ZLOout;
ww_PCout <= PCout;
ww_MDRout <= MDRout;
ww_PortInout <= PortInout;
ww_CSignout <= CSignout;
ww_Read <= Read;
ww_incPc <= incPc;
ww_IRin <= IRin;
ww_PCin <= PCin;
ww_MDRin <= MDRin;
ww_Yin <= Yin;
ww_MARin <= MARin;
ww_aluControl <= aluControl;
ww_clock <= clock;
ww_clear <= clear;
ww_R2in <= R2in;
ww_R4in <= R4in;
ww_R5in <= R5in;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOIBUF_X0_Y14_N15
\Mdatain[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(0),
	o => \Mdatain[0]~input_o\);

-- Location: IOIBUF_X0_Y14_N22
\Mdatain[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(1),
	o => \Mdatain[1]~input_o\);

-- Location: IOIBUF_X0_Y26_N22
\Mdatain[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(2),
	o => \Mdatain[2]~input_o\);

-- Location: IOIBUF_X14_Y29_N29
\Mdatain[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(3),
	o => \Mdatain[3]~input_o\);

-- Location: IOIBUF_X14_Y0_N8
\Mdatain[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(4),
	o => \Mdatain[4]~input_o\);

-- Location: IOIBUF_X0_Y13_N22
\Mdatain[5]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(5),
	o => \Mdatain[5]~input_o\);

-- Location: IOIBUF_X0_Y12_N1
\Mdatain[6]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(6),
	o => \Mdatain[6]~input_o\);

-- Location: IOIBUF_X0_Y12_N8
\Mdatain[7]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(7),
	o => \Mdatain[7]~input_o\);

-- Location: IOIBUF_X35_Y29_N22
\Mdatain[8]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(8),
	o => \Mdatain[8]~input_o\);

-- Location: IOIBUF_X41_Y9_N15
\Mdatain[9]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(9),
	o => \Mdatain[9]~input_o\);

-- Location: IOIBUF_X41_Y19_N22
\Mdatain[10]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(10),
	o => \Mdatain[10]~input_o\);

-- Location: IOIBUF_X41_Y21_N15
\Mdatain[11]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(11),
	o => \Mdatain[11]~input_o\);

-- Location: IOIBUF_X26_Y0_N15
\Mdatain[12]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(12),
	o => \Mdatain[12]~input_o\);

-- Location: IOIBUF_X0_Y3_N8
\Mdatain[13]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(13),
	o => \Mdatain[13]~input_o\);

-- Location: IOIBUF_X0_Y10_N8
\Mdatain[14]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(14),
	o => \Mdatain[14]~input_o\);

-- Location: IOIBUF_X0_Y11_N8
\Mdatain[15]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(15),
	o => \Mdatain[15]~input_o\);

-- Location: IOIBUF_X0_Y10_N22
\Mdatain[16]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(16),
	o => \Mdatain[16]~input_o\);

-- Location: IOIBUF_X9_Y29_N8
\Mdatain[17]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(17),
	o => \Mdatain[17]~input_o\);

-- Location: IOIBUF_X0_Y9_N8
\Mdatain[18]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(18),
	o => \Mdatain[18]~input_o\);

-- Location: IOIBUF_X7_Y29_N8
\Mdatain[19]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(19),
	o => \Mdatain[19]~input_o\);

-- Location: IOIBUF_X0_Y9_N22
\Mdatain[20]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(20),
	o => \Mdatain[20]~input_o\);

-- Location: IOIBUF_X0_Y6_N1
\Mdatain[21]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(21),
	o => \Mdatain[21]~input_o\);

-- Location: IOIBUF_X0_Y8_N8
\Mdatain[22]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(22),
	o => \Mdatain[22]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\Mdatain[23]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(23),
	o => \Mdatain[23]~input_o\);

-- Location: IOIBUF_X0_Y8_N22
\Mdatain[24]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(24),
	o => \Mdatain[24]~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\Mdatain[25]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(25),
	o => \Mdatain[25]~input_o\);

-- Location: IOIBUF_X32_Y0_N22
\Mdatain[26]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(26),
	o => \Mdatain[26]~input_o\);

-- Location: IOIBUF_X41_Y13_N22
\Mdatain[27]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(27),
	o => \Mdatain[27]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\Mdatain[28]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(28),
	o => \Mdatain[28]~input_o\);

-- Location: IOIBUF_X41_Y18_N15
\Mdatain[29]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(29),
	o => \Mdatain[29]~input_o\);

-- Location: IOIBUF_X39_Y29_N8
\Mdatain[30]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(30),
	o => \Mdatain[30]~input_o\);

-- Location: IOIBUF_X26_Y0_N22
\Mdatain[31]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Mdatain(31),
	o => \Mdatain[31]~input_o\);

-- Location: IOIBUF_X35_Y0_N8
\R0out~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R0out,
	o => \R0out~input_o\);

-- Location: IOIBUF_X41_Y13_N8
\R1out~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R1out,
	o => \R1out~input_o\);

-- Location: IOIBUF_X0_Y9_N1
\R2out~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2out,
	o => \R2out~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\R3out~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R3out,
	o => \R3out~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\R4out~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R4out,
	o => \R4out~input_o\);

-- Location: IOIBUF_X0_Y4_N8
\R5out~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R5out,
	o => \R5out~input_o\);

-- Location: IOIBUF_X41_Y25_N1
\R6out~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R6out,
	o => \R6out~input_o\);

-- Location: IOIBUF_X28_Y0_N29
\R7out~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R7out,
	o => \R7out~input_o\);

-- Location: IOIBUF_X0_Y4_N15
\R8out~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R8out,
	o => \R8out~input_o\);

-- Location: IOIBUF_X9_Y0_N1
\R9out~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R9out,
	o => \R9out~input_o\);

-- Location: IOIBUF_X0_Y2_N1
\R10out~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R10out,
	o => \R10out~input_o\);

-- Location: IOIBUF_X0_Y7_N15
\R11out~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R11out,
	o => \R11out~input_o\);

-- Location: IOIBUF_X0_Y6_N15
\R12out~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R12out,
	o => \R12out~input_o\);

-- Location: IOIBUF_X0_Y22_N8
\R13out~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R13out,
	o => \R13out~input_o\);

-- Location: IOIBUF_X0_Y23_N8
\R14out~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R14out,
	o => \R14out~input_o\);

-- Location: IOIBUF_X0_Y2_N15
\R15out~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R15out,
	o => \R15out~input_o\);

-- Location: IOIBUF_X0_Y27_N1
\HIout~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_HIout,
	o => \HIout~input_o\);

-- Location: IOIBUF_X0_Y6_N8
\LOout~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_LOout,
	o => \LOout~input_o\);

-- Location: IOIBUF_X0_Y27_N15
\ZHIout~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ZHIout,
	o => \ZHIout~input_o\);

-- Location: IOIBUF_X30_Y0_N15
\ZLOout~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_ZLOout,
	o => \ZLOout~input_o\);

-- Location: IOIBUF_X0_Y2_N22
\PCout~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCout,
	o => \PCout~input_o\);

-- Location: IOIBUF_X1_Y29_N29
\MDRout~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MDRout,
	o => \MDRout~input_o\);

-- Location: IOIBUF_X16_Y29_N8
\PortInout~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PortInout,
	o => \PortInout~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\CSignout~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CSignout,
	o => \CSignout~input_o\);

-- Location: IOIBUF_X30_Y29_N1
\Read~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Read,
	o => \Read~input_o\);

-- Location: IOIBUF_X41_Y11_N1
\incPc~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_incPc,
	o => \incPc~input_o\);

-- Location: IOIBUF_X39_Y29_N1
\IRin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IRin,
	o => \IRin~input_o\);

-- Location: IOIBUF_X37_Y0_N22
\PCin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_PCin,
	o => \PCin~input_o\);

-- Location: IOIBUF_X0_Y8_N15
\MDRin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MDRin,
	o => \MDRin~input_o\);

-- Location: IOIBUF_X0_Y23_N1
\Yin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Yin,
	o => \Yin~input_o\);

-- Location: IOIBUF_X1_Y29_N1
\MARin~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MARin,
	o => \MARin~input_o\);

-- Location: IOIBUF_X0_Y23_N15
\aluControl[0]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aluControl(0),
	o => \aluControl[0]~input_o\);

-- Location: IOIBUF_X0_Y22_N1
\aluControl[1]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aluControl(1),
	o => \aluControl[1]~input_o\);

-- Location: IOIBUF_X39_Y0_N15
\aluControl[2]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aluControl(2),
	o => \aluControl[2]~input_o\);

-- Location: IOIBUF_X5_Y29_N8
\aluControl[3]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aluControl(3),
	o => \aluControl[3]~input_o\);

-- Location: IOIBUF_X0_Y26_N1
\aluControl[4]~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_aluControl(4),
	o => \aluControl[4]~input_o\);

-- Location: IOIBUF_X0_Y21_N1
\clock~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: IOIBUF_X0_Y21_N8
\clear~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clear,
	o => \clear~input_o\);

-- Location: IOIBUF_X0_Y21_N15
\R2in~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R2in,
	o => \R2in~input_o\);

-- Location: IOIBUF_X21_Y29_N8
\R4in~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R4in,
	o => \R4in~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\R5in~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_R5in,
	o => \R5in~input_o\);
END structure;


