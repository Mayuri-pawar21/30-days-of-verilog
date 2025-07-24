`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 13:47:44
// Design Name: 
// Module Name: octal_to_binary
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


module octal_to_binary( input wire[7:0] in,output reg[2:0]out );
always @(*)begin
 case(in)
8'b0000_0001 : out  = 3'b000; 
        8'b0000_0010 : out  = 3'b001;
        8'b0000_0100 : out  = 3'b010;
        8'b0000_1000 : out  = 3'b011;
        8'b0001_0000 : out  = 3'b100;
        8'b0010_0000 : out  = 3'b101;
        8'b0100_0000 : out  = 3'b110;
        8'b1000_0000 : out  = 3'b111;
default: out=3'b0;
endcase
end
endmodule
