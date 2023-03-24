module RAM #(parameter DATA_WIDTH = 32, ADDR_SPACE = 9) //32 bits = word 2^9 = 512
				(input wire [(DATA_WIDTH-1):0]datain, input wire [(ADDR_SPACE-1):0]addr,
				 input read, write, enable,
				 output wire [(DATA_WIDTH-1):0]dataout);
				 
reg [DATA_WIDTH-1:0]q;
reg [DATA_WIDTH-1:0] memory [(2**ADDR_SPACE)-1:0];
integer i;

initial $readmemh("RAM.txt", memory);

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
