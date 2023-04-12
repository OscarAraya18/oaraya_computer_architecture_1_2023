module ALU #(parameter cantidadBits = 5) (operandoA, operandoB, seleccionOperacion, resultado, error, displayOperacion, N, Z, C, V);
	input [cantidadBits-1:0] operandoA;
	input [cantidadBits-1:0] operandoB;
	input [3:0] seleccionOperacion;
	output [cantidadBits-2:0] resultado;
	output error;
	output [6:0] displayOperacion;
	output N, Z, C, V;
	wire [cantidadBits-2:0] resultadoAND;
	wire [cantidadBits-2:0] resultadoOR;
	wire [cantidadBits-2:0] resultadoXOR;
	wire [cantidadBits-2:0] resultadoShiftL;
	wire [cantidadBits-2:0] resultadoShiftR;
	wire [cantidadBits-2:0] resultadoSuma;
	wire [cantidadBits-2:0] resultadoResta;
	wire [cantidadBits-2:0] resultadoMultiplicacion;
	wire [cantidadBits-2:0] resultadoDivision;
	wire [cantidadBits-2:0] resultadoModulo;
	moduloAND #(cantidadBits-1) moduloAND0 (operandoA[3:0], operandoB[3:0], resultadoAND);
	moduloOR #(cantidadBits-1) moduloOR0 (operandoA[3:0], operandoB[3:0], resultadoOR);
	moduloXOR #(cantidadBits-1) moduloXOR0 (operandoA[3:0], operandoB[3:0], resultadoXOR);
	moduloShiftL #(cantidadBits-1) moduloShiftL0 (operandoA[3:0], operandoB[3:0], resultadoShiftL);
	moduloShiftR #(cantidadBits-1) moduloShiftR0 (operandoA[3:0], operandoB[3:0], resultadoShiftR);
	moduloSuma #(cantidadBits) moduloSuma0 (operandoA, operandoB, resultadoSuma);
	moduloResta #(cantidadBits) moduloResta0 (operandoA, operandoB, resultadoResta);
	moduloMultiplicacion #(cantidadBits) moduloMultiplicacion0 (operandoA, operandoB, resultadoMultiplicacion);
	moduloDivision #(cantidadBits) moduloDivision0 (operandoA, operandoB, resultadoDivision, error);
	moduloModulo #(cantidadBits) moduloModulo0 (operandoA, operandoB, resultadoModulo);
	moduloControlOperaciones #(cantidadBits) moduloControlOperaciones0 (resultadoAND, resultadoOR, resultadoXOR, resultadoShiftL, resultadoShiftR,
															resultadoSuma, resultadoResta, resultadoMultiplicacion, resultadoDivision, resultadoModulo,
															seleccionOperacion, resultado, displayOperacion);
	moduloDisplayBanderas #(cantidadBits) moduloDisplayBanderas0 (operandoA, operandoB, seleccionOperacion, resultado, N, Z, C, V);
endmodule 