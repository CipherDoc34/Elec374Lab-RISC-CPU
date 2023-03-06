module OutPort #(parameter DATA_WIDTH_IN = 32, DATA_WIDTH_OUT = 32, INIT = 32'h0)(
	input clear, clock, enable,
	input wire [DATA_WIDTH_OUT-1:0]BusMuxOut,
	output wire [DATA_WIDTH_OUT-1:0]outPort
);
reg [DATA_WIDTH_IN-1:0]q;
initial q = INIT;
always @ (posedge clock) begin
	 if (clear)	q <= {DATA_WIDTH_IN{1'b0}};
	 else if (enable) q <= BusMuxOut;
end
assign outPort = q[DATA_WIDTH_OUT-1:0];
endmodule