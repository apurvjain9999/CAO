`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.01.2019 11:40:44
// Design Name: 
// Module Name: full_adder_tb
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

`include "full_adder.sv"
module full_adder_tb;
reg r_BIT1 = 0;
reg r_BIT2 = 0;
reg r_BIT3 = 0;
wire b4;
wire b5;
full_adder_tb full_adder(
    .A(r_BIT1),
    .B(r_BIT2),
    .Cin(r_BIT3),
    .S(b4),
    .Cout(b5)
    );

initial
    begin
      r_BIT1 = 1'b0;
      r_BIT2 = 1'b0;
      r_BIT3 = 1'b0;
      #10;
      r_BIT1 = 1'b0;
      r_BIT2 = 1'b0;
      r_BIT3 = 1'b1;
      #10;
      r_BIT1 = 1'b0;
      r_BIT2 = 1'b1;
      r_BIT3 = 1'b0;
      #10;
      r_BIT1 = 1'b0;
      r_BIT2 = 1'b1;
      r_BIT3 = 1'b1;
      #10;
      r_BIT1 = 1'b1;
      r_BIT2 = 1'b0;
      r_BIT3 = 1'b0;
      #10;
      r_BIT1 = 1'b1;
      r_BIT2 = 1'b0;
      r_BIT3 = 1'b1;
      #10;
      r_BIT1 = 1'b1;
      r_BIT2 = 1'b1;
      r_BIT3 = 1'b0;
      #10;
      r_BIT1 = 1'b1;
      r_BIT2 = 1'b1;
      r_BIT3 = 1'b1;
      #10;
    end 
endmodule
