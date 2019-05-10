`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.03.2019 11:42:18
// Design Name: 
// Module Name: alw
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


module alw(
    input a,
    output o1,
    output o2,
    output o3,
    output o4,
    output o5,
    output o6
    );
reg b,c,d,e,f,g;
always @(a)
begin
b=a;
end
always @(a)
begin
c<=a;
end
always @(a)
begin
#5 d=a;
end
always @(a)
begin
#5 e<=a;
end
always @(a)
begin
f=#5 a;
end
always @(a)
begin
g<=#5 a;
end
assign o1=b;
assign o2=c;
assign o3=d;
assign o4=e;
assign o5=f;
assign o6=g;
endmodule
