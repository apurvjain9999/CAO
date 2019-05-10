
module tbm;
reg s0 = 0;
reg s1 = 0;
reg a = 0;
reg b = 0;
reg c = 0;
reg d =0;
wire o;
mux4 mux_inst(
    .S0(s0),
    .S1(s1),
    .A0(a),
    .A1(b),
    .B0(c),
    .B1(d),
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
    $dumpfile("power_test.vcd");
    $dumpvars();
    end
endmodule