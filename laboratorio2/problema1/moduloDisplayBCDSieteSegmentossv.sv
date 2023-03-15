module moduloDisplayBCDSieteSegmentos(entradaBCD, sieteSegmentos0, sieteSegmentos1, sieteSegmentos2, sieteSegmentos3, sieteSegmentos4);
	
	input logic [5:0] entradaBCD;
	output logic [6:0] sieteSegmentos0;
	output logic [6:0] sieteSegmentos1;
	output logic [6:0] sieteSegmentos2;
	output logic [6:0] sieteSegmentos3;
	output logic [6:0] sieteSegmentos4;
	
	always_comb begin
		if (entradaBCD[4] == 1'b0) sieteSegmentos0 = 7'b1000000;
		else sieteSegmentos0 = 7'b1111001;
		
		if (entradaBCD[3] == 1'b0) sieteSegmentos1 = 7'b1000000;
		else sieteSegmentos1 = 7'b1111001;
		
		if (entradaBCD[2] == 1'b0) sieteSegmentos2 = 7'b1000000;
		else sieteSegmentos2 = 7'b1111001;
		
		if (entradaBCD[1] == 1'b0) sieteSegmentos3 = 7'b1000000;
		else sieteSegmentos3 = 7'b1111001;
		
		if (entradaBCD[0] == 1'b0) sieteSegmentos4 = 7'b1000000;
		else sieteSegmentos4 = 7'b1111001;
	end

endmodule 