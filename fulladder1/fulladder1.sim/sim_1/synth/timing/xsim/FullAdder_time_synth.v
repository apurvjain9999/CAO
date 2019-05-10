// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Fri Feb  1 15:33:49 2019
// Host        : DESKTOP-J847U64 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               C:/Users/HP/Desktop/fulladder1/fulladder1.sim/sim_1/synth/timing/xsim/FullAdder_time_synth.v
// Design      : FullAdder
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tftg256-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

(* NotValidForBitStream *)
module FullAdder
   (A,
    B,
    C,
    Sum,
    Carry);
  input A;
  input B;
  input C;
  output Sum;
  output Carry;

  wire A;
  wire A_IBUF;
  wire B;
  wire B_IBUF;
  wire C;
  wire C_IBUF;
  wire Carry;
  wire Carry_OBUF;
  wire Sum;
  wire Sum_OBUF;

initial begin
 $sdf_annotate("FullAdder_time_synth.sdf",,,,"tool_control");
end
  IBUF A_IBUF_inst
       (.I(A),
        .O(A_IBUF));
  IBUF B_IBUF_inst
       (.I(B),
        .O(B_IBUF));
  IBUF C_IBUF_inst
       (.I(C),
        .O(C_IBUF));
  OBUF Carry_OBUF_inst
       (.I(Carry_OBUF),
        .O(Carry));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hE8)) 
    Carry_OBUF_inst_i_1
       (.I0(C_IBUF),
        .I1(B_IBUF),
        .I2(A_IBUF),
        .O(Carry_OBUF));
  OBUF Sum_OBUF_inst
       (.I(Sum_OBUF),
        .O(Sum));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h96)) 
    Sum_OBUF_inst_i_1
       (.I0(C_IBUF),
        .I1(A_IBUF),
        .I2(B_IBUF),
        .O(Sum_OBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
