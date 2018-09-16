// Multiplexer circuit
`define NOT not #50
`define AND and #50
`define OR or #50

module behavioralMultiplexer
(
    output out,
    input address0, address1,
    input in0, in1, in2, in3
);
    // Join single-bit inputs into a bus, use address as index
    wire[3:0] inputs = {in3, in2, in1, in0};
    wire[1:0] address = {address1, address0};
    assign out = inputs[address];
endmodule


module structuralMultiplexer
(
    output out,
    input a0, a1,
    input in0, in1, in2, in3
);

	wire na0, na1, if0 /*"input filtered"*/, if1, if2, if3, if01, if23;

	`NOT na0_(na0, a0);
	`NOT na1_(na1, a1);

	wire ii0;
	`AND ii0_(ii0, in0, na0);
	`AND if0_(if0, ii0, na1);

	wire ii1;
	`AND ii1_(ii1, in1, a0);
	`AND if1_(if1, ii1, na1);

	wire ii2;
	`AND ii2_(ii2, in2, na0);
	`AND if2_(if2, ii2, a1);

	wire ii3;
	`AND ii3_(ii3, in3, a0);
	`AND if3_(if3, ii3, a1);

	`OR if01_(if01, if0, if1);
	`OR if23_(if23, if2, if3);
	`OR out_(out, if01, if23);

endmodule

