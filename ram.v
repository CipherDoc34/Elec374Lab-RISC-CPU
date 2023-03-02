module RAM #(parameter DATA_WIDTH = 32, ADDR_SPACE = 9) //32 bits = word 2^9 = 512
				(input [(DATA_WIDTH-1):0]datain, input [(ADDR_SPACE-1):0]addr,
				 input read, write, enable,
				 output [(DATA_WIDTH-1):0]dataout);
				 
reg [DATA_WIDTH-1:0]q;
reg [DATA_WIDTH-1:0] memory [(2**ADDR_SPACE)-1:0];

initial begin
	integer i;
	for (i = 0; i < 2**ADDR_SPACE; i = i+1)
		memory[i] <= {(DATA_WIDTH-1){1'b1}};
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
