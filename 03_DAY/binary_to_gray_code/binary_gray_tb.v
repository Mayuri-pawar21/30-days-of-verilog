`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 14:28:19
// Design Name: 
// Module Name: binary_gray_tb
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


module binary_gray_tb();
reg[0:3]bin;
wire[3:0]gry;
integer i;

binary_to_gray dut(.bin(bin),.gry(gry));

initial begin 
bin = 4'b0000;
    $display("Input (Binary) | Output (Gray)");
    for (i = 0; i < 16; i = i + 1) begin
    $display("%4b     | %4b", bin, gry);
    bin = bin + 1;
    #10;
    end
    $finish;
  end
endmodule
