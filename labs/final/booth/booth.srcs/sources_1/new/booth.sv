`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10.04.2019 11:33:14
// Design Name: 
// Module Name: booth
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
module booth(input [3:0]a,input [3:0]b,output [7:0]c);
reg tm;
reg [7:0]out;
reg [1:0]check=0;
reg [3:0]ad=a;
reg [3:0]nad=a;
reg [3:0]ar=4'b0000;
reg [3:0]qq=0;
reg q=0;
initial 
    begin
    ad=a;
    nad=-ad;
    qq=b;
end
initial 
    begin
    for(int i=0;i<4;i++)
       begin
        check={qq[0],q};

        if(check==2'b10)
            ar=ar+nad;
        else if(check==2'b01)
            ar=ar+ad;
        q=qq[0];
        qq=qq>>>1;
        qq[3]=ar[0];
        tm=ar[3];
        ar=ar>>>1;
        ar[3]=tm;
        end
        /*check={qq[0],q};
        
        if(check==2'b10)
            ar=ar+nm;
        else if(check==2'b01)
            ar=ar+m;
        q=qq[0];
        qq=qq>>>1;
        qq[3]=ar[0];
        tm=ar[3];
        ar=ar>>>1;
        ar[3]=tm;
        
        check={qq[0],q};
                
        if(check==2'b10)
           ar=ar+nm;
        else if(check==2'b01)
           ar=ar+m;
        q=qq[0];
        qq=qq>>>1;
        qq[3]=ar[0];
        tm=ar[3];
        ar=ar>>>1;
        ar[3]=tm;
        
        check={qq[0],q};
                        
        if(check==2'b10)
           ar=ar+nm;
        else if(check==2'b01)
           ar=ar+m;
        q=qq[0];
        qq=qq>>>1;
        qq[3]=ar[0];
        tm=ar[3];
        ar=ar>>>1;
        ar[3]=tm;*/
        
    out={ar,qq};
    end
assign c=out;
endmodule

