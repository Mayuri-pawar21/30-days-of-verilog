`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2025 10:12:10
// Design Name: 
// Module Name: fixed_priority_arbiter_tb
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


module fixed_priority_arbiter_tb();

reg clk;
reg reset;
reg [7:0] req;
wire [7:0] grant;

fixed_priority_arbiter dut (.clk(clk), .reset(reset), .req(req), .grant(grant));

initial begin
clk = 0;
forever #5 clk = ~clk;
end

initial begin 

reset = 1;
req = 0;

  #10 reset = 0;

  #10 req = 8'b11110000;
  
  #10 req = 8'b00001111;

  #10 req = 8'b10101010;

  #10 req = 0;
  
  #10 $finish;

end

endmodule

