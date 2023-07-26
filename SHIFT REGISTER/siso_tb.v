module siso_tb;

	// Inputs
	reg d;
	reg clk;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	siso uut (
		.d(d), 
		.clk(clk), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		d = 0;
		clk = 0;

		 clk <=0;d<=1;
#100 d<=0;
#100 d<=1;
#100 d<=1;
	#100 $finish;	
	end
      
endmodule

