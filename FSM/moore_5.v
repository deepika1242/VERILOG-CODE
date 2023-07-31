module moore_5(input x , z ,clk , rst);
parameter S0 = 2'b00;
parameter S1 = 2'b01;
parameter S2 = 2'b10;
parameter S3 = 2'b11;
  reg [1:0]p_s, n_s;

always @(posedge clk or posedge rst)
begin
	if(rst) 
    p_s= S0;
  
	else begin
    
    case(p)
				S0 :begin
          if(x==0 &&z==0)    
              n_s= S0;
          else if(x==0&&z==1)
              n_s= S1;
						else if(x==0 &&z==0) 
               n_s= S2;
          else if(x==1&&z==1)  
              n_s= S3;
					end
				
      S1 : begin
						if(x==0 &&z==0)     
              n_s= S0;
						else if(x==0&&z==1) 
               n_s= S1;
        else if(x==1&&z==0)
               n_s= S2;
						else if(x==1&&z==1) 
               n_s= S3;
					end
      
				S2 : begin
						if(x==0 &&z==0)    
                n_s = S0;
						else if(x==0&&z==1) 
              n_s= S1;
            else if(x==1&&z==0)   
              n_s= S2;
            else if(x==1&&z==1)   
              n_s= S3;
					end
      
				S3 : begin
						if(x==0 &&z==0)      
              n_s= S0;
						else if(x==0&&z==1)   
              n_s= S1;
            else if(x==1&&z==0)   
              n_s= S2;
            else if(x==1&&z==1)   
              n_s= S3;
					end
      
			endcase
			p_s=n_s;
		end
  
	end
  
endmodule
