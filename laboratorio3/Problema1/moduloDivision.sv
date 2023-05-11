module moduloDivision #(parameter cantidadBits = 5) (operandoA, operandoB, resultado, error);
	input [cantidadBits-1:0] operandoA;
	input [cantidadBits-1:0] operandoB;
	output [cantidadBits-2:0] resultado;
	output logic error;
	assign resultado = operandoA[cantidadBits-2:0] / operandoB[cantidadBits-2:0];
	always @(operandoB) begin
		if (operandoB[cantidadBits-2:0] == 0) error = 1'b1;
		else error = 1'b0;
	end
endmodule 