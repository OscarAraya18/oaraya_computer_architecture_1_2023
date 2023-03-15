module moduloContadorRegresivoParametrizable #(parameter cantidadBits=6) (entradaAumentar, entradaIniciarCuenta, entradaDecrecer, reinicio, salidaContador);
	input logic entradaAumentar;
	input logic entradaIniciarCuenta;
	input logic entradaDecrecer;
	input logic reinicio;
	output reg [cantidadBits-1:0] salidaContador;
	
	reg cuentaIniciada;
	reg [cantidadBits-1:0] numeroIniciarCuenta;
	reg botonAumentarPresionado;
	reg botonDecrecerPresionado;
	
	always @(entradaAumentar, entradaIniciarCuenta, entradaDecrecer, reinicio) begin
		if (reinicio == 1'b0) begin
			salidaContador = 0;
			cuentaIniciada = 0;
			numeroIniciarCuenta = 0;
			botonAumentarPresionado = 0;
			botonDecrecerPresionado = 0;
		end
		else begin
			if (cuentaIniciada == 1'b0) begin
				if (entradaAumentar == 1'b0) begin
					if (botonAumentarPresionado == 1'b0) begin
						numeroIniciarCuenta = numeroIniciarCuenta + 1;
						salidaContador = salidaContador + 1;
						botonAumentarPresionado = 1;
					end
				end
				else botonAumentarPresionado = 0;
				if (entradaIniciarCuenta == 1'b0) begin
					cuentaIniciada = 1;
				end
			end
			else begin
				if (entradaDecrecer == 1'b0) begin
					if (botonDecrecerPresionado == 1'b0) begin
						salidaContador = salidaContador - 1;
						botonDecrecerPresionado = 1;
					end
				end
				else botonDecrecerPresionado = 0;
			end
		end
	end
endmodule 