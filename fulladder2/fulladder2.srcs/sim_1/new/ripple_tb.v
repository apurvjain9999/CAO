`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 20.02.2019 11:35:44
// Design Name: 
// Module Name: ripple_tb
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


module ripple_tb;

reg r_A0;
reg r_A1;
reg r_A2;
reg r_A3;

reg r_B0;
reg r_B1;
reg r_B2;
reg r_B3;
reg r_cin;
wire [0:4] o_r ;
wire o_cout;
ripple_carry1 r_inst (
    .A0(r_A0),
    .A1(r_A1),
    .A2(r_A2),
    .A3(r_A3),
 
    .B0(r_B0),
    .B1(r_B1),
    .B2(r_B2),
    .B3(r_B3),
    .Cin(r_cin),
    .Cout(o_cout),
    .o_res(o_r)
    
);
initial 
    begin
        r_A0 = 1'b0;
        r_A1 = 1'b0;
        r_A2 = 1'b0;
        r_A3 = 1'b0;
        r_B0 = 1'b0;
        r_B1 = 1'b0;
        r_B2 = 1'b0;
        r_B3 = 1'b0;
        #10;
                r_A0 = 1'b0;
                r_A1 = 1'b0;
                r_A2 = 1'b0;
                r_A3 = 1'b1;
                r_B0 = 1'b0;
                r_B1 = 1'b0;
                r_B2 = 1'b0;
                r_B3 = 1'b0;
                #10;
             
    end

endmodule
