module moore_3(
    input x,clk,rst,
    output reg y
    );
reg [1:0]p_s,n_s;
	parameter W =2'b00;
	parameter X =2'b01;
	parameter Y= 2'b10;
	
	always @(posedge clk,posedge rst)
  
  begin
	
	if(rst) begin
	p_s=W; end
	else begin
	
	case (p_s)
   W:begin 
	y<=1'b0;
	if(x==1)
	n_s=X;
	else
	n_s=Y;
	end
	
	X:begin 
	y<=1'b1;
	if(x==1)
	n_s=Y;
	else
	n_s=X;
	end
	
	Y:begin 
	y<=1'b0;
	if(x==1)
	n_s=W;
	else
	n_s=Y;
	end
	
	endcase
	p_s=n_s;
	
	end
	
	end
	
endmodule
