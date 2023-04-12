module moduloDisplayBanderas #(parameter cantidadBits = 5) (operandoA, operandoB, seleccionOperacion, resultado, N, Z, C, V);
	input [cantidadBits-1:0] operandoA;
	input [cantidadBits-1:0] operandoB;
	input [3:0] seleccionOperacion;
	input [cantidadBits-2:0] resultado;
	output N, Z, C, V;
	always @(operandoA, operandoB, seleccionOperacion, resultado) begin
		case (seleccionOperacion)
			4'b1111:
				begin
					N = 1'b0; C = 1'b0; V = 1'b0;
					if (resultado == 0) Z = 1'b1;
					else Z = 1'b0;
				end	
			4'b1110: 
				begin
					N = 1'b0; C = 1'b0; V = 1'b0;
					if (resultado == 0) Z = 1'b1;
					else Z = 1'b0;
				end
			4'b1101:
				begin
					N = 1'b0; C = 1'b0; V = 1'b0;
					if (resultado == 0) Z = 1'b1;
					else Z = 1'b0;
				end
			4'b1100: 
				begin
					N = 1'b0; C = 1'b0; V = 1'b0;
					if (resultado == 0) Z = 1'b1;
					else Z = 1'b0;
				end
			4'b1011:
				begin
					N = 1'b0; C = 1'b0; V = 1'b0;
					if (resultado == 0) Z = 1'b1;
					else Z = 1'b0;
				end	
			4'b1010: 
				begin
					V = 1'b0;
					// A(+) + B(+)
					if ((operandoA[cantidadBits-1] == 1'b0) && (operandoB[cantidadBits-1] == 1'b0)) begin
						N = 1'b0;
						if ((operandoA[cantidadBits-2:0] + operandoB[cantidadBits-2:0]) > ((2**(cantidadBits-1))-1)) begin
							C = 1'b1; Z = 1'b0;
						end
						else begin
							C = 1'b0;
							if (resultado == 0) Z = 1'b1;
							else Z = 1'b0;
						end
					end
					// A(-) + B(-)
					else if ((operandoA[cantidadBits-1] == 1'b1) && (operandoB[cantidadBits-1] == 1'b1)) begin
						if ((operandoA[cantidadBits-2:0] != 0) || (operandoA[cantidadBits-2:0] != 0)) N = 1'b1;
						else N = 1'b0;
						if ((operandoA[cantidadBits-2:0] + operandoB[cantidadBits-2:0]) > ((2**(cantidadBits-1))-1)) begin
							C = 1'b1; Z = 1'b0;
						end
						else begin
							C = 1'b0;
							if (resultado == 0) Z = 1'b1;
							else Z = 1'b0;
						end
					end
					// A(+) + B(-)
					else if ((operandoA[cantidadBits-1] == 1'b0) && (operandoB[cantidadBits-1] == 1'b1)) begin
						if (resultado == 0) Z = 1'b1;
						else Z = 1'b0;
						if (operandoA[cantidadBits-2:0] == operandoB[cantidadBits-2:0]) begin
							N = 1'b0; C = 1'b0;
						end
						else if (operandoA[cantidadBits-2:0] > operandoB[cantidadBits-2:0]) begin
							N = 1'b0; C = 1'b0;
						end
						else begin
							N = 1'b1; C = 1'b0;
						end
					end
					// A(-) + B(+)
					else if ((operandoA[cantidadBits-1] == 1'b1) && (operandoB[cantidadBits-1] == 1'b0)) begin
						if (resultado == 0) Z = 1'b1;
						else Z = 1'b0;
						if (operandoA[cantidadBits-2:0] == operandoB[cantidadBits-2:0]) begin
							N = 1'b0; C = 1'b0;
						end
						else if (operandoA[cantidadBits-2:0] > operandoB[cantidadBits-2:0]) begin
							N = 1'b1; C = 1'b0;
						end 
						else begin
							N = 1'b0; C = 1'b0;
						end
					end
				end
			4'b1001: 
				begin
					V = 1'b0;
					// A(+) - B(+)
					if ((operandoA[cantidadBits-1] == 1'b0) && (operandoB[cantidadBits-1] == 1'b0)) begin
						if (resultado == 0) Z = 1'b1;
						else Z = 1'b0;
						if (operandoA[cantidadBits-2:0] == operandoB[cantidadBits-2:0]) begin
							N = 1'b0; C = 1'b0;
						end
						else if (operandoA[cantidadBits-2:0] > operandoB[cantidadBits-2:0]) begin
							N = 1'b0; C = 1'b0;
						end
						else begin
							N = 1'b1; C = 1'b0;
						end
					end
					// A(-) - B(-)
					else if ((operandoA[cantidadBits-1] == 1'b1) && (operandoB[cantidadBits-1] == 1'b1)) begin
						if (resultado == 0) Z = 1'b1;
						else Z = 1'b0;
						if (operandoA[cantidadBits-2:0] == operandoB[cantidadBits-2:0]) begin
							N = 1'b0; C = 1'b0;
						end
						else if (operandoA[cantidadBits-2:0] > operandoB[cantidadBits-2:0]) begin
							N = 1'b1; C = 1'b0;
						end
						else begin
							N = 1'b0; C = 1'b0;
						end
					end
					// A(+) - B(-)
					else if ((operandoA[cantidadBits-1] == 1'b0) && (operandoB[cantidadBits-1] == 1'b1)) begin
						N = 1'b0;
						if ((operandoA[cantidadBits-2:0] + operandoB[cantidadBits-2:0]) > ((2**(cantidadBits-1))-1)) begin
							C = 1'b1; Z = 1'b0;
						end
						else begin
							C = 1'b0;
							if (resultado == 0) Z = 1'b1;
							else Z = 1'b0;
						end
					end
					// A(-) - B(+)
					else if ((operandoA[cantidadBits-1] == 1'b1) && (operandoB[cantidadBits-1] == 1'b0)) begin
						if ((operandoA[cantidadBits-2:0] + operandoB[cantidadBits-2:0]) > ((2**(cantidadBits-1))-1)) begin
							C = 1'b1; Z = 1'b0; N = 1'b1;
						end
						else begin
							C = 1'b0;
							if (resultado == 0) Z = 1'b1;
							else Z = 1'b0;
							if ((operandoA[cantidadBits-2:0] != 0) || (operandoA[cantidadBits-2:0] != 0)) N = 1'b1;
							else N = 1'b0;
						end
					end
				end
			4'b1000:
				begin
					C = 1'b0;
					if ((operandoA[cantidadBits-2:0] != 0) && (operandoA[cantidadBits-2:0] != 0)) begin
						N = operandoA[cantidadBits-1] ^ operandoB[cantidadBits-1];
					end
					else N = 1'b0;
					if ((operandoA[cantidadBits-2:0] * operandoB[cantidadBits-2:0]) > ((2**(cantidadBits-1))-1)) begin
						V = 1'b1; Z = 1'b0;
					end
					else begin
						V = 1'b0;
						if (resultado == 0) Z = 1'b1;
						else Z = 1'b0;
					end
				end
			4'b0111:
				begin
					C = 1'b0; V = 1'b0;
					if ((operandoA[cantidadBits-2:0] != 0) && (operandoA[cantidadBits-2:0] != 0)) begin
						N = operandoA[cantidadBits-1] ^ operandoB[cantidadBits-1];
					end
					else N = 1'b0;
					if (resultado == 0) Z = 1'b1;
					else Z = 1'b0;
				end
			4'b0110:
				begin
					C = 1'b0; V = 1'b0; N = 1'b0;
					if (resultado == 0) Z = 1'b1;
					else Z = 1'b0;
				end
			default:
				begin
					C = 1'b0; V = 1'b0; N = 1'b0; Z = 1'b0;
				end
		endcase
	end
endmodule 