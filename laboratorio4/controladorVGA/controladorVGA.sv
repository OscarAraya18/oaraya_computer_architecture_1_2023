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
	wire [8:0] colorCoordenadaDibujar;
	wire [9:0] coordenadaDibujarX;
	wire [9:0] coordenadaDibujarY;
	
	wire [3:0] tableroJuego [3:0][3:0];
	wire [1:0] estadoJuego;
	
	wire botonArribaCorregido;
	wire botonAbajoCorregido;
	wire botonIzquierdaCorregido;
	wire botonDerechaCorregido;
	
	moduloReloj25MHz instanciaModuloReloj25MHz
	(
	.reloj (reloj),
	.reinicio (reinicio),
	.reloj25MHz (reloj25MHz)
	);
	
	moduloControladorBotones instanciaModuloControladorBotones
	(
	.entradaBotonArriba (botonArriba),
	.entradaBotonAbajo (botonAbajo),
	.entradaBotonIzquierda (botonIzquierda),
	.entradaBotonDerecha (botonDerecha),
	.salidaBotonArriba (botonArribaCorregido),
	.salidaBotonAbajo (botonAbajoCorregido),
	.salidaBotonIzquierda (botonIzquierdaCorregido),
	.salidaBotonDerecha (botonDerechaCorregido)
	);
	
	moduloControladorJuego instanciaModuloControladorJuego
	(
	.reloj (reloj),
	.reinicio (reinicio),
	.botonArriba (botonArribaCorregido),
	.botonAbajo (botonAbajoCorregido),
	.botonIzquierda (botonIzquierdaCorregido),
	.botonDerecha (botonDerechaCorregido),
	.tableroJuego (tableroJuego),
	.estadoJuego (estadoJuego)
	);
	
	moduloDibujo instanciaModuloDibujo
	(
	.reloj (reloj),
	.reinicio (reinicio),
	.coordenadaDibujarX (coordenadaDibujarX),
	.coordenadaDibujarY (coordenadaDibujarY),
	.posicion0(tableroJuego[0][0]),
	.posicion1(tableroJuego[0][1]),
	.posicion2(tableroJuego[0][2]),
	.posicion3(tableroJuego[0][3]),
	.posicion4(tableroJuego[1][0]),
	.posicion5(tableroJuego[1][1]),
	.posicion6(tableroJuego[1][2]),
	.posicion7(tableroJuego[1][3]),
	.posicion8(tableroJuego[2][0]),
	.posicion9(tableroJuego[2][1]),
	.posicion10(tableroJuego[2][2]),
	.posicion11(tableroJuego[2][3]),
	.posicion12(tableroJuego[3][0]),
	.posicion13(tableroJuego[3][1]),
	.posicion14(tableroJuego[3][2]),
	.posicion15(tableroJuego[3][3]),
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