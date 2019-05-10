`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.01.2019 11:04:39
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    input A,
    input B,
    input Cin,
    output S,
    output Cout
    );
wire t1,t2,t3;

xor(t1,A,B);
xor(S,t1,Cin);
and(t2,t1,Cin);
and(t3,A,B);
or(Cout,t2,t3);
endmodule
