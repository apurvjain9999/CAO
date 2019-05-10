module binary_adder_tree(A, B, C, D, E, out);
   
	input	[31:0] A, B, C, D, E;
	output	[31:0] out;

	wire	[31:0]    sum1, sum2, sum3, sum4;
	reg		[31:0]   sumreg1, sumreg2, sumreg3, sumreg4;

	// Registers
	always @ (*)
		begin
			sumreg1 <= sum1;
			sumreg2 <= sum2;
			sumreg3 <= sum3;
			sumreg4 <= sum4;
		end

	// 2-bit additions
	assign 			  sum1 = A + B;
	assign 			  sum2 = C + D;
	assign 			  sum3 = sumreg1 + sumreg2;
	assign 			  sum4 = sumreg3 + E;		  		
	assign 			  out = sumreg4;

endmodule