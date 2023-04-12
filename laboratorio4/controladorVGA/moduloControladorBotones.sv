module moduloControladorBotones (reloj, reinicio, botonArriba, botonAbajo, botonIzquierda, botonDerecha, botonPresionado);
	input logic reloj;
	input logic reinicio;
	input logic botonArriba;
	input logic botonAbajo;
	input logic botonIzquierda;
	input logic botonDerecha;
	output logic [2:0] botonPresionado;
	
	always @(botonArriba, botonAbajo, botonIzquierda, botonDerecha) begin
		if (botonArriba == 1'b0) botonPresionado = 3'b001;
		else if (botonAbajo == 1'b0) botonPresionado = 3'b010;
		else if (botonIzquierda == 1'b0) botonPresionado = 3'b011;
		else if (botonDerecha == 1'b0) botonPresionado = 3'b100;
	end
			
endmodule 