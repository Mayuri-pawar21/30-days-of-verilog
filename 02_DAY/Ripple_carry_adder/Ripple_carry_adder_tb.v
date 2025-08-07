`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 09:24:12
// Design Name: 
// Module Name: Ripple_carry_adder_tb
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


module Ripple_carry_adder_tb( );
reg[3:0]a,b;
reg cin;
wire[3:0]sum;
wire cout;

Ripple_carry_adder dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));

initial begin 
 cin = 0;
    a = 4'b0000; b = 4'b0000;
    #10;
    a = 4'b0001; b = 4'b0001; 
    #10;
    a = 4'b0010; b = 4'b0011;
    #10;
    a = 4'b0001; b = 4'b0110;
    #10;
    
    $display("SUM = %b, COUT = %b", sum, cout);
    $finish;
end 
endmodule
