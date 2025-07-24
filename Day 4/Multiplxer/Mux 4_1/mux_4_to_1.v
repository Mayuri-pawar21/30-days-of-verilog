`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 17:31:35
// Design Name: 
// Module Name: mux_4_to_1
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


module mux_4_to_1(input [3:0] i,input [1:0] sel,output reg  y);

assign data_out = (sel == 2'b00) ? i[0] :
                   (sel == 2'b01) ? i[1] :
                   (sel == 2'b10) ? i[2] :
                                   i[3];
endmodule
