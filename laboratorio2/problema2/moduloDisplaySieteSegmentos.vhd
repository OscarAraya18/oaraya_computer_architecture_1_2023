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
							sieteSegmentos0 <= "0000001"; -- 0
							sieteSegmentos1 <= "0000001";	-- 0
						when "0001" => -- 1
							sieteSegmentos0 <= "0000001"; -- 0
							sieteSegmentos1 <= "1001111";	-- 1
						when "0010" => -- 2
							sieteSegmentos0 <= "0000001"; -- 0
							sieteSegmentos1 <= "0010010";	-- 2
						when "0011" => -- 3
							sieteSegmentos0 <= "0000001"; -- 0
							sieteSegmentos1 <= "0000110";	-- 3
						when "0100" => -- 4
							sieteSegmentos0 <= "0000001"; -- 0
							sieteSegmentos1 <= "1001100";	-- 4
						when "0101" => -- 5
							sieteSegmentos0 <= "0000001"; -- 0
							sieteSegmentos1 <= "0100100";	-- 5
						when "0110" => -- 6
							sieteSegmentos0 <= "0000001"; -- 0
							sieteSegmentos1 <= "0100000";	-- 6
						when "0111" => -- 7
							sieteSegmentos0 <= "0000001"; -- 0
							sieteSegmentos1 <= "0001111";	-- 7
						when "1000" => -- 8
							sieteSegmentos0 <= "0000001"; -- 0
							sieteSegmentos1 <= "0000000";	-- 8
						when "1001" => -- 9
							sieteSegmentos0 <= "0000001"; -- 0
							sieteSegmentos1 <= "0001100";	-- 9
						when "1010" => -- 10
							sieteSegmentos0 <= "0000001"; -- 0
							sieteSegmentos1 <= "0001000";	-- A
						when "1011" => -- 11
							sieteSegmentos0 <= "0000001"; -- 0
							sieteSegmentos1 <= "1100000";	-- b
						when "1100" => -- 12
							sieteSegmentos0 <= "0000001"; -- 0
							sieteSegmentos1 <= "0110001";	-- C
						when "1101" => -- 13
							sieteSegmentos0 <= "0000001"; -- 0
							sieteSegmentos1 <= "1000010";	-- d
						when "1110" => -- 14
							sieteSegmentos0 <= "0000001"; -- 0
							sieteSegmentos1 <= "0110000";	-- E
						when "1111" => -- 15
							sieteSegmentos0 <= "0000001"; -- 0
							sieteSegmentos1 <= "0111000";	-- F
						when others =>
							sieteSegmentos0 <= "0000001"; -- 0
							sieteSegmentos1 <= "0000001";	-- 0
					end case;
				elsif carrySalida = '1' then
					case resultado is
						when "0000" => -- 16
							sieteSegmentos0 <= "1001111"; -- 1
							sieteSegmentos1 <= "0000001";	-- 0
						when "0001" => -- 17
							sieteSegmentos0 <= "1001111"; -- 1
							sieteSegmentos1 <= "1001111";	-- 1
						when "0010" => -- 18
							sieteSegmentos0 <= "1001111"; -- 1
							sieteSegmentos1 <= "0010010";	-- 2
						when "0011" => -- 19
							sieteSegmentos0 <= "1001111"; -- 1
							sieteSegmentos1 <= "0000110";	-- 3
						when "0100" => -- 20
							sieteSegmentos0 <= "1001111"; -- 1
							sieteSegmentos1 <= "1001100";	-- 4
						when "0101" => -- 21
							sieteSegmentos0 <= "1001111"; -- 1
							sieteSegmentos1 <= "0100100";	-- 5
						when "0110" => -- 22
							sieteSegmentos0 <= "1001111"; -- 1
							sieteSegmentos1 <= "0100000";	-- 6
						when "0111" => -- 23
							sieteSegmentos0 <= "1001111"; -- 1
							sieteSegmentos1 <= "0001111";	-- 7
						when "1000" => -- 24
							sieteSegmentos0 <= "1001111"; -- 1
							sieteSegmentos1 <= "0000000";	-- 8
						when "1001" => -- 25
							sieteSegmentos0 <= "1001111"; -- 1
							sieteSegmentos1 <= "0001100";	-- 9
						when "1010" => -- 26
							sieteSegmentos0 <= "1001111"; -- 1
							sieteSegmentos1 <= "0001000";	-- A
						when "1011" => -- 27
							sieteSegmentos0 <= "1001111"; -- 1
							sieteSegmentos1 <= "1100000";	-- b
						when "1100" => -- 28
							sieteSegmentos0 <= "1001111"; -- 1
							sieteSegmentos1 <= "0110001";	-- C
						when "1101" => -- 29
							sieteSegmentos0 <= "1001111"; -- 1
							sieteSegmentos1 <= "1000010";	-- d
						when "1110" => -- 30
							sieteSegmentos0 <= "1001111"; -- 1
							sieteSegmentos1 <= "0110000";	-- E
						when "1111" => -- 31
							sieteSegmentos0 <= "1001111"; -- 1
							sieteSegmentos1 <= "0111000";	-- F
						when others =>
							sieteSegmentos0 <= "0000001"; -- 0
							sieteSegmentos1 <= "0000001";	-- 0
					end case;
				end if;
		end process;
end arquitecturaModuloDisplaySieteSegmentos;