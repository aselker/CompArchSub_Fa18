module demorgan 
(
	input A,
	input B,
	output xA,
	output xB,
	output AnB,
	output xAnB,
	output xAuxB,
	output AuB,
	output xAuB,
	output xAnxB
);

	wire xA, xB, AnB, xAnB, xAuxB, AuB, xAuB, xAnxB;

	not Ainv(xA, A);
	not Binv(xB, B);
	
	and anb(AnB, A, B);
	not xanb(xAnB, AnB);
	or xauxb(xAuxB, xA, xB);

	or aub(AuB, A, B);
	not xaub(xAuB, AuB);
	and xanxb(xAnxB, xA, xB);

endmodule

