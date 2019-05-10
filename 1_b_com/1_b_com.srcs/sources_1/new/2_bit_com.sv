`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.02.2019 12:29:09
// Design Name: 
// Module Name: comt
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


module comt(
input a[1:0],
input b[1:0],
output wire eq
    );
wire s0,s1;
comp eq_bit0 (.a(a[0]), .b(b[0]), .c(s0));
comp eq_bit1 (.a(a[1]), .b(b[1]), .c(s1));

assign eq = s0 & s1;
    
endmodule
