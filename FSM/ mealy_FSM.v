//FINITE STATE MACHINE(FSM)



module mealy_FSM(
    input x,clk,rst,
    output  reg y
    );
reg [1:0] ps,ns;

parameter s0=2'b00;
parameter s1=2'b01;
parameter s2=2'b10;
parameter s3=2'b11;

always @(posedge clk or posedge rst)
begin
if(rst) begin
ps=s0;y=1'b0; 
end
else ps=ns;
end

always @(ps or x)
begin

case(ps)
s0:
begin 
if(x==1'b1)begin 
y=1'b1;
ns=s0; end
else begin 
y=1'b0;
ns=s1; end
end

s1:
begin
if(x==1'b1)begin
y=1'b0;
ns=s3;end
else begin 
y=1'b1;
ns=s2; end
end

s1:
begin
if(x==1'b1)begin
y=1'b0;
ns=s1;end
else begin 
y=1'b1;
ns=s0; end
end

s3:
begin
if(x==1'b1)begin
y=1'b1;
ns=s2;end
else begin 
y=1'b0;
ns=s3; end
end

endcase
end
