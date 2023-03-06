module conFF(
	input conin,
	input [31:0]BusMuxIn, IR,
	output conff
);

reg q;
reg temp;
reg Bus;
initial begin q = 0; Bus = 0; end

always @ (posedge conin) begin
	if(conin) begin
		Bus <= |BusMuxIn;
		temp <= ~Bus;
		case ({IR[20],IR[19]})
			2'b00: begin
				if (~Bus) q = 1;
				else q = 0;
			end
			2'b01: begin
				if (Bus) q = 1;
				else q = 0;
			end
			2'b10: begin
				if (BusMuxIn[31] == 1'b0) q = 1;
				else q = 0;
			end
			2'b11: begin
				if (BusMuxIn[31] == 1'b1) q = 1;
				else q = 0;
			end
		endcase
	end
end
assign conff = q;
endmodule
