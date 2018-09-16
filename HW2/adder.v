// Adder circuit

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

	xor axb_(axb, a, b);
	xor axbxc_(axbxc, axb, c);

	and ab_(ab, a, b);
	and ac_(ac, a, c);
	and bc_(bc, b, c);
	and abc_(abc, ab, c);

	or sum_(sum, axbxc, abc);

	or abubc_(abubc, ab, bc);
	or carryout_(carryout, abubc, ac);
endmodule
