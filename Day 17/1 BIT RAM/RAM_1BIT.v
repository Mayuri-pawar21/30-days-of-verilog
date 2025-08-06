`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2025 17:16:59
// Design Name: 
// Module Name: RAM_1BIT
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


module RAM_1BIT( input wire write_enable, write_data, read_enable,
    output reg read_data );

    reg memory_bit;

    always @(posedge write_enable or posedge read_enable)
    begin
        if (write_enable)
            memory_bit <= write_data;
        else if (read_enable)
            read_data <= memory_bit;
    end
endmodule
