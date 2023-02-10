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
// CREATED		"Thu Feb 09 23:53:42 2023"

module BCell(
	x,
	y,
	c,
	G,
	P,
	S
);


input wire	x;
input wire	y;
input wire	c;
output wire	G;
output wire	P;
output wire	S;

wire	P_ALTERA_SYNTHESIZED;




assign	P_ALTERA_SYNTHESIZED = y ^ x;

assign	S = c ^ P_ALTERA_SYNTHESIZED;

assign	G = x & y;

assign	P = P_ALTERA_SYNTHESIZED;

endmodule
