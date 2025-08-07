`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 22.07.2025 08:42:25
// Design Name: 
// Module Name: Half_adder_tb
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


module Half_adder_tb();
reg t_a,t_b;
wire SUM,CARRY;

Half_adder ha(.a(t_a),.b(t_b),.sum(SUM),.carry(CARRY));

initial begin 
t_a=0;t_b=0;
#10;
t_a=0;t_b=1;
#10;
t_a=1;t_b=0;
#10
t_a=1;t_b=1;
#10
$stop;
end

endmodule
