`timescale 1ns/10ps
module loadI_tb();
//reg R0out, R1out, R2out, R3out, R4out, R5out, R6out, R7out;
//reg R0in, R1in, R2in, R3in, R4in, R5in, R6in, R7in;
reg PCout, IncPC, ZLOout, MDRout, RAMenable, Cout;
reg MARin, PCin, MDRin, IRin, Yin;
reg Gra, Grb, Grc, Rin, Rout, BAout;
reg clock, read, write, clear, conin;
reg ZMuxEnable, ZSelect, ZMuxOut, ZLOin;
reg R15in, ZHIout;
wire out;
reg [4:0] aluControl;
reg [3:0] present_state;
reg OutPortenable, PortInout;

DataPath DP(PCout, IncPC, ZLOout, ZLOin, Cout, MDRout, RAMenable,
				MARin, PCin, MDRin, IRin,
				Gra, Grb, Grc, Rin, Rout, BAout,
				clock, read, write, clear, conin,
				ZMuxEnable, ZSelect, ZMuxOut,
				OutPortenable, PortInout, R15in, ZHIout,
				aluControl, Yin, out);

parameter init = 4'b0, T0 = 4'd1, T1 = 4'd2, T2 = 4'd3, T3 = 4'd4, 
			 T4 = 4'd5, T5 = 4'd6;
			 
initial begin clock = 0; present_state = init; end
always #10 clock = ~clock;

always @ (negedge clock) 
	present_state = present_state + 1;
	
always @(present_state) begin
	case(present_state)
		init: begin
			PCout <= 0; IncPC<= 0; ZLOout <= 0; MDRout <= 0; RAMenable <= 0;
			MARin<= 0; PCin <= 0; MDRin <= 0; IRin <= 0; Yin <= 0;
			Gra <= 0; Grb <= 0; Grc <= 0; Rin <= 0; Rout <= 0; BAout <= 0;
			clock <= 0; read <= 0; write <= 0; clear <= 0; conin <= 0;
			ZMuxEnable <= 0; ZSelect <= 0; ZMuxOut <= 0; ZLOin <= 0; Cout <= 0;
			OutPortenable <= 0; PortInout <= 0; R15in <= 0;ZHIout <= 0;
		end
		T0: begin
			PCout <= 1; MARin <= 1; IncPC <= 1;
			#15 PCout <= 0; MARin <= 0; IncPC <= 0; ZLOin <= 0;
		end
		T1: begin
			read <= 1; RAMenable <= 1; MDRin <= 1;
			#15 ZLOout <= 0; PCin <= 0; read <= 0; MDRin <= 0; RAMenable <= 0;
		end
		T2: begin
			MDRout <= 1; IRin <= 1;
			#15 MDRout <= 0; IRin <= 0;
		end
		T3: begin
			Grb <= 1; BAout <= 1; Yin <= 1;
			#15 Grb <= 0; BAout <= 0; Yin <= 0;
		end
		T4: begin
			Cout <= 1; aluControl <= 5'b00011;
			#15 Cout <= 0;
		end
		T5: begin
			 ZSelect <= 0; ZMuxEnable <= 1; ZMuxOut <= 1; Gra <= 1; Rin <= 1;
			#15 ZMuxEnable <= 0; ZMuxOut <= 0; Gra <= 0; Rin <= 0;
		end
	endcase
end

//initial begin #10 $finish; end
endmodule
