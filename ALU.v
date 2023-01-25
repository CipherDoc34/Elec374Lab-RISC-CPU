module ALU(
	input [31:0]YMuxOut, [31:0]BusMuxOut, [4:0]ALUControl,
	output [63:0]ZMuxIn
);
reg [31:0]A;
reg [31:0]B;
reg [63:0]C;
integer i;

always @ (ALUControl) begin
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
		
		5b'00011 : begin //add
			C = A + B;
		end
		
		5b'00100 : begin //sub
			C = A - B;
		end
		
		5b'00101 : begin //and
			C = A & B;
		end
		
		5b'00110 : begin //or
			C = A | B;
		end
		
		5b'00111 : begin //shr
			C = A >> 1;
		end
		
		5b'01000 : begin //shra
			C = A >>> 1;
		end
		
		5b'01001 : begin //shl
			C = A << 1;
		end
		
		5b'01010 : begin //ror
			C = A >> 1;
			C[31] = YMuxOut[0]
		end
		
		5b'01011 : begin //rol
			C = A << 1;
			C[0] = YMuxOut[31]
		end
		
		5b'01111 : begin //mul
			C = A * B;
		end
		
		5b'10000 : begin //div
			C = A / B;
		end
		
		5b'10001 : begin //negate
			C = ~A;
			C = C + 1;
		end
		
		5b'10010 : begin //not
			C = ~A;
		end
		
	endcase
	
	assign ZMuxIn = C;
endmodule
