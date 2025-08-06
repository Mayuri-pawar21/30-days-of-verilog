`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2025 14:50:32
// Design Name: 
// Module Name: mod_n_tb
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


module mod_n_tb();

parameter N = 15;
parameter Width = 4;

reg clk;
reg rstn;
wire [Width-1:0] out;

mod_n_counter dut (.clk(clk), .rstn(rstn), .out(out));

always #10 clk = ~clk;

initial begin
{clk, rstn} <= 0;

$monitor("T=%0t rstn=%0b out=0x%0h", $time, rstn, out);
repeat(2) @(posedge clk);
rstn <= 1;
repeat (20) @ (posedge clk);
$finish;
end

endmodule

