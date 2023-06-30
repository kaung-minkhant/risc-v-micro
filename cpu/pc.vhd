library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pc is
  generic (
    DATA_WIDTH : integer := 32
  );
  port (
    -- addresses
    input_addr : in std_logic_vector(DATA_WIDTH - 1 downto 0);
    inst_addr : out std_logic_vector(DATA_WIDTH - 1 downto 0)
  );
end pc;

architecture arch of pc is

begin

end architecture;