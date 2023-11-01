module JKflipflop(
input clk,j,k,
output reg q,qbar
);

always@(posedge clk)
begin
  if(j == 0 && k == 0)begin
    q <= q;
    qbar <= qbar;
   end else if(j == 0 && k == 1)begin
    q <= 0;
    qbar <= 1;
   end else if(j == 1 && k == 0)begin
    q <= 1;
    qbar <= 0;
   end else if(j == 1 && k == 1)begin
    q <= qbar;
    qbar <= q;
   end
end

endmodule
