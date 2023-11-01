`timescale 1ns/1ps
module tb_JKflipflop;
reg J,K, clk;
wire Q, QBAR;

JKflipflop dut(.q(Q), .qbar(QBAR), .j(J), .k(K), .clk(clk)); 
initial begin
$monitor("simtime = %g, J = %b, K = %b, Q = %b, QBAR = %b", $time, J, K, Q, QBAR);
end
initial begin
  clk=0;
     forever #10 clk = ~clk;  
end 
initial begin 
 J= 1; K= 0;
 #100; J= 0; K= 1; 
 #100; J= 0; K= 0; 
 #100; J= 1; K=1; 
end 
endmodule
