`timescale 1ns/1ps

module tb_mux;
   logic [31:0] a, b, c, d;
   logic [31:0] muxOut;
   logic [1:0] sel;

   mux dut(.f(muxOut), .a(a), .b(b), .c(c), .d(d), .sel(sel));

   initial begin

    a = 32'hAAAA_AAAA;
    b = 32'hBBBB_BBBB;
    c = 32'hCCCC_CCCC;
    d = 32'hDDDD_DDDD;

     $monitor("tempo=%0t | sel = %b | saida muxOut=%h", $time, sel, muxOut);

     sel = 2'b00; #10;
     sel = 2'b01; #10;
     sel = 2'b10; #10;
     sel = 2'b11; #10;

     #10 $stop;
   end

endmodule : tb_mux