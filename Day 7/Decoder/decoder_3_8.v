`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 14:22:39
// Design Name: 
// Module Name: decoder_3_8
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


module decoder_3_8(input[2:0] in,output reg[7:0] out);
integer i;
always @(*) begin
    out = 8'b00000000; 
    for (i = 0; i < 8; i = i + 1) begin
        if (i == in) begin
            out[i] = 1'b1; 
        end
    end
end
endmodule
