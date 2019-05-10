`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.03.2019 19:08:55
// Design Name: 
// Module Name: ml
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


module ml(
    input [3:0] a,
    input [3:0] b,
    output [7:0] o
    );
wire w1;
and(o[7],a[0],b[0]);
module carry_lookahead_adder cla1 
(
    .iadd1[0](
);
endmodule
