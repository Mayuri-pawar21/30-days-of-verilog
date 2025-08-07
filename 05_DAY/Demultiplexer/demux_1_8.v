`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 10:05:07
// Design Name: 
// Module Name: demux_1_8
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


module demux_1_8(in,sel,out);
input in;
input[2:0] sel;
output reg [7:0] out;

always@(*)begin 
  out = 8'b0;  
case(sel)
3'b000: out[0]=in;
3'b001: out[1]=in;
3'b010: out[2]=in;
3'b011: out[3]=in;
3'b100: out[3]=in;
3'b101: out[4]=in;
3'b110: out[5]=in;
3'b111: out[6]=in;

default: out=8'b0;
endcase
end

endmodule
