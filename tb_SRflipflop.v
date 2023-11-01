`timescale 1ns/1ps
module tb_SRflipflop;
reg S,R, clk;
wire Q, QBAR;

SRflipflop dut(.q(Q), .qbar(QBAR), .s(S), .r(R), .clk(clk)); 

initial begin
$monitor("simtime = %g, S = %b, R = %b, Q = %b, QBAR = %b", $time, S, R, Q, QBAR);
end
initial begin
  clk=0;
     forever #10 clk = ~clk;  
end 
initial begin 
 S= 1; R= 0;
 #100; S= 0; R= 1; 
 #100; S= 0; R= 0; 
 #100;  S= 1; R=1; 
end 
endmodule
