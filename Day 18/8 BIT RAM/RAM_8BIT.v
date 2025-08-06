`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.08.2025 13:32:37
// Design Name: 
// Module Name: RAM_8BIT
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


module RAM_8BIT( input wire [7:0] address,
    input wire write_enable,
    input wire [7:0] write_data,
    input wire read_enable,
    output reg [7:0] read_data );

    reg [7:0] memory [0:255];

    always @(posedge write_enable or posedge read_enable)
    begin
        if (write_enable)
            memory[address] <= write_data;
        else if (read_enable)
            read_data <= memory[address];
    end

endmodule
