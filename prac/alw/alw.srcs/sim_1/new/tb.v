`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2019 11:48:30
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
reg a=0;
wire q,w,u,r,t,y;
alw aa(a,q,w,u,r,t,y);
initial
begin
#10;
a=1'b1;
#10;
a=1'b0;
#10;
a=1'b1;
#3;
a=1'b0;
#3;
a=1'b1;
#10;
a=1'b0;
end
endmodule
