module siso(
    input d,clk,
    output q);
    wire q1,q2,q3;
    d_ff g1(d, clk, q1);
    d_ff g2(q1, clk, q2);
    d_ff g3(q2, clk, q3);
    d_ff g4(q3, clk, q);


endmodule


module d_ff(d,clk,q);
    input d,clk;
    output q;
    reg q=0;
    always @ (posedge clk)
    begin
    q<=d;
end
endmodule 
