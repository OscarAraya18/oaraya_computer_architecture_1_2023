module moduloContadorRegresivoParametrizable #(parameter cantidadBits=6) (entradaAumentar, entradaIniciarCuenta, entradaDecrecer, reinicio, salidaContador);
	input logic entradaAumentar;
	input logic entradaIniciarCuenta;
	input logic entradaDecrecer;
	input logic reinicio;
	output logic [cantidadBits-1:0] salidaContador;
	
	reg cuentaIniciada;
	reg [cantidadBits-1:0] numeroIniciarCuenta;
	
	always @(entradaAumentar, entradaIniciarCuenta, entradaDecrecer, reinicio) begin
		if (reinicio == 1'b1) begin
			salidaContador = 0;
			cuentaIniciada = 0;
			numeroIniciarCuenta = 0;
		end
		else begin
			if (cuentaIniciada == 1'b0) begin
				if (entradaAumentar == 1'b1) numeroIniciarCuenta = numeroIniciarCuenta + 1; 
				if (entradaIniciarCuenta == 1'b1) begin
					cuentaIniciada = 1;
					salidaContador = numeroIniciarCuenta;
				end
			end
			else begin
				if (entradaDecrecer == 1'b1) begin
					if (salidaContador == 0) salidaContador = numeroIniciarCuenta;
					else salidaContador = salidaContador - 1;
				end
			end
		end
	end
endmodule 