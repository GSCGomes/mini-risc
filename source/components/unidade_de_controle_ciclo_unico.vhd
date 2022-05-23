-- Universidade Federal de Minas Gerais
-- Escola de Engenharia
-- Departamento de Engenharia Eletrônica
-- Autoria: Professor Ricardo de Oliveira Duarte
-- Unidade de controle ciclo único (look-up table) do processador
-- puramente combinacional
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- unidade de controle
entity unidade_de_controle_ciclo_unico is
    generic (
        INSTR_WIDTH       : natural := 32;
        OPCODE_WIDTH      : natural := 4;
        DP_CTRL_BUS_WIDTH : natural := 11;
        ULA_CTRL_WIDTH    : natural := 4
    );
    port (
        instrucao : in std_logic_vector(INSTR_WIDTH - 1 downto 0);       -- instrução
        controle  : out std_logic_vector(DP_CTRL_BUS_WIDTH - 1 downto 0) -- controle da via
    );
end unidade_de_controle_ciclo_unico;

architecture beh of unidade_de_controle_ciclo_unico is

    signal inst_aux : std_logic_vector (INSTR_WIDTH - 1 downto 0); -- instrucao
    signal ctrl_aux : std_logic_vector (DP_CTRL_BUS_WIDTH - 1 downto 0);  -- controle
    signal func     : std_logic_vector (ULA_CTRL_WIDTH - 1 downto 0);  -- unique code for Type R and I oprations
    signal sum_func     : std_logic_vector (ULA_CTRL_WIDTH - 1 downto 0);  -- unique code for Type R and I oprations

    -- using generic size for the 'Choose' signal on a switch case yields error on ModelSim-Altera
    -- signal opcode   : std_logic_vector (OPCODE_WIDTH - 1 downto 0);  -- opcode
    signal opcode   : std_logic_vector (4 - 1 downto 0);  -- opcode

begin
    sum_func <= std_logic_vector(to_unsigned(0, ULA_CTRL_WIDTH));
    inst_aux <= instrucao;

    opcode <= inst_aux (OPCODE_WIDTH - 1 downto 0);
    func <= inst_aux (ULA_CTRL_WIDTH + OPCODE_WIDTH - 1 downto OPCODE_WIDTH);

    process (opcode, func)
    begin
        case opcode is
                -- Type-R	
            when "0000" =>
                ctrl_aux <= "0001001" & func;
                -- Type-I
            when "0001" =>
                ctrl_aux <= "0001101" & func;
                -- Type-L
            when "0010" =>
                ctrl_aux <= "0001100" & sum_func;
                -- Type-Jr	
            when "0011" =>
                ctrl_aux <= "0100100" & sum_func;
                -- Type-S
            when "0100" =>
                ctrl_aux <= "1000111" & sum_func;
                -- Type-B  
            when "0101" =>
                ctrl_aux <= "1010000" & sum_func;
                -- Type-J
            when "0110" =>
                ctrl_aux <= "0010000" & sum_func;
                --Type-Ecal
            when "0111" =>
                ctrl_aux <= "0110000" & sum_func;
            when others =>
                ctrl_aux <= (others => '0');
        end case;
    end process;

    controle <= ctrl_aux;
    
end beh;
