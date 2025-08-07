`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2025 14:42:40
// Design Name: 
// Module Name: mod_n_counter
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


module mod_n_counter #(parameter N = 15, parameter Width = 4)(
    input clk,
    input rstn,
    output reg [Width-1:0] out );
    
    always @(posedge clk)begin 
    
    if(!rstn)
    begin
    out <= 0;
    end
    else begin
    if (out == N-1)
    out <= 0;
    
    else
    out <= out + 1;
    
    end
    end
   
    endmodule
  
