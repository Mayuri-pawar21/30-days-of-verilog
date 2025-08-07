`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2025 20:08:39
// Design Name: 
// Module Name: Trafic_light_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module Trafic_light_tb();

reg clk;
reg reset;

wire red;
wire yellow;
wire green;

trafic_light_controller dut( .clk(clk), .reset(reset), .red(red), .yellow(yellow),
  .green(green) );

always #5 clk = ~clk; 

initial begin
  clk = 0;
  reset = 1;
  #10 reset = 0;

  #100 $finish;
end

always @(posedge clk) begin
  $display("RED=%b YELLOW=%b GREEN=%b", red, yellow, green);
end

endmodule

