`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2019 09:27:33
// Design Name: 
// Module Name: carry_lookahead
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


module carry_lookahead
  (
   input [3:0]  i_add1,
   input [3:0]  i_add2,
   output [4:0] o_result
   );
     
  wire [4:0]    w_C;
  wire [3:0]    w_G, w_P, w_SUM;
   
  FullAdder full_adder_bit_0
    ( 
      .A(i_add1[0]),
      .B(i_add2[0]),
      .C(w_C[0]),
      .Sum(w_SUM[0]),
      .Carry()
      );
 
  FullAdder full_adder_bit_1
    ( 
      .A(i_add1[1]),
      .B(i_add2[1]),
      .C(w_C[1]),
      .Sum(w_SUM[1]),
      .Carry()
      );
 
  FullAdder full_adder_bit_2
    ( 
      .A(i_add1[2]),
      .B(i_add2[2]),
      .C(w_C[2]),
      .Sum(w_SUM[2]),
      .Carry()
      );
   
  FullAdder full_adder_bit_3
    ( 
      .A(i_add1[3]),
      .B(i_add2[3]),
      .C(w_C[3]),
      .Sum(w_SUM[3]),
      .Carry()
      );
   
  //Gi=Ai*Bi
  assign w_G[0] = i_add1[0] & i_add2[0];
  assign w_G[1] = i_add1[1] & i_add2[1];
  assign w_G[2] = i_add1[2] & i_add2[2];
  assign w_G[3] = i_add1[3] & i_add2[3];
 
  //Pi=Ai+Bi
  assign w_P[0] = i_add1[0] | i_add2[0];
  assign w_P[1] = i_add1[1] | i_add2[1];
  assign w_P[2] = i_add1[2] | i_add2[2];
  assign w_P[3] = i_add1[3] | i_add2[3];
 
  //Carry Terms:
  assign w_C[0] = 1'b0; 
  assign w_C[1] = w_G[0] | (w_P[0] & w_C[0]);
  assign w_C[2] = w_G[1] | (w_P[1] & w_C[1]);
  assign w_C[3] = w_G[2] | (w_P[2] & w_C[2]);
  assign w_C[4] = w_G[3] | (w_P[3] & w_C[3]);
   
  assign o_result = {w_C[4], w_SUM};   
 
endmodule
