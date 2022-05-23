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
        DP_CTRL_BUS_WIDTH : natural := 10;
        ULA_CTRL_WIDTH    : natural := 4
    );
    port (
        instrucao : in std_logic_vector(INSTR_WIDTH - 1 downto 0);       -- instrução
        controle  : out std_logic_vector(DP_CTRL_BUS_WIDTH - 1 downto 0) -- controle da via
    );
end unidade_de_controle_ciclo_unico;

architecture beh of unidade_de_controle_ciclo_unico is
    -- As linhas abaixo não produzem erro de compilação no Quartus II, mas no Modelsim (GHDL) produzem.	
    --signal inst_aux : std_logic_vector (INSTR_WIDTH-1 downto 0);			-- instrucao
    --signal opcode   : std_logic_vector (OPCODE_WIDTH-1 downto 0);			-- opcode
    --signal ctrl_aux : std_logic_vector (DP_CTRL_BUS_WIDTH-1 downto 0);		-- controle

    signal FUNC_WIDTH : natural := 4;

    signal inst_aux : std_logic_vector (INSTR_WIDTH - 1 downto 0); -- instrucao
    signal opcode   : std_logic_vector (OPCODE_WIDTH - 1 downto 0);  -- opcode
    signal ctrl_aux : std_logic_vector (DP_CTRL_BUS_WIDTH - 1 downto 0);  -- controle
    signal func     : std_logic_vector (FUNC_WIDTH - 1 downto 0);  -- unique code for Type R and I oprations

begin
    inst_aux <= instrucao;
    -- A linha abaixo não produz erro de compilação no Quartus II, mas no Modelsim (GHDL) produz.	
    --	opcode <= inst_aux (INSTR_WIDTH-1 downto INSTR_WIDTH-OPCODE_WIDTH);
    opcode <= inst_aux (OPCODE_WIDTH - 1 downto 0);
    func <= inst_aux (FUNC_WIDTH + OPCODE_WIDTH - 1 downto OPCODE_WIDTH);

    process (opcode, func)
    begin
        case opcode is
                -- Type-R	
            when "0000" =>
                ctrl_aux <= "001001" & func;
                -- Type-I
            when "0001" =>
                ctrl_aux <= "001101" & func;
                -- Type-L
            when "0010" =>
                ctrl_aux <= "001100" & "1111";
                -- Type-Jr	
            when "0011" =>
                ctrl_aux <= "100100" & "1111";
                -- Type-S
            when "0100" =>
                ctrl_aux <= "000111" & "1111";
                -- Type-B  
            when "0101" =>
                ctrl_aux <= "010000" & "1111";
                -- Type-J
            when "0111" =>
                ctrl_aux <= "010000" & "1111";
                --Type-Ecal
            when "1000" =>
                ctrl_aux <= "110000" & "1111";
            when others =>
                ctrl_aux <= (others => '0');
        end case;
    end process;

    controle <= ctrl_aux;
    
end beh;
