library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity moduloSumadorCompletoCuatroBits is
	port 
		( 
		operandoA: in STD_LOGIC_VECTOR(3 downto 0);
		operandoB: in STD_LOGIC_VECTOR(3 downto 0);
		carryEntrada: in STD_LOGIC;
		resultado: out STD_LOGIC_VECTOR(3 downto 0);
		carrySalida: out STD_LOGIC
		);
end moduloSumadorCompletoCuatroBits;
 
architecture arquitecturaModuloSumadorCompletoCuatroBits of moduloSumadorCompletoCuatroBits is
	component moduloSumadorCompletoBit
		port 
			(
			operandoA: in STD_LOGIC;
			operandoB: in STD_LOGIC;
			carryEntrada: in STD_LOGIC;
			resultado: out STD_LOGIC;
			carrySalida: out STD_LOGIC
			);
	end component;
 
	signal carrySalidaSumador0: STD_LOGIC;
	signal carrySalidaSumador1: STD_LOGIC;
	signal carrySalidaSumador2: STD_LOGIC;

	begin
		sumador0: moduloSumadorCompletoBit port map(operandoA(0), operandoB(0), carryEntrada, resultado(0), carrySalidaSumador0);
		sumador1: moduloSumadorCompletoBit port map(operandoA(1), operandoB(1), carrySalidaSumador0, resultado(1), carrySalidaSumador1);
		sumador2: moduloSumadorCompletoBit port map(operandoA(2), operandoB(2), carrySalidaSumador1, resultado(2), carrySalidaSumador2);
		sumador3: moduloSumadorCompletoBit port map(operandoA(3), operandoB(3), carrySalidaSumador2, resultado(3), carrySalida);
		
end arquitecturaModuloSumadorCompletoCuatroBits;
