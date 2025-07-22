`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 09:08:53
// Design Name: 
// Module Name: Ripple_carry_adder
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


module Ripple_carry_adder(input[3:0]a,input[3:0]b,input cin,output[3:0]sum ,output cout);
wire[2:0]w;
Full_adder FA1(.A(a[0]),.B(b[0]),.cin(cin),.Sum(sum[0]),.Cout(w[0]));
Full_adder FA2(.A(a[1]),.B(b[1]),.cin(w[0]),.Sum(sum[1]),.Cout(w[1]));
Full_adder FA3(.A(a[2]),.B(b[2]),.cin(w[1]),.Sum(sum[2]),.Cout(w[2]));
Full_adder FA4(.A(a[3]),.B(b[3]),.cin(w[2]),.Sum(sum[3]),.Cout(cout));

endmodule

module Full_adder(input A,input B,input cin,output Sum,output Cout);
assign Sum=A^B^cin;
assign Cout= (A&B) | cin & (A^B);

endmodule 
