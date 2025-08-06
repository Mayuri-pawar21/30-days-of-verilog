`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 12:02:52
// Design Name: 
// Module Name: sr_flipflop
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


module sr_flipflop(input clk,input reset,input s,input r,output reg q);
always @(posedge clk)
begin 
if(reset)
q<=1'b0;
else 
case({s,r})
  2'b10: q<=1'b1;
  2'b01: q<=1'b0;
  default : q<=q;
  
  endcase
  end
  
endmodule
