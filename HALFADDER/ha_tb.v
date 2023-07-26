module ha_tb;

	// Inputs
	reg a;
	reg b;

	// Outputs
	wire s;
	wire c;

	// Instantiate the Unit Under Test (UUT)
	half_adder uut (
		.a(a), 
		.b(b), 
		.s(s), 
		.c(c)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100
		a=0;b=1;
		#100
		a=1;b=0;
        #100
		a=1;b=1;
        #100
$finish;		  
		// Add stimulus here

	end
      
endmodule
