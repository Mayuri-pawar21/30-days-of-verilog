`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2025 19:36:48
// Design Name: 
// Module Name: gray_counter
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


module gray_counter(input clk,reset,
    output reg [3:0] gray_count);
reg [3:0] binary_count;
always @(posedge clk )
begin
if(reset)begin 
binary_count=4'b0000;
gray_count=4'b0000;
end
else begin
 binary_count=binary_count+1;
 gray_count= {binary_count[3], 
               binary_count[3] ^ binary_count[2], 
               binary_count[2] ^ binary_count[1], 
               binary_count[1] ^ binary_count[0]};
end
 end
 
endmodule
