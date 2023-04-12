module controladorVGA (reloj, reinicio, botonArriba, botonAbajo, botonIzquierda, botonDerecha, sincronizacionHorizontal, sincronizacionVertical, escalaRojo, escalaVerde, escalaAzul, sincronizacion, relojVGA, parpadeoVGA);
	input logic reloj;
	input logic reinicio;
	input logic botonArriba;
	input logic botonAbajo;
	input logic botonIzquierda;
	input logic botonDerecha;
	
	output logic sincronizacionHorizontal;
	output logic sincronizacionVertical;
	output logic [7:0] escalaRojo;
	output logic [7:0] escalaVerde;
	output logic [7:0] escalaAzul;
	output logic sincronizacion;
	output logic relojVGA;
	output logic parpadeoVGA;
	
	wire reloj25MHz;
	wire logic [8:0] colorCoordenadaDibujar;
	wire logic [9:0] coordenadaDibujarX;
	wire logic [9:0] coordenadaDibujarY;
	
	reg [3:0] cantidadSegundosTranscurridos;
	wire [2:0] botonPresionado;
	
	always @(botonPresionado) begin
		if (botonPresionado != 3'b000) begin
			if (cantidadSegundosTranscurridos > 4'b1011) cantidadSegundosTranscurridos <= 1'b0;
			else cantidadSegundosTranscurridos <= cantidadSegundosTranscurridos + 1'b1;
		end
		else cantidadSegundosTranscurridos <= cantidadSegundosTranscurridos;
	end
	
	moduloControladorBotones
	(
	.reloj (reloj),
	.reinicio (reinicio),
	.botonArriba (botonArriba),
	.botonAbajo (botonAbajo),
	.botonIzquierda (botonIzquierda),
	.botonDerecha (botonDerecha),
	.botonPresionado (botonPresionado)
	);
	
	moduloReloj25MHz instanciaModuloReloj25MHz
	(
	.reloj (reloj),
	.reinicio (reinicio),
	.reloj25MHz (reloj25MHz)
	);
	
	moduloDibujo instanciaModuloDibujo
	(
	.reloj (reloj),
	.reinicio (reinicio),
	.coordenadaDibujarX (coordenadaDibujarX),
	.coordenadaDibujarY (coordenadaDibujarY),
	.posicion0(cantidadSegundosTranscurridos),
	.posicion1(cantidadSegundosTranscurridos),
	.posicion2(cantidadSegundosTranscurridos),
	.posicion3(cantidadSegundosTranscurridos),
	.posicion4(cantidadSegundosTranscurridos),
	.posicion5(cantidadSegundosTranscurridos),
	.posicion6(cantidadSegundosTranscurridos),
	.posicion7(cantidadSegundosTranscurridos),
	.posicion8(cantidadSegundosTranscurridos),
	.posicion9(cantidadSegundosTranscurridos),
	.posicion10(cantidadSegundosTranscurridos),
	.posicion11(cantidadSegundosTranscurridos),
	.posicion12(cantidadSegundosTranscurridos),
	.posicion13(cantidadSegundosTranscurridos),
	.posicion14(cantidadSegundosTranscurridos),
	.posicion15(cantidadSegundosTranscurridos),
	.colorCoordenadaDibujar (colorCoordenadaDibujar)
	);
	
	moduloControladorVGA instanciaModuloControladorVGA
	(
	.reloj (reloj25MHz),
	.reinicio (reinicio),
	.colorEntrada (colorCoordenadaDibujar),
	.coordenadaDibujarX (coordenadaDibujarX),
	.coordenadaDibujarY (coordenadaDibujarY),
	.sincronizacionHorizontal (sincronizacionHorizontal),
	.sincronizacionVertical (sincronizacionVertical),
	.escalaRojo (escalaRojo),
	.escalaVerde (escalaVerde),
	.escalaAzul (escalaAzul),
	.sincronizacion (sincronizacion),
	.relojVGA (relojVGA),
	.parpadeoVGA (parpadeoVGA)
	);
	
endmodule 