`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2019 11:58:49
// Design Name: 
// Module Name: look_tb
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


module look_tb;
reg [3:0] i1;
reg [3:0] i2;
wire [4:0] o;
carry_lookahead c_inst
(
    .i_add1(i1),
    .i_add2(i2),
    .o_result(0)
);
initial 
    begin
        i1 = 4'b0000;
        i2 = 4'b0000;
        #10;
        i1 = 4'b0001;
        i2 = 4'b0001;
        #10;
    end
endmodule
