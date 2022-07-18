-- Universidade Federal de Minas Gerais
-- Escola de Engenharia
-- Departamento de Engenharia Eletronica
-- Autoria: Professor Ricardo de Oliveira Duarte e Guilherme Gomes
-- Memória de Programas ou Memória de Instruções de tamanho genérico
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity memp is
	generic (
		INSTR_WIDTH   : natural; -- tamanho da InstrucaoAddro em numero de bits
		MI_ADDR_WIDTH : natural  -- tamanho do PerifericAddr da memoria de instrucoes em numero de bits
	);
	port (
		clk       : in std_logic;
		reset     : in std_logic;
		PerifericAddr  : in std_logic_vector(MI_ADDR_WIDTH - 1 downto 0);
		InstrucaoAddr : out std_logic_vector(INSTR_WIDTH - 1 downto 0)
	);
end entity;

architecture comportamental of memp is
	type rom_type is array (0 to 2 ** MI_ADDR_WIDTH - 1) of std_logic_vector(INSTR_WIDTH - 1 downto 0);
	signal rom : rom_type;
    signal PerifericAddrDeslocado : std_logic_vector(MI_ADDR_WIDTH - 1 downto 0);
begin
    PerifericAddrDeslocado <= B"00" & PerifericAddr(MI_ADDR_WIDTH - 1 downto 2);
	process (PerifericAddrDeslocado, reset) is
	begin
        if (reset = '1') then
            rom <= (
                0      => B"00000000000000000000000000000101",
                1      => B"00000000000000000000000000001010",
                2      => B"00000000000000000000000000001111",
                3      => B"00000000000000000000000000000000", -- make to point to an instruction memory position
                others => B"00000000000000000000000000000000"  -- exemplo de uma instrução qualquer de 06 bits (4 símbos em hexadecimal)
                );
        end if;
	end process;
end comportamental;

