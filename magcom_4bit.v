module magcom_4bit(
  input [3:0]A,B,
    output reg G,E,L
    );
  always @ (A,B)
    begin 
      if (A<B)
		  begin
        G=0;
        E=0;
        L=1;
				end  
      else if (A==B)
		  begin
        G=0;
        E=0;
        L=1;
			end  				
		  else
		  begin
        G=1;
        E=0;
        L=0;
			  end  
end  
endmodule
