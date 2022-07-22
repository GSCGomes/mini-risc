library ieee;
use ieee.std_logic_1164.all;

entity interrupt_ctl is
  generic (
    RESET_ACTIVE_LEVEL : std_ulogic := '1' --# Asynch. reset control level
  );
  port (
    --# {{clocks|}}
    Clock : in std_ulogic; --# System clock
    Reset : in std_ulogic; --# Asynchronous reset

    --# {{control|}}
    Int_mask    : in  std_logic_vector(3 downto 0);  --# Set bits correspond to active interrupts
    Int_request : in  std_logic_vector(3 downto 0);  --# Controls used to activate new interrupts
    Pending     : out std_logic_vector(3 downto 0); --# Set bits indicate which interrupts are pending
    Current     : out std_logic_vector(3 downto 0); --# Single set bit for the active interrupt

    InterCtrl       : out std_logic;   --# Defines Interrupt Mux Origin
    Periferic_addr  : out std_logic_vector(3 downto 0) --# Address for periferic 

  );
end entity;

architecture rtl of interrupt_ctl is
  signal pending_loc, current_loc : std_logic_vector(Int_request'range);
  signal interrupt_loc : std_ulogic;
  signal perifericAddr : std_logic_vector(3 downto 0);

  -- Priority decoder
  -- Input is a vector of all pending interrupts. Result is a vector with just the
  -- highest priority interrupt bit set.
  function priority_decode(pending : std_logic_vector) return std_logic_vector is
    variable result : std_logic_vector(pending'range);
    variable or_chain : std_ulogic;
  begin

   -- Lowest bit has highest priority
    result(pending'low) := pending(pending'low);
    or_chain := result(pending'low);

    -- Loop through looking for the highest priority interrupt that is pending
    for i in pending'low + 1 to pending'high loop
      if pending(i) = '1' and or_chain = '0' then
        result(i) := '1';
      else
        result(i) := '0';
      end if;

      or_chain := or_chain or pending(i);
    end loop;

    return result;
  end function;

  -- OR-reduce for compatability with VHDL-93
  function or_reduce(vec: std_logic_vector) return std_ulogic is
    variable or_chain : std_ulogic;
  begin
    or_chain := '0';
    for i in vec'range loop
      or_chain := or_chain or vec(i);
    end loop;

    return or_chain;
  end function;

begin

  ic: process(Clock, Reset) is
    variable clear_int_n, pending_v, current_v : std_logic_vector(pending'range);
    variable interrupt_v : std_ulogic;
  begin
    assert Int_request'length >= 2
      report "Interrupt priority decoder must have at least two inputs"
      severity failure;

    assert Int_mask'length = Int_request'length
      report "Int_mask length must match Int_request" severity failure;

    assert Pending'length = Int_request'length
      report "Pending length must match Int_request" severity failure;

    assert Current'length = Int_request'length
      report "Current length must match Int_request" severity failure;


    if Reset = RESET_ACTIVE_LEVEL then
      pending_loc <= (others => '0');
      current_loc <= (others => '0');
      interrupt_loc <= '0';
    elsif rising_edge(Clock) then

      -- Keep track of pending interrupts while disabling inactive interrupts
      -- and clearing acknowledged interrupts.
      pending_v := (Int_request or pending_loc) and Int_mask and clear_int_n;
      pending_loc <= pending_v;

      -- Determine the active interrupt from among those pending
      current_v := priority_decode(pending_v);

      -- Flag when any active interrupt is pending
      interrupt_v := or_reduce(current_v);
      interrupt_loc <= interrupt_v;
      InterCtrl <= interrupt_v; -- checks for pending interruption


      if interrupt_loc = '0' or (interrupt_loc = '1') then
        -- Update current interrupt
        current_loc <= current_v;

        case(current_loc) is -- hard coded case for getting periferic addres, our project has 4 periferics
          when "0000" => -- timer0
              perifericAddr <= "0000";
          when "0001" => -- timer1
              perifericAddr <= "0001";
          when "0010" => -- gpio
              perifericAddr <= "0010";
          when "0011" => -- uart
              perifericAddr <= "0011";        
          when others => -- Sub
              perifericAddr <= "1111";
      end case;

      end if;

    end if;
  end process;

  Periferic_addr <= perifericAddr;
  Current <= current_loc;
  Pending <= pending_loc;
end architecture;
