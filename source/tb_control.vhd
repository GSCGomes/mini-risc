-- Universidade Federal de Minas Gerais
-- Escola de Engenharia
-- Departamento de Engenharia Eletrônica
-- Autoria: Professor Ricardo de Oliveira Duarte
-- Testbench para o mini_risc
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- Este arquivo irá gerar um sinal de clock e reset de modo a possibilitar a simulação do DUT mini_risc

entity tb_control is
end tb_control;

architecture estimulos of tb_control is
        -- Declarar a unidade sob teste
	component unidade_de_controle_ciclo_unico
        generic (
            INSTR_WIDTH       : natural := 32;
            OPCODE_WIDTH      : natural := 4;
            DP_CTRL_BUS_WIDTH : natural := 10;
            ULA_CTRL_WIDTH    : natural := 4
        );
        port (
            instrucao : in std_logic_vector(INSTR_WIDTH - 1 downto 0);       -- instrução
            controle  : out std_logic_vector(DP_CTRL_BUS_WIDTH - 1 downto 0) -- controle da via
        );
	end component;

    signal instrucao : std_logic_vector((32 - 1) downto 0);
    signal controle  : std_logic_vector((10 - 1) downto 0);

	constant OFFSET     : time := 5 ns;
begin
	-- instancia o componente 
	instancia : unidade_de_controle_ciclo_unico port map(instrucao, controle);
	-- processo para gerar o sinal de clock 		
	test_ctrl : process
	begin
        wait for OFFSET;
		CLOCK_LOOP : loop

            instrucao <= B"00101000000000000000000100000001";
			wait for OFFSET;

            instrucao <= B"00101100000000000000001100000001";
			wait for OFFSET;

            instrucao <= B"00110000101000101100000000000000";
			wait for OFFSET;

            instrucao <= B"00000011000000000000010010000100",
			wait for OFFSET;

            instrucao <= B"00110100000000000000010010000010",
			wait for OFFSET;

		end loop CLOCK_LOOP;
	end process test_ctrl;
end;
