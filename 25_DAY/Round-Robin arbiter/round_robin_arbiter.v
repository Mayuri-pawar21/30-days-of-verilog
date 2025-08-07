`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2025 16:35:23
// Design Name: 
// Module Name: round_robin_arbiter
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


module round_robin_arbiter(
    input clk, rst,
    input [3:0] req_sigs,
    output reg [3:0] grant_sigs );

reg [2:0] curr_state; 
reg [2:0] next_state;

parameter [2:0] IDLE = 3'b000;
parameter [2:0] STATE_0 = 3'b001;
parameter [2:0] STATE_1 = 3'b010; 
parameter [2:0] STATE_2 = 3'b011;
parameter [2:0] STATE_3 = 3'b100;


always @(posedge clk or posedge rst) begin
  if(rst)
    curr_state <= IDLE;
  else 
    curr_state <= next_state;
end

always @(*) begin
  
  case(curr_state)

    IDLE: begin
            if(req_sigs[0])
              next_state = STATE_0;
            else if(req_sigs[1])
              next_state = STATE_1;  
            else if(req_sigs[2])
              next_state = STATE_2;
            else if(req_sigs[3])
              next_state = STATE_3;
            else
              next_state = IDLE;
          end

    STATE_0: begin
               if(req_sigs[1])
                 next_state = STATE_1;  
               else if(req_sigs[2])
                 next_state = STATE_2;
               else if(req_sigs[3])
                 next_state = STATE_3;
               else if(req_sigs[0])
                 next_state = STATE_0;
               else
                 next_state = IDLE;
             end

    STATE_1: begin
               if(req_sigs[2])
                 next_state = STATE_2;
               else if(req_sigs[3])
                 next_state = STATE_3;
               else if(req_sigs[0])
                 next_state = STATE_0;
               else if(req_sigs[1])
                 next_state = STATE_1;
               else
                 next_state = IDLE;
             end

    STATE_2: begin
               if(req_sigs[3])
                 next_state = STATE_3;
               else if(req_sigs[0])
                 next_state = STATE_0;
               else if(req_sigs[1])
                 next_state = STATE_1;
               else if(req_sigs[2])
                 next_state = STATE_2;
               else
                 next_state = IDLE;
             end

    STATE_3: begin
               if(req_sigs[0])
                 next_state = STATE_0;  
               else if(req_sigs[1])
                 next_state = STATE_1;
               else if(req_sigs[2])
                 next_state = STATE_2;
               else if(req_sigs[3])
                 next_state = STATE_3;
               else
                 next_state = IDLE;
             end

   default: begin
             if(req_sigs[0])
               next_state = STATE_0;
             else if(req_sigs[1])
               next_state = STATE_1;
             else if(req_sigs[2])
               next_state = STATE_2;
             else if(req_sigs[3])
               next_state = STATE_3;
             else
               next_state = IDLE;
           end

  endcase
end

always @(*) begin
  
  case(curr_state)

    STATE_0 : grant_sigs = 4'b0001;
    STATE_1 : grant_sigs = 4'b0010; 
    STATE_2 : grant_sigs = 4'b0100;
    STATE_3 : grant_sigs = 4'b1000;

    default : grant_sigs = 4'b0000; 

  endcase

end

endmodule



