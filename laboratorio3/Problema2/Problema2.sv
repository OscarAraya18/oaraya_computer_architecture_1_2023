module Problema2 (reloj, reset,
						operandoA, operandoB, seleccionOperacion,
						resultado, displayResultado0, displayResultado1, displayResultado2, displayResultado3, displayOperacion, 
						N, Z, C, V);
	input reloj;
	input reset;
	
	input [4:0] operandoA;
	input [4:0] operandoB;
	input [3:0] seleccionOperacion;
	
	output [3:0] resultado;
	output [6:0] displayResultado0;
	output [6:0] displayResultado1;
	output [6:0] displayResultado2;
	output [6:0] displayResultado3;
	output [6:0] displayOperacion;
	output N, Z, C, V;
	
	wire [4:0] entradaLogicaCombinacionalOperandoA;
	wire [4:0] entradaLogicaCombinacionalOperandoB;
	wire [4:0] entradaLogicaCombinacionalSeleccionOperacion;
	
	registroEntrada #(5) (reloj, reset, 
								operandoA, operandoB, seleccionOperacion, 
								entradaLogicaCombinacionalOperandoA, entradaLogicaCombinacionalOperandoB, entradaLogicaCombinacionalSeleccionOperacion);
	
endmodule 