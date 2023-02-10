module lookaheadadder(
	input wire [31:0]x,
	input wire [31:0]y,
	input wire subAdd, //n_add/sub
	output wire [31:0]s
);
wire c;
reg [31:0]B;
assign c = subAdd;
always @ (*) begin
	B = y;
	if (subAdd) B = ~B;
end

ThirtyTwoBitAdder ThirtyTwoBitAdder_inst
(
	.c0(c) ,	// input  c0_sig
	.X(x[31:0]) ,	// input [31:0] X_sig
	.Y(B[31:0]) ,	// input [31:0] Y_sig
	.Gpp(g) ,	// output  Gpp_sig
	.Ppp(p) ,	// output  Ppp_sig
	.S(s[31:0]) 	// output [31:0] S_sig
);
endmodule