`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2019 19:59:27
// Design Name: 
// Module Name: testb1
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
 `include "adder.sv" 
 reg r_BIT1 = 0;
 reg r_BIT2 = 0;
 wire w_SUM;
 wire w_CARRY;

module testb1(
    input .i_bit1(r_BIT1),
    input .i_bit2(r_BIT2),
    output .o_sum(w_SUM),
    output .o_carry(w_CARRY)
    );
initial
        begin
          r_BIT1 = 1'b0;
          r_BIT2 = 1'b0;
          #10;
          r_BIT1 = 1'b0;
          r_BIT2 = 1'b1;
          #10;
          r_BIT1 = 1'b1;
          r_BIT2 = 1'b0;
          #10;
          r_BIT1 = 1'b1;
          r_BIT2 = 1'b1;
          #10;
        end 
endmodule
