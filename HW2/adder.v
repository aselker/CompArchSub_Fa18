// Adder circuit
`define AND and #50
`define OR or #50
`define XOR xor #50

module behavioralFullAdder
(
    output sum, 
    output carryout,
    input a, 
    input b, 
    input carryin
);
    // Uses concatenation operator and built-in '+'
    assign {carryout, sum}=a+b+carryin;
endmodule

module structuralFullAdder
(
    output sum, 
    output carryout,
    input a, 
    input b, 
    input c
);

	wire axb, axbxc, ab, bc, ac, abc, abubc; 

	`XOR axb_(axb, a, b);
	`XOR axbxc_(axbxc, axb, c);

	`AND ab_(ab, a, b);
	`AND ac_(ac, a, c);
	`AND bc_(bc, b, c);
	`AND abc_(abc, ab, c);

	`OR sum_(sum, axbxc, abc);

	`OR abubc_(abubc, ab, bc);
	`OR carryout_(carryout, abubc, ac);
endmodule
