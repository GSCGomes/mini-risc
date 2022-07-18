-- Universidade Federal de Minas Gerais
-- Escola de Engenharia
-- Departamento de Engenharia Eletronica
-- Autoria: Professor Ricardo de Oliveira Duarte

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.interface_p.all;


entity memd is
    generic (
        number_of_words : natural; -- número de words que a sua memória é capaz de armazenar
        MD_DATA_WIDTH   : natural := 32; -- tamanho da palavra em bits
        MD_ADDR_WIDTH   : natural  -- tamanho do endereco da memoria de dados em bits
    );
    port (
        clk                 : in std_logic;
        rst                 : in std_logic;
        mem_write, mem_read : in std_logic; --sinais do controlador
        write_data_mem      : in std_logic_vector(MD_DATA_WIDTH - 1 downto 0);
        adress_mem          : in std_logic_vector(MD_ADDR_WIDTH - 1 downto 0);
        read_data_mem       : out std_logic_vector(MD_DATA_WIDTH - 1 downto 0);
        interface           : out interface_t;

        p_adress_mem          : in std_logic_vector(MD_ADDR_WIDTH - 1 downto 0); -- periferic access to data memory
        p_read_data_mem       : out std_logic_vector(MD_DATA_WIDTH - 1 downto 0) -- periferic access to data memory
    );
end memd;

architecture comportamental of memd is

    --alocar espaço para a memoria e iniciar com 0
    type data_mem is array (0 to number_of_words - 1) of std_logic_vector(MD_DATA_WIDTH - 1 downto 0);
    signal ram      : data_mem := (others => (others => '0'));
    signal ram_addr : integer range 0 to (2**MD_ADDR_WIDTH -1) := 0;
begin
    gen_ifc: 
    for i in 0 to 6 generate
        -- TODO: fix hack and generalize std_logic_vector size on interface_t
        interface(i) <= std_logic_vector(to_unsigned(to_integer(unsigned(ram(i))), 32));
    end generate gen_ifc;

    ram_addr <= to_integer(unsigned(adress_mem(MD_ADDR_WIDTH - 1 downto 0))) mod number_of_words;
    process (clk)
    begin
        if (rising_edge(clk)) then
            if (mem_write = '1') then
                ram(ram_addr) <= write_data_mem;
            end if;
        end if;
    end process;
    read_data_mem <= ram(ram_addr) when (mem_read = '1') else (others => '0');
end comportamental;
