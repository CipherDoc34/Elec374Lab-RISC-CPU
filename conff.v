module conFF(
	input conin,
	input [31:0]BusMuxIn, IR,
	output conff
);

reg q;

always @ (IR, conin) begin
	if(conin) begin
		case ({IR[20:19]})
			2'b00:
				q <= (BusMuxIn == 0);
			2'b01:
				q <= (BusMuxIn != 0);
			2'b10:
				q <= (BusMuxIn >= 0);
			2'b11:
				q <= (BusMuxIn < 0);
		endcase
	end
end
assign conff = q;
endmodule
