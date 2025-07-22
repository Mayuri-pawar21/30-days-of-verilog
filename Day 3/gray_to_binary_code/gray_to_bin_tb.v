`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 15:03:52
// Design Name: 
// Module Name: gray_to_bin_tb
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


module gray_to_bin_tb( );
reg[3:0]gray;
wire[3:0]bin;
integer i;
gray_to_binary dut(.gray(gray),.bin(bin));

initial begin
    $display("Input (Gray) | Output (Binary)");

    for (i = 0; i < 16; i = i + 1) begin
    gray = i;
      
    $display("%4b          | %4b", gray, bin);
    #10;
    end
    $finish;
  end
endmodule
