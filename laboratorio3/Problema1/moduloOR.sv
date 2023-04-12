module moduloOR #(parameter cantidadBits = 4) (operandoA, operandoB, resultado);
	input [cantidadBits-1:0] operandoA;
	input [cantidadBits-1:0] operandoB;
	output [cantidadBits-1:0] resultado;
	assign resultado = operandoA | operandoB;
endmodule 