library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity moduloSumadorCompletoBit is
	port 
		( 
		operandoA: in STD_LOGIC;
		operandoB: in STD_LOGIC;
		carryEntrada: in STD_LOGIC;
		resultado: out STD_LOGIC;
		carrySalida: out STD_LOGIC
		);
end moduloSumadorCompletoBit;
 
architecture arquitecturaModuloSumadorCompletoBit of moduloSumadorCompletoBit is
	begin
		resultado <= operandoA XOR operandoB XOR carryEntrada;
		carrySalida <= (operandoA AND operandoB) OR (carryEntrada AND operandoA) OR (carryEntrada AND operandoB);
end arquitecturaModuloSumadorCompletoBit;