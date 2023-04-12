module Problema1 (operandoA, operandoB, seleccionOperacion, 
						resultado, displayResultado0, displayResultado1, displayResultado2, displayResultado3, 
						displayOperacion, N, Z, C, V);
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
	wire [3:0] resultadoWire;
	wire error;
	assign resultado = resultadoWire;
	ALU #(5) ALU0 (operandoA, operandoB, seleccionOperacion, resultadoWire, error, displayOperacion, N, Z, C, V);
	moduloDisplayResultado moduloDisplayResultado0 (resultadoWire, error, seleccionOperacion, displayResultado0, displayResultado1, displayResultado2, displayResultado3);
endmodule 