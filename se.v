module SE(
	input Gra, Grb, Grc, Rin, Rout, BAout,
	input [31:0]IR,
	output [31:0] CSign,
	output wire [16:0]in, out
);
reg [3:0]a, b, c, decode;
reg [15:0]q;
always @ (IR, Gra, Grb, Grc) begin
	a = IR[26:23]; b = IR[22:19]; c = IR[19:15];
	if (Gra) decode = a;
	else if (Grb) decode = b;
	else if (Grc) decode = c;
	case (decode)
		4'h0: q = 16'h1;
		4'h1: q = 16'h2;
		4'h2: q = 16'h4;
		4'h3: q = 16'h8;
		4'h4: q = 16'h10;
		4'h5: q = 16'h20;
		4'h6: q = 16'h40;
		4'h7: q = 16'h80;
		4'h8: q = 16'h100;
		4'h9: q = 16'h200;
		4'ha: q = 16'h400;
		4'hb: q = 16'h800;
		4'hc: q = 16'h1000;
		4'hd: q = 16'h2000;
		4'he: q = 16'h4000;
		4'hf: q = 16'h8000;
	endcase
end
assign in = q & {16{Rin}};
assign out = q & {16{Rout | BAout}};
assign CSign = {{13{IR[18]}}, {IR[18:0]}};
endmodule
	