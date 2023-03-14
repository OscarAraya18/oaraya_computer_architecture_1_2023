module problema3 (entradaAumentar, entradaIniciarCuenta, entradaDecrecer, reinicio, sieteSegmentos0, sieteSegmentos1, sieteSegmentos2, sieteSegmentos3, sieteSegmentos4, sieteSegmentos5);
	input logic entradaAumentar;
	input logic entradaIniciarCuenta;
	input logic entradaDecrecer;
	input logic reinicio;
	output logic [6:0] sieteSegmentos0;
	output logic [6:0] sieteSegmentos1;
	output logic [6:0] sieteSegmentos2;
	output logic [6:0] sieteSegmentos3;
	output logic [6:0] sieteSegmentos4;
	output logic [6:0] sieteSegmentos5;
	
	wire [6:0] salidaContador;
	
	moduloContadorRegresivoParametrizable #(6) instanciaModuloContadorRegresivoParametrizable
	(
	.entradaAumentar(entradaAumentar),
	.entradaIniciarCuenta(entradaIniciarCuenta),
	.entradaDecrecer(entradaDecrecer),
	.reinicio(reinicio),
	.salidaContador(salidaContador)
	);
	
	moduloDisplaySieteSegmentos instanciaModuloDisplaySieteSegmentos
	(
	.entradaContador(salidaContador),
	.sieteSegmentos0(sieteSegmentos0),
	.sieteSegmentos1(sieteSegmentos1),
	.sieteSegmentos2(sieteSegmentos2),
	.sieteSegmentos3(sieteSegmentos3),
	.sieteSegmentos4(sieteSegmentos4),
	.sieteSegmentos5(sieteSegmentos5),
	);

endmodule 