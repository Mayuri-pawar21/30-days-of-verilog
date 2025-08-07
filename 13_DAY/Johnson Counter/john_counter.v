`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2025 14:33:06
// Design Name: 
// Module Name: john_counter
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


module john_counter( input clk,reset,output[3:0] q );

reg [3:0] q_reg; 

always @(posedge clk or posedge reset) begin
  if (reset) 
    q_reg <= 4'b0000;
  else
    q_reg <= {q_reg[2:0], ~q_reg[3]};
end

assign q = q_reg;
endmodule
