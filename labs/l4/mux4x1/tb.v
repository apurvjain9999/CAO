`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.02.2019 17:06:32
// Design Name: 
// Module Name: tb1
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
module tb1;
reg s0 = 0;
reg s1 = 0;
reg a = 0;
reg b = 0;
reg c = 0;
reg d =0;
wire o;
mux mux_inst(
    .S0(s0),
    .S1(s1),
    .A(a),
    .B(b),
    .C(c),
    .D(d),
    .O(o)
    );
 initial
    begin
   
    s0 = 1'b0;
    s1 = 1'b0;
    a = 1'b0;
    b = 1'b1;
    c = 1'b0;
    d = 1'b1;
    #10;
    s0 = 1'b0;
    s1 = 1'b1;
    a = 1'b0;
    b = 1'b1;
    c = 1'b0;
    d = 1'b1;
    #10;
    s0 = 1'b1;
    s1 = 1'b0;
    a = 1'b0;
    b = 1'b1;
    c = 1'b0;
    d = 1'b1;
    #10;
    s0 = 1'b1;
    s1 = 1'b1;
    a = 1'b0;
    b = 1'b1;
    c = 1'b0;
    d = 1'b1;
    #10;
    $dumpfile("power_test1.vcd");
    $dumpvars();
    end
endmodule