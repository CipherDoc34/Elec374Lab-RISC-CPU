module MDR(
	input clear, clock, MDRIn, 
	input wire [31:0]BusMuxOut, 
	input wire [31:0]MDatain,
	input Read,
	output wire [31:0]BusMuxInMDR
);

//wire [31:0]D;
reg [31:0]Q;

always @ (posedge clock)
	begin
		if (MDRIn) begin
			if (Read) begin
				Q <= MDatain;
			end 
			else begin
				Q <= BusMuxOut;
			end
		end
		else if  (clear) begin
			Q <= 32'b0;
		end
	end
assign BusMuxInMDR = Q;
endmodule
