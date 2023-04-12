module registroEntrada #(parameter cantidadBits = 5) (reloj, reset,
																		entradaOperandoA, entradaOperandoB, entradaSeleccionOperacion,
																		salidaOperandoA, salidaOperandoB, salidaSeleccionOperacion);
	input reloj;
	input reset;
	
	input [cantidadBits-1:0] entradaOperandoA;
	input [cantidadBits-1:0] entradaOperandoB;
	input [3:0] entradaSeleccionOperacion;
	
	output [cantidadBits-1:0] salidaOperandoA;
	output [cantidadBits-1:0] salidaOperandoB;
	output [3:0] salidaSeleccionOperacion;
	
	always @(posedge reloj) begin
		if (!reset) begin
			salidaOperandoA = entradaOperandoA;
			salidaOperandoB = entradaOperandoB;
			salidaSeleccionOperacion = entradaSeleccionOperacion;
		end
		else begin
			salidaOperandoA = 0;
			salidaOperandoB = 0;
			salidaSeleccionOperacion = 0;
		end
	end
endmodule 