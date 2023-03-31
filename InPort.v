module InPort #(parameter DATA_WIDTH_IN = 32, DATA_WIDTH_OUT = 32, INIT = 32'h0)(
	input clear, clock,
	input wire [DATA_WIDTH_OUT-1:0] inputData,
	output wire [DATA_WIDTH_OUT-1:0]BusMuxIn
);
reg [DATA_WIDTH_IN-1:0]q;
initial q = INIT;

always @ (posedge clock) begin
	 if (clear)	q <= {DATA_WIDTH_IN{1'b0}};
	 q <= inputData;
end
assign BusMuxIn = q[DATA_WIDTH_OUT-1:0];
endmodule
