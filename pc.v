module pc #(parameter INITIAL_ADDR = 0)(
	input clear, clock, pcenable, incPC,
	input [31:0]BusMuxOut,
	output wire [31:0]BusMuxIn
);
reg [31:0]q;

initial q <= INITIAL_ADDR;
	
always @ (posedge clock)
		begin 
			if (clear)
				q <= INITIAL_ADDR;
			else if (pcenable)
				q <= BusMuxOut;
			else if (incPC)
				q <= q + 1;
		end
	assign BusMuxIn = q;	
endmodule
