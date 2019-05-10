`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.03.2019 11:45:35
// Design Name: 
// Module Name: tb
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


module tb;
wire q;
wire nq;

reg s;
reg r;
reg enable;
reg reset;
SR_Latch sr1 (s,r,enable,reset,q,nq);
initial
    begin
    enable = 1'b1;
    reset = 1'b0;
    s = 1'b0;
    r = 1'b1;
    #10;
    enable = 1'b1;
    reset = 1'b0;
    s = 1'b0;
    r = 1'b0;
    #10;
    enable = 1'b1;
    reset = 1'b0;
    s = 1'b1;
    r = 1'b0;
    #10;
    enable = 1'b1;
    reset = 1'b0;
    s = 1'b1;
    r = 1'b1;
    #10;
    enable = 1'b0;
    reset = 1'b1;
    s = 1'b1;
    r = 1'b0;
    #10;
    end   
endmodule
