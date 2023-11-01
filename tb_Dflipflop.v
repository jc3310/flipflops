
//no clear
`timescale 1ns/1ps
module tb_Dflipflop;
reg D, clk;
wire Q, QBAR;

Dflipflop dut(.q(Q), .qbar(QBAR), .d(D), .clk(clk));

always @(*)
$monitor("simtime = %g, clk = %b, D = %b, Q = %b, QBAR = %b", $time, clk, D, Q, QBAR);

initial begin
  clk=0;
     forever #10 clk = ~clk;  
end 
initial begin
       D <= 0;
 #100; D <= 0;
 #100; D <= 1;
 #100; D <= 0;
 #100; D <= 1;
end 
endmodule

//clear
`timescale 1ns/1ps
module tb_Dflipflop;
reg D, clk,clear;
wire Q, QBAR;

Dflipflop dut(.q(Q), .qbar(QBAR), .clear(clear), .d(D), .clk(clk));

always @(*)
$monitor("simtime = %g, clk = %b, D = %b,clear = %b, Q = %b, QBAR = %b", $time, clk, D, clear, Q, QBAR);

initial begin
  clk=0;
     forever #10 clk = ~clk;  
end 
initial begin
 #40;  clear=1;D <= 0;
 #100; clear=0;D <= 0;
 #100; clear=0;D <= 1;
 #100; D <= 0;
 #100; D <= 1;
end 
endmodule