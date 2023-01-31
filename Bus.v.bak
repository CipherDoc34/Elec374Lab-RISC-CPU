module Bus (
	//Mux
	input [31:0]BusMuxInR0, [31:0]BusMuxInR1, [31:0]BusMuxInR2, [31:0]BusMuxInR3, [31:0]BusMuxInR4, [31:0]BusMuxInR5, [31:0]BusMuxInR6, [31:0]BusMuxInR7,
	input [31:0]BusMuxInR8, [31:0]BusMuxInR9, [31:0]BusMuxInR10, [31:0]BusMuxInR11, [31:0]BusMuxInR12, [31:0]BusMuxInR13, [31:0]BusMuxInR14, [31:0]BusMuxInR15,
	input [31:0]BusMuxInHI, [31:0]BusMuxInLO, [31:0]BusMuxInZHI, [31:0]BusMuxInZLO, [31:0]BusMuxInPC, [31:0]BusMuxInMDR, [31:0]BusMuxInPortIn, [31:0]BusMuxInCSign,
	output [31:0]BusMuxOut
	
	//Encoder
	input R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, 
	input R8out, R9out, R10out, R11out, R12out, R13out, R14out, R15out,
	input HIout, LOout, ZHIout, ZLOout, PCout, MDRout, PortInout, CSignout,
	output S0, S1, S2, S3, S4
);

reg [31:0]q;

always @ (*) begin
/*				(R0out or R1out or R2out or R3out or R4out or R5out or R6out or R7out or 
				R8out or R9out or R10out or R11out or R12out or R13out or R14out or R15out or
				HIout or LOout or ZHIout or ZLOout or PCout or MDRout or PortInout or CSignout
				BusMuxInR0 or BusMuxInR1 or BusMuxInR2 or BusMuxInR3 or BusMuxInR4 or BusMuxInR5 or BusMuxInR6 or BusMuxInR7 or 
				BusMuxInR8 or BusMuxInR9 or BusMuxInR10 or BusMuxInR11 or BusMuxInR12 or BusMuxInR13 or BusMuxInR14 or BusMuxInR15 or 
				BusMuxInHI or BusMuxInLO or BusMuxInZHI or BusMuxInZLO or BusMuxInPC or BusMuxInMDR or BusMuxInPortIn or BusMuxInCSign)*/
	if(R0out) begin
		out = BusMuxInR0;
	end
	else if(R1out) begin
		out = BusMuxInR1;
	end
	else if(R2out) begin
		out = BusMuxInR2;
	end
	else if(R3out) begin
		out = BusMuxInR3;
	end
	else if(R4out) begin
		out = BusMuxInR4;
	end
	else if(R5out) begin
		out = BusMuxInR5;
	end
	else if(R6out) begin
		out = BusMuxInR6;
	end
	else if(R7out) begin
		out = BusMuxInR7;
	end
	else if(R8out) begin
		out = BusMuxInR8;
	end
	else if(R9out) begin
		out = BusMuxInR9;
	end
	else if(R10out) begin
		out = BusMuxInR10;
	end
	else if(R11out) begin
		out = BusMuxInR11;
	end
	else if(R12out) begin
		out = BusMuxInR12;
	end
	else if(R13out)begin
		out = BusMuxInR13;
	end
	else if(R14out)begin
		out = BusMuxInR14;
	end
	else if(R15out)begin
		out = BusMuxInR15;
	end
	else if(HIout)begin
		out = BusMuxInHI;
	end
	else if(LOout)begin
		out = BusMuxInLO;
	end
	else if(ZHIout)begin
		out = BusMuxInZHI;
	end
	else if(ZLOout)begin
		out = BusMuxInZLO;
	end
	else if(PCout)begin
		out = BusMuxInPC;
	end
	else if(MDRout)begin
		out = BusMuxInMDR;
	end
	else if(InPortout)begin
		out = BusMuxInRInP;
	end
		else if(CSignout) begin
		out =  BusMuxInCSign;
	end
assign BusMuxOut = out;
endmodule
