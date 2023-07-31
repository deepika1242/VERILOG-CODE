module moore_4(
input x,z,clk,rst,
    output reg y
    );
reg [1:0]p_s,n_s;
	parameter A=2'b00;
	parameter B=2'b01;
	parameter C=2'b10;
	parameter D=2'b11;

always @(posedge clk,posedge rst)

begin 
if(rst) begin
p_s=A; end
else begin

case (p_s)
A:begin
y<=1'b0;
if(x==1&&z==0)
n_s=A;
else
n_s=B;
end

B:begin
y<=1'b0;
if(x==0&&z==0)
n_s=B;
else
n_s=C;
end

C:begin
y<=1'b1;
if(x==0&&z==0)
n_s=C;
else if(x==0&&z==1)
n_s=D;
else
n_s=A;
end

D:begin
y<=1'b0;
if(x==0&&z==1)
n_s=D;
else
n_s=C;
end

endcase
	p_s=n_s;
	
	end
	
	end

endmodule
