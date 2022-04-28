-- Universidade Federal de Minas Gerais
-- Escola de Engenharia
-- Departamento de Engenharia Eletrônica
-- Autoria: Professor Ricardo de Oliveira Duarte
library IEEE;
use IEEE.std_logic_1164.all;

entity mini_risc is
	port (
		a : in std_logic;
		b : in std_logic;
		c : out std_logic
	);
end mini_risc;

architecture arch of mini_risc is
begin
	c <= a or b;
end arch;
