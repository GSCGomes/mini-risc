-- Universidade Federal de Minas Gerais
-- Escola de Engenharia
-- Departamento de Engenharia Eletrônica
-- Autoria: Guilherme Gomes, Felipe Freitas, Melissa Monni
library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity micro_controlador is
	port (
		clk : in std_logic;
		rst : in std_logic;

    -- GPIO config
    port_in  : in  std_logic_vector(31 downto 0);
    port_out : out std_logic_vector(31 downto 0);
    port_dir : out std_logic_vector(31 downto 0);

    interFlagTimer0, interFlagTimer1, interFlagGPIO, interFlagUART : in std_logic --temporary remove later

	);
end micro_controlador;

architecture arch of micro_controlador is

     component mini_risc is
        port (
          clk : in std_logic;
          rst : in std_logic;
              leds : out std_logic_vector(9 downto 0);
              display_1 : out std_logic_vector(6 downto 0);
              display_2 : out std_logic_vector(6 downto 0);
              display_3 : out std_logic_vector(6 downto 0);
              display_4 : out std_logic_vector(6 downto 0);
              display_5 : out std_logic_vector(6 downto 0);
              display_6 : out std_logic_vector(6 downto 0);
      
          InterCtrl       : in std_ulogic;   --# Defines Interrupt Mux Origin
          Periferic_addr  : in std_ulogic_vector(4 downto 0); --# Address for periferic 
          IntMask 		: out std_ulogic_vector(4 downto 0); --# Maks for enable or disable interruptions
      
          -- GPIO ports
          GPIO_we_i     : out  std_logic;
          GPIO_data_i   : out  std_ulogic_vector(31 downto 0); -- registradores da cpu que serão escritos e lidos pela GPIO
          GPIO_addr_i   : out  std_ulogic_vector( 0 downto 0);
          GPIO_data_o   : in   std_ulogic_vector(31 downto 0)
          --
      
      
        );
    end component mini_risc;


    component interrupt_ctl is
        generic (
            RESET_ACTIVE_LEVEL : std_ulogic := '1' --# Asynch. reset control level
          );
          port (
            --# {{clocks|}}
            Clock : in std_ulogic; --# System clock
            Reset : in std_ulogic; --# Asynchronous reset
        
            --# {{control|}}
            Int_mask    : in std_ulogic_vector;  --# Set bits correspond to active interrupts
            Int_request : in std_ulogic_vector;  --# Controls used to activate new interrupts
            Pending     : out std_ulogic_vector; --# Set bits indicate which interrupts are pending
            Current     : out std_ulogic_vector; --# Single set bit for the active interrupt
        
            InterCtrl       : out std_ulogic;   --# Defines Interrupt Mux Origin
            Periferic_addr  : out std_ulogic_vector(4 downto 0) --# Address for periferic 
        
          );
    end component;

    component gpio is
          port(
            clk_i    : in  std_logic;
            reset_i  : in  std_logic;
            --
            we_i     : in  std_logic;
            data_i   : in  unsigned(31 downto 0); -- registradores da cpu que serão escritos e lidos pela GPIO
            addr_i   : in  unsigned( 0 downto 0);
            data_o   : out unsigned(31 downto 0);
            --
            port_in  : in  std_logic_vector(31 downto 0);
            port_out : out std_logic_vector(31 downto 0);
            port_dir : out std_logic_vector(31 downto 0);

            interruptFlag : out  std_logic


            
          );
    end component;

    component Timer is
      port(
         clk_i             : in  std_logic;
         reset_i           : in  std_logic;
         we_i              : in  std_logic;
         data_i            : in  unsigned(31 downto 0);
         addr_i            : in  unsigned(0 downto 0);
         data_o            : out unsigned(31 downto 0);

         interruptFlag : out  std_logic
      );

    end component;

    signal IntCtrl : std_ulogic;
    signal perifericAddr : std_ulogic_vector(4 downto 0);
    signal int_mask, int_request, pending_int, current_int : std_ulogic_vector(7 downto 0);

    signal GPIO_we_i    : std_logic;
    signal GPIO_data_i  : unsigned(31 downto 0); -- registradores da cpu que serão escritos e lidos pela GPIO
    signal GPIO_addr_i  : unsigned( 0 downto 0);
    signal GPIO_data_o  : unsigned(31 downto 0);

    signal timer0_we_i    : std_logic;
    signal timer0_data_i  : unsigned(31 downto 0); -- registradores da cpu que serão escritos e lidos pelo timer 0
    signal timer0_addr_i  : unsigned( 0 downto 0);
    signal timer0_data_o  : unsigned(31 downto 0);

    signal timer1_we_i    : std_logic;
    signal timer1_data_i  : unsigned(31 downto 0); -- registradores da cpu que serão escritos e lidos pelo timer 1
    signal timer1_addr_i  : unsigned( 0 downto 0);
    signal timer1_data_o  : unsigned(31 downto 0);

    -- signal interFlagTimer0, interFlagTimer1, interFlagGPIO, interFlagUART : std_logic;

begin

    timer0_we_i <= '1';
    timer0_data_i <= X"1000000000"; -- check sintax;
    timer0_addr_i <= "0";

    timer1_we_i <= '1';
    timer1_data_i <= X"5000000000"; -- check sintax;
    timer1_addr_i <= B"0";

    -- int_mask <= (7 downto 5 => '0', others => '1');

    int_request <= (
      0 => interFlagTimer0, -- Highest priority
      1 => interFlagTimer1,
      2 => interFlagGPIO,
      3 => interFlagUART, -- Lowest priority
    others => '0');


    u_mini_risc : mini_risc port map (clk, rst, IntCtrl, perifericAdd, int_mask, GPIO_we_i, GPIO_data_i, GPIO_addr_i, GPIO_data_o);
    u_interrupt_ctl : interrupt_ctl port map (clk, rst, int_mask, int_request, pending_int, current_int, IntCtrl, perifericAdd);

    -- u_timer0 : port map (clk, rst, timer0_we_i, timer0_data_i, timer0_addr_i, timer0_data_o, interFlagTimer0);
    -- u_timer1 : port map (clk, rst, timer1_we_i, timer1_data_i, timer1_addr_i, timer1_data_o, interFlagTimer1);

    -- u_gpio : gpio port map (clk, rst, GPIO_we_i, GPIO_data_i, GPIO_addr_i, GPIO_data_o, port_in, port_out, port_dir, interFlagGPIO)

end arch;
