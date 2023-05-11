module moduloControladorBotones (reloj, reinicio, entradaBotonArriba, entradaBotonAbajo, entradaBotonIzquierda, entradaBotonDerecha, salidaBotonArriba, salidaBotonAbajo, salidaBotonIzquierda, salidaBotonDerecha);
	input logic reloj;
	input logic reinicio;
	input logic entradaBotonArriba;
	input logic entradaBotonAbajo;
	input logic entradaBotonIzquierda;
	input logic entradaBotonDerecha;
	output logic salidaBotonArriba;
	output logic salidaBotonAbajo;
	output logic salidaBotonIzquierda;
	output logic salidaBotonDerecha;
	
	always @(posedge reloj or posedge entradaBotonArriba or posedge entradaBotonAbajo or posedge entradaBotonIzquierda or posedge entradaBotonDerecha) begin
		if (reloj == 1'b1) begin
			if (reinicio == 1'b1) begin
				salidaBotonArriba <= 1'b0;
				salidaBotonAbajo <= 1'b0;
				salidaBotonIzquierda <= 1'b0;
				salidaBotonDerecha <= 1'b0;
			end
		end 
		if (entradaBotonArriba == 1'b1) begin
			salidaBotonArriba <= 1'b1;
		end
		if (entradaBotonAbajo == 1'b1) begin
			salidaBotonAbajo <= 1'b1;
		end
		if (entradaBotonIzquierda == 1'b1) begin
			salidaBotonIzquierda <= 1'b1;
		end
		if (entradaBotonDerecha == 1'b1) begin
			salidaBotonDerecha <= 1'b1;
		end
	end
	
	
	
endmodule 