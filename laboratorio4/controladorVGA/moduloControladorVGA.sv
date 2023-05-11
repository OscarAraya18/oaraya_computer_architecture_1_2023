module moduloControladorVGA (reloj, reinicio, colorEntrada, coordenadaDibujarX, coordenadaDibujarY, sincronizacionHorizontal, sincronizacionVertical, escalaRojo, escalaVerde, escalaAzul, sincronizacion, relojVGA, parpadeoVGA);

	input logic reloj;
	input logic reinicio;
	input logic [8:0] colorEntrada;

	output logic [9:0] coordenadaDibujarX;
	output logic [9:0] coordenadaDibujarY;
	output logic sincronizacionHorizontal;
	output logic sincronizacionVertical;
	output logic [7:0] escalaRojo;
	output logic [7:0] escalaVerde;
	output logic [7:0] escalaAzul;
	output logic sincronizacion;
	output logic relojVGA;
	output logic parpadeoVGA;

	// PARAMETROS DE SINCRONIZACION HORIZONTAL.
	parameter [9:0] CANTIDAD_CICLOS_ACTIVOS_HORIZONTAL = 10'b1001111111; // 640 (de 0 a 639) ciclos activos horizontales (se muestra la imagen).
	parameter [9:0] CANTIDAD_CICLOS_ANTES_PULSO_SINCRONIZACION_HORIZONTAL = 10'b0000001111; // 16 (de 0 a 15) ciclos antes de iniciar el pulso de sincronizacion horizontal.
	parameter [9:0] CANTIDAD_CICLOS_PULSO_SINCRONIZACION_HORIZONTAL = 10'b0001011111; // 96 (de 0 a 95) ciclos del pulso de sincronizacion horizontal.
	parameter [9:0] CANTIDAD_CICLOS_DESPUES_PULSO_SINCRONIZACION_HORIZONTAL = 10'b0000101111; // 48 (de 0 a 47) ciclos despues de finalizar el pulso de sincronizacion horizontal.
	
	// PARAMETROS DE SINCRONIZACION VERTICAL.
	parameter [9:0] CANTIDAD_LINEAS_ACTIVAS_VERTICAL = 10'b0111011111; // 480 (de 0 a 479) lineas activas verticales (se muestra la imagen).
	parameter [9:0] CANTIDAD_LINEAS_ANTES_PULSO_SINCRONIZACION_VERTICAL = 10'b0000001001; // 9 (de 0 a 10) lineas antes de iniciar el pulso de sincronizacion vertical.
	parameter [9:0] CANTIDAD_LINEAS_PULSO_SINCRONIZACION_VERTICAL = 10'b0000000001; // 2 (de 0 a 1) lineas del pulso de sincronizacion vertical.
	parameter [9:0] CANTIDAD_LINEAS_DESPUES_PULSO_SINCRONIZACION_VERTICAL = 10'b0000100000; // 33 (de 0 a 32) lineas despues de finalizar el pulso de sincronizacion vertical.
	
	// CODIFICACION DE LOS ESTADOS DE LA MAQUINA DE ESTADOS.
	parameter [1:0] ESTADO_HORIZONTAL_ACTIVO = 2'b00; 
	parameter [1:0] ESTADO_HORIZONTAL_ANTES_PULSO_SINCRONIZACION = 2'b01;
	parameter [1:0] ESTADO_HORIZONTAL_PULSO_SINCRONIZACION = 2'b10;
	parameter [1:0] ESTADO_HORIZONTAL_DESPUES_PULSO_SINCRONIZACION = 2'b11;
	
	parameter [1:0] ESTADO_VERTICAL_ACTIVO = 2'b00; 
	parameter [1:0] ESTADO_VERTICAL_ANTES_PULSO_SINCRONIZACION = 2'b01;
	parameter [1:0] ESTADO_VERTICAL_PULSO_SINCRONIZACION = 2'b10;
	parameter [1:0] ESTADO_VERTICAL_DESPUES_PULSO_SINCRONIZACION = 2'b11;
	
	// REGISTROS DE CONTROL.
	reg registroSincronizacionHorizontal;
	reg registroSincronizacionVertical;
	
	reg [7:0] registroEscalaRojo;
	reg [7:0] registroEscalaVerde;
	reg [7:0] registroEscalaAzul;
	reg registroLineaHorizontalFinalizada;
	
	reg [9:0] registroContadorHorizontal;
	reg [9:0] registroContadorVertical;
	
	reg [1:0] registroEstadoHorizontalActual;
	reg [1:0] registroEstadoVerticalActual;
	
	
	always @(posedge reloj) begin
		if (reinicio == 1'b1) begin
			registroLineaHorizontalFinalizada <= 1'b0;
			registroContadorHorizontal <= 10'b0000000000;
			registroContadorVertical <= 10'b0000000000;
			registroEstadoHorizontalActual <= ESTADO_HORIZONTAL_ACTIVO;
			registroEstadoVerticalActual <= ESTADO_VERTICAL_ACTIVO;
		end
		else begin
			// CONTROL HORIZONTAL.
			
			// ESTADO HORIZONTAL ACTIVO.
			if (registroEstadoHorizontalActual == ESTADO_HORIZONTAL_ACTIVO) begin
				if (registroContadorHorizontal == CANTIDAD_CICLOS_ACTIVOS_HORIZONTAL) begin
					registroContadorHorizontal <= 10'b0000000000;
					registroEstadoHorizontalActual <= ESTADO_HORIZONTAL_ANTES_PULSO_SINCRONIZACION;
				end
				else begin
					registroContadorHorizontal <= registroContadorHorizontal + 1'b1;
					registroEstadoHorizontalActual <= ESTADO_HORIZONTAL_ACTIVO;
				end
				registroSincronizacionHorizontal <= 1'b1;
				registroLineaHorizontalFinalizada <= 1'b0;
			end
			
			// ESTADO HORIZONTAL ANTES DEL PULSO DE SINCRONIZACION.
			if (registroEstadoHorizontalActual == ESTADO_HORIZONTAL_ANTES_PULSO_SINCRONIZACION) begin
				if (registroContadorHorizontal == CANTIDAD_CICLOS_ANTES_PULSO_SINCRONIZACION_HORIZONTAL) begin
					registroContadorHorizontal <= 10'b0000000000;
					registroEstadoHorizontalActual <= ESTADO_HORIZONTAL_PULSO_SINCRONIZACION;
				end
				else begin
					registroContadorHorizontal <= registroContadorHorizontal + 1'b1;
					registroEstadoHorizontalActual <= ESTADO_HORIZONTAL_ANTES_PULSO_SINCRONIZACION;
				end
				registroSincronizacionHorizontal <= 1'b1;
				registroLineaHorizontalFinalizada <= 1'b0;
			end
			
			// ESTADO HORIZONTAL DEL PULSO DE SINCRONIZACION.
			if (registroEstadoHorizontalActual == ESTADO_HORIZONTAL_PULSO_SINCRONIZACION) begin
				if (registroContadorHorizontal == CANTIDAD_CICLOS_PULSO_SINCRONIZACION_HORIZONTAL) begin
					registroContadorHorizontal <= 10'b0000000000;
					registroEstadoHorizontalActual <= ESTADO_HORIZONTAL_DESPUES_PULSO_SINCRONIZACION;
				end 
				else begin
					registroContadorHorizontal <= registroContadorHorizontal + 1'b1;
					registroEstadoHorizontalActual <= ESTADO_HORIZONTAL_PULSO_SINCRONIZACION;
				end
				registroSincronizacionHorizontal <= 1'b0;
				registroLineaHorizontalFinalizada <= 1'b0;
			end
			
			// ESTADO HORIZONTAL DESPUES DEL PULSO DE SINCRONIZACION.
			if (registroEstadoHorizontalActual == ESTADO_HORIZONTAL_DESPUES_PULSO_SINCRONIZACION) begin
				if (registroContadorHorizontal == CANTIDAD_CICLOS_DESPUES_PULSO_SINCRONIZACION_HORIZONTAL) begin
					registroContadorHorizontal <= 10'b0000000000;
					registroEstadoHorizontalActual <= ESTADO_HORIZONTAL_ACTIVO;
				end
				else begin 
					registroContadorHorizontal <= registroContadorHorizontal + 1'b1;
					registroEstadoHorizontalActual <= ESTADO_HORIZONTAL_DESPUES_PULSO_SINCRONIZACION;
				end
				if (registroContadorHorizontal == (CANTIDAD_CICLOS_DESPUES_PULSO_SINCRONIZACION_HORIZONTAL-1'b1)) begin
					registroLineaHorizontalFinalizada <= 1'b1;
				end
				else begin
					registroLineaHorizontalFinalizada <= 1'b0;
				end
				registroSincronizacionHorizontal <= 1'b1;
			end
			
			
			// CONTROL VERTICAL.
			
			// ESTADO VERTICAL ACTIVO.
			if (registroEstadoVerticalActual == ESTADO_VERTICAL_ACTIVO) begin
				if (registroLineaHorizontalFinalizada == 1'b1) begin
					if (registroContadorVertical == CANTIDAD_LINEAS_ACTIVAS_VERTICAL) begin
						registroContadorVertical <= 10'b0000000000;
						registroEstadoVerticalActual <= ESTADO_VERTICAL_ANTES_PULSO_SINCRONIZACION;
					end
					else begin
						registroContadorVertical <= registroContadorVertical + 1'b1;
						registroEstadoVerticalActual <= ESTADO_VERTICAL_ACTIVO;
					end
				end
				else begin
					registroContadorVertical <= registroContadorVertical;
				end
				registroSincronizacionVertical <= 1'b1;
			end
			
			// ESTADO VERTICAL ANTES DEL PULSO DE SINCRONIZACION.
			if (registroEstadoVerticalActual == ESTADO_VERTICAL_ANTES_PULSO_SINCRONIZACION) begin
				if (registroLineaHorizontalFinalizada == 1'b1) begin
					if (registroContadorVertical == CANTIDAD_LINEAS_ANTES_PULSO_SINCRONIZACION_VERTICAL) begin
						registroContadorVertical <= 10'b0000000000;
						registroEstadoVerticalActual <= ESTADO_VERTICAL_PULSO_SINCRONIZACION;
					end
					else begin
						registroContadorVertical <= registroContadorVertical + 1'b1;
						registroEstadoVerticalActual <= ESTADO_VERTICAL_ANTES_PULSO_SINCRONIZACION;
					end
				end
				else begin
					registroContadorVertical <= registroContadorVertical;
				end
				registroSincronizacionVertical <= 1'b1;
			end
			
			// ESTADO VERTICAL DEL PULSO DE SINCRONIZACION.
			if (registroEstadoVerticalActual == ESTADO_VERTICAL_PULSO_SINCRONIZACION) begin
				if (registroLineaHorizontalFinalizada == 1'b1) begin
					if (registroContadorVertical == CANTIDAD_LINEAS_PULSO_SINCRONIZACION_VERTICAL) begin
						registroContadorVertical <= 10'b0000000000;
						registroEstadoVerticalActual <= ESTADO_VERTICAL_DESPUES_PULSO_SINCRONIZACION;
					end
					else begin
						registroContadorVertical <= registroContadorVertical + 1'b1;
						registroEstadoVerticalActual <= ESTADO_VERTICAL_PULSO_SINCRONIZACION;
					end
				end
				else begin
					registroContadorVertical <= registroContadorVertical;
				end
				registroSincronizacionVertical <= 1'b0;
			end
			
			// ESTADO VERTICAL DESPUES DEL PULSO DE SINCRONIZACION.
			if (registroEstadoVerticalActual == ESTADO_VERTICAL_DESPUES_PULSO_SINCRONIZACION) begin
				if (registroLineaHorizontalFinalizada == 1'b1) begin
					if (registroContadorVertical == CANTIDAD_LINEAS_DESPUES_PULSO_SINCRONIZACION_VERTICAL) begin
						registroContadorVertical <= 10'b0000000000;
						registroEstadoVerticalActual <= ESTADO_VERTICAL_ACTIVO;
					end
					else begin
						registroContadorVertical <= registroContadorVertical + 1'b1;
						registroEstadoVerticalActual <= ESTADO_VERTICAL_DESPUES_PULSO_SINCRONIZACION;
					end
				end
				else begin
					registroContadorVertical <= registroContadorVertical;
				end
				registroSincronizacionVertical <= 1'b1;
			end
			
			
			// CONTROL DE COLOR DE SALIDA.
			if (registroEstadoHorizontalActual == ESTADO_HORIZONTAL_ACTIVO) begin
				if (registroEstadoVerticalActual == ESTADO_VERTICAL_ACTIVO) begin
					registroEscalaRojo <= {colorEntrada[8:6], 5'b00000};
					registroEscalaVerde <= {colorEntrada[5:3], 5'b00000};
					registroEscalaAzul <= {colorEntrada[2:0], 5'b00000};
				end
				else begin
					registroEscalaRojo <= 8'b00000000;
					registroEscalaVerde <= 8'b00000000;
					registroEscalaAzul <= 8'b00000000;
				end
			end
			else begin
				registroEscalaRojo <= 8'b00000000;
				registroEscalaVerde <= 8'b00000000;
				registroEscalaAzul <= 8'b00000000;
			end
			
		end
	end
	
	// MAPEO DE LAS SALIDAS AL CABLE VGA.
	assign sincronizacionHorizontal = registroSincronizacionHorizontal;
	assign sincronizacionVertical = registroSincronizacionVertical;
	assign escalaRojo = registroEscalaRojo;
	assign escalaVerde = registroEscalaVerde;
	assign escalaAzul = registroEscalaAzul;
	assign relojVGA = reloj;
	assign sincronizacion = 1'b0;
	assign parpadeoVGA = registroSincronizacionHorizontal & registroSincronizacionVertical;
	
	assign coordenadaDibujarX = (registroEstadoHorizontalActual == ESTADO_HORIZONTAL_ACTIVO)? registroContadorHorizontal : 10'b0000000000; 
	assign coordenadaDibujarY = (registroEstadoVerticalActual == ESTADO_VERTICAL_ACTIVO)? registroContadorVertical : 10'b0000000000; 

	endmodule 