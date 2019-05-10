`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.04.2019 11:21:34
// Design Name: 
// Module Name: mul4
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


module mul4(
input mp [0:3],
input ml [0:3],
output pro [0:7]
    );
reg pr1 [0:7];
reg alu [0:4];
wire w1[0:3],w2[0:3],w3[0:3];
assign w1[0] = 1'b0;
assign w1[1] = 1'b0; 
assign w1[2] = 1'b0; 
assign w1[3] = 1'b0;

assign pr1={4'b0000,ml};
 
integer i;
initial begin
for(i=0;i<4;i=i+1) begin
   carry_lookahead_adder(w1,mp,w2);
   if (pr1[7] == 1) begin
        carry_lookahead_adder(w2,pr1[0:3],pr1[0:3]);
   end
   pr1 = pr1 >> 1;
   end
end
assign pro = pr1;  
endmodule
