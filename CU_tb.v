`timescale 1ns/10ps
module CU_tb();
reg clk, reset;

initial begin clk = 1; reset = 0; end
always #10 clk = ~clk;

DataPath CPU(clk, reset);

always @(negedge clk) reset = 1;

endmodule
