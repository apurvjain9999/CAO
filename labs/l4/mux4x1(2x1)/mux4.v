`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.02.2019 11:26:19
// Design Name: 
// Module Name: mux4
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


module mux4(
    input A0,
    input A1,
    input B0,
    input B1,
    input S0,
    input S1,
    output O
    );
    wire t1,t2;
mux2 m1 
(
    .A(A0),
    .B(A1),
    .S(S0),
    .O(t1)
);
mux2 m2 
(
    .A(B0),
    .B(B1),
    .S(S0),
    .O(t2)
);
mux2 m3
(
    .A(t1),
    .B(t2),
    .S(S1),
    .O(O)
);

endmodule
