module moduloAntirebotes (reloj, reinicio, entradaBoton, salidaBoton);
	input logic reloj;
	input logic reinicio;
	input logic entradaBoton;
	output logic salidaBoton;
	
	reg [19:0] cantidadCiclosTranscurridos;
	
	always @(posedge reloj) begin
		if (reinicio == 1'b0) begin
			cantidadCiclosTranscurridos = 0;
			salidaBoton = 0;
		end
		else begin
			if (entradaBoton == 1'b0) begin
				if (cantidadCiclosTranscurridos >= 20'b11110100001001000000) begin
					cantidadCiclosTranscurridos = 0;
					salidaBoton = 1;
				end
				else begin
					cantidadCiclosTranscurridos = cantidadCiclosTranscurridos + 1;
					salidaBoton = 0;
				end
			end	
			else begin
				cantidadCiclosTranscurridos = 0;
				salidaBoton = 0;
			end
		end
	end
	
endmodule 