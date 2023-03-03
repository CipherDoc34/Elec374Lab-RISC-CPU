module RAM #(parameter DATA_WIDTH = 32, ADDR_SPACE = 9) //32 bits = word 2^9 = 512
				(input wire [(DATA_WIDTH-1):0]datain, input wire [(ADDR_SPACE-1):0]addr,
				 input read, write, enable,
				 output wire [(DATA_WIDTH-1):0]dataout);
				 
reg [DATA_WIDTH-1:0]q;
reg [DATA_WIDTH-1:0] memory [(2**ADDR_SPACE)-1:0];
integer i;

initial begin
		memory[0] = 32'h01080005;
		memory[1] = 32'h0;
		memory[2] = 32'h0;
		memory[3] = 32'h0;
		memory[4] = 32'h0;
		memory[5] = 32'h69;
	for (i = 6; i < 2**ADDR_SPACE; i = i+1)
		memory[i] <= {DATA_WIDTH{1'b1}};
end

always @ (posedge enable) begin
	if(enable == 1) begin
		case ({read, write})
			2'b01:
				memory[addr] <= datain;
			2'b10:
				q <= memory[addr];
		endcase
	end
end
assign dataout = q;
endmodule
