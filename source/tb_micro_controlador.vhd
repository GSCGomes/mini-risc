-- Universidade Federal de Minas Gerais
-- Escola de Engenharia
-- Departamento de Engenharia Eletrônica
-- Autoria: Professor Ricardo de Oliveira Duarte
-- Testbench para o mini_risc
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- Este arquivo irá gerar um sinal de clock e reset de modo a possibilitar a simulação do DUT mini_risc

entity tb_micro_controlador is
end tb_micro_controlador;

architecture estimulos of tb_micro_controlador is

	-- Declarar a unidade sob teste
	component micro_controlador is
		port (
			clk_manual : in std_logic;
			clk_system : in std_logic;
			rst        : in std_logic;
			clk_sel        : in std_logic;
	
		-- GPIO config
		port_in  : in  std_logic_vector(31 downto 0);
		port_out : out std_logic_vector(31 downto 0);
		port_dir : out std_logic_vector(31 downto 0)
		);
	end component micro_controlador;


	signal tb_clk : std_logic;
	signal rst : std_logic;

	signal port_in  :  std_logic_vector(31 downto 0);
	signal port_out : std_logic_vector(31 downto 0);
	signal port_dir : std_logic_vector(31 downto 0);
	
	signal tb_interFlagTimer0, tb_interFlagTimer1, tb_interFlagGPIO, tb_interFlagUART : std_logic; --temporary remove later


	-- Definição das configurações de clock				
	constant PERIODO    : time := 20 ns;
	constant DUTY_CYCLE : real := 0.5;
	constant OFFSET     : time := 5 ns;
begin
	-- instancia o componente 
	u_micro_ctl : micro_controlador port map(tb_clk, tb_clk, rst, '0', port_in, port_out, port_dir);
	-- processo para gerar o sinal de clock 		
	gera_clock : process
	begin
        wait for OFFSET;
		CLOCK_LOOP : loop
			tb_clk <= '0';
			wait for (PERIODO - (PERIODO * DUTY_CYCLE));
			tb_clk <= '1';
			wait for (PERIODO * DUTY_CYCLE);
		end loop CLOCK_LOOP;
	end process gera_clock;
	-- processo para gerar o estimulo de reset		
	gera_reset : process
	begin
		rst <= '1';
        wait until rising_edge(tb_clk);
        wait for (OFFSET);
		rst <= '0';
		wait;
	end process gera_reset;
end;
