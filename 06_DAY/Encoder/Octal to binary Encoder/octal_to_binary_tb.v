`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 13:56:11
// Design Name: 
// Module Name: octal_to_binary_tb
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


module octal_to_binary_tb();
reg[7:0] in;
wire[2:0]out;

octal_to_binary dut(.in(in),.out(out));

initial begin 
$monitor("octal=%b binary=%b",in,out);
 in  = 8'b0000_0001; #10;
 in  = 8'b0000_0010; #10;
 in  = 8'b0000_0100; #10;
 in  = 8'b0000_1000; #10;
 in  = 8'b0001_0000; #10;
 in  = 8'b0010_0000; #10;  
 in = 8'b0100_0000; #10;
 in  = 8'b1000_0000; #10;
 in  = 8'bXXXX_XXXX; #10;
 $finish;
 end 
endmodule
