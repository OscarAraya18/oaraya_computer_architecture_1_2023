`timescale 1 ns/10 ps

module testbenchModuloConvertidorBinarioBCD;
	reg [3:0] entradaBinario;
	wire [4:0] salidaBCD;
	
	moduloConvertidorBinarioBCD instanciaModuloConvertidorBinarioBCD
	(
	.entradaBinario(entradaBinario), 
	.salidaBCD(salidaBCD)
	);
	
	initial
		begin
			entradaBinario = 4'b0000; #10;
			entradaBinario = 4'b0001; #10;
			entradaBinario = 4'b0010; #10;
			entradaBinario = 4'b0011; #10;
			entradaBinario = 4'b0100; #10;
			entradaBinario = 4'b0101; #10;
			entradaBinario = 4'b0110; #10;
			entradaBinario = 4'b0111; #10;
			entradaBinario = 4'b1000; #10;
			entradaBinario = 4'b1001; #10;
			entradaBinario = 4'b1010; #10;
			entradaBinario = 4'b1011; #10;
			entradaBinario = 4'b1100; #10;
			entradaBinario = 4'b1101; #10;
			entradaBinario = 4'b1110; #10;
			entradaBinario = 4'b1111; #10;
		end
endmodule 