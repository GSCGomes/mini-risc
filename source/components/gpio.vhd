library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;


entity gpio is
    port(
        clk_i    : in  std_logic;
        reset_i  : in  std_logic;
        --
        we_i     : in  std_logic;
        data_i   : in  std_logic_vector(31 downto 0); -- registradores da cpu que serão escritos e lidos pela GPIO
        addr_i   : in  std_logic_vector( 0 downto 0);
        data_o   : out std_logic_vector(31 downto 0);
        --
        port_in  : in  std_logic_vector(31 downto 0);
        port_out : out std_logic_vector(31 downto 0);
        port_dir : out std_logic_vector(31 downto 0);

        interruptFlag : out  std_logic
        
    );
end entity gpio;


architecture rtl of gpio is

    signal port_in_reg  : std_logic_vector(31 downto 0);
    signal port_in_sync : std_logic_vector(31 downto 0);
    signal previous_in_reg  : std_logic_vector(31 downto 0);
    --
    signal direction    : std_logic_vector(31 downto 0) := (others => '1');

begin

    process
    begin
        wait until rising_edge( clk_i);
        
        -- synchronize all inputs with two registers
        -- to avoid metastability
        port_in_reg  <= port_in;
        port_in_sync <= port_in_reg;

        -- write access to gpio
        if we_i = '1' then
            -- data
            if addr_i = "0" then
                port_out  <= std_logic_vector( data_i);
            end if;
            -- direction
            if addr_i = "1" then
                direction <= std_logic_vector( data_i);
            end if;
        end if;

        -- read access to gpio
        -- data
        if addr_i = "0" then
            data_o <= std_logic_vector(port_in_sync);
        end if;
        -- direction
        if addr_i = "1" then
            data_o <= std_logic_vector(direction);
        end if;

        -- outputs
        port_dir <= direction;

        -- sync reset
        if reset_i = '1' then
            direction    <= (others => '1');
            port_in_reg  <= (others => '0');
            port_in_sync <= (others => '0');
            previous_in_reg <= (others => '0');
            interruptFlag <= '0';
        end if;

        if port_in_reg /= previous_in_reg then
            interruptFlag <= '1';
        else
            interruptFlag <= '0';
        end if;

    end process;


end architecture rtl;