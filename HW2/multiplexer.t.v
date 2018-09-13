// Multiplexer testbench
`timescale 1 ns / 1 ps
`include "multiplexer.v"

module testMultiplexer ();
	reg i1, i2, i3, i4, a1, a2; // indexed from 1.  fight me
	wire out;

	behavioralMultiplexer mux(out, a1, a2, i1, i2, i3, i4);

	initial begin
		$display("i1 i2 i3 i4 | a1 a2 | out");
		i1 = 0; i2 = 0; i3 = 0; i4 = 0; a1 = 0; a2 = 0; #1000
		$display("%b  %b  %b  %b  | %b  %b  |  %b", i1, i2, i3, i4, a1, a2, out);
		i1 = 1; i2 = 0; i3 = 0; i4 = 0; a1 = 0; a2 = 0; #1000
		$display("%b  %b  %b  %b  | %b  %b  |  %b", i1, i2, i3, i4, a1, a2, out);
		i1 = 0; i2 = 1; i3 = 0; i4 = 0; a1 = 1; a2 = 0; #1000
		$display("%b  %b  %b  %b  | %b  %b  |  %b", i1, i2, i3, i4, a1, a2, out);
		i1 = 0; i2 = 0; i3 = 1; i4 = 0; a1 = 0; a2 = 1; #1000
		$display("%b  %b  %b  %b  | %b  %b  |  %b", i1, i2, i3, i4, a1, a2, out);
		i1 = 0; i2 = 0; i3 = 0; i4 = 1; a1 = 1; a2 = 1; #1000
		$display("%b  %b  %b  %b  | %b  %b  |  %b", i1, i2, i3, i4, a1, a2, out);
	end

endmodule
