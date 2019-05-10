`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2019 11:19:26
// Design Name: 
// Module Name: ripple_carry1
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


module ripple_carry1(
    input A0,
    input A1,
    input A2,
    input A3,
    input B0,
    input B1,
    input B2,
    input B3,
    input Cin,
    output Cout,
    output [0:4] o_res
    );
    wire [0:3] w_c;
    wire [0:3] w_s;
    assign Cin = 1'b0;
    FullAdder bit_0
    (
        .A(A0),
        .B(B0),
        .C(Cin),
        .Sum(w_s[0]),
        .Carry(w_c[0])
    );
    FullAdder bit_1
        (
            .A(A1),
            .B(B1),
            .C(w_c[0]),
            .Sum(w_s[1]),
            .Carry(w_c[1])
        );
        FullAdder bit_2
                (
                    .A(A2),
                    .B(B2),
                    .C(w_c[1]),
                    .Sum(w_s[2]),
                    .Carry(w_c[2])
                );
         FullAdder bit_3
                        (
                            .A(A3),
                            .B(B3),
                            .C(w_c[2]),
                            .Sum(w_s[3]),
                            .Carry(w_c[3])
                        );
          assign o_result = {w_c[3], w_s};
          assign Cout = w_c[3];
endmodule
