`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2025 20:48:54
// Design Name: 
// Module Name: factorial_tb
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


module factorial_tb();

reg [7:0] num;
wire [31:0] result;

factorial dut(.num(num), .result(result));

initial begin
    num = 5; #10; 
    num = 7; #10;
end

initial begin
    $monitor("num = %0d, result = %0d", num, result);
end
      
endmodule

