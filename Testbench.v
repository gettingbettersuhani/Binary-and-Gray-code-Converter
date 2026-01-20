`timescale 1ns / 1ps

module tb_monitor;

parameter N = 4;

reg  [N-1:0] in;
reg          mode;
wire [N-1:0] out;

Design_1 #(.N(N)) dut (.in(in), .mode(mode), .out(out));

initial begin
    $monitor("TIME=%0t | mode=%b in=%b out=%b",
              $time, mode, in, out);

    mode = 0; in = 0;
    #5 in = 1; // here verilog will assume 1 as 4'b0001 automatically and continue the operation
    #5 in = 2;
    #5 in = 3;

    mode = 1;
    #5 in = 3 ^ (3 >> 1); // here we have to give a gray code input for testing
    #5 in = 4 ^ (4 >> 1);


    #10 $stop;
end

endmodule

