library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity testbenchModuloSumadorCompletoCuatroBits is
end testbenchModuloSumadorCompletoCuatroBits;
 
architecture arquitecturaTestbenchModuloSumadorCompletoCuatroBits of testbenchModuloSumadorCompletoCuatroBits is
  
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
 
	signal operandoA: STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
	signal operandoB: STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
	signal carryEntrada: STD_LOGIC := '0';
	signal resultado: STD_LOGIC_VECTOR(3 downto 0);
	signal carrySalida: STD_LOGIC;
 
	begin
		sumadorCompletoCuatroBitsPrueba: moduloSumadorCompletoCuatroBits port map(operandoA, operandoB, carryEntrada, resultado, carrySalida);
 
		procesoSimulacion: process
			begin
				wait for 100 ns;
				operandoA <= "0110";
				operandoB <= "1100";
				wait for 100 ns;
				operandoA <= "1111";
				operandoB <= "1100";
				wait for 100 ns;
				operandoA <= "0110";
				operandoB <= "0111";
				wait for 100 ns;
				operandoA <= "0110";
				operandoB <= "1110";
				wait; 
		end process;
 
end;
