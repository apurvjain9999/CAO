`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.02.2019 00:33:45
// Design Name: 
// Module Name: FullAdder
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


module FullAdder(
    input A,
    input B,
    input C,
    output Sum,
    output Carry
    );
    wire s1,c1,c2;
    HalfAdder h1(
    .i1(A),
    .i2(B),
    .sum(s1),
    .carry(c1)
    );
    HalfAdder h2(
        .i1(s1),
        .i2(C),
        .sum(Sum),
        .carry(c2)
        );
    or(Carry,c1,c2);
endmodule
