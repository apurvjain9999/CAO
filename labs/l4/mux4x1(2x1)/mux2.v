`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2019 11:17:44
// Design Name: 
// Module Name: mux2
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

module mux2(
    input A,
    input B,
    input S,
    output O
    );
    wire t1,t2,t3;
    not(t3,S);
    and(t1,A,t3);
    and(t2,B,S);
    or(o,t1,t2);
endmodule
