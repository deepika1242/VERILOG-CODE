module mag_comp(
    input A,B,
    output L,E,G
    );
	assign G=A&~B;
assign L=~A&B;
assign E=~(G+L);

endmodule
