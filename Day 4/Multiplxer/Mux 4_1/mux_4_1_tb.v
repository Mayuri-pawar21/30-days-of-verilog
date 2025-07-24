`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.07.2025 09:35:42
// Design Name: 
// Module Name: mux_4_1_tb
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


module mux_4_1_tb();
reg [3:0] i;
reg [1:0] sel;
wire out;

mux_4_to_1 dut(.i(i),.sel(sel),.y(out));

initial begin 
i = 4'b0000;
    sel = 2'b00;

    $display("data_in = %b, sel = %b, data_out = %b", i, sel, out);

    sel = 2'b00;
    #10;
    $display("data_in = %b, sel = %b, data_out = %b", i, sel, out);

    sel = 2'b01;
    i = 4'b1010;
    #10;
    $display("data_in = %b, sel = %b, data_out = %b", i, sel, out);

    sel = 2'b10; 
   i = 4'b1100;
    #10;
    $display("data_in = %b, sel = %b, data_out = %b", i, sel, out);

    sel = 2'b11;
    i = 4'b1111;
    #10;
    $display("data_in = %b, sel = %b, data_out = %b", i, sel, out);
 $finish;
 end
endmodule
