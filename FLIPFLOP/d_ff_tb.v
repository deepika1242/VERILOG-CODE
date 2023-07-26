module d_ff_tb;

	// Inputs
	reg d;
	reg clk;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	d_ff uut (
		.d(d), 
		.clk(clk), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		 clk <= 0;  d <= 0;  
		  #100   d <= 1; 
		  #100   d <= 0; 	
		  #100   d <= 1; 

	end
      
endmodule
