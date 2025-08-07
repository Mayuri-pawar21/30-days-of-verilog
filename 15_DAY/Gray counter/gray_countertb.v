`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2025 19:59:36
// Design Name: 
// Module Name: gray_countertb
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


module gray_countertb();
reg clk,reset;
wire [3:0] gray_count;

gray_counter dut(clk, reset, gray_count);

initial begin
clk= 1'b0;
forever #5 clk= ~clk;
end

initial begin
reset= 1'b1;
#10;
reset= 1'b0;
end

initial begin
$monitor("\t\t counter: %d", gray_count);
#175 $finish;
end
endmodule

