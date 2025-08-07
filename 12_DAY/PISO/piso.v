`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2025 19:33:53
// Design Name: 
// Module Name: piso
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


module piso(
    input clk,            // Clock input
    input reset,          // Active-high reset
    input load,           // Load signal to load data
    input [7:0] parallel_in, // Parallel data input (8-bit)
    output reg serial_out   // Serial data output
);

    reg [7:0] shift_reg;  // 8-bit shift register to hold the data
    integer i;            // Loop variable for shifting

    // On reset, clear the shift register
    always @(posedge clk or posedge reset) begin
        if (reset) begin
            shift_reg <= 8'b0;  // Reset the shift register to zero
            serial_out <= 0;    // Reset the serial output
        end else if (load) begin
            shift_reg <= parallel_in; // Load the parallel input data into the shift register
        end else begin
            // Shift the data in the register and output the MSB (most significant bit)
            serial_out <= shift_reg[7];  // Output the MSB
            shift_reg <= shift_reg << 1; // Shift the register left
        end
    end
endmodule
