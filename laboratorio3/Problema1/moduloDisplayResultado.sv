module moduloDisplayResultado (resultado, error, seleccionOperacion,
										displayResultado0, displayResultado1, displayResultado2, displayResultado3);
	input [3:0] resultado;
	input error;
	input [3:0] seleccionOperacion;
	output [6:0] displayResultado0;
	output [6:0] displayResultado1;
	output [6:0] displayResultado2;
	output [6:0] displayResultado3;
	always @(resultado) begin
		if (error && (seleccionOperacion == 4'b0111)) begin
			displayResultado3 = 7'b0000110;
			displayResultado2 = 7'b1111111;
			displayResultado1 = 7'b1111111;
			displayResultado0 = 7'b1111111;
		end
		else begin
			case (resultado[3])
				1'b0: displayResultado3 = 7'b1000000;
				1'b1: displayResultado3 = 7'b1111001;
				default: displayResultado3 = 7'b1111001;
			endcase
			case (resultado[2])
				1'b0: displayResultado2 = 7'b1000000;
				1'b1: displayResultado2 = 7'b1111001;
				default: displayResultado2 = 7'b1111001;
			endcase
			case (resultado[1])
				1'b0: displayResultado1 = 7'b1000000;
				1'b1: displayResultado1 = 7'b1111001;
				default: displayResultado1 = 7'b1111001;
			endcase
			case (resultado[0])
				1'b0: displayResultado0 = 7'b1000000;
				1'b1: displayResultado0 = 7'b1111001;
				default: displayResultado0 = 7'b1111001;
			endcase
		end
	end
endmodule 