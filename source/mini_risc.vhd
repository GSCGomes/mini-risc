-- Universidade Federal de Minas Gerais
-- Escola de Engenharia
-- Departamento de Engenharia Eletrônica
-- Autoria: Guilherme Gomes, Felipe Freitas, Melissa Monni
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
	signal tmp_ctrl : std_logic;
	signal tmp_0, tmp_1, tmp_out : std_logic_vector(31 downto 0);
	
	component mux21 is
		 generic (
			  largura_dado : natural := 32
		 );
		 port (
			  dado_ent_0, dado_ent_1 : in std_logic_vector((largura_dado - 1) downto 0);
			  sele_ent               : in std_logic;
			  dado_sai               : out std_logic_vector((largura_dado - 1) downto 0)
		 );
	end component;
	
	component mux41 is
		 generic (
			  largura_dado : natural := 32
		 );
		 port (
			  dado_ent_0, dado_ent_1, dado_ent_2, dado_ent_3 : in std_logic_vector((largura_dado - 1) downto 0);
			  sele_ent                                       : in std_logic_vector(1 downto 0);
			  dado_sai                                       : out std_logic_vector((largura_dado - 1) downto 0)
		 );
	end component;	


	
	begin
	u_mux_1 : mux21 port map(tmp_0, tmp_1, tmp_ctrl, tmp_out);
	c <= a or b;
end arch;
