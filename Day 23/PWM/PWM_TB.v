`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2025 09:44:44
// Design Name: 
// Module Name: PWM_TB
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


module PWM_TB();
reg clk;
wire [3:0] out;
 PWM dut (.clk(clk), .out(out));

always begin
	clk=1;
	forever #5 clk= ~clk;
   end	
endmodule

