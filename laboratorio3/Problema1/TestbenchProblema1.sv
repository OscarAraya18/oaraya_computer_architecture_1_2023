module TestbenchProblema1();
	parameter cantidadBits = 5;
	logic [cantidadBits-1:0] operandoA;
	logic [cantidadBits-1:0] operandoB;
	logic [3:0] seleccionOperacion;
	reg [cantidadBits-2:0] resultado;
	reg [6:0] displayResultado0;
	reg [6:0] displayResultado1;
	reg [6:0] displayResultado2;
	reg [6:0] displayResultado3;
	reg [6:0] displayOperacion;
	reg N, Z, C, V;
	Problema1 #(cantidadBits) Problema10 (operandoA, operandoB, seleccionOperacion, 
														resultado, 
														displayResultado0, displayResultado1, displayResultado2, displayResultado3, 
														displayOperacion, N, Z, C, V);
	initial begin
	
		$display("AND");
		seleccionOperacion = 4'b1111;
		$display("Primera prueba AND: A=0000 B=0000. R=0000 N=0 Z=1 C=0 V=0.");
		#100; operandoA = 5'b00000; operandoB = 5'b00000;
		assert ((resultado==4'b0000)&&(N==1'b0)&&(Z==1'b1)&&(C==1'b0)&&(V==1'b0)) $display("Primera prueba AND correcta.");
		else $error("Primera prueba AND incorrecta.");
		$display("Segunda prueba AND: A=1111 B=1111. R=1111 N=0 Z=0 C=0 V=0.");
		#100; operandoA = 5'b01111; operandoB = 5'b01111;
		assert ((resultado==4'b1111)&&(N==1'b0)&&(Z==1'b0)&&(C==1'b0)&&(V==1'b0)) $display("Segunda prueba AND correcta.");
		else $error("Segunda prueba AND incorrecta.");
		$display("Tercera prueba AND: A=1010 B=0101. R=0000 N=0 Z=1 C=0 V=0.");
		#100; operandoA = 5'b01010; operandoB = 5'b00101;
		assert ((resultado==4'b0000)&&(N==1'b0)&&(Z==1'b1)&&(C==1'b0)&&(V==1'b0)) $display("Tercera prueba AND correcta.");
		else $error("Tercera prueba AND incorrecta.");
		$display("Cuarta prueba AND: A=0111 B=1011. R=0011 N=0 Z=0 C=0 V=0.");
		#100; operandoA = 5'b00111; operandoB = 5'b01011;
		assert ((resultado==4'b0011)&&(N==1'b0)&&(Z==1'b0)&&(C==1'b0)&&(V==1'b0)) $display("Cuarta prueba AND correcta.");
		else $error("Cuarta prueba AND incorrecta.");
		
		$display("OR");
		seleccionOperacion = 4'b1110;
		$display("Primera prueba OR: A=0000 B=0000. R=0000 N=0 Z=1 C=0 V=0.");
		#100; operandoA = 5'b00000; operandoB = 5'b00000;
		assert ((resultado==4'b0000)&&(N==1'b0)&&(Z==1'b1)&&(C==1'b0)&&(V==1'b0)) $display("Primera prueba OR correcta.");
		else $error("Primera prueba OR incorrecta.");
		$display("Segunda prueba OR: A=1111 B=0000. R=1111 N=0 Z=0 C=0 V=0.");
		#100; operandoA = 5'b01111; operandoB = 5'b00000;
		assert ((resultado==4'b1111)&&(N==1'b0)&&(Z==1'b0)&&(C==1'b0)&&(V==1'b0)) $display("Segunda prueba OR correcta.");
		else $error("Segunda prueba OR incorrecta.");
		$display("Tercera prueba OR: A=1010 B=0100. R=1110 N=0 Z=0 C=0 V=0.");
		#100; operandoA = 5'b01010; operandoB = 5'b00100;
		assert ((resultado==4'b1110)&&(N==1'b0)&&(Z==1'b0)&&(C==1'b0)&&(V==1'b0)) $display("Tercera prueba OR correcta.");
		else $error("Tercera prueba OR incorrecta.");
		$display("Cuarta prueba OR: A=0101 B=1010. R=1111 N=0 Z=0 C=0 V=0.");
		#100; operandoA = 5'b00101; operandoB = 5'b01010;
		assert ((resultado==4'b1111)&&(N==1'b0)&&(Z==1'b0)&&(C==1'b0)&&(V==1'b0)) $display("Cuarta prueba OR correcta.");
		else $error("Cuarta prueba OR incorrecta.");
		
		$display("XOR");
		seleccionOperacion = 4'b1101;
		$display("Primera prueba XOR: A=0000 B=0000. R=0000 N=0 Z=1 C=0 V=0.");
		#100; operandoA = 5'b00000; operandoB = 5'b00000;
		assert ((resultado==4'b0000)&&(N==1'b0)&&(Z==1'b1)&&(C==1'b0)&&(V==1'b0)) $display("Primera prueba XOR correcta.");
		else $error("Primera prueba XOR incorrecta.");
		$display("Segunda prueba XOR: A=1010 B=0101. R=1111 N=0 Z=0 C=0 V=0.");
		#100; operandoA = 5'b01010; operandoB = 5'b00101;
		assert ((resultado==4'b1111)&&(N==1'b0)&&(Z==1'b0)&&(C==1'b0)&&(V==1'b0)) $display("Segunda prueba XOR correcta.");
		else $error("Segunda prueba XOR incorrecta.");
		$display("Tercera prueba XOR: A=1111 B=1111. R=0000 N=0 Z=1 C=0 V=0.");
		#100; operandoA = 5'b01111; operandoB = 5'b01111;
		assert ((resultado==4'b0000)&&(N==1'b0)&&(Z==1'b1)&&(C==1'b0)&&(V==1'b0)) $display("Tercera prueba XOR correcta.");
		else $error("Tercera prueba XOR incorrecta.");
		$display("Cuarta prueba XOR: A=0010 B=1011. R=1001 N=0 Z=0 C=0 V=0.");
		#100; operandoA = 5'b00010; operandoB = 5'b01011;
		assert ((resultado==4'b1001)&&(N==1'b0)&&(Z==1'b0)&&(C==1'b0)&&(V==1'b0)) $display("Cuarta prueba XOR correcta.");
		else $error("Cuarta prueba XOR incorrecta.");
		
		$display("SHIFTL");
		seleccionOperacion = 4'b1100;
		$display("Primera prueba SHIFTL: A=0000 B=0000. R=0000 N=0 Z=1 C=0 V=0.");
		#100; operandoA = 5'b00000; operandoB = 5'b00000;
		assert ((resultado==4'b0000)&&(N==1'b0)&&(Z==1'b1)&&(C==1'b0)&&(V==1'b0)) $display("Primera prueba SHIFTL correcta.");
		else $error("Primera prueba SHIFTL incorrecta.");
		$display("Segunda prueba SHIFTL: A=0000 B=0101. R=0000 N=0 Z=1 C=0 V=0.");
		#100; operandoA = 5'b00000; operandoB = 5'b00101;
		assert ((resultado==4'b0000)&&(N==1'b0)&&(Z==1'b1)&&(C==1'b0)&&(V==1'b0)) $display("Segunda prueba SHIFTL correcta.");
		else $error("Segunda prueba SHIFTL incorrecta.");
		$display("Tercera prueba SHIFTL: A=0011 B=0010. R=1100 N=0 Z=0 C=0 V=0.");
		#100; operandoA = 5'b00011; operandoB = 5'b00010;
		assert ((resultado==4'b1100)&&(N==1'b0)&&(Z==1'b0)&&(C==1'b0)&&(V==1'b0)) $display("Tercera prueba SHIFTL correcta.");
		else $error("Tercera prueba SHIFTL incorrecta.");
		$display("Cuarta prueba SHIFTL: A=0011 B=0011. R=1000 N=0 Z=0 C=0 V=0.");
		#100; operandoA = 5'b00011; operandoB = 5'b00011;
		assert ((resultado==4'b1000)&&(N==1'b0)&&(Z==1'b0)&&(C==1'b0)&&(V==1'b0)) $display("Cuarta prueba SHIFTL correcta.");
		else $error("Cuarta prueba SHIFTL incorrecta.");
		
		$display("SHIFTR");
		seleccionOperacion = 4'b1011;
		$display("Primera prueba SHIFTR: A=0000 B=0000. R=0000 N=0 Z=1 C=0 V=0.");
		#100; operandoA = 5'b00000; operandoB = 5'b00000;
		assert ((resultado==4'b0000)&&(N==1'b0)&&(Z==1'b1)&&(C==1'b0)&&(V==1'b0)) $display("Primera prueba SHIFTR correcta.");
		else $error("Primera prueba SHIFTR incorrecta.");
		$display("Segunda prueba SHIFTR: A=0101 B=0000. R=0101 N=0 Z=0 C=0 V=0.");
		#100; operandoA = 5'b00101; operandoB = 5'b00000;
		assert ((resultado==4'b0101)&&(N==1'b0)&&(Z==1'b0)&&(C==1'b0)&&(V==1'b0)) $display("Segunda prueba SHIFTR correcta.");
		else $error("Segunda prueba SHIFTR incorrecta.");
		$display("Tercera prueba SHIFTR: A=0100 B=0010. R=0001 N=0 Z=0 C=0 V=0.");
		#100; operandoA = 5'b00100; operandoB = 5'b00010;
		assert ((resultado==4'b0001)&&(N==1'b0)&&(Z==1'b0)&&(C==1'b0)&&(V==1'b0)) $display("Tercera prueba SHIFTR correcta.");
		else $error("Tercera prueba SHIFTR incorrecta.");
		$display("Cuarta prueba SHIFTR: A=0101 B=0001. R=0010 N=0 Z=0 C=0 V=0.");
		#100; operandoA = 5'b00101; operandoB = 5'b00010;
		assert ((resultado==4'b0010)&&(N==1'b0)&&(Z==1'b0)&&(C==1'b0)&&(V==1'b0)) $display("Cuarta prueba SHIFTR correcta.");
		else $error("Cuarta prueba SHIFTR incorrecta.");
		
		$display("SUMA");
		seleccionOperacion = 4'b1010;
		$display("Primera prueba SUMA: A=0000 B=0000. R=0000 N=0 Z=1 C=0 V=0.");
		#100; operandoA = 5'b00000; operandoB = 5'b00000;
		assert ((resultado==4'b0000)&&(N==1'b0)&&(Z==1'b1)&&(C==1'b0)&&(V==1'b0)) $display("Primera prueba SUMA correcta.");
		else $error("Primera prueba SUMA incorrecta.");
		$display("Segunda prueba SUMA: A=0001 B=0010. R=0011 N=0 Z=0 C=0 V=0.");
		#100; operandoA = 5'b00001; operandoB = 5'b00010;
		assert ((resultado==4'b0011)&&(N==1'b0)&&(Z==1'b0)&&(C==1'b0)&&(V==1'b0)) $display("Segunda prueba SUMA correcta.");
		else $error("Segunda prueba SUMA incorrecta.");
		$display("Tercera prueba SUMA: A=1111 B=0001. R=0000 N=0 Z=0 C=1 V=0.");
		#100; operandoA = 5'b01111; operandoB = 5'b00001;
		assert ((resultado==4'b0000)&&(N==1'b0)&&(Z==1'b0)&&(C==1'b1)&&(V==1'b0)) $display("Tercera prueba SUMA correcta.");
		else $error("Tercera prueba SUMA incorrecta.");
		$display("Cuarta prueba SUMA: A=-1101 B=0001. R=0000 N=1 Z=0 C=0 V=0.");
		#100; operandoA = 5'b11101; operandoB = 5'b00001;
		assert ((resultado==4'b1100)&&(N==1'b1)&&(Z==1'b0)&&(C==1'b0)&&(V==1'b0)) $display("Cuarta prueba SUMA correcta.");
		else $error("Cuarta prueba SUMA incorrecta.");
		
		$display("RESTA");
		seleccionOperacion = 4'b1001;
		$display("Primera prueba RESTA: A=0000 B=0000. R=0000 N=0 Z=1 C=0 V=0.");
		#100; operandoA = 5'b00000; operandoB = 5'b00000;
		assert ((resultado==4'b0000)&&(N==1'b0)&&(Z==1'b1)&&(C==1'b0)&&(V==1'b0)) $display("Primera prueba RESTA correcta.");
		else $error("Primera prueba RESTA incorrecta.");
		$display("Segunda prueba RESTA: A=0111 B=0001. R=0110 N=0 Z=0 C=0 V=0.");
		#100; operandoA = 5'b00111; operandoB = 5'b00001;
		assert ((resultado==4'b0110)&&(N==1'b0)&&(Z==1'b0)&&(C==1'b0)&&(V==1'b0)) $display("Segunda prueba RESTA correcta.");
		else $error("Segunda prueba RESTA incorrecta.");
		$display("Tercera prueba RESTA: A=-0111 B=-0001. R=1000 N=1 Z=0 C=0 V=0.");
		#100; operandoA = 5'b10111; operandoB = 5'b10001;
		assert ((resultado==4'b1000)&&(N==1'b1)&&(Z==1'b0)&&(C==1'b0)&&(V==1'b0)) $display("Tercera prueba RESTA correcta.");
		else $error("Tercera prueba RESTA incorrecta.");
		$display("Cuarta prueba RESTA: A=-0001 B=-1111. R=0000 N=1 Z=0 C=1 V=0.");
		#100; operandoA = 5'b10001; operandoB = 5'b11111;
		assert ((resultado==4'b0000)&&(N==1'b1)&&(Z==1'b0)&&(C==1'b1)&&(V==1'b0)) $display("Cuarta prueba RESTA correcta.");
		else $error("Cuarta prueba RESTA incorrecta.");
		
		$display("MULTIPLICACION");
		seleccionOperacion = 4'b1000;
		$display("Primera prueba MULTIPLICACION: A=0000 B=0000. R=0000 N=0 Z=1 C=0 V=0.");
		#100; operandoA = 5'b00000; operandoB = 5'b00000;
		assert ((resultado==4'b0000)&&(N==1'b0)&&(Z==1'b1)&&(C==1'b0)&&(V==1'b0)) $display("Primera prueba MULTIPLICACION correcta.");
		else $error("Primera prueba MULTIPLICACION incorrecta.");
		$display("Segunda prueba MULTIPLICACION: A=1101 B=0000. R=0000 N=0 Z=1 C=0 V=0.");
		#100; operandoA = 5'b01101; operandoB = 5'b00000;
		assert ((resultado==4'b0000)&&(N==1'b0)&&(Z==1'b1)&&(C==1'b0)&&(V==1'b0)) $display("Segunda prueba MULTIPLICACION correcta.");
		else $error("Segunda prueba MULTIPLICACION incorrecta.");
		$display("Tercera prueba MULTIPLICACION: A=-1101 B=0011. R=0111 N=1 Z=0 C=0 V=1.");
		#100; operandoA = 5'b11101; operandoB = 5'b00011;
		assert ((resultado==4'b0111)&&(N==1'b1)&&(Z==1'b0)&&(C==1'b0)&&(V==1'b1)) $display("Tercera prueba MULTIPLICACION correcta.");
		else $error("Tercera prueba MULTIPLICACION incorrecta.");
		$display("Cuarta prueba MULTIPLICACION: A=-0011 B=-0010. R=0110 N=0 Z=0 C=0 V=0.");
		#100; operandoA = 5'b1011; operandoB = 5'b10110;
		assert ((resultado==4'b0110)&&(N==1'b0)&&(Z==1'b0)&&(C==1'b0)&&(V==1'b0)) $display("Cuarta prueba MULTIPLICACION correcta.");
		else $error("Cuarta prueba MULTIPLICACION incorrecta.");
		
		$display("DIVISION");
		seleccionOperacion = 4'b0111;
		$display("Primera prueba DIVISION: A=0000 B=0000. R=1111 N=0 Z=0 C=0 V=0.");
		#100; operandoA = 5'b00000; operandoB = 5'b00000;
		assert ((resultado==4'b1111)&&(N==1'b0)&&(Z==1'b0)&&(C==1'b0)&&(V==1'b0)) $display("Primera prueba DIVISION correcta.");
		else $error("Primera prueba DIVISION incorrecta.");
		$display("Segunda prueba DIVISION: A=0000 B=-0111. R=0000 N=0 Z=1 C=0 V=0.");
		#100; operandoA = 5'b00000; operandoB = 5'b10111;
		assert ((resultado==4'b0000)&&(N==1'b0)&&(Z==1'b1)&&(C==1'b0)&&(V==1'b0)) $display("Segunda prueba DIVISION correcta.");
		else $error("Segunda prueba DIVISION incorrecta.");
		$display("Tercera prueba DIVISION: A=-0110 B=0010. R=0011 N=1 Z=0 C=0 V=0.");
		#100; operandoA = 5'b10110; operandoB = 5'b00010;
		assert ((resultado==4'b0011)&&(N==1'b1)&&(Z==1'b0)&&(C==1'b0)&&(V==1'b0)) $display("Tercera prueba DIVISION correcta.");
		else $error("Tercera prueba DIVISION incorrecta.");
		$display("Cuarta prueba DIVISION: A=-1000 B=-0100. R=0010 N=0 Z=0 C=0 V=0.");
		#100; operandoA = 5'b11000; operandoB = 5'b10100;
		assert ((resultado==4'b0010)&&(N==1'b0)&&(Z==1'b0)&&(C==1'b0)&&(V==1'b0)) $display("Cuarta prueba DIVISION correcta.");
		else $error("Cuarta prueba DIVISION incorrecta.");
		
		$display("MODULO");
		seleccionOperacion = 4'b0110;
		$display("Primera prueba MODULO: A=0000 B=0000. R=0000 N=0 Z=1 C=0 V=0.");
		#100; operandoA = 5'b00000; operandoB = 5'b00000;
		assert ((resultado==4'b0000)&&(N==1'b0)&&(Z==1'b1)&&(C==1'b0)&&(V==1'b0)) $display("Primera prueba MODULO correcta.");
		else $error("Primera prueba MODULO incorrecta.");
		$display("Segunda prueba MODULO: A=0100 B=0010. R=0000 N=0 Z=1 C=0 V=0.");
		#100; operandoA = 5'b00100; operandoB = 5'b00010;
		assert ((resultado==4'b0000)&&(N==1'b0)&&(Z==1'b1)&&(C==1'b0)&&(V==1'b0)) $display("Segunda prueba MODULO correcta.");
		else $error("Segunda prueba MODULO incorrecta.");
		$display("Tercera prueba MODULO: A=0100 B=0001. R=0000 N=0 Z=1 C=0 V=0.");
		#100; operandoA = 5'b00100; operandoB = 5'b00001;
		assert ((resultado==4'b0000)&&(N==1'b0)&&(Z==1'b1)&&(C==1'b0)&&(V==1'b0)) $display("Tercera prueba MODULO correcta.");
		else $error("Tercera prueba MODULO incorrecta.");
		$display("Cuarta prueba MODULO: A=0101 B=0010. R=0001 N=0 Z=0 C=0 V=0.");
		#100; operandoA = 5'b00101; operandoB = 5'b00010;
		assert ((resultado==4'b0001)&&(N==1'b0)&&(Z==1'b0)&&(C==1'b0)&&(V==1'b0)) $display("Cuarta prueba MODULO correcta.");
		else $error("Cuarta prueba MODULO incorrecta.");
		
		#100;
	end
endmodule 