`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 14:56:55
// Design Name: 
// Module Name: gray_to_binary
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


module gray_to_binary(input[3:0]gray,output reg[3:0]bin );

always@(gray)
begin 
bin[3]= gray[3];
bin[2]= gray[3]^gray[2];
bin[1]= gray[2]^gray[1];
bin[0]= gray[1]^gray[0];

end
endmodule
