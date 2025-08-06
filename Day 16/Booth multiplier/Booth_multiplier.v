`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.08.2025 20:26:13
// Design Name: 
// Module Name: Booth_multiplier
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


module Booth_multiplier(
  input signed [3:0] A,
  input signed [3:0] B,
  output reg signed [7:0] PRODUCT
);

  reg signed [7:0] M;     // Multiplicand
  reg signed [7:0] Q;     // Multiplier (with extra bit)
  reg        Q_1;
  reg signed [7:0] A_reg;
  integer i;

  always @(*) begin
    M = { {4{A[3]}}, A };   // Sign-extend A to 8 bits
    Q = { {4{B[3]}}, B };   // Sign-extend B to 8 bits
    A_reg = 8'b0;
    Q_1 = 1'b0;

    for (i = 0; i < 4; i = i + 1) begin
      case ({Q[0], Q_1})
        2'b01: A_reg = A_reg + M;
        2'b10: A_reg = A_reg - M;
        default: ; // do nothing
      endcase

      // Arithmetic Right Shift A_reg, Q, Q_1
      {A_reg, Q, Q_1} = {A_reg[7], A_reg, Q, Q_1} >>> 1;
    end

    PRODUCT = {A_reg[7:0], Q[3:0]};
  end

endmodule

