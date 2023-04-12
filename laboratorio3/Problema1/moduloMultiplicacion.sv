module moduloMultiplicacion #(parameter cantidadBits = 5) (operandoA, operandoB, resultado);
	input [cantidadBits-1:0] operandoA;
	input [cantidadBits-1:0] operandoB;
	output [cantidadBits-2:0] resultado;
	assign resultado = operandoA[cantidadBits-2:0] * operandoB[cantidadBits-2:0];
endmodule 