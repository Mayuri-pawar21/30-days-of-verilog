`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2025 16:58:08
// Design Name: 
// Module Name: pseudo_random_tb
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


module pseudo_random_tb();

  reg clk; 
  reg rst;
  wire [3:0] rand_out;

pseudorandom Dut( .clk(clk), .rst(rst), .rand_out(rand_out) );

  always begin
    #5 clk = ~clk; 
  end

  initial begin
    clk = 0;
    rst = 0;

    rst = 1;
    #10 rst = 0;

    $monitor("Time %t\t Output %b", $time, rand_out);

    #100 $finish;
  end

endmodule
