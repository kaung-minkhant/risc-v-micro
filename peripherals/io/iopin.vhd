library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity iopin is
  port (
    -- external
    pin : inout std_logic;

    -- data transfer
    data_in : in std_logic;
    data_out : out std_logic;

    -- controls, clock and reset
    dir_control : in std_logic;
    clk : in std_logic;
    reset_n : in std_logic
  );
end iopin;

architecture arch of iopin is
  signal internal_buffer : std_logic := '0';
begin

  BUFFER_PROC : process (clk, dir_control, reset_n)
  begin
    if (reset_n = '0') then
      internal_buffer <= '0';
      data_out <= '0';
    elsif (clk'event and clk = '1') then
      if (dir_control = '0') then
        internal_buffer <= data_in;
        data_out <= pin;
      elsif (dir_control = '1') then
        data_out <= pin;
      end if;
    end if;
  end process;

  OUTPUT_PROC : process (internal_buffer, dir_control)
  begin
    if (dir_control = '0') then
      pin <= internal_buffer;
    end if;
  end process;

end architecture;