`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2025 20:47:09
// Design Name: 
// Module Name: factorial
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


module factorial(
    input [7:0] num,
    output reg [31:0] result
);

integer i; 

always @(*) begin
    result = 1;
    for (i=1; i<=num; i=i+1) 
        result = result * i;
end

endmodule

