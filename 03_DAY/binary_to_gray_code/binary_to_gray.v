`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 14:19:56
// Design Name: 
// Module Name: binary_to_gray
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



module binary_to_gray(input[3:0]bin,input[3:0]gry);
assign gry[3]=bin[3];
assign gry[2]=bin[3]^bin[2];
assign gry[1]=bin[2]^bin[1];
assign gry[0]=bin[1]^bin[0];
endmodule
