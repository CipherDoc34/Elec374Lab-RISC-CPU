module register(
	input clear, clock, REnable, 
	input [31:0]BusMuxOut,
	output wire [31:0]BusMuxIn
);
	reg [31:0]q;
	
always @ (posedge clock)
		begin 
			if (clear) begin
				q <= 32'b0;
			end
			else if (REnable) begin
				q <= BusMuxOut;
			end
		end
	assign BusMuxIn = q;	
endmodule
