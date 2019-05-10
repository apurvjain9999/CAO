`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.01.2019 18:57:14
// Design Name: 
// Module Name: half_adder
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


module half_adder(
    input i_bit1,
    input i_bit2,
    output o_sum,
    output o_carry
    );
    assign o_sum = i_bit1 ^ i_bit2;
    assign o_carry = i_bit1 & i_bit2;
endmodule
