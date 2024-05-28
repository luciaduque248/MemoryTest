library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity display7seg is
    Port (
        num : in unsigned(3 downto 0);       -- Entrada numérica (0-9)
        segments : out std_logic_vector(6 downto 0)  -- Salida de los segmentos (a-g)
    );
end display7seg;

architecture Behavioral of display7seg is
begin
    process(num)
    begin
        case num is
            when "0000" => segments <= "0000001"; -- 0
            when "0001" => segments <= "1001111"; -- 1
            when "0010" => segments <= "0010010"; -- 2
            when "0011" => segments <= "0000110"; -- 3
            when "0100" => segments <= "1001100"; -- 4
            when "0101" => segments <= "0100100"; -- 5
            when "0110" => segments <= "0100000"; -- 6
            when "0111" => segments <= "0001111"; -- 7
            when "1000" => segments <= "0000000"; -- 8
            when "1001" => segments <= "0000100"; -- 9
            when others => segments <= "1111111"; -- Apagado
        end case;
    end process;
end Behavioral;
