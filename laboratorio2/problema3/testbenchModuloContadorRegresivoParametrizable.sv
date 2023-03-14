`timescale 1 ns/10 ps

module testbenchModuloContadorRegresivoParametrizable;
	reg entradaAumentar;
	reg entradaIniciarCuenta;
	reg entradaDecrecer;
	reg reinicio;
	wire [1:0] salidaContadorDosBits;
	wire [3:0] salidaContadorCuatroBits;
	wire [5:0] salidaContadorSeisBits;
	
	moduloContadorRegresivoParametrizable #(2) instanciaModuloContadorRegresivoParametrizableDosBits
	(
	.entradaAumentar(entradaAumentar), 
	.entradaIniciarCuenta(entradaIniciarCuenta),
	.entradaDecrecer(entradaDecrecer),
	.reinicio(reinicio),
	.salidaContador(salidaContadorDosBits)
	);
	
	moduloContadorRegresivoParametrizable #(4) instanciaModuloContadorRegresivoParametrizableCuatroBits
	(
	.entradaAumentar(entradaAumentar), 
	.entradaIniciarCuenta(entradaIniciarCuenta),
	.entradaDecrecer(entradaDecrecer),
	.reinicio(reinicio),
	.salidaContador(salidaContadorCuatroBits)
	);
	
	moduloContadorRegresivoParametrizable #(6) instanciaModuloContadorRegresivoParametrizableSeisBits
	(
	.entradaAumentar(entradaAumentar), 
	.entradaIniciarCuenta(entradaIniciarCuenta),
	.entradaDecrecer(entradaDecrecer),
	.reinicio(reinicio),
	.salidaContador(salidaContadorSeisBits)
	);
	
	initial
		begin
			/*
				TEST DE AUTO CHEQUEO PARA EL CONTADOR DE DOS BITS.
			*/
			entradaIniciarCuenta = 1'b0;
			entradaDecrecer = 1'b0;
			entradaAumentar = 1'b0;
			reinicio = 1'b1; #10;
			entradaAumentar = 1'b1; #10; // La cuenta se aumenta en 1 (01)
			entradaAumentar = 1'b0; #10; 
			entradaAumentar = 1'b1; #10; // La cuenta se aumenta en 1 (10)
			entradaAumentar = 1'b0; #10; 
			entradaAumentar = 1'b1; #10; // La cuenta se aumenta en 1 (11)
			entradaAumentar = 1'b0; #10;
			entradaIniciarCuenta = 1'b1; #10; // Se inicia la cuenta a partir de 3 (11)
			entradaIniciarCuenta = 1'b0; #10;
			entradaDecrecer = 1'b1; // La cuenta se reduce en 1 (10)
			entradaDecrecer = 1'b0;
			if (salidaContadorDosBits != 2'b10) $display("ERROR. La cuenta esperada era 10 y se obtuvo %0b.", salidaContadorDosBits);
			entradaDecrecer = 1'b1; // La cuenta se reduce en 1 (01)
			entradaDecrecer = 1'b0;
			if (salidaContadorDosBits != 2'b01) $display("ERROR. La cuenta esperada era 01 y se obtuvo %0b.", salidaContadorDosBits);
			entradaDecrecer = 1'b1; // La cuenta se reduce en 1 (00)
			entradaDecrecer = 1'b0;
			if (salidaContadorDosBits != 2'b00) $display("ERROR. La cuenta esperada era 00 y se obtuvo %0b.", salidaContadorDosBits);
			entradaDecrecer = 1'b1; // La cuenta se reduce en 1 (vuelve a ser 11)
			entradaDecrecer = 1'b0;
			if (salidaContadorDosBits != 2'b11) $display("ERROR. La cuenta esperada era 11 y se obtuvo %0b.", salidaContadorDosBits);
		
			/*
				TEST DE AUTO CHEQUEO PARA EL CONTADOR DE CUATRO BITS.
			*/
			entradaIniciarCuenta = 1'b0;
			entradaDecrecer = 1'b0;
			entradaAumentar = 1'b0;
			reinicio = 1'b1; #10;
			entradaAumentar = 1'b1; #10; // La cuenta se aumenta en 1 (0001)
			entradaAumentar = 1'b0; #10; 
			entradaAumentar = 1'b1; #10; // La cuenta se aumenta en 1 (0010)
			entradaAumentar = 1'b0; #10; 
			entradaAumentar = 1'b1; #10; // La cuenta se aumenta en 1 (0011)
			entradaAumentar = 1'b0; #10;
			entradaAumentar = 1'b1; #10; // La cuenta se aumenta en 1 (0100)
			entradaAumentar = 1'b0; #10;
			entradaAumentar = 1'b1; #10; // La cuenta se aumenta en 1 (0101)
			entradaAumentar = 1'b0; #10;
			entradaAumentar = 1'b1; #10; // La cuenta se aumenta en 1 (0110)
			entradaAumentar = 1'b0; #10;
			entradaAumentar = 1'b1; #10; // La cuenta se aumenta en 1 (0111)
			entradaAumentar = 1'b0; #10;
			entradaAumentar = 1'b1; #10; // La cuenta se aumenta en 1 (1000)
			entradaAumentar = 1'b0; #10;
			entradaAumentar = 1'b1; #10; // La cuenta se aumenta en 1 (1001)
			entradaAumentar = 1'b0; #10;
			entradaIniciarCuenta = 1'b1; #10; // Se inicia la cuenta a partir de 9 (1001)
			entradaIniciarCuenta = 1'b0; #10;
			entradaDecrecer = 1'b1; // La cuenta se reduce en 1 (1000)
			entradaDecrecer = 1'b0;
			if (salidaContadorCuatroBits != 4'b1000) $display("ERROR. La cuenta esperada era 1000 y se obtuvo %0b.", salidaContadorCuatroBits);
			entradaDecrecer = 1'b1; // La cuenta se reduce en 1 (0111)
			entradaDecrecer = 1'b0;
			if (salidaContadorCuatroBits != 4'b0111) $display("ERROR. La cuenta esperada era 0111 y se obtuvo %0b.", salidaContadorCuatroBits);
			entradaDecrecer = 1'b1; // La cuenta se reduce en 1 (0110)
			entradaDecrecer = 1'b0;
			if (salidaContadorCuatroBits != 4'b0110) $display("ERROR. La cuenta esperada era 0110 y se obtuvo %0b.", salidaContadorCuatroBits);
			entradaDecrecer = 1'b1; // La cuenta se reduce en 1 (0101)
			entradaDecrecer = 1'b0;
			if (salidaContadorCuatroBits != 4'b0101) $display("ERROR. La cuenta esperada era 0101 y se obtuvo %0b.", salidaContadorCuatroBits);
			entradaDecrecer = 1'b1; // La cuenta se reduce en 1 (0100)
			entradaDecrecer = 1'b0;
			if (salidaContadorCuatroBits != 4'b0100) $display("ERROR. La cuenta esperada era 0100 y se obtuvo %0b.", salidaContadorCuatroBits);
			entradaDecrecer = 1'b1; // La cuenta se reduce en 1 (0011)
			entradaDecrecer = 1'b0;
			if (salidaContadorCuatroBits != 4'b0011) $display("ERROR. La cuenta esperada era 0011 y se obtuvo %0b.", salidaContadorCuatroBits);
			entradaDecrecer = 1'b1; // La cuenta se reduce en 1 (0010)
			entradaDecrecer = 1'b0;
			if (salidaContadorCuatroBits != 4'b0010) $display("ERROR. La cuenta esperada era 0010 y se obtuvo %0b.", salidaContadorCuatroBits);
			entradaDecrecer = 1'b1; // La cuenta se reduce en 1 (0001)
			entradaDecrecer = 1'b0;
			if (salidaContadorCuatroBits != 4'b0001) $display("ERROR. La cuenta esperada era 0001 y se obtuvo %0b.", salidaContadorCuatroBits);
			entradaDecrecer = 1'b1; // La cuenta se reduce en 1 (0000)
			entradaDecrecer = 1'b0;
			if (salidaContadorCuatroBits != 4'b0000) $display("ERROR. La cuenta esperada era 0000 y se obtuvo %0b.", salidaContadorCuatroBits);
			entradaDecrecer = 1'b1; // La cuenta se reduce en 1 (vuelve a ser 1001)
			entradaDecrecer = 1'b0;
			if (salidaContadorCuatroBits != 4'b1001) $display("ERROR. La cuenta esperada era 1001 y se obtuvo %0b.", salidaContadorCuatroBits);
		
			/*
				TEST DE AUTO CHEQUEO PARA EL CONTADOR DE SEIS BITS.
			*/
			entradaIniciarCuenta = 1'b0;
			entradaDecrecer = 1'b0;
			entradaAumentar = 1'b0;
			reinicio = 1'b1; #10;
			entradaAumentar = 1'b1; #10; // La cuenta se aumenta en 1 (00_00_01)
			entradaAumentar = 1'b0; #10; 
			entradaAumentar = 1'b1; #10; // La cuenta se aumenta en 1 (00_00_10)
			entradaAumentar = 1'b0; #10; 
			entradaAumentar = 1'b1; #10; // La cuenta se aumenta en 1 (00_00_11)
			entradaAumentar = 1'b0; #10;
			entradaAumentar = 1'b1; #10; // La cuenta se aumenta en 1 (00_01_00)
			entradaIniciarCuenta = 1'b1; #10; // Se inicia la cuenta a partir de 4 (00_01_00)
			entradaIniciarCuenta = 1'b0; #10;
			entradaDecrecer = 1'b1; // La cuenta se reduce en 1 (00_00_11)
			entradaDecrecer = 1'b0;
			if (salidaContadorSeisBits != 4'b000011) $display("ERROR. La cuenta esperada era 00_00_11 y se obtuvo %0b.", salidaContadorSeisBits);
			entradaDecrecer = 1'b1; // La cuenta se reduce en 1 (00_00_10)
			entradaDecrecer = 1'b0;
			if (salidaContadorSeisBits != 4'b000010) $display("ERROR. La cuenta esperada era 00_00_10 y se obtuvo %0b.", salidaContadorSeisBits);
			entradaDecrecer = 1'b1; // La cuenta se reduce en 1 (00_00_01)
			entradaDecrecer = 1'b0;
			if (salidaContadorSeisBits != 4'b000001) $display("ERROR. La cuenta esperada era 00_00_01 y se obtuvo %0b.", salidaContadorSeisBits);
			entradaDecrecer = 1'b1; // La cuenta se reduce en 1 (00_00_00)
			entradaDecrecer = 1'b0;
			if (salidaContadorSeisBits != 4'b000000) $display("ERROR. La cuenta esperada era 00_00_00 y se obtuvo %0b.", salidaContadorSeisBits);
			entradaDecrecer = 1'b1; // La cuenta se reduce en 1 (vuelve a ser 00_01_00)
			entradaDecrecer = 1'b0;
			if (salidaContadorSeisBits != 4'b000100) $display("ERROR. La cuenta esperada era 00_01_00 y se obtuvo %0b.", salidaContadorSeisBits);
		end

endmodule 