module moduloControlOperaciones #(parameter cantidadBits = 5) 
											(resultadoAND, resultadoOR, resultadoXOR, resultadoShiftL, resultadoShiftR,
											resultadoSuma, resultadoResta, resultadoMultiplicacion, resultadoDivision, resultadoModulo,
											seleccionOperacion,
											resultadoSeleccionado,
											displayOperacion);
	input [cantidadBits-2:0] resultadoAND;
	input [cantidadBits-2:0] resultadoOR;
	input [cantidadBits-2:0] resultadoXOR;
	input [cantidadBits-2:0] resultadoShiftL;
	input [cantidadBits-2:0] resultadoShiftR;
	input [cantidadBits-2:0] resultadoSuma;
	input [cantidadBits-2:0] resultadoResta;
	input [cantidadBits-2:0] resultadoMultiplicacion;
	input [cantidadBits-2:0] resultadoDivision;
	input [cantidadBits-2:0] resultadoModulo;
	input [3:0] seleccionOperacion;
	output [cantidadBits-2:0] resultadoSeleccionado;
	output [6:0] displayOperacion;
	always @(seleccionOperacion, resultadoAND, resultadoOR, resultadoXOR, resultadoShiftL, resultadoShiftR,
				resultadoSuma, resultadoResta, resultadoMultiplicacion, resultadoDivision, resultadoModulo) begin
		case (seleccionOperacion)
			4'b1111: begin resultadoSeleccionado = resultadoAND; displayOperacion = 7'b1000000; end
			4'b1110: begin resultadoSeleccionado = resultadoOR; displayOperacion = 7'b1111001; end
			4'b1101: begin resultadoSeleccionado = resultadoXOR; displayOperacion = 7'b0100100; end
			4'b1100: begin resultadoSeleccionado = resultadoShiftL; displayOperacion = 7'b0110000; end
			4'b1011: begin resultadoSeleccionado = resultadoShiftR; displayOperacion = 7'b0011001; end
			4'b1010: begin resultadoSeleccionado = resultadoSuma; displayOperacion = 7'b0010010; end
			4'b1001: begin resultadoSeleccionado = resultadoResta; displayOperacion = 7'b0000010; end
			4'b1000: begin resultadoSeleccionado = resultadoMultiplicacion; displayOperacion = 7'b1111000; end
			4'b0111: begin resultadoSeleccionado = resultadoDivision; displayOperacion = 7'b0000000; end
			4'b0110: begin resultadoSeleccionado = resultadoModulo; displayOperacion = 7'b0011000; end
			default: begin resultadoSeleccionado = resultadoAND; displayOperacion = 7'b1000000; end
		endcase
	end
endmodule 