-- Universidade Federal de Minas Gerais
-- Escola de Engenharia
-- Departamento de Engenharia Eletronica
-- Autoria: Professor Ricardo de Oliveira Duarte
-- Memória de Programas ou Memória de Instruções de tamanho genérico
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memi is
	generic (
		INSTR_WIDTH   : natural; -- tamanho da instrucaoo em numero de bits
		MI_ADDR_WIDTH : natural  -- tamanho do endereco da memoria de instrucoes em numero de bits
	);
	port (
		clk       : in std_logic;
		reset     : in std_logic;
		Endereco  : in std_logic_vector(MI_ADDR_WIDTH - 1 downto 0);
		Instrucao : out std_logic_vector(INSTR_WIDTH - 1 downto 0)
	);
end entity;

architecture comportamental of memi is
	type rom_type is array (0 to 2 ** MI_ADDR_WIDTH - 1) of std_logic_vector(INSTR_WIDTH - 1 downto 0);
	signal rom : rom_type;
    signal EnderecoDeslocado : std_logic_vector(MI_ADDR_WIDTH - 1 downto 0);
begin
    EnderecoDeslocado <= B"00" & Endereco(MI_ADDR_WIDTH - 1 downto 2);
	process (clk, reset) is
	begin
		if (rising_edge(clk)) then
			if (reset = '1') then
				rom <= (
                    0      => B"00101000000000000000000100000001",
                    1      => B"00101100000000000000001100000001",
                    2      => B"00110000101000101100000000000000",
                    3      => B"00000011000000000000010010000100",
                    4      => B"00110100000000000000010010000010",
					others => B"00000000000000000000000000000000"  -- exemplo de uma instrução qualquer de 06 bits (4 símbos em hexadecimal)
					);
			else
				Instrucao <= rom(to_integer(unsigned(EnderecoDeslocado)));
			end if;
		end if;
	end process;
end comportamental;
