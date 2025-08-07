`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2025 21:06:44
// Design Name: 
// Module Name: siso_sr
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


module siso_sr(input clk,input serial_in,input serial_out );

reg[3:0] shift_reg;
always @(posedge clk)begin 
 shift_reg[0]<=serial_in;
 shift_reg[1]<=shift_reg[0];
 shift_reg[2]<=shift_reg[1];
 shift_reg[3]<=shift_reg[2];
 end
 assign serial_out=shift_reg[3];
endmodule
