module moduloReloj25MHz (reloj, reinicio, reloj25MHz);
	input logic reloj;
	input logic reinicio;
	output logic reloj25MHz;
	
	reg cantidadCiclosTranscurridos;

	always @(posedge reloj) begin
		if (reinicio == 1'b1) reloj25MHz = 1'b0;
		else begin
			if (cantidadCiclosTranscurridos == 1'b1) begin
				reloj25MHz = 1'b1;
				cantidadCiclosTranscurridos = 1'b0;
			end
			else begin
				cantidadCiclosTranscurridos = cantidadCiclosTranscurridos + 1;
				reloj25MHz = 1'b0;
			end
		end
	end
endmodule 