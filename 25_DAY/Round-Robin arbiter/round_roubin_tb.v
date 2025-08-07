`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2025 16:36:39
// Design Name: 
// Module Name: round_roubin_tb
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


module round_roubin_tb();


reg clk;
reg rst;
reg [3:0] req_sigs;
wire [3:0] grant_sigs; 

round_robin_arbiter dut ( .clk(clk), .rst(rst), .req_sigs(req_sigs), 
.grant_sigs(grant_sigs) );

always #5 clk = ~clk;

initial begin
  clk = 0;
  rst = 0; 
  req_sigs = 0;

  req_sigs = 4'b1011;
  #20;
  req_sigs = 4'b1111;
  #20;
  req_sigs = 4'b1000;
  #20;
  req_sigs = 4'b1001;
  #20;
  req_sigs = 4'b1100;
  #20;
  $finish;
end

initial begin
  $monitor("req_sigs = %b, grant_sigs = %b", req_sigs, grant_sigs);
end

endmodule

