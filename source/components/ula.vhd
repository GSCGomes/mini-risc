-- Universidade Federal de Minas Gerais
-- Escola de Engenharia
-- Departamento de Engenharia Eletrônica
-- Autoria: Professor Ricardo de Oliveira Duarte
-- Unidade Lógica e Aritmética com capacidade para 8 operações distintas, além de entradas e saída de dados genérica.
-- Os três bits que selecionam o tipo de operação da ULA são os 3 bits menos significativos do OPCODE (vide aqrquivo: par.xls)
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity ula is
    generic (
        largura_dado : natural := 32
    );

    port (
        entrada_a : in std_logic_vector((largura_dado - 1) downto 0);
        entrada_b : in std_logic_vector((largura_dado - 1) downto 0);
        seletor   : in std_logic_vector(3 downto 0);
        saida     : out std_logic_vector((largura_dado - 1) downto 0)
    );
end ula;

architecture comportamental of ula is
    signal resultado_ula : std_logic_vector((largura_dado - 1) downto 0);

    signal zeros : std_logic_vector((largura_dado - 2) downto 0);
    signal less : std_logic;
begin
    less <= '1' when entrada_a < entrada_b else '0';
    zeros <= (others => '0');

    process (entrada_a, entrada_b, seletor) is
    begin
        case(seletor) is
            when "0000" => -- soma aritmética com sinal (add/addi)
                resultado_ula <= std_logic_vector(signed(entrada_a) + signed(entrada_b));
            when "0001" => -- xor/xori
                resultado_ula <= entrada_a xor entrada_b;
            when "0010" => -- or/ori
                resultado_ula <= entrada_a or entrada_b;
            when "0011" => -- and/andi
                resultado_ula <= entrada_a and entrada_b;
            when "0100" => -- sll/slli
                resultado_ula <= std_logic_vector(unsigned(entrada_a) sll to_integer(unsigned(entrada_b)));
            when "0101" => -- srl/srli
                resultado_ula <= std_logic_vector(unsigned(entrada_a) srl to_integer(unsigned(entrada_b)));
            when "0110" => -- sla/slai
                resultado_ula <= std_logic_vector(shift_left(signed(entrada_a), to_integer(unsigned(entrada_b))));
                -- resultado_ula <= std_logic_vector(signed(entrada_a) sla to_integer(unsigned(entrada_b)));
            when "0111" => -- sra/srai
                resultado_ula <= std_logic_vector(shift_right(signed(entrada_a), to_integer(unsigned(entrada_b))));
                -- resultado_ula <= std_logic_vector(signed(entrada_a) sra to_integer(unsigned(entrada_b)));
            when "1000" => -- slt
                resultado_ula <= zeros & less;
            when others => -- Sub
                resultado_ula <= entrada_a - entrada_b;
        end case;
    end process;
    saida <= resultado_ula;
end comportamental;
