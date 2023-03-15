library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity moduloDisplaySieteSegmentos is
	port 
		( 
		resultado: in STD_LOGIC_VECTOR(3 downto 0);
		carrySalida: in STD_LOGIC;
		sieteSegmentos0: out STD_LOGIC_VECTOR(6 downto 0);
		sieteSegmentos1: out STD_LOGIC_VECTOR(6 downto 0)
		);
end moduloDisplaySieteSegmentos;
 
architecture arquitecturaModuloDisplaySieteSegmentos of moduloDisplaySieteSegmentos is
	begin
		process (resultado, carrySalida) is
			begin
				if carrySalida = '0' then
					case resultado is
						when "0000" => -- 0
							sieteSegmentos1 <= "1000000"; -- 0
							sieteSegmentos0 <= "1000000";	-- 0
						when "0001" => -- 1
							sieteSegmentos1 <= "1000000"; -- 0
							sieteSegmentos0 <= "1111001";	-- 1
						when "0010" => -- 2
							sieteSegmentos1 <= "1000000"; -- 0
							sieteSegmentos0 <= "0100100";	-- 2
						when "0011" => -- 3
							sieteSegmentos1 <= "1000000"; -- 0
							sieteSegmentos0 <= "0110000";	-- 3
						when "0100" => -- 4
							sieteSegmentos1 <= "1000000"; -- 0
							sieteSegmentos0 <= "0011001";	-- 4
						when "0101" => -- 5
							sieteSegmentos1 <= "1000000"; -- 0
							sieteSegmentos0 <= "0010010";	-- 5
						when "0110" => -- 6
							sieteSegmentos1 <= "1000000"; -- 0
							sieteSegmentos0 <= "0000010";	-- 6
						when "0111" => -- 7
							sieteSegmentos1 <= "1000000"; -- 0
							sieteSegmentos0 <= "1111000";	-- 7
						when "1000" => -- 8
							sieteSegmentos1 <= "1000000"; -- 0
							sieteSegmentos0 <= "0000000";	-- 8
						when "1001" => -- 9
							sieteSegmentos1 <= "1000000"; -- 0
							sieteSegmentos0 <= "0011000";	-- 9
						when "1010" => -- 10
							sieteSegmentos1 <= "1000000"; -- 0
							sieteSegmentos0 <= "0001000";	-- A
						when "1011" => -- 11
							sieteSegmentos1 <= "1000000"; -- 0
							sieteSegmentos0 <= "0000011";	-- b
						when "1100" => -- 12
							sieteSegmentos1 <= "1000000"; -- 0
							sieteSegmentos0 <= "1000110";	-- C
						when "1101" => -- 13
							sieteSegmentos1 <= "1000000"; -- 0
							sieteSegmentos0 <= "0100001";	-- d
						when "1110" => -- 14
							sieteSegmentos1 <= "1000000"; -- 0
							sieteSegmentos0 <= "0000110";	-- E
						when "1111" => -- 15
							sieteSegmentos1 <= "1000000"; -- 0
							sieteSegmentos0 <= "0001110";	-- F
						when others =>
							sieteSegmentos1 <= "1000000"; -- 0
							sieteSegmentos0 <= "1000000";	-- 0
					end case;
				elsif carrySalida = '1' then
					case resultado is
						when "0000" => -- 16
							sieteSegmentos1 <= "1111001"; -- 1
							sieteSegmentos0 <= "1000000";	-- 0
						when "0001" => -- 17
							sieteSegmentos1 <= "1111001"; -- 1
							sieteSegmentos0 <= "1111001";	-- 1
						when "0010" => -- 18
							sieteSegmentos1 <= "1111001"; -- 1
							sieteSegmentos0 <= "0100100";	-- 2
						when "0011" => -- 19
							sieteSegmentos1 <= "1111001"; -- 1
							sieteSegmentos0 <= "0110000";	-- 3
						when "0100" => -- 20
							sieteSegmentos1 <= "1111001"; -- 1
							sieteSegmentos0 <= "0011001";	-- 4
						when "0101" => -- 21
							sieteSegmentos1 <= "1111001"; -- 1
							sieteSegmentos0 <= "0010010";	-- 5
						when "0110" => -- 22
							sieteSegmentos1 <= "1111001"; -- 1
							sieteSegmentos0 <= "0000010";	-- 6
						when "0111" => -- 23
							sieteSegmentos1 <= "1111001"; -- 1
							sieteSegmentos0 <= "1111000";	-- 7
						when "1000" => -- 24
							sieteSegmentos1 <= "1111001"; -- 1
							sieteSegmentos0 <= "0000000";	-- 8
						when "1001" => -- 25
							sieteSegmentos1 <= "1111001"; -- 1
							sieteSegmentos0 <= "0011000";	-- 9
						when "1010" => -- 26
							sieteSegmentos1 <= "1111001"; -- 1
							sieteSegmentos0 <= "0001000";	-- A
						when "1011" => -- 27
							sieteSegmentos1 <= "1001111"; -- 1
							sieteSegmentos0 <= "0000011";	-- b
						when "1100" => -- 28
							sieteSegmentos1 <= "1111001"; -- 1
							sieteSegmentos0 <= "1000110";	-- C
						when "1101" => -- 29
							sieteSegmentos1 <= "1111001"; -- 1
							sieteSegmentos0 <= "0100001";	-- d
						when "1110" => -- 30
							sieteSegmentos1 <= "1111001"; -- 1
							sieteSegmentos0 <= "0000110";	-- E
						when "1111" => -- 31
							sieteSegmentos1 <= "1111001"; -- 1
							sieteSegmentos0 <= "0001110";	-- F
						when others =>
							sieteSegmentos1 <= "1000000"; -- 0
							sieteSegmentos0 <= "1000000";	-- 0
					end case;
				end if;
		end process;
end arquitecturaModuloDisplaySieteSegmentos;