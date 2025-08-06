`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2025 09:07:45
// Design Name: 
// Module Name: moore_detector
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


module moore_detector(input Din, 
    input Clock,
    input Reset,
    output reg Y );

parameter SIN = 3'd0, S1 = 3'd1, S11 = 3'd2, S110 = 3'd3, S1101 = 3'd4; 

reg [2:0] state, next_state;

always @(posedge Clock, posedge Reset) begin
  if(Reset) 
    state <= SIN;
  else
    state <= next_state; 
end

always @(*) begin
  case(state)
    SIN: begin
      next_state = Din ? S1 : SIN;
      Y = 1'b0;
    end
    
    S1: begin
      next_state = Din ? S11 : SIN;
      Y = 1'b0;  
    end
    
    S11: begin
      next_state = Din ? S11 : S110;
      Y = 1'b0;
    end
    
    S110: begin
      next_state = Din ? S1101 : SIN;
      Y = 1'b0;
    end
    
    S1101: begin
      next_state = Din ? S11 : SIN;
      Y = 1'b1;
    end
  endcase
end

endmodule
