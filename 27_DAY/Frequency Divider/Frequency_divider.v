`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2025 17:35:23
// Design Name: 
// Module Name: Frequency_divider
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


module Frequency_divider( input clk_in,
    input [7:0] divisor,
    output reg clk_out
);

reg [7:0] counter = 8'd0;

always @(posedge clk_in) begin
    counter <= counter + 1;
    if (counter >= (divisor - 1)) begin
        counter <= 0;
    end
    clk_out <= (counter < (divisor/2))?1'b1:1'b0;
end

endmodule

