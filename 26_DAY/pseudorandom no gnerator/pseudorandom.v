`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2025 16:56:20
// Design Name: 
// Module Name: pseudorandom
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


module pseudorandom(
  input wire clk, rst,
  output wire [3:0] rand_out );

  reg [3:0] lfsr_state;  // 4-bit LFSR state register

  always @(posedge clk or posedge rst) begin
    if (rst) begin
      lfsr_state <= 4'b1001; // Initial state (can be any non-zero value)
    end else begin
      // XOR taps for a 4-bit LFSR: 4, 3
      lfsr_state <= {lfsr_state[2:0], lfsr_state[3] ^ lfsr_state[0]};
    end
  end

  assign rand_out = lfsr_state;

endmodule

