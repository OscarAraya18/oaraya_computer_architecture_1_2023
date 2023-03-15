module moduloConvertidorBinarioBCD(entradaBinario, salidaBCD);
	
	input logic [3:0] entradaBinario;
	output logic [4:0] salidaBCD;
	
	always_comb begin
		case (entradaBinario) 
			4'b0000: salidaBCD = 5'b00000;
			4'b0001: salidaBCD = 5'b00001;
			4'b0010: salidaBCD = 5'b00010;
			4'b0011: salidaBCD = 5'b00011;
			4'b0100: salidaBCD = 5'b00100;
			4'b0101: salidaBCD = 5'b00101;
			4'b0110: salidaBCD = 5'b00110;
			4'b0111: salidaBCD = 5'b00111;
			4'b1000: salidaBCD = 5'b01000;
			4'b1001: salidaBCD = 5'b01001;
			4'b1010: salidaBCD = 5'b10000;
			4'b1011: salidaBCD = 5'b10001;
			4'b1100: salidaBCD = 5'b10010;
			4'b1101: salidaBCD = 5'b10011;
			4'b1110: salidaBCD = 5'b10100;
			4'b1111: salidaBCD = 5'b10101;
			default: salidaBCD = 5'b00000;
		endcase
	end
	
endmodule 