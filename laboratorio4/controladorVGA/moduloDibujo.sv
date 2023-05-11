module moduloDibujo 
(reloj, reinicio,
coordenadaDibujarX, coordenadaDibujarY, 
posicion0, posicion1, posicion2, posicion3, posicion4, posicion5, posicion6, posicion7, 
posicion8, posicion9, posicion10, posicion11, posicion12, posicion13, posicion14, posicion15,
colorCoordenadaDibujar);

	input logic reloj;
	input logic reinicio;
	
	input logic [9:0] coordenadaDibujarX;
	input logic [9:0] coordenadaDibujarY;
	
	input logic [3:0] posicion0;
	input logic [3:0] posicion1;
	input logic [3:0] posicion2;
	input logic [3:0] posicion3;
	input logic [3:0] posicion4;
	input logic [3:0] posicion5;
	input logic [3:0] posicion6;
	input logic [3:0] posicion7;
	input logic [3:0] posicion8;
	input logic [3:0] posicion9;
	input logic [3:0] posicion10;
	input logic [3:0] posicion11;
	input logic [3:0] posicion12;
	input logic [3:0] posicion13;
	input logic [3:0] posicion14;
	input logic [3:0] posicion15;
	
	output logic [8:0] colorCoordenadaDibujar;
	
	parameter [8:0] COLOR_NEGRO = 9'b000000000;
	parameter [8:0] COLOR_BLANCO = 9'b111111111;
	parameter [9:0] DESFASE_HORIZONTAL_PRIMERA_COLUMNA = 10'd0;
	parameter [9:0] DESFASE_HORIZONTAL_SEGUNDA_COLUMNA = 10'd152;
	parameter [9:0] DESFASE_HORIZONTAL_TERCERA_COLUMNA = 10'd304;
	parameter [9:0] DESFASE_HORIZONTAL_CUARTA_COLUMNA = 10'd456;
	parameter [9:0] DESFASE_VERTICAL_PRIMERA_FILA = 10'd0;
	parameter [9:0] DESFASE_VERTICAL_SEGUNDA_FILA = 10'd110;
	parameter [9:0] DESFASE_VERTICAL_TERCERA_FILA = 10'd230;
	parameter [9:0] DESFASE_VERTICAL_CUARTA_FILA = 10'd350;
	parameter [9:0] DESFASE_PRIMER_DIGITO = 10'd0;
	parameter [9:0] DESFASE_SEGUNDO_DIGITO = 10'd25;
	parameter [9:0] DESFASE_TERCER_DIGITO = 10'd50;
	parameter [9:0] DESFASE_CUARTO_DIGITO = 10'd75;
	
	always @(coordenadaDibujarX, coordenadaDibujarY) begin
		if (reinicio == 1'b1) begin
		end
		
		else begin
		if ((coordenadaDibujarX >= 10'd0) && (coordenadaDibujarX <= 10'd31)) colorCoordenadaDibujar = COLOR_NEGRO;
		else if ((coordenadaDibujarX >= 10'd153) && (coordenadaDibujarX <= 10'd183)) colorCoordenadaDibujar = COLOR_NEGRO;
		else if ((coordenadaDibujarX >= 10'd305) && (coordenadaDibujarX <= 10'd335)) colorCoordenadaDibujar = COLOR_NEGRO; 
		else if ((coordenadaDibujarX >= 10'd457) && (coordenadaDibujarX <= 10'd487)) colorCoordenadaDibujar = COLOR_NEGRO;
		else if ((coordenadaDibujarX >= 10'd609) && (coordenadaDibujarX <= 10'd640)) colorCoordenadaDibujar = COLOR_NEGRO;		
		else if ((coordenadaDibujarY >= 10'd10) && (coordenadaDibujarY <= 10'd25)) colorCoordenadaDibujar = COLOR_NEGRO;
		else if ((coordenadaDibujarY >= 10'd120) && (coordenadaDibujarY <= 10'd130)) colorCoordenadaDibujar = COLOR_NEGRO;
		else if ((coordenadaDibujarY >= 10'd240) && (coordenadaDibujarY <= 10'd250)) colorCoordenadaDibujar = COLOR_NEGRO;
		else if ((coordenadaDibujarY >= 10'd360) && (coordenadaDibujarY <= 10'd370)) colorCoordenadaDibujar = COLOR_NEGRO;		
		
		else begin
			
			if ((coordenadaDibujarX>31) && (coordenadaDibujarX<153) && (coordenadaDibujarY>25) && (coordenadaDibujarY<120)) begin
				if (posicion0 == 4'b0001) begin
					// DIBUJANDO UN 2
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion0 == 4'b0010) begin
					// DIBUJANDO UN 4
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion0 == 4'b0011) begin
					// DIBUJANDO UN 8
					// LINEA 0
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 1
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 2
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 3
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 4
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 5
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					//LINEA 6
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion0 == 4'b0100) begin
					// DIBUJANDO UN 16
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion0 == 4'b0101) begin
					// DIBUJANDO UN 32
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO; 
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion0 == 4'b0110) begin
					// DIBUJANDO UN 64
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion0 == 4'b0111) begin
					// DIBUJANDO UN 128
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion0 == 4'b1000) begin
					// DIBUJANDO UN 256
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion0 == 4'b1001) begin
					// DIBUJANDO UN 512
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion0 == 4'b1010) begin
					// DIBUJANDO UN 1024
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO; 
				end
				else if (posicion0 == 4'b1011) begin
					// DIBUJANDO UN 2048
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else colorCoordenadaDibujar = COLOR_BLANCO;
			end
			else if ((coordenadaDibujarX>183) && (coordenadaDibujarX<305) && (coordenadaDibujarY>25) && (coordenadaDibujarY<120)) begin
				if (posicion1 == 4'b0001) begin
					// DIBUJANDO UN 2
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion1 == 4'b0010) begin
					// DIBUJANDO UN 4
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion1 == 4'b0011) begin
					// DIBUJANDO UN 8
					// LINEA 0
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 1
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 2
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 3
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 4
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 5
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					//LINEA 6
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion1 == 4'b0100) begin
					// DIBUJANDO UN 16
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion1 == 4'b0101) begin
					// DIBUJANDO UN 32
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO; 
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion1 == 4'b0110) begin
					// DIBUJANDO UN 64
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion1 == 4'b0111) begin
					// DIBUJANDO UN 128
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion1 == 4'b1000) begin
					// DIBUJANDO UN 256
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion1 == 4'b1001) begin
					// DIBUJANDO UN 512
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion1 == 4'b1010) begin
					// DIBUJANDO UN 1024
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO; 
				end
				else if (posicion1 == 4'b1011) begin
					// DIBUJANDO UN 2048
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else colorCoordenadaDibujar = COLOR_BLANCO;
			end
			else if ((coordenadaDibujarX>335) && (coordenadaDibujarX<457) && (coordenadaDibujarY>25) && (coordenadaDibujarY<120)) begin
				if (posicion2 == 4'b0001) begin
					// DIBUJANDO UN 2
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion2 == 4'b0010) begin
					// DIBUJANDO UN 4
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion2 == 4'b0011) begin
					// DIBUJANDO UN 8
					// LINEA 0
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 1
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 2
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 3
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 4
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 5
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					//LINEA 6
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion2 == 4'b0100) begin
					// DIBUJANDO UN 16
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion2 == 4'b0101) begin
					// DIBUJANDO UN 32
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO; 
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion2 == 4'b0110) begin
					// DIBUJANDO UN 64
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion2 == 4'b0111) begin
					// DIBUJANDO UN 128
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion2 == 4'b1000) begin
					// DIBUJANDO UN 256
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion2 == 4'b1001) begin
					// DIBUJANDO UN 512
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion2 == 4'b1010) begin
					// DIBUJANDO UN 1024
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO; 
				end
				else if (posicion2 == 4'b1011) begin
					// DIBUJANDO UN 2048
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else colorCoordenadaDibujar = COLOR_BLANCO;
			end
			else if ((coordenadaDibujarX>487) && (coordenadaDibujarX<609) && (coordenadaDibujarY>25) && (coordenadaDibujarY<120)) begin
				if (posicion3 == 4'b0001) begin
					// DIBUJANDO UN 2
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion3 == 4'b0010) begin
					// DIBUJANDO UN 4
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion3 == 4'b0011) begin
					// DIBUJANDO UN 8
					// LINEA 0
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 1
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 2
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 3
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 4
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 5
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					//LINEA 6
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion3 == 4'b0100) begin
					// DIBUJANDO UN 16
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion3 == 4'b0101) begin
					// DIBUJANDO UN 32
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO; 
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion3 == 4'b0110) begin
					// DIBUJANDO UN 64
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion3 == 4'b0111) begin
					// DIBUJANDO UN 128
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion3 == 4'b1000) begin
					// DIBUJANDO UN 256
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion3 == 4'b1001) begin
					// DIBUJANDO UN 512
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion3 == 4'b1010) begin
					// DIBUJANDO UN 1024
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO; 
				end
				else if (posicion3 == 4'b1011) begin
					// DIBUJANDO UN 2048
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_PRIMERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_PRIMERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else colorCoordenadaDibujar = COLOR_BLANCO;
			end
			
			
			
			
			
			
			
			
			
			
			
			
			else if ((coordenadaDibujarX>31) && (coordenadaDibujarX<153) && (coordenadaDibujarY>130) && (coordenadaDibujarY<240)) begin
				if (posicion4 == 4'b0001) begin
					// DIBUJANDO UN 2
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion4 == 4'b0010) begin
					// DIBUJANDO UN 4
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion4 == 4'b0011) begin
					// DIBUJANDO UN 8
					// LINEA 0
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 1
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 2
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 3
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 4
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 5
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					//LINEA 6
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion4 == 4'b0100) begin
					// DIBUJANDO UN 16
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion4 == 4'b0101) begin
					// DIBUJANDO UN 32
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO; 
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion4 == 4'b0110) begin
					// DIBUJANDO UN 64
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion4 == 4'b0111) begin
					// DIBUJANDO UN 128
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion4 == 4'b1000) begin
					// DIBUJANDO UN 256
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion4 == 4'b1001) begin
					// DIBUJANDO UN 512
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion4 == 4'b1010) begin
					// DIBUJANDO UN 1024
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO; 
				end
				else if (posicion4 == 4'b1011) begin
					// DIBUJANDO UN 2048
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else colorCoordenadaDibujar = COLOR_BLANCO;
			end
			else if ((coordenadaDibujarX>183) && (coordenadaDibujarX<305) && (coordenadaDibujarY>130) && (coordenadaDibujarY<240)) begin
				if (posicion5 == 4'b0001) begin
					// DIBUJANDO UN 2
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion5 == 4'b0010) begin
					// DIBUJANDO UN 4
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion5 == 4'b0011) begin
					// DIBUJANDO UN 8
					// LINEA 0
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 1
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 2
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 3
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 4
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 5
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					//LINEA 6
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion5 == 4'b0100) begin
					// DIBUJANDO UN 16
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion5 == 4'b0101) begin
					// DIBUJANDO UN 32
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO; 
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion5 == 4'b0110) begin
					// DIBUJANDO UN 64
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion5 == 4'b0111) begin
					// DIBUJANDO UN 128
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion5 == 4'b1000) begin
					// DIBUJANDO UN 256
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion5 == 4'b1001) begin
					// DIBUJANDO UN 512
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion5 == 4'b1010) begin
					// DIBUJANDO UN 1024
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO; 
				end
				else if (posicion5 == 4'b1011) begin
					// DIBUJANDO UN 2048
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else colorCoordenadaDibujar = COLOR_BLANCO;
			end
			else if ((coordenadaDibujarX>335) && (coordenadaDibujarX<457) && (coordenadaDibujarY>130) && (coordenadaDibujarY<240)) begin
				if (posicion6 == 4'b0001) begin
					// DIBUJANDO UN 2
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion6 == 4'b0010) begin
					// DIBUJANDO UN 4
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion6 == 4'b0011) begin
					// DIBUJANDO UN 8
					// LINEA 0
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 1
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 2
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 3
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 4
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 5
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					//LINEA 6
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion6 == 4'b0100) begin
					// DIBUJANDO UN 16
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion6 == 4'b0101) begin
					// DIBUJANDO UN 32
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO; 
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion6 == 4'b0110) begin
					// DIBUJANDO UN 64
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion6 == 4'b0111) begin
					// DIBUJANDO UN 128
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion6 == 4'b1000) begin
					// DIBUJANDO UN 256
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion6 == 4'b1001) begin
					// DIBUJANDO UN 512
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion6 == 4'b1010) begin
					// DIBUJANDO UN 1024
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO; 
				end
				else if (posicion6 == 4'b1011) begin
					// DIBUJANDO UN 2048
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else colorCoordenadaDibujar = COLOR_BLANCO;
			end
			else if ((coordenadaDibujarX>487) && (coordenadaDibujarX<609) && (coordenadaDibujarY>130) && (coordenadaDibujarY<240)) begin
				if (posicion7 == 4'b0001) begin
					// DIBUJANDO UN 2
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion7 == 4'b0010) begin
					// DIBUJANDO UN 4
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion7 == 4'b0011) begin
					// DIBUJANDO UN 8
					// LINEA 0
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 1
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 2
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 3
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 4
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 5
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					//LINEA 6
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion7 == 4'b0100) begin
					// DIBUJANDO UN 16
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion7 == 4'b0101) begin
					// DIBUJANDO UN 32
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO; 
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion7 == 4'b0110) begin
					// DIBUJANDO UN 64
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion7 == 4'b0111) begin
					// DIBUJANDO UN 128
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion7 == 4'b1000) begin
					// DIBUJANDO UN 256
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion7 == 4'b1001) begin
					// DIBUJANDO UN 512
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion7 == 4'b1010) begin
					// DIBUJANDO UN 1024
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO; 
				end
				else if (posicion7 == 4'b1011) begin
					// DIBUJANDO UN 2048
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_SEGUNDA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_SEGUNDA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else colorCoordenadaDibujar = COLOR_BLANCO;
			end
			
			
			
			else if ((coordenadaDibujarX>31) && (coordenadaDibujarX<153) && (coordenadaDibujarY>250) && (coordenadaDibujarY<360)) begin
				if (posicion8 == 4'b0001) begin
					// DIBUJANDO UN 2
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion8 == 4'b0010) begin
					// DIBUJANDO UN 4
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion8 == 4'b0011) begin
					// DIBUJANDO UN 8
					// LINEA 0
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 1
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 2
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 3
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 4
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 5
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					//LINEA 6
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion8 == 4'b0100) begin
					// DIBUJANDO UN 16
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion8 == 4'b0101) begin
					// DIBUJANDO UN 32
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO; 
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion8 == 4'b0110) begin
					// DIBUJANDO UN 64
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion8 == 4'b0111) begin
					// DIBUJANDO UN 128
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion8 == 4'b1000) begin
					// DIBUJANDO UN 256
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion8 == 4'b1001) begin
					// DIBUJANDO UN 512
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion8 == 4'b1010) begin
					// DIBUJANDO UN 1024
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO; 
				end
				else if (posicion8 == 4'b1011) begin
					// DIBUJANDO UN 2048
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else colorCoordenadaDibujar = COLOR_BLANCO;
			end
			else if ((coordenadaDibujarX>183) && (coordenadaDibujarX<305) && (coordenadaDibujarY>250) && (coordenadaDibujarY<360)) begin
				if (posicion9 == 4'b0001) begin
					// DIBUJANDO UN 2
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion9 == 4'b0010) begin
					// DIBUJANDO UN 4
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion9 == 4'b0011) begin
					// DIBUJANDO UN 8
					// LINEA 0
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 1
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 2
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 3
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 4
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 5
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					//LINEA 6
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion9 == 4'b0100) begin
					// DIBUJANDO UN 16
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion9 == 4'b0101) begin
					// DIBUJANDO UN 32
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO; 
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion9 == 4'b0110) begin
					// DIBUJANDO UN 64
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion9 == 4'b0111) begin
					// DIBUJANDO UN 128
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion9 == 4'b1000) begin
					// DIBUJANDO UN 256
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion9 == 4'b1001) begin
					// DIBUJANDO UN 512
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion9 == 4'b1010) begin
					// DIBUJANDO UN 1024
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO; 
				end
				else if (posicion9 == 4'b1011) begin
					// DIBUJANDO UN 2048
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else colorCoordenadaDibujar = COLOR_BLANCO;
			end
			else if ((coordenadaDibujarX>335) && (coordenadaDibujarX<457) && (coordenadaDibujarY>250) && (coordenadaDibujarY<360)) begin
				if (posicion10 == 4'b0001) begin
					// DIBUJANDO UN 2
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion10 == 4'b0010) begin
					// DIBUJANDO UN 4
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion10 == 4'b0011) begin
					// DIBUJANDO UN 8
					// LINEA 0
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 1
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 2
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 3
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 4
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 5
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					//LINEA 6
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion10 == 4'b0100) begin
					// DIBUJANDO UN 16
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion10 == 4'b0101) begin
					// DIBUJANDO UN 32
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO; 
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion10 == 4'b0110) begin
					// DIBUJANDO UN 64
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion10 == 4'b0111) begin
					// DIBUJANDO UN 128
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion10 == 4'b1000) begin
					// DIBUJANDO UN 256
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion10 == 4'b1001) begin
					// DIBUJANDO UN 512
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion10 == 4'b1010) begin
					// DIBUJANDO UN 1024
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO; 
				end
				else if (posicion10 == 4'b1011) begin
					// DIBUJANDO UN 2048
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else colorCoordenadaDibujar = COLOR_BLANCO;
			end
			else if ((coordenadaDibujarX>487) && (coordenadaDibujarX<609) && (coordenadaDibujarY>250) && (coordenadaDibujarY<360)) begin
				if (posicion11 == 4'b0001) begin
					// DIBUJANDO UN 2
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion11 == 4'b0010) begin
					// DIBUJANDO UN 4
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion11 == 4'b0011) begin
					// DIBUJANDO UN 8
					// LINEA 0
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 1
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 2
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 3
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 4
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 5
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					//LINEA 6
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion11 == 4'b0100) begin
					// DIBUJANDO UN 16
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion11 == 4'b0101) begin
					// DIBUJANDO UN 32
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO; 
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion11 == 4'b0110) begin
					// DIBUJANDO UN 64
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion11 == 4'b0111) begin
					// DIBUJANDO UN 128
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion11 == 4'b1000) begin
					// DIBUJANDO UN 256
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion11 == 4'b1001) begin
					// DIBUJANDO UN 512
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion11 == 4'b1010) begin
					// DIBUJANDO UN 1024
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO; 
				end
				else if (posicion11 == 4'b1011) begin
					// DIBUJANDO UN 2048
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_TERCERA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_TERCERA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else colorCoordenadaDibujar = COLOR_BLANCO;
			end
			
			
			
			
			
			
			
			
			else if ((coordenadaDibujarX>31) && (coordenadaDibujarX<153) && (coordenadaDibujarY>370) && (coordenadaDibujarY<480)) begin
				if (posicion12 == 4'b0001) begin
					// DIBUJANDO UN 2
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion12 == 4'b0010) begin
					// DIBUJANDO UN 4
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion12 == 4'b0011) begin
					// DIBUJANDO UN 8
					// LINEA 0
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 1
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 2
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 3
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 4
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 5
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					//LINEA 6
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion12 == 4'b0100) begin
					// DIBUJANDO UN 16
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion12 == 4'b0101) begin
					// DIBUJANDO UN 32
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO; 
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion12 == 4'b0110) begin
					// DIBUJANDO UN 64
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion12 == 4'b0111) begin
					// DIBUJANDO UN 128
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion12 == 4'b1000) begin
					// DIBUJANDO UN 256
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion12 == 4'b1001) begin
					// DIBUJANDO UN 512
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion12 == 4'b1010) begin
					// DIBUJANDO UN 1024
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO; 
				end
				else if (posicion12 == 4'b1011) begin
					// DIBUJANDO UN 2048
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_PRIMERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else colorCoordenadaDibujar = COLOR_BLANCO;
			end
			else if ((coordenadaDibujarX>183) && (coordenadaDibujarX<305) && (coordenadaDibujarY>370) && (coordenadaDibujarY<480)) begin
				if (posicion13 == 4'b0001) begin
					// DIBUJANDO UN 2
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion13 == 4'b0010) begin
					// DIBUJANDO UN 4
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion13 == 4'b0011) begin
					// DIBUJANDO UN 8
					// LINEA 0
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 1
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 2
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 3
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 4
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 5
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					//LINEA 6
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion13 == 4'b0100) begin
					// DIBUJANDO UN 16
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion13 == 4'b0101) begin
					// DIBUJANDO UN 32
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO; 
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion13 == 4'b0110) begin
					// DIBUJANDO UN 64
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion13 == 4'b0111) begin
					// DIBUJANDO UN 128
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion13 == 4'b1000) begin
					// DIBUJANDO UN 256
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion13 == 4'b1001) begin
					// DIBUJANDO UN 512
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion13 == 4'b1010) begin
					// DIBUJANDO UN 1024
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO; 
				end
				else if (posicion13 == 4'b1011) begin
					// DIBUJANDO UN 2048
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_SEGUNDA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else colorCoordenadaDibujar = COLOR_BLANCO;
			end
			else if ((coordenadaDibujarX>335) && (coordenadaDibujarX<457) && (coordenadaDibujarY>370) && (coordenadaDibujarY<480)) begin
				if (posicion14 == 4'b0001) begin
					// DIBUJANDO UN 2
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion14 == 4'b0010) begin
					// DIBUJANDO UN 4
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion14 == 4'b0011) begin
					// DIBUJANDO UN 8
					// LINEA 0
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 1
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 2
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 3
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 4
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 5
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					//LINEA 6
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion14 == 4'b0100) begin
					// DIBUJANDO UN 16
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion14 == 4'b0101) begin
					// DIBUJANDO UN 32
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO; 
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion14 == 4'b0110) begin
					// DIBUJANDO UN 64
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion14 == 4'b0111) begin
					// DIBUJANDO UN 128
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion14 == 4'b1000) begin
					// DIBUJANDO UN 256
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion14 == 4'b1001) begin
					// DIBUJANDO UN 512
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion14 == 4'b1010) begin
					// DIBUJANDO UN 1024
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO; 
				end
				else if (posicion14 == 4'b1011) begin
					// DIBUJANDO UN 2048
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_TERCERA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else colorCoordenadaDibujar = COLOR_BLANCO;
			end
			else if ((coordenadaDibujarX>487) && (coordenadaDibujarX<609) && (coordenadaDibujarY>370) && (coordenadaDibujarY<480)) begin
				if (posicion15 == 4'b0001) begin
					// DIBUJANDO UN 2
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion15 == 4'b0010) begin
					// DIBUJANDO UN 4
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion15 == 4'b0011) begin
					// DIBUJANDO UN 8
					// LINEA 0
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 1
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 2
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 3
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 4
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					// LINEA 5
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					//LINEA 6
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion15 == 4'b0100) begin
					// DIBUJANDO UN 16
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion15 == 4'b0101) begin
					// DIBUJANDO UN 32
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO; 
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion15 == 4'b0110) begin
					// DIBUJANDO UN 64
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion15 == 4'b0111) begin
					// DIBUJANDO UN 128
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion15 == 4'b1000) begin
					// DIBUJANDO UN 256
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion15 == 4'b1001) begin
					// DIBUJANDO UN 512
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else if (posicion15 == 4'b1010) begin
					// DIBUJANDO UN 1024
					if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO; 
				end
				else if (posicion15 == 4'b1011) begin
					// DIBUJANDO UN 2048
					if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_PRIMER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_SEGUNDO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_TERCER_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd49+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd61+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd99+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA)) 
					&& (coordenadaDibujarY <= (10'd109+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd48+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd39+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else if ((coordenadaDibujarX >= (10'd43+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarX <= (10'd66+DESFASE_CUARTO_DIGITO+DESFASE_HORIZONTAL_CUARTA_COLUMNA)) 
					&& (coordenadaDibujarY >= (10'd69+DESFASE_VERTICAL_CUARTA_FILA))
					&& (coordenadaDibujarY <= (10'd79+DESFASE_VERTICAL_CUARTA_FILA))) colorCoordenadaDibujar = COLOR_NEGRO;
					else colorCoordenadaDibujar = COLOR_BLANCO;
				end
				else colorCoordenadaDibujar = COLOR_BLANCO;
			end
			
			
			else colorCoordenadaDibujar = COLOR_BLANCO;
			
		end
		end
	end
	
endmodule 