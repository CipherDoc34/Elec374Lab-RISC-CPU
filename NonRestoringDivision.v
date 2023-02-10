module NonRestoringDivision(
	input signed [31:0] Dividend,Divisor, 
	output wire [31:0] Q, R
);

reg [32:0] A;
wire [31:0] TwosComp;
integer k,i;
assign TwosComp = ~Divisor + 1;

reg signed [64:0] divide;
initial A = 32'h000000000;

always @(*)
    begin
			divide = {A, Dividend};
          for(i=0;i<32;i=i+1) begin
						divide = divide << 1;
						if(divide[64] == 0) begin
							divide[64:32] = divide[64:32] - Divisor; // sub
							divide[0] = 1;
						end
						else if(divide[64] == 1) begin 
							divide[64:32] = divide[64:32] + Divisor; // add
							divide[0] = 0;
						end
						if(divide[64] == 0) divide[0] = 1;
						else if(divide[64] == 1) divide[0] = 0;
            end
     end
assign Q = divide[31:0];
assign R = divide[63:32];
endmodule