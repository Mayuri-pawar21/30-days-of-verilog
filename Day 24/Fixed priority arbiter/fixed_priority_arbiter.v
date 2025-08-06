`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2025 10:06:03
// Design Name: 
// Module Name: fixed_priority_arbiter
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


module fixed_priority_arbiter(
 input clk, reset,
    input [7:0] req,
    output reg [7:0] grant); 

// grant[0] is the highest priority and grant[7] is the lowest priority.
    
    always @(posedge clk or posedge reset) begin
    
    if(reset) grant <= 8'b00000000;
    else begin
    
    if (req[0])
    grant <= 8'b00000001;
    
    else if (req[1])
    grant <= 8'b00000010;
    
    else if (req[2])
    grant <= 8'b00000100;
    
    else if (req[3])
    grant <= 8'b00001000;
    
    else if (req[4])
    grant <= 8'b00010000;
    
    else if (req[5])
    grant <= 8'b00100000;
    
    else if (req[6])
    grant <= 8'b01000000;
    
    else if (req[7])
    grant <= 8'b10000000;
    
    else
    grant <= 8'b00000000;
    
    end
    end
endmodule
