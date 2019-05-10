module full_add(

x,y,cin,s,cout

);
input x,y,cin;
output s,cout;
assign s= x ^ y ^ cin;
assign cout = (x & y)^cin  | (x & y);

endmodule

module ml(
input [3:0] Q,
input [3:0] M,
output [7:0] P

);

wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11;

wire d1,d2,d3,d4,d5,d6,d7;

wire e1,e2,e3;

wire f1,f2,f3,f4,f5,f6,f7;

wire g1,g2,g3,g4;

and(c1,M[3],Q[1]),

(c2,M[2],Q[2]),

(c3,M[1],Q[3]),

(c4,M[3],Q[0]),

(c5,M[2],Q[1]),

(c6,M[1],Q[2]),

(c7,M[2],Q[0]),

(c8,M[1],Q[1]),

(c9,M[0],Q[2]),

(c10,M[1],Q[0]),

(c11,M[0],Q[1]),

(P[0],M[0],Q[0]);

full_add fa1(c1,c2,c3,d2,d1);

full_add fa2(c4,c5,c6,d4,d3);

full_add fa3(c7,c8,c9,d6,d5);

full_add fa4(c10,c11,0,P[1],d7);

and(e1,M[2],Q[3]),

(e2,M[3],Q[2]),

(e3,M[0],Q[3]);

full_add fa5(e1,e2,d1,f2,f1);
full_add fa7(d4,e3,d5,f6,f5);

full_add fa6(d2,d3,f5,f4,f3);



full_add fa8(d6,d7,0,P[2],f7);

and(g1,M[3],Q[3]);
full_add fa12(f6,f7,0,P[3],g4);
full_add fa11(f4,0,g4,P[4],g3);
full_add fa10(f2,f3,g3,P[5],g2);
full_add fa9(g1,f1,g2,P[6],P[7]);
endmodule