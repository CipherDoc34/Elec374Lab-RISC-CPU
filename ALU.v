module ALU(
	input [31:0]YMuxOut, 
	input [31:0]BusMuxOut, 
	input [4:0]ALUControl,
	input ALUin,
	output wire [63:0]ZMuxIn
);
reg [31:0]A;
reg [31:0]B;
reg [63:0]C;
wire [63:0]boothOutput;
BoothAlgorithm mul(A, B, boothOutput);
wire [31:0]lookaheadOut;
//integer i;
lookaheadadder addSub(A,B,ALUControl[2],lookaheadOut);

always @ (ALUin) begin
	A = YMuxOut;
	B = BusMuxOut;
	/*
	//add
	if (ALUControl == 5'b00011) begin
		C = A + B;
	end
	//sub
	else if (ALUControl)
	*/
	
	case(ALUControl)
		
		5'b00011 : begin//add
			C = lookaheadOut;
		end
		
		5'b00100 : begin //sub
			C = lookaheadOut;
		end
		
		5'b00101 : begin //and
			C = A & B;
		end
		
		5'b00110 : begin //or
			C = A | B;
		end
		
		5'b00111 : begin //shr
			C = A >> 1;
		end
		
		5'b01000 : begin //shra
			C = A >>> 1;
		end
		
		5'b01001 : begin //shl
			C = A << 1;
		end
		
		5'b01010 : begin //ror
			C = A >> 1;
			C[31] = YMuxOut[0];
		end
		
		5'b01011 : begin //rol
			C = A << 1;
			C[0] = YMuxOut[31];
		end
		
		5'b01111 : begin //mul
			C = boothOutput;
		end
		
		5'b10000 : begin //div
			C = A / B;
		end
		
		5'b10001 : begin //negate
			C = ~A;
			C = C + 1;
		end
		
		5'b10010 : begin //not
			C = ~A;
		end
		
	endcase
	end	
assign ZMuxIn = C;
endmodule
