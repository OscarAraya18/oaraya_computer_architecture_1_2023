module moduloConvertidorBinarioBCD(entradaBinario, salidaBCD);
	
	input logic [3:0] entradaBinario;
	output logic [4:0] salidaBCD;
	
	wire B3;
	wire B2;
	wire B1;
	wire B0;
	
	assign B3 = entradaBinario[3];
	assign B2 = entradaBinario[2];
	assign B1 = entradaBinario[1];
	assign B0 = entradaBinario[0];
	
	assign salidaBCD[4] = (B3 & B1) | (B3 & B2);
	assign salidaBCD[3] = (B3 & ~B2 & ~B1);
	assign salidaBCD[2] = (~B3 & B2) | (B2 & B1);
	assign salidaBCD[1] = (~B3 & B1) | (B3 & B2 & ~B1);
	assign salidaBCD[0] = (B0);
	
endmodule 