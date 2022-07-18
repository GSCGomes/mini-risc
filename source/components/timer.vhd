library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;
 
entity Timer is
   port(
      clk_i             : in  std_logic;
      reset_i           : in  std_logic;
      we_i              : in  std_logic;
      data_i            : in  unsigned(31 downto 0);
      addr_i            : in  unsigned(0 downto 0);
      data_o            : out unsigned(31 downto 0);

      interruptFlag : out  std_logic
      
      );

end entity Timer;

architecture Behave of Timer is
   signal sample   : std_logic;
   signal reset    : std_logic;
   
   signal cnt      : unsigned(63 downto 0);
   signal cnt_smp  : unsigned(63 downto 0);
begin
   reset  <= '1' when (we_i='1' and data_i(0)='1') else '0';
   sample <= '1' when (we_i='1' and data_i(1)='1') else '0';
    

   -- Carry generation
   do_timer:
   process (clk_i)
   begin
      if rising_edge(clk_i) then
         if reset_i='1' or reset='1' then
            cnt <= (others => '0');
            cnt_smp <= (others => '0');
         else
            cnt <= cnt+1;
            if sample='1' then
               -- report "sampling" severity failure;
               cnt_smp <= cnt;
            end if;
         end if; -- else reset_i='1'
      end if; -- rising_edge(clk_i)
   end process do_timer;

   data_o <= cnt_smp(31 downto  0) when to_01(addr_i)="0" else
             cnt_smp(63 downto 32);

   interruptFlag <= cnt_smp(31) when to_01(addr_i)="0" else
             cnt_smp(63);

end architecture Behave; -- Entity: Timer
