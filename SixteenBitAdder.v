// Copyright (C) 1991-2013 Altera Corporation
// Your use of Altera Corporation's design tools, logic functions 
// and other software and tools, and its AMPP partner logic 
// functions, and any output files from any of the foregoing 
// (including device programming or simulation files), and any 
// associated documentation or information are expressly subject 
// to the terms and conditions of the Altera Program License 
// Subscription Agreement, Altera MegaCore Function License 
// Agreement, or other applicable license agreement, including, 
// without limitation, that your use is for the sole purpose of 
// programming logic devices manufactured by Altera and sold by 
// Altera or its authorized distributors.  Please refer to the 
// applicable agreement for further details.

// PROGRAM		"Quartus II 64-Bit"
// VERSION		"Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"
// CREATED		"Thu Feb 09 23:54:04 2023"

module SixteenBitAdder(
	c0,
	X,
	Y,
	Gpp,
	Ppp,
	S
);


input wire	c0;
input wire	[15:0] X;
input wire	[15:0] Y;
output wire	Gpp;
output wire	Ppp;
output wire	[15:0] S;

wire	c1;
wire	c2;
wire	c3;
wire	c4;
wire	[15:0] S_ALTERA_SYNTHESIZED;
wire	SYNTHESIZED_WIRE_0;
wire	SYNTHESIZED_WIRE_1;
wire	SYNTHESIZED_WIRE_2;
wire	SYNTHESIZED_WIRE_3;
wire	SYNTHESIZED_WIRE_4;
wire	SYNTHESIZED_WIRE_5;
wire	SYNTHESIZED_WIRE_6;
wire	SYNTHESIZED_WIRE_7;





FourBitAdder	b2v_inst(
	.c0(c0),
	.X(X[3:0]),
	.Y(Y[3:0]),
	.Gp(SYNTHESIZED_WIRE_1),
	.Pp(SYNTHESIZED_WIRE_0),
	.S(S_ALTERA_SYNTHESIZED[3:0]));


carrylookaheadlogic	b2v_inst4(
	.c0(c0),
	.P0(SYNTHESIZED_WIRE_0),
	.G0(SYNTHESIZED_WIRE_1),
	.P1(SYNTHESIZED_WIRE_2),
	.G1(SYNTHESIZED_WIRE_3),
	.P2(SYNTHESIZED_WIRE_4),
	.G2(SYNTHESIZED_WIRE_5),
	.P3(SYNTHESIZED_WIRE_6),
	.G3(SYNTHESIZED_WIRE_7),
	.c1(c1),
	.c2(c2),
	.c3(c3),
	.Gp(Gpp),
	
	.Pp(Ppp));


FourBitAdder	b2v_inst5(
	.c0(c1),
	.X(X[7:4]),
	.Y(Y[7:4]),
	.Gp(SYNTHESIZED_WIRE_3),
	.Pp(SYNTHESIZED_WIRE_2),
	.S(S_ALTERA_SYNTHESIZED[7:4]));


FourBitAdder	b2v_inst6(
	.c0(c2),
	.X(X[11:8]),
	.Y(Y[11:8]),
	.Gp(SYNTHESIZED_WIRE_5),
	.Pp(SYNTHESIZED_WIRE_4),
	.S(S_ALTERA_SYNTHESIZED[11:8]));


FourBitAdder	b2v_inst7(
	.c0(c3),
	.X(X[15:12]),
	.Y(Y[15:12]),
	.Gp(SYNTHESIZED_WIRE_7),
	.Pp(SYNTHESIZED_WIRE_6),
	.S(S_ALTERA_SYNTHESIZED[15:12]));

assign	S = S_ALTERA_SYNTHESIZED;

endmodule
