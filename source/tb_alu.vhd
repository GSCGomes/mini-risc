-- Universidade Federal de Minas Gerais
-- Escola de Engenharia
-- Departamento de Engenharia Eletrônica
-- Autoria: Professor Ricardo de Oliveira Duarte
-- Testbench para o mini_risc
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
-- Este arquivo irá gerar um sinal de clock e reset de modo a possibilitar a simulação do DUT mini_risc

entity tb_alu is
end tb_alu;

architecture estimulos of tb_alu is
	-- Declarar a unidade sob teste
	component ula
        generic (
            largura_dado : natural := 32
        );

        port (
            entrada_a : in std_logic_vector((largura_dado - 1) downto 0);
            entrada_b : in std_logic_vector((largura_dado - 1) downto 0);
            seletor   : in std_logic_vector(3 downto 0);
            saida     : out std_logic_vector((largura_dado - 1) downto 0)
        );
	end component;

    signal entrada_a : std_logic_vector((32 - 1) downto 0);
    signal entrada_b : std_logic_vector((32 - 1) downto 0);
    signal seletor   : std_logic_vector(3 downto 0);
    signal saida     : std_logic_vector((32 - 1) downto 0);

	constant OFFSET     : time := 5 ns;
begin
	-- instancia o componente 
	instancia : ula generic map (largura_dado => 32) port map(entrada_a, entrada_b, seletor, saida);
	-- processo para gerar o sinal de clock 		
	test_ula : process
	begin
        wait for OFFSET;
		CLOCK_LOOP : loop
			entrada_a <= X"00000004";
			entrada_b <= X"00000005";
            seletor <= "0000"; -- sum
			wait for OFFSET;

			entrada_a <= X"0000000A";
			entrada_b <= X"00000003";
            seletor <= "1111"; -- sub
			wait for OFFSET;

			entrada_a <= X"FFFF0000";
			entrada_b <= X"00FFFF00";
            seletor <= "0001"; -- xor
			wait for OFFSET;

			entrada_a <= X"FFFF0000";
			entrada_b <= X"FFFFFF00";
            seletor <= "0010"; -- or
			wait for OFFSET;

			entrada_a <= X"FFFF0000";
			entrada_b <= X"FFFFFF00";
            seletor <= "1001"; -- eq
			wait for OFFSET;

			entrada_a <= X"FFFFFF00";
			entrada_b <= X"FFFFFF00";
			wait for OFFSET;

			entrada_a <= X"FFFFFF00";
			entrada_b <= X"FFFFFE00";
			wait for OFFSET;

			entrada_a <= X"00000002";
			entrada_b <= X"00000002";
			wait for OFFSET;

			entrada_a <= X"00000002";
			entrada_b <= X"0000000F";
			wait for OFFSET;

		end loop CLOCK_LOOP;
	end process test_ula;
end;
