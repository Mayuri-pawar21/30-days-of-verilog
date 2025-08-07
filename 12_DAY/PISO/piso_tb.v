`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2025 20:18:08
// Design Name: 
// Module Name: piso_tb
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


module piso_tb();
    reg clk;
    reg reset;
    reg load;
    reg [7:0] parallel_in;
    wire serial_out;

    // Instantiate the PISO shift register
    piso uut (
        .clk(clk),
        .reset(reset),
        .load(load),
        .parallel_in(parallel_in),
        .serial_out(serial_out)
    );

    // Clock generation
    always begin
        #5 clk = ~clk;  // Toggle clock every 5 time units
    end

    initial begin
        // Initialize signals
        clk = 0;
        reset = 0;
        load = 0;
        parallel_in = 8'b10101010;  // Example parallel input

        // Test Case 1: Reset the register
        #10 reset = 1;  // Apply reset
        #10 reset = 0;  // Release reset

        // Test Case 2: Load data and shift
        #10 load = 1;  // Load data
        #10 load = 0;  // Start shifting

        // Test Case 3: Observe serial output
        #100;  // Let the shift register shift out data
        $stop;  // Stop simulation
    end
endmodule


