`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 10:10:54
// Design Name: 
// Module Name: Full_adder_tb
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


module Full_adder_tb();
reg a,b,cin;
wire sum,cout;

Full_adder fa1(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));

initial begin 

a=1'b0;b=1'b0;cin=1'b0;
#10a=1'b0;b=1'b0;cin=1'b1;
#10a=1'b0;b=1'b1;cin=1'b0;
#10a=1'b0;b=1'b1;cin=1'b1;
#10a=1'b1;b=1'b0;cin=1'b0;
#10a=1'b1;b=1'b0;cin=1'b1;
#10a=1'b1;b=1'b1;cin=1'b0;
#10a=1'b1;b=1'b1;cin=1'b1;
#10 $stop;
end
endmodule
