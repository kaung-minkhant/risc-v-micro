library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity register_file is
  generic (
    DATA_WIDTH : integer := 32
  );
  port (
    -- rs1 
    rs1 : in std_logic_vector(4 downto 0);
    rs1_data : out std_logic_vector(DATA_WIDTH - 1 downto 0);

    -- rs2
    rs2 : in std_logic_vector(4 downto 0);
    rs2_data : out std_logic_vector(DATA_WIDTH - 1 downto 0);

    -- rd
    rd : in std_logic_vector(4 downto 0);
    rd_data : in std_logic_vector(DATA_WIDTH - 1 downto 0);

    -- controls
    rw : in std_logic;

    -- clock and resets
    clk : in std_logic;
    reset_n : in std_logic
  );
end register_file;

architecture arch of register_file is
  type t_REGISTER_FILE is array (0 to 31) of std_logic_vector(DATA_WIDTH - 1 downto 0);
  signal register_file : t_REGISTER_FILE := (others => (others => '0'));
begin

  WRITE_PROC : process (clk, reset_n, rw)
  begin
    if (reset_n = '0') then
      register_file <= (others => (others => '0'));
    elsif (clk'event and clk = '1') then
      if (rw = '1') then
        register_file(to_integer(unsigned(rd))) <= rd_data;
      end if;
    end if;
  end process;

  rs1_data <= register_file(to_integer(unsigned(rs1)));
  rs2_data <= register_file(to_integer(unsigned(rs2)));

end architecture;