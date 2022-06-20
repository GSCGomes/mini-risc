-- Universidade Federal de Minas Gerais
-- Escola de Engenharia
-- Departamento de Engenharia Eletrônica
-- Autoria: Professor Ricardo de Oliveira Duarte e Guilherme Gomes
-- Registrador de carga paralela com WE e reset síncrono em nível lógico 1
library ieee;
use ieee.std_logic_1164.all;

entity registrador1b is
    port (
        entrada_dados, WE, clk, reset : in std_logic;
        saida_dados    : out std_logic
    );
end registrador1b;

architecture comportamental of registrador1b is
begin
    process (clk) is
    begin
        if (rising_edge(clk)) then
            if (WE = '1') then
                saida_dados <= entrada_dados;
            end if;
            if (reset = '1') then
                saida_dados <= '0';
            end if;
        end if;
    end process;
end comportamental;
