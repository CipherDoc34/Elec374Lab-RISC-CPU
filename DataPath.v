module DataPath(
//control signals
	input [31:0]Mdatain,
	input R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, 
	input R8out, R9out, R10out, R11out, R12out, R13out, R14out, R15out,
	input HIout, LOout, ZHIout, ZLOout, PCout, MDRout, PortInout, CSignout,
	input Read, incPc, IRin, PCin, MDRin, Yin, MARin,
	input [4:0] aluControl,
	input clock, clear,
	input R2in, R4in, R5in
	
);

wire [31:0] BusMuxOut; 
wire [31:0] BusMuxInR0;
wire [31:0] BusMuxInR1;
wire [31:0] BusMuxInR2;
wire [31:0] BusMuxInR3;
wire [31:0] BusMuxInR4;
wire [31:0] BusMuxInR5;
wire [31:0] BusMuxInR6;
wire [31:0] BusMuxInR7;
wire [31:0] BusMuxInR8;
wire [31:0] BusMuxInR9;
wire [31:0] BusMuxInR10;
wire [31:0] BusMuxInR11;
wire [31:0] BusMuxInR12;
wire [31:0] BusMuxInR13;
wire [31:0] BusMuxInR14;
wire [31:0] BusMuxInR15;
wire [31:0] BusMuxInZHI;
wire [31:0] BusMuxInZLO;
wire [31:0] BusMuxInPC;
wire [31:0] BusMuxInMDR;
wire [31:0] BusMuxInPortIn;
wire [31:0] BusMuxInCSign;
wire [31:0] BusMuxInY;
wire [63:0] ALUIn;

//General Purpose Registers
register R0(clear, clock, R0in, BusMuxOut, BusMuxInR0);
register R1(clear, clock, R1in, BusMuxOut, BusMuxInR1);
register R2(clear, clock, R2in, BusMuxOut, BusMuxInR2);
register R3(clear, clock, R3in, BusMuxOut, BusMuxInR3);
register R4(clear, clock, R4in, BusMuxOut, BusMuxInR4);
register R5(clear, clock, R5in, BusMuxOut, BusMuxInR5);
register R6(clear, clock, R6in, BusMuxOut, BusMuxInR6);
register R7(clear, clock, R7in, BusMuxOut, BusMuxInR7);
register R8(clear, clock, R8in, BusMuxOut, BusMuxInR8);
register R9(clear, clock, R9in, BusMuxOut, BusMuxInR9);
register R10(clear, clock, R10in, BusMuxOut, BusMuxInR10);
register R11(clear, clock, R11in, BusMuxOut, BusMuxInR11);
register R12(clear, clock, R12in, BusMuxOut, BusMuxInR12);
register R13(clear, clock, R13in, BusMuxOut, BusMuxInR13);
register R14(clear, clock, R14in, BusMuxOut, BusMuxInR14);
register R15(clear, clock, R15in, BusMuxOut, BusMuxInR15);

//registers
register HI(clear, clock, HIin, BusMuxOut, BusMuxInHI);
register LO(clear, clock, LOin, BusMuxOut, BusMuxInLO);
register ZHI(clear, clock, ZHIin, BusMuxOut, BusMuxInZHI);
register ZLO(clear, clock, ZLOin, BusMuxOut, BusMuxInZLO);
register PC(clear, clock, PCin, BusMuxOut, BusMuxInPC);
register Y(clear, clock, Yin, BusMuxOut, BusMuxInY);

//Devices
MDR MDR(clear, clock, MDRin, BusMuxOut, Mdatain, Read, BusMuxInMDR);
register InPort(clear, clock, InPortIn, BusMuxOut, BusMuxInPortIn);
register CSign(clear, clock, CSignIn, BusMuxOut, BusMuxInCSign);
ALU alu(BusMuxInY, BusMuxOut, aluControl, ALUIn);

//bus
Bus bus(BusMuxInR0, BusMuxInR1, BusMuxInR2, BusMuxInR3, BusMuxInR4, BusMuxInR5, BusMuxInR6, BusMuxInR7,
	BusMuxInR8, BusMuxInR9, BusMuxInR10, BusMuxInR11, BusMuxInR12, BusMuxInR13, BusMuxInR14, BusMuxInR15,
	BusMuxInHI, BusMuxInLO, BusMuxInZHI, BusMuxInZLO, BusMuxInPC, BusMuxInMDR, BusMuxInPortIn, BusMuxInCSign,
	BusMuxOut,
	R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, 
	R8out, R9out, R10out, R11out, R12out, R13out, R14out, R15out,
	HIout, LOout, ZHIout, ZLOout, PCout, MDRout, PortInout, CSignout,
	S0, S1, S2, S3, S4);
	
endmodule
