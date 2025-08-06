`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2025 13:47:09
// Design Name: 
// Module Name: ROM_1BIT
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


module ROM_1BIT(input wire[1:0] addr,output wire data);

assign data=(addr==2'b00)? 1'b0:
             (addr==2'b01)? 1'b1:
             (addr==2'b10)? 1'b0:
             (addr==2'b11)? 1'b1:1'b0;
             
endmodule
