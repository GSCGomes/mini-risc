-- Universidade Federal de Minas Gerais
-- Escola de Engenharia
-- Departamento de Engenharia Eletrônica
-- Autoria: Professor Ricardo de Oliveira Duarte
-- Testbench para o mini_risc
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- Este arquivo irá gerar um sinal de clock e reset de modo a possibilitar a simulação do DUT mini_risc

entity tb_register is
end tb_register;

architecture estimulos of tb_register is
	-- Declarar a unidade sob teste
	component registrador
        generic (
            largura_dado : natural
        );
        port (
            entrada_dados  : in std_logic_vector((largura_dado - 1) downto 0);
            WE, clk, reset : in std_logic;
            saida_dados    : out std_logic_vector((largura_dado - 1) downto 0)
        );
	end component;

    signal entrada_dados  : std_logic_vector((32 - 1) downto 0);
    signal WE, clk, reset : std_logic;
    signal saida_dados    : std_logic_vector((32 - 1) downto 0);

	-- Definição das configurações de clock				
	constant PERIODO    : time := 20 ns;
	constant DUTY_CYCLE : real := 0.5;
	constant OFFSET     : time := 5 ns;
begin
	-- instancia o componente 
    WE <= '1';
	instancia : registrador generic map (largura_dado => 32) port map(entrada_dados, WE, clk, reset, saida_dados);
	-- processo para gerar o sinal de clock 		
	gera_clock : process
	begin
        wait for OFFSET;
		CLOCK_LOOP : loop
			clk <= '0';
            entrada_dados <= X"0000000A";
            -- WE <= '1';
			wait for (PERIODO - (PERIODO * DUTY_CYCLE));
			clk <= '1';
			wait for (PERIODO * DUTY_CYCLE);

			clk <= '0';
            entrada_dados <= X"FFFFFFFF";
            -- WE <= '1';
			wait for (PERIODO - (PERIODO * DUTY_CYCLE));
			clk <= '1';
			wait for (PERIODO * DUTY_CYCLE);

			clk <= '0';
            entrada_dados <= X"0C0C0C0C";
            -- WE <= '0';
			wait for (PERIODO - (PERIODO * DUTY_CYCLE));
			clk <= '1';
			wait for (PERIODO * DUTY_CYCLE);

		end loop CLOCK_LOOP;
	end process gera_clock;
	-- processo para gerar o estimulo de reset		
	gera_reset : process
	begin
		reset <= '1';
		for i in 1 to 2 loop
			wait until rising_edge(clk);
		end loop;
		reset <= '0';
		wait;
	end process gera_reset;
end;
