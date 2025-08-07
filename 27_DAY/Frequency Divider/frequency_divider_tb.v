`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2025 17:36:47
// Design Name: 
// Module Name: frequency_divider_tb
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


module frequency_divider_tb();
reg clk_in;
reg [7:0] divisor;
wire clk_out;

Frequency_divider dut ( .clk_in(clk_in), .divisor(divisor), .clk_out(clk_out) );

initial begin
    clk_in = 1'b0;
    divisor = 8'd8;
    #10;
    repeat (20) begin
        #5 clk_in = ~clk_in;
    end
    #10 $finish;
end

always @(posedge clk_out) begin
    $display("clk_out = %b", clk_out);
end

endmodule

