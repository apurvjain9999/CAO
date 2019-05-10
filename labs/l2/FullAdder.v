`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/30/2019 06:42:48 PM
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
    wire t1,t2,t3;
    xor(t1,A,B);
    xor(Sum,t1,C);
    and(t2,t1,C);
    and(t3,A,B);
    or(Carry,t2,t3);
endmodule
