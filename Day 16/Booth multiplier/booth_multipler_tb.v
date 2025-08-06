`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2025 20:28:38
// Design Name: 
// Module Name: booth_multipler_tb
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


module booth_multipler_tb();
  reg signed [3:0] A;
  reg signed [3:0] B;

  wire signed [7:0] PRODUCT;

  Booth_Multiplier dut ( .A(A), .B(B), .PRODUCT(PRODUCT) );

  reg clk = 0;

  always begin
    #5 clk = ~clk;
  end

  initial begin
    A = 4'b0110;
    B = 4'b0011;
    #10; 
    $display("A = %d, B = %d, PRODUCT = %d", A, B, PRODUCT);
    if (PRODUCT === (A * B))
      $display("Test Case 1 PASSED");
    else
      $display("Test Case 1 FAILED");

    $finish;
  end
  always begin
    #5 clk = ~clk;
  end

endmodule
