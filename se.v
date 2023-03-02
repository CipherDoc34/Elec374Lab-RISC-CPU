module SE(
	input Gra, Grb, Grc, Rin, Rout, BAout,
	input [31:0]IR,
	output [31:0] CSign,
	output wire [16:0]in, out
);
reg [3:0]a, b, c, decode;
reg [16:0]q;
always @ (IR, Gra, Grb, Grc) begin
	a <= IR[26:23]; b <= IR[22:19]; c <= IR[19:15];
	if (Gra) decode <= a;
	else if (Grb) decode <= b;
	else if (Grc) decode <= c;
	case (decode)
		16'd0: q <= 16'd1;
		16'd1: q <= 16'd2;
		16'd2: q <= 16'd4;
		16'd3: q <= 16'd8;
		16'd4: q <= 16'd16;
		16'd5: q <= 16'd32;
		16'd6: q <= 16'd64;
		16'd7: q <= 16'd128;
		16'd8: q <= 16'd256;
		16'd9: q <= 16'd512;
		16'd10: q <= 16'd1024;
		16'd11: q <= 16'd2048;
		16'd12: q <= 16'd4096;
		16'd13: q <= 16'd8192;
		16'd14: q <= 16'h4000;
		16'd15: q <= 16'h8000;
	endcase
end
assign in = decode & {16{Rin}};
assign out = decode & {16{Rout | BAout}};
assign CSign = {{13{IR[18]}}, {IR[18:0]}};
endmodule
	