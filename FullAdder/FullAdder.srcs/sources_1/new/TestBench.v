module full_adder_tb;
reg rA = 0;
reg rB = 0;
reg rC = 0;
wire wSum;
wire wCarry;

FullAdder
FullAdder_inst
(
    .A(rA),
    .B(rB),
    .C(rC),
    .Sum(wSum),
    .Carry(wCarry)
 
);
initial
    begin
        rA = 1'b0;
        rB = 1'b0;
        rC = 1'b0;
        #10;
        
        rA = 1'b0;
        rB = 1'b0;
        rC = 1'b1;
        #10;
        
        rA = 1'b0;
        rB = 1'b1;
        rC = 1'b0;
        #10;
        
        rA = 1'b0;
        rB = 1'b1;
        rC = 1'b1;
        #10;
        
        rA = 1'b1;
        rB = 1'b0;
        rC = 1'b0;
        #10;
        
        rA = 1'b1;
        rB = 1'b0;
        rC = 1'b1;
        #10;
        
        rA = 1'b1;
        rB = 1'b1;
        rC = 1'b0;
        #10;
        
        rA = 1'b1;
        rB = 1'b1;
        rC = 1'b1;
        #10;
    end
endmodule