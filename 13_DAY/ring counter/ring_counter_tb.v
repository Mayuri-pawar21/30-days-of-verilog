`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 31.07.2025 14:24:24
// Design Name: 
// Module Name: ring_counter_tb
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


module ring_counter_tb();
reg clk;
reg reset;
wire [3:0] q;
  
ring_counter dut( .clk(clk),  .reset(reset), .q(q) );
  
initial begin
  clk = 0;
  forever #5 clk = ~clk;
end

initial begin
  reset = 1; 
  #10 reset = 0;
  #200 $finish;
end
      
initial begin
  $monitor("%d : q = %b", $time, q);
end

endmodule
