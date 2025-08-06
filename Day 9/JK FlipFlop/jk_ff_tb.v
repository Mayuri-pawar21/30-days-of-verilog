`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 28.07.2025 17:35:08
// Design Name: 
// Module Name: jk_ff_tb
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


module jk_ff_tb();
reg j,k,clk;
wire q;

jk_ff dut(.j(j),.k(k),.clk(clk),.q(q));
always #5 clk = ~clk; 

initial begin
  clk = 0; 
  j = 0; k = 0; #10;
  j = 0; k = 1; #10;
  j = 1; k = 0; #10;
  j = 1; k = 1; #10;

  $finish; 
end

initial begin
  $monitor("At %t: j = %b, k = %b, q = %b", $time, j, k, q); 
end

endmodule
