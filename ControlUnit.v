`timescale 1ns/10ps
module ControlUnit(
	output reg PCout, PCin, IncPC, IRin,
					Zin, ZLOout, ZHIout, CSignout,
	output reg [4:0] aluControl,
	output reg	RAMenable, MDRout, MARin, MDRin, 
					Gra, Grb, Grc, Rin, Rout, BAout,
					read, write, clear, conin,
					ZMuxEnable, ZSelect, ZMuxOut,
					OutPortenable, PortInout, R15inC, Yin,
					HIout, HIin, LOout, LOin,
	input wire [31:0]IR,
	input wire conOut, clk, reset
);
reg [5:0]present_state, next_state;
initial begin present_state <= 0; next_state <= 0; end
parameter 
Reset_state = 6'd0, T0 = 6'd1, T1 = 6'd2, T2 = 6'd3, 
ld3 = 6'd4, ld4 = 6'd5, ld5 = 6'd6, ld6 = 6'd7, ld7 = 6'd8,
ldi3 = 6'd9, ldi4 = 6'd10, ldi5 = 6'd11,
st3 = 6'd12, st4 = 6'd13, st5 = 6'd14, st6 = 6'd15, st7 = 6'd16,
ALUi3 = 6'd17, ALUi4 = 6'd18, ALUi5 = 6'd19, 
ALU3 = 6'd20, ALU4 = 6'd21, ALU5 = 6'd22, 
notneg3 = 6'd23, notneg4 = 6'd24, notneg5 = 6'd25, 
muldiv3 = 6'd26, muldiv4 = 6'd27, muldiv5 = 6'd28, muldiv6 = 6'd29,
br3 = 6'd30, br4 = 6'd31, br5 = 6'd32, br6 = 6'd33, 
jr3 = 6'd34,
jal3 = 6'd35, jal4 = 6'd36,
in3 = 6'd37,
out3 = 6'd38,
mfhi3 = 6'd39,
mflo3 = 6'd40,
halt3 = 6'd41,
nop3 = 6'd42;

parameter ALUadd = 5'b00011, ALUand = 5'b00101, ALUor = 5'b00110;

parameter ld = 5'b00000, ldi = 5'b00001, st = 5'b00010, 
add = 5'b00011, sub = 5'b00100, ANDop = 5'b00101, ORop = 5'b00110,
shr = 5'b00111, shra = 5'b01000, shl = 5'b01001, ror = 5'b01010, rol = 5'b01011,
mul = 5'b01111, div = 5'b10000, neg = 5'b10001, NOTop = 5'b10010,
addi = 5'b01100, andi = 5'b01101, ori = 5'b01110, 
br = 5'b10011, jr = 5'b10100, jal = 5'b10101,
in = 5'b10110, out = 5'b10111, mfhi = 5'b11000, mflo = 5'b11001,
nop = 5'b11010, halt = 5'b11011;

always @(negedge clk, negedge reset) begin
	if(reset == 0) present_state <= Reset_state;
	else if (present_state == Reset_state || present_state == T0 || present_state == T1 || present_state == T2) begin
		case (present_state)
			Reset_state: present_state <= T0;
			T0: present_state <= T1;
			T1: present_state <= T2;
			T2: case(IR[31:27])
					ld: present_state <= ld3;
					ldi: present_state <= ldi3;
					st: present_state <= st3;
					add, sub, ANDop, ORop, shr, shra, shl, ror, rol: present_state <= ALU3;
					addi, andi, ori: present_state <= ALUi3;
					mul, div: present_state <= muldiv3;
					neg, NOTop: present_state <= notneg3;
					br: present_state <= br3;
					jr: present_state <= jr3;
					jal: present_state <= jal3;
					in: present_state <= in3;
					out: present_state <= out3;
					mfhi: present_state <= mfhi3;
					mflo: present_state <= mflo3;
					nop: present_state <= nop3;
					halt: present_state <= halt3;
					default: present_state <= T0;
				endcase
		endcase
	end
	else present_state <= next_state;
end

always @(present_state) begin
	case (present_state)
		Reset_state: begin
			PCout <= 0; IncPC<= 0; Zin <= 0; ZLOout <= 0; MDRout <= 0; RAMenable <= 0;
			MARin<= 0; PCin <= 0; MDRin <= 0; IRin <= 0; Yin <= 0;
			Gra <= 0; Grb <= 0; Grc <= 0; Rin <= 0; Rout <= 0; BAout <= 0;
			read <= 0; write <= 0; clear <= 0; conin <= 0;
			ZMuxEnable <= 0; ZSelect <= 0; ZMuxOut <= 0;  CSignout <= 0;
			OutPortenable <= 0; PortInout <= 0; R15inC <= 0;ZHIout <= 0; aluControl <= 5'd0;
		end
		T0: begin
			PCout <= 1; MARin <= 1; IncPC <= 1;
		end
		T1: begin
			PCout <= 0; MARin <= 0; IncPC <= 0;
			read <= 1; RAMenable <= 1; MDRin <= 1;
		end
		T2: begin
			read <= 0; RAMenable <= 0; MDRin <= 0;
			MDRout <= 1; IRin <= 1;
		end
		
//ld
			ld3: begin
				MDRout <= 0; IRin <= 0;
				Grb <= 1; BAout <= 1; Yin <= 1;
				next_state <= ld4;
			end
			ld4: begin
				Grb <= 0; BAout <= 0; Yin <= 0;
				CSignout <= 1; Zin <= 1; aluControl <= ALUadd;
				next_state <= ld5;
			end
			ld5: begin
				CSignout <= 0; Zin <= 0;
				ZLOout <= 1; MARin <= 1;
				next_state <= ld6;
			end
			ld6: begin
				ZLOout <= 0; MARin <= 1;
				read <= 1; MDRin <= 1; RAMenable <= 1;
				next_state <= ld7;
			end
			ld7: begin
				read <= 0; MDRin <= 0; RAMenable <= 0;
				MDRout <= 1; Gra <= 1; Rin <= 1;
				#15 MDRout <= 0; Gra <= 0; Rin <= 0;
				next_state <= T0;
			end
			
//ldi
			ldi3: begin
				MDRout <= 0; IRin <= 0;
				Grb <= 1; BAout <= 1; Yin <= 1;
				next_state <= ldi4;
			end
			ldi4: begin
				Grb <= 0; BAout <= 0; Yin <= 0;
				CSignout <= 1; aluControl <= ALUadd; Zin <= 1; 
				next_state <= ldi5;
			end
			ldi5: begin
				CSignout <= 0; Zin <= 0; 
				ZLOout <= 1; Gra <= 1; Rin <= 1;
				#15 ZLOout <= 0; Rin <= 0; Gra <= 0;
				next_state <= T0;
			end
			
//st
			st3: begin
				MDRout <= 0; IRin <= 0;
				Grb <= 1; BAout <= 1; Yin <= 1;
				next_state <= st4;
			end
			st4: begin
				Grb <= 0; BAout <= 0; Yin <= 0;
				CSignout <= 1; aluControl <= ALUadd; Zin <= 1;
				next_state <= st5;
			end
			st5: begin
				CSignout <= 0; Zin <= 0;
				ZLOout <= 1; MARin <= 1;
				next_state <= st6;
			end
			st6: begin
				ZLOout <= 0; MARin <= 0;
				Gra <= 1; Rout <= 1; MDRin <= 1;
				next_state <= st7;
			end
			st7: begin
				Gra <= 0; Rout <= 0; MDRin <= 0;
				write <= 1; RAMenable <= 1;
				#15 write <= 0; RAMenable <= 0;
				next_state <= T0;
			end
			
//ALU
			ALU3: begin
				MDRout <= 0; IRin <= 0;
				Grb <= 1; Rout <= 1; Yin <= 1;
				next_state <= ALU4;
			end
			ALU4: begin
				Grb <= 0; Rout <= 0; Yin <= 0;
				Grc <= 1; Rout <= 1; aluControl <= IR[31:27]; Zin <= 1;
				next_state <= ALU5;
			end
			ALU5: begin
				Grc <= 0; Rout <= 0; Zin <= 0;
				ZLOout <= 1; Gra <= 1; Rin <= 1;
				#15 ZLOout <= 0; Gra <= 0; Rin <= 0;
				next_state <= T0;
			end
			
//notneg
			notneg3: begin
				MDRout <= 0; IRin <= 0;
				Grb <= 1; Rout <= 1; Yin <= 1;
				next_state <= notneg4;
			end
			notneg4: begin
				Grb <= 0; Rout <= 0; Yin <= 0;
				CSignout <= 1; aluControl <= IR[31:27]; Zin <= 1;
				next_state <= notneg5;
			end
			notneg5: begin
				CSignout <= 0; Zin <= 0;
				Gra <= 1; Rin <= 1; ZLOout <= 1;
				#15 Gra <= 0; Rin <= 0; ZLOout <= 0;
				next_state <= T0;
			end
			
//Muldiv
			muldiv3: begin
				MDRout <= 0; IRin <= 0;
				Gra <= 1; Rout <= 1; Yin <= 1;
				next_state <= muldiv4;
			end
			muldiv4: begin
				Gra <= 0; Rout <= 0; Yin <= 0;
				Grb <= 1; Rout <= 1; aluControl <= IR[31:27]; Zin <= 1;
				next_state <= muldiv5;
			end
			muldiv5: begin
				Grb <= 0; Rout <= 0; Zin <= 0;
				ZLOout <= 1; LOin <= 1;
				next_state <= muldiv6;
			end
			muldiv6: begin
				ZLOout <= 0; LOin <= 0;
				ZHIout <= 1; HIin <= 1;
				#15 ZHIout <= 0; HIin <= 0;
				next_state <= T0;
			end
			
//ALUi
			ALUi3: begin
				MDRout <= 0; IRin <= 0;
				Grb <= 1; Rout <= 1; Yin <= 1;
				next_state <= ALUi4;
			end
			ALUi4: begin
				Grb <= 0; Rout <= 0; Yin <= 0;
				CSignout <= 1;
				case(IR[31:27])
					addi: aluControl <= ALUadd;
					andi: aluControl <= ALUand;
					ori: aluControl <= ALUor;
				endcase
				Zin <= 1; 
				next_state <= ALUi5;
			end
			ALUi5: begin
				CSignout <= 0; Zin <= 0;
				ZLOout <= 1; Gra <= 1; Rin <= 1;
				#15 ZLOout <= 0; Gra <= 0; Rin <= 0;
				next_state <= T0;
			end
			
//br
			br3: begin
				MDRout <= 0; IRin <= 0;
				Gra <= 1; Rout <= 1; #1 conin <= 1;
				next_state <= br4;
			end
			br4: begin
				Gra <= 0; Rout <= 0; conin <= 0;
				PCout <= 1; Yin <= 1;
				next_state <= br5;
			end
			br5: begin
				PCout <= 0; Yin <= 0;
				CSignout <= 1; aluControl <= ALUadd; Zin <= 1;
				next_state <= br6;
			end
			br6: begin
				CSignout <= 0; Zin <= 0;
				ZLOout <= 1; PCin <= conOut;
				#15 ZLOout <= 0; PCin <= 0;
				next_state <= T0;
			end

//jr
			jr3: begin
				MDRout <= 0; IRin <= 0;
				Gra <= 1; Rout <= 1; PCin <= 1;
				#15 Gra <= 0; Rout <= 0; PCin <= 0;
				next_state <= T0;
			end
			
//jal
			jal3: begin
				MDRout <= 0; IRin <= 0;
				R15inC <= 1; PCout <= 1;
				next_state <= jal4;
			end
			jal4: begin
				R15inC <= 0; PCout <= 0;
				Gra <= 1; Rout <= 1; PCin <= 1;
				#15 Gra <= 0; Rout <= 0; PCin <= 0;
				next_state <= T0;
			end
			
//in
			in3: begin
				MDRout <= 0; IRin <= 0;
				Gra <= 1; Rin <= 1; PortInout <= 1;
				#15 Gra <= 0; Rin <= 0; PortInout <= 0;
				next_state <= T0;
		end
		
//out
			out3: begin
				MDRout <= 0; IRin <= 0;
				Gra <= 1; Rout <= 1; OutPortenable <= 1;
				#15 Gra <= 0; Rout <= 0; OutPortenable <= 0;
				next_state <= T0;
			end
			
//mflo
			mflo3: begin
				MDRout <= 0; IRin <= 0;
				LOout <= 1; Gra <= 1; Rin <= 1;
				#15 LOout <= 0; Gra <= 0; Rin <= 0;
				next_state <= T0;
			end
			
//mfhi
			mfhi3: begin
				MDRout <= 0; IRin <= 0;
				HIout <= 1; Gra <= 1; Rin <= 1;
				#15 HIout <= 0; Gra <= 0; Rin <= 0;
				next_state <= T0;
			end

//halt 
			halt3: begin
				MDRout <= 0; IRin <= 0;
				next_state <= halt3;
			end
		
//nop 
			nop3: begin
				MDRout <= 0; IRin <= 0;
				next_state <= T0;
			end		
	endcase
end
endmodule
