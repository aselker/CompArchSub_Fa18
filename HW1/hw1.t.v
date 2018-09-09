`include "hw1.v"

module demorgan_test();

	reg A, B;
	wire xA, xB, AnB, xAnB, xAuxB, AuB, xAuB, xAnxB;

	demorgan dut(A, B, xA, xB, AnB, xAnB, xAuxB, AuB, xAuB, xAnxB);

	initial begin
		$display("A B | ~A ~B | AnB | ~(AnB) | (~A)u(~B) | AuB | ~(AuB) | (~A)n(~B)");
		A=0; B=0; #1;
		$display("%b %b |  %b  %b |  %b  |   %b    |     %b     |  %b  |    %b   |     %b", A, B, xA, xB, AnB, xAnB, xAuxB, AuB, xAuB, xAnxB);
		A=0; B=1; #1;
		$display("%b %b |  %b  %b |  %b  |   %b    |     %b     |  %b  |    %b   |     %b", A, B, xA, xB, AnB, xAnB, xAuxB, AuB, xAuB, xAnxB);
		A=1; B=0; #1;
		$display("%b %b |  %b  %b |  %b  |   %b    |     %b     |  %b  |    %b   |     %b", A, B, xA, xB, AnB, xAnB, xAuxB, AuB, xAuB, xAnxB);
		A=1; B=1; #1;
		$display("%b %b |  %b  %b |  %b  |   %b    |     %b     |  %b  |    %b   |     %b", A, B, xA, xB, AnB, xAnB, xAuxB, AuB, xAuB, xAnxB);
	end
endmodule
