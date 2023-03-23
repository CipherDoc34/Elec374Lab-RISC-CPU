`timescale 1ns/10ps
module CU_tb();
reg clk, reset;

initial begin clk = 0; reset = 1; end
always #10 clk = ~clk;

DataPath DUT(clk, reset);
endmodule
