module problema1(entradaBinario, sieteSegmentos0, sieteSegmentos1, sieteSegmentos2, sieteSegmentos3, sieteSegmentos4);
	
	input logic [3:0] entradaBinario;
	output logic [6:0] sieteSegmentos0;
	output logic [6:0] sieteSegmentos1;
	output logic [6:0] sieteSegmentos2;
	output logic [6:0] sieteSegmentos3;
	output logic [6:0] sieteSegmentos4;
	
	wire [4:0] numeroConvertidoBinarioBCD;
	
	moduloConvertidorBinarioBCD instanciaModuloConvertidorBinarioBCD
	(
	.entradaBinario(entradaBinario),
	.salidaBCD(numeroConvertidoBinarioBCD)
	);
	
	moduloDisplayBCDSieteSegmentos instanciaModuloDisplayBCDSieteSegmentos
	(
	.entradaBCD(numeroConvertidoBinarioBCD),
	.sieteSegmentos0(sieteSegmentos0),
	.sieteSegmentos1(sieteSegmentos1),
	.sieteSegmentos2(sieteSegmentos2),
	.sieteSegmentos3(sieteSegmentos3),
	.sieteSegmentos4(sieteSegmentos4)
	);
	
endmodule 