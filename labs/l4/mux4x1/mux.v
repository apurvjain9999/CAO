`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2019 15:54:29
// Design Name: 
// Module Name: mux
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


module mux(
    input S0,
    input S1,
    input A,
    input B,
    input C,
    input D,
    output O
    );
    wire t1,t2,t3,t4,t,t6;
    not(t1,S0);
    not(t2,S1);
    and(t3,A,t2,t1);
    and(t4,B,t2,S0);
    and(t5,C,t1,S1);
    and(t6,D,S0,S1);
    or(O,t3,t4,t5,t6);
endmodule
