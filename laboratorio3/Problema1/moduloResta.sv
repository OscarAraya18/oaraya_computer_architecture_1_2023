module moduloResta #(parameter cantidadBits = 5) (operandoA, operandoB, resultado);
	input [cantidadBits-1:0] operandoA;
	input [cantidadBits-1:0] operandoB;
	output logic [cantidadBits-2:0] resultado;
	always @(operandoA, operandoB) begin
		if ((operandoA[cantidadBits-1] == 1'b0) && (operandoB[cantidadBits-1] == 1'b0)) begin
			if (operandoA[cantidadBits-2:0] == operandoB[cantidadBits-2:0]) begin
				resultado = 0;
			end
			else if (operandoA[cantidadBits-2:0] > operandoB[cantidadBits-2:0]) begin
				resultado = operandoA[cantidadBits-2:0] - operandoB[cantidadBits-2:0];
			end
			else begin
				resultado = operandoB[cantidadBits-2:0] - operandoA[cantidadBits-2:0];
			end
		end
		else if ((operandoA[cantidadBits-1] == 1'b1) && (operandoB[cantidadBits-1] == 1'b1)) begin
			if (operandoA[cantidadBits-2:0] == operandoB[cantidadBits-2:0]) begin
				resultado = 0;
			end
			else if (operandoA[cantidadBits-2:0] > operandoB[cantidadBits-2:0]) begin
				resultado = operandoA[cantidadBits-2:0] - operandoB[cantidadBits-2:0];
			end
			else begin
				resultado = operandoB[cantidadBits-2:0] - operandoA[cantidadBits-2:0];
			end
		end
		else if ((operandoA[cantidadBits-1] == 1'b0) && (operandoB[cantidadBits-1] == 1'b1)) begin
			resultado = operandoA[cantidadBits-2:0] + operandoB[cantidadBits-2:0];
		end
		else if ((operandoA[cantidadBits-1] == 1'b1) && (operandoB[cantidadBits-1] == 1'b0)) begin
			resultado = operandoA[cantidadBits-2:0] + operandoB[cantidadBits-2:0];
		end
	end
endmodule 