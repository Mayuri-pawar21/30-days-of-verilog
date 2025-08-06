`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2025 13:57:54
// Design Name: 
// Module Name: ROM_8BIT
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


module ROM_8BIT(  input wire [2:0] addr,
    output wire [7:0] data   ); 

    assign data = (addr == 3'b000) ? 8'b00110011 :  // Define data for each memory location
                 (addr == 3'b001) ? 8'b11001100 :
                 (addr == 3'b010) ? 8'b01010101 :
                 (addr == 3'b011) ? 8'b10101010 :
                 (addr == 3'b100) ? 8'b11110000 :
                 (addr == 3'b101) ? 8'b00001111 :
                 (addr == 3'b110) ? 8'b10000001 :
                 (addr == 3'b111) ? 8'b01111110 : 8'b00000000;  // Default value for invalid addresses

endmodule