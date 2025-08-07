`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 10:56:24
// Design Name: 
// Module Name: sr_latch_tb
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


module sr_latch_tb();
reg r,s;
wire q,qbar;

sr_latch dut(.s(s),.r(r),.q(q),.qbar(qbar));

initial  begin 
s=1'b0;r=1'b0;
$monitor("%d s %b r %b q %b qbar %b",$time,s,r,q,qbar);
s=1'b0;r=1'b0;#10;
s=1'b1;r=1'b0;#10;
s=1'b0;r=1'b1;#10;
s=1'b1;r=1'b1;#10;
$finish;
end 
endmodule
