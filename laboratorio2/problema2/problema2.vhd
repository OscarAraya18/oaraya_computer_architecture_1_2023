library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity problema2 is
	port 
		( 
		operandoA: in STD_LOGIC_VECTOR(3 downto 0);
		operandoB: in STD_LOGIC_VECTOR(3 downto 0);
		carryEntrada: in STD_LOGIC;
		sieteSegmentos0: out STD_LOGIC_VECTOR(6 downto 0);
		sieteSegmentos1: out STD_LOGIC_VECTOR(6 downto 0)
		);
end problema2;
 
architecture arquitecturaProblema2 of problema2 is
	component moduloSumadorCompletoCuatroBits
		port
			(
			operandoA: in STD_LOGIC_VECTOR(3 downto 0);
			operandoB: in STD_LOGIC_VECTOR(3 downto 0);
			carryEntrada: in STD_LOGIC;
			resultado: out STD_LOGIC_VECTOR(3 downto 0);
			carrySalida: out STD_LOGIC
			);
	end component;
	
	component moduloDisplaySieteSegmentos
		port 
			( 
			resultado: in STD_LOGIC_VECTOR(3 downto 0);
			carrySalida: in STD_LOGIC;
			sieteSegmentos0: out STD_LOGIC_VECTOR(6 downto 0);
			sieteSegmentos1: out STD_LOGIC_VECTOR(6 downto 0)
			);
	end component;
	
	signal resultadoSumador: STD_LOGIC_VECTOR(3 downto 0);
	signal carrySalidaSumador: STD_LOGIC;
	
	begin
		instanciaModuloSumadorCompletoCuatroBits: moduloSumadorCompletoCuatroBits port map (operandoA, operandoB, carryEntrada, resultadoSumador, carrySalidaSumador);
		instanciaModuloDisplaySieteSegmentos: moduloDisplaySieteSegmentos port map (resultadoSumador, carrySalidaSumador, sieteSegmentos0, sieteSegmentos1);
	
end arquitecturaProblema2;