`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2025 20:38:21
// Design Name: 
// Module Name: dff_tb
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


module dff_tb();
reg d; 
reg clk;
wire q;
wire qbar;

d_ff dut(.d(d),.clk(clk),.q(q),.qbar(qbar));
always #5 clk = ~clk;
initial begin 
 clk = 0;
  d = 0; #10;
  d = 1; #10;
  d = 0; #10;
  d = 1; #10;

  $finish;
end  

initial begin
  $monitor("At %t: d = %b, q = %b, qbar = %b", $time, d, q, qbar);
end
endmodule
