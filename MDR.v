module MDR(
	input clear, clock, MDRIn, [31:0]BusMuxOut, [31:0]MDatain, Read,
	output [31:0]BusMuxInMDR,
);

reg [31:0]D;
reg [31:0]Q;

always @ (posedge clock)
	begin
		if (Read) begin
			D <= MDatain;
		end
		else begin
			D <= BusMuxOut;
		end
		if (clear) begin
			Q <= 32'b0;
		end
		else if  (MDRIn) begin
			Q <= D;
		end
	end
	assign BusMuxInMDR = Q;
endmodule
