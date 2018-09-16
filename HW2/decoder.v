// Decoder circuit

module behavioralDecoder
(
    output out0, out1, out2, out3,
    input address0, address1,
    input enable
);
    // Uses concatenation and shift operators
    assign {out3,out2,out1,out0}=enable<<{address1,address0};
endmodule

module structuralDecoder
(
    output o0, o1, o2, o3,
    input a0, a1,
    input e
);

	wire na0, na1;
	wire a0int, a1int, a2int, a3int;

	not n_a0(na0, a0);
	not n_a1(na1, a1);
	
	and o0_and(o0int, na0, na1);
	and o1_and(o1int, a0, na1);
	and o2_and(o2int, na0, a1);
	and o3_and(o3int, a0, a1);

	and o0_and2(o0, o0int, e);
	and o1_and2(o1, o1int, e);
	and o2_and2(o2, o2int, e);
	and o3_and2(o3, o3int, e);

endmodule
