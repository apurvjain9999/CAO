`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.02.2019 21:51:00
// Design Name: 
// Module Name: carry_lookahead_adder
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
`include "FullAdder.v"

module carry_lookahead_adder(
    input [3:0] i_add1,
    input [3:0] i_add2,
    output [4:0] o_result
    );
    wire [4:0] w_C;
    wire [3:0] w_G, w_P, w_SUM;
    
    FullAdder f_b_0
    (
        .A(i_add1[0]),
        .B(i_add2[0]),
        .C(w_C[0]),
        .Sum(w_SUM[0]),
        .Carry()
    );
    FullAdder f_b_1
    (
         .A(i_add1[1]),
         .B(i_add2[1]),
         .C(w_C[1]),
         .Sum(w_SUM[1]),
         .Carry()
     );
     FullAdder f_b_2
     (
          .A(i_add1[2]),
          .B(i_add2[2]),
          .C(w_C[2]),
          .Sum(w_SUM[2]),
          .Carry()
      );
     FullAdder f_b_3
     (
          .A(i_add1[3]),
          .B(i_add2[3]),
          .C(w_C[3]),
          .Sum(w_SUM[3]),
          .Carry()
      );
      and(w_G[0],i_add1[0],i_add2[0]);
      and(w_G[1],i_add1[1],i_add2[1]);
      and(w_G[2],i_add1[2],i_add2[2]);
      and(w_G[3],i_add1[3],i_add2[3]);
      
      or(w_P[0],i_add1[0],i_add2[0]);
      or(w_P[1],i_add1[1],i_add2[1]);
      or(w_P[2],i_add1[2],i_add2[2]);
      or(w_P[3],i_add1[3],i_add2[3]);
      
      assign w_C[0] = 1'b0;
      assign w_C[1] = w_G[0] | (w_P[0] & w_C[0]);
      assign w_C[2] = w_G[1] | (w_P[1] & w_C[1]);
      assign w_C[3] = w_G[2] | (w_P[2] & w_C[2]);
      
      assign o_result = {w_C[4], w_SUM};
endmodule
