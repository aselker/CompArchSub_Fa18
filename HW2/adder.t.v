// Adder testbench
`timescale 1 ns / 1 ps
`include "adder.v"

module testFullAdder();
    reg a, b, cIn;
    wire sum, cOut;

    behavioralFullAdder adder (sum, cOut, a, b, cIn);

    initial begin
			$display("a b cIn | sum cOut | expected sum cOut");
			a = 0; b = 0; cIn = 0; #1000
			$display("%b %b  %b  |  %b   %b   |           0   0", a, b, cIn, sum, cOut);
			a = 0; b = 0; cIn = 1; #1000
			$display("%b %b  %b  |  %b   %b   |           1   0", a, b, cIn, sum, cOut);
			a = 0; b = 1; cIn = 0; #1000
			$display("%b %b  %b  |  %b   %b   |           1   0", a, b, cIn, sum, cOut);
			a = 0; b = 1; cIn = 1; #1000
			$display("%b %b  %b  |  %b   %b   |           1   1", a, b, cIn, sum, cOut);
			a = 1; b = 0; cIn = 0; #1000
			$display("%b %b  %b  |  %b   %b   |           0   0", a, b, cIn, sum, cOut);
			a = 1; b = 0; cIn = 1; #1000
			$display("%b %b  %b  |  %b   %b   |           1   1", a, b, cIn, sum, cOut);
			a = 1; b = 1; cIn = 0; #1000
			$display("%b %b  %b  |  %b   %b   |           0   1", a, b, cIn, sum, cOut);
			a = 1; b = 1; cIn = 1; #1000
			$display("%b %b  %b  |  %b   %b   |           1   1", a, b, cIn, sum, cOut);
    end
endmodule
