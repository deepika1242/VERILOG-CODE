module mag_com_4bit_tb;

	// Inputs
  reg [3:0] A;
  reg [3:0] B;

	// Outputs
	wire E;
	wire G;
	wire L;

	// Instantiate the Unit Under Test (UUT)
	magcom4bit uut (
		.a(a), 
		.b(b), 
		.e(e), 
		.g(g), 
		.l(l)
	);

	initial begin
		// Initialize Inputs
		A=0;B=0;

		// Wait 100 ns for global reset to finish
		#100 A = 4'b0100;B = 4'b0101;
		#100 A = 4'b1100;B = 4'b1111;
		#100 A = 4'b0110;B = 4'b0111;
		#100 A = 4'b1110;B = 4'b1101;
        
		// Add stimulus here

	end
      
endmodule
