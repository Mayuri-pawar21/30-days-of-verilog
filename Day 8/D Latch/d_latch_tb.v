`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2025 11:38:19
// Design Name: 
// Module Name: d_latch_tb
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


module d_latch_tb();
reg d,e;
wire q,qbar; 

d_latch dut(.e(e),.d(d),.q(q),.qbar(qbar));

initial begin 
e=0;d=0; 
$display("Time D EN Q Qbar");
    $monitor("%d %b %b %b %b", $time, d, e, q, qbar);

    e = 1;
    d = 1; #10;
    d = 0; #10;

    e = 0;
    d = 1; #10;
    d = 0; #10;
    $finish;
  end
endmodule
