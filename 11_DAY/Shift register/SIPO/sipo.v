`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2025 09:50:16
// Design Name: 
// Module Name: sipo
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


module sipo(input clk,input reset,input serial_in,output[3:0] parallel_out);
reg [3:0] shift_reg;

always @(posedge clk or posedge reset) begin
  if (reset) begin
    shift_reg <= 4'b0000;
  end else begin
    shift_reg[0] <= serial_in;
    shift_reg[1] <= shift_reg[0];
    shift_reg[2] <= shift_reg[1];
    shift_reg[3] <= shift_reg[2];
  end
end
assign parallel_out=shift_reg;
endmodule
