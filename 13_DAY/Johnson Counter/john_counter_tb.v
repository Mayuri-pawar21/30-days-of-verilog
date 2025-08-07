`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2025 14:37:07
// Design Name: 
// Module Name: john_counter_tb
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


module john_counter_tb();

reg clk;
reg rst;

wire [3:0] q;

john_counter dut ( .clk(clk),  .reset(rst), .q(q) );

always #5 clk = ~clk; 

initial begin
  clk = 0;
  rst = 1;

  #15;
  rst = 0;
    
  #200;

  $finish;
end

always @(posedge clk) begin
  $display("At time %t, q = %b", $time, q);
end
endmodule
