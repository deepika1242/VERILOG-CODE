module updown_counter( 
  input clk,reset,updown,
output reg [7:0] count);
always @(posedge clk, negedge reset)
  begin
if (!reset)
  begin
count <= 2'b0;
end
else if (updown)
  begin
count <= count + 1;
end
else
  begin
count <= count - 1;
end
end
endmodule
