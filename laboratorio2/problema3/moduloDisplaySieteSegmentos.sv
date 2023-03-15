module moduloDisplaySieteSegmentos (entradaContador, sieteSegmentos0, sieteSegmentos1, sieteSegmentos2, sieteSegmentos3, sieteSegmentos4, sieteSegmentos5);
	input logic [5:0] entradaContador;
	output logic [6:0] sieteSegmentos0;
	output logic [6:0] sieteSegmentos1;
	output logic [6:0] sieteSegmentos2;
	output logic [6:0] sieteSegmentos3;
	output logic [6:0] sieteSegmentos4;
	output logic [6:0] sieteSegmentos5;

	always @(entradaContador) begin
		if (entradaContador[0] == 1'b0) sieteSegmentos0 = 7'b1000000;
		else sieteSegmentos0 = 7'b1111001;
		if (entradaContador[1] == 1'b0) sieteSegmentos1 = 7'b1000000;
		else sieteSegmentos1 = 7'b1111001;
		if (entradaContador[2] == 1'b0) sieteSegmentos2 = 7'b1000000;
		else sieteSegmentos2 = 7'b1111001;
		if (entradaContador[3] == 1'b0) sieteSegmentos3 = 7'b1000000;
		else sieteSegmentos3 = 7'b1111001;
		if (entradaContador[4] == 1'b0) sieteSegmentos4 = 7'b1000000;
		else sieteSegmentos4 = 7'b1111001;
		if (entradaContador[5] == 1'b0) sieteSegmentos5 = 7'b1000000;
		else sieteSegmentos5 = 7'b1111001;
	end

endmodule 