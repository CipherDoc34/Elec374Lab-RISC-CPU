module DataPath(
	input PCout, IncPC, ZLOout, ZLOin, CSignout, MDRout, RAMenable,
			MARin, PCin, MDRin, IRin,
			//R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, R8out, R9out, R10out, R11out, R12out, R13out, R14out, R15out,
			//R0in, R1in, R2in, R3in, R4in, R5in, R6in, R7in, R8in, R9in, R10in, R11in, R12in, R13in, R14in, R15in,
			Gra, Grb, Grc, Rin, Rout, BAout,
			clock, read, write, clear, conin,
			ZMuxEnbale, ZSelect, ZMuxOut,
	input [4:0] aluControl,
	//input [31:0] Mdatain,
	input Yin,
	output wire [31:0]DummyOut
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
wire [31:0] IRout;
wire [31:0] BusMuxInMDR, RAMDataout;
wire [31:0] BusMuxInPortIn;
wire [31:0] BusMuxInCSign;
wire [31:0] BusMuxInY;
wire [31:0] BusMuxInHI;
wire [31:0] BusMuxInLO;
wire [63:0] ZMuxIn;
wire [31:0] BusMuxInZMux;
wire [8:0] MARaddrOut;
wire R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, R8out, R9out, R10out, R11out, R12out, R13out, R14out, R15out,
     R0in, R1in, R2in, R3in, R4in, R5in, R6in, R7in, R8in, R9in, R10in, R11in, R12in, R13in, R14in, R15in;
wire conOut;

//General Purpose Registers
reg0 R0(clear, clock, R0in, BAout, BusMuxOut, BusMuxInR0);
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
pc PC(clear, clock, PCin, IncPC, BusMuxOut, BusMuxInPC);
register IR(clear, clock, IRin, BusMuxOut, IRout);
register Y(clear, clock, Yin, BusMuxOut, BusMuxInY);

//Devices
MDR MDR(clear, clock, MDRin, BusMuxOut, RAMDataout, read, BusMuxInMDR);
register #(.DATA_WIDTH_IN(32), .DATA_WIDTH_OUT(9)) 
		MAR(.clear(clear), .clock(clock), .enable(MARin), .BusMuxOut(BusMuxOut), .BusMuxIn(MARaddrOut));
RAM RAM(BusMuxInMDR, MARaddrOut, read, write, RAMenable, RAMDataout);
register InPort(clear, clock, InPortIn, BusMuxOut, BusMuxInPortIn);
//register CSign(clear, clock, CSignIn, BusMuxOut, BusMuxInCSign);
ALU alu(BusMuxInY, BusMuxOut, aluControl, ZMuxIn);
ZMux ZMUX(ZMuxIn, ZSelect, ZMuxEnbale, BusMuxInZMux);
conFF CONFF(conin, BusMuxOut, IRout, conOut);

//Select and Encode
SE SelectAndEncode(Gra, Grb, Grc, Rin, Rout, BAout, IRout, 
	BusMuxInCSign,
	{R15in, R14in, R13in, R12in, R11in, R10in, R9in, R8in, R7in, R6in, R5in, R4in, R3in, R2in, R1in, R0in},
	{R15out, R14out, R13out, R12out, R11out, R10out, R9out, R8out, R7out, R6out, R5out, R4out, R3out, R2out, R1out, R0out}
);

//bus
Bus bus(BusMuxInR0, BusMuxInR1, BusMuxInR2, BusMuxInR3, BusMuxInR4, BusMuxInR5, BusMuxInR6, BusMuxInR7,
	BusMuxInR8, BusMuxInR9, BusMuxInR10, BusMuxInR11, BusMuxInR12, BusMuxInR13, BusMuxInR14, BusMuxInR15,
	BusMuxInHI, BusMuxInLO, BusMuxInZHI, BusMuxInZLO, BusMuxInZMux, BusMuxInPC, BusMuxInMDR, BusMuxInPortIn, BusMuxInCSign,
	R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out, 
	R8out, R9out, R10out, R11out, R12out, R13out, R14out, R15out,
	HIout, LOout, ZHIout, ZLOout, ZMuxOut, PCout, MDRout, PortInout, CSignout,
	S0, S1, S2, S3, S4, BusMuxOut);
assign DummyOut = BusMuxInR1;
endmodule
