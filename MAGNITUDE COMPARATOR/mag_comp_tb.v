module mag_comp_tb;

	// Inputs
	reg A;
	reg B;

	// Outputs
	wire L;
	wire E;
	wire G;

	// Instantiate the Unit Under Test (UUT)
	mag_comp uut (
		.A(A), 
		.B(B), 
		.L(L), 
		.E(E), 
		.G(G)
	);

	initial begin
		 A= 0;B= 0;

		// Wait 100 ns for global reset to finish
		  #100 A = 0;B = 1;
        #100 A = 1;B = 0;
		  #100 A = 1;B = 1;
	#100 $finish;
	end
      
endmodule

