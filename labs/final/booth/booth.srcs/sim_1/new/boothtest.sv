`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2019 11:35:34
// Design Name: 
// Module Name: boothtest
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
module boothtest;
reg [3:0]ar=0;
reg [3:0]bb=0;
wire [7:0]cc;
booth b1(.a(ar),.b(bb),.c(cc));
initial 
    begin
    ar=4'b1001;
    bb=4'b0100;
    #10;
    ar=4'b0100;
    bb=4'b1100;
    #10;
    ar=4'b0010;
    bb=4'b0100;
    #10;
    ar=4'b1001;
    bb=4'b1001;
    #10;
    ar=4'b1001;
    bb=4'b0100;
    #10;
    ar=4'b0001;
    bb=4'b0011;
    #10;
    ar=4'b0000;
    bb=4'b1111;
    #10;
    ar=4'b1111;
    bb=4'b1111;
    #10;
    end
endmodule

