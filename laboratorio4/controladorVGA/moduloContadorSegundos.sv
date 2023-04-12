module moduloContadorSegundos (reloj, reinicio, cantidadSegundosTranscurridos);
	input logic reloj;
	input logic reinicio;
	output logic [3:0] cantidadSegundosTranscurridos;
	
	reg [25:0] cantidadCiclosTranscurridos;
	
	always @(posedge reloj) begin
		if (reinicio == 1'b1) begin
			cantidadCiclosTranscurridos = 0;
			cantidadSegundosTranscurridos = 0;
		end
		else begin
			if (cantidadCiclosTranscurridos >= 26'b10111110101111000010000000) begin
				cantidadCiclosTranscurridos = 0;
				if (cantidadSegundosTranscurridos == 4'b1111) cantidadSegundosTranscurridos = 0;
				else cantidadSegundosTranscurridos = cantidadSegundosTranscurridos + 1;
			end
			else cantidadCiclosTranscurridos = cantidadCiclosTranscurridos + 1;
		end
	end

endmodule 