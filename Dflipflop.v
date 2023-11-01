//Behavioral (Asynchronous Clear)
module Dflipflop(
input d, clk, clear,
output reg q, qbar
); 
always@(posedge clk) 
if(clear== 1) begin
q <= 0;
qbar <= 1;
end else begin
q <= d; 
qbar <= !d; 
end 
endmodule

//Behavioral (Synchronous Clear)
module Dflipflop(
input d, clk, clear,
output reg q, qbar 
); 
always@(posedge clk or posedge clear) 

if(clear== 1)begin
q <= 0;
qbar <= 1;
end else begin
q <= d; 
qbar <= !d; 
end 
endmodule

//Behavioral(non Clear)
module Dflipflop(
input d, clk, 
output reg q, qbar 
); 
always@(posedge clk) 
begin
q <= d; 
qbar <= !d; 
end 
endmodule


