`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2025 14:19:42
// Design Name: 
// Module Name: ring_counter
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


module ring_counter(input clk,reset,output reg [3:0] q );

always @(posedge clk or posedge reset) begin 
if(reset)
begin 
q<=4'b1000;
end
else
q<={q[2:0],q[3]};
end

endmodule
