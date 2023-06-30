library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu is
  generic (
    DATA_WIDTH : integer := 4;
    OPERATION_WIDTH : integer := 3;
    CONTROL_OFFSET : integer := 2
  );
  port (
    -- input data
    A : in std_logic_vector(DATA_WIDTH - 1 downto 0);
    B : in std_logic_vector(DATA_WIDTH - 1 downto 0);

    -- output data
    result : out std_logic_vector(DATA_WIDTH - 1 downto 0);
    cout : out std_logic;

    -- controls
    sub : in std_logic;
    operation : in std_logic_vector(OPERATION_WIDTH + CONTROL_OFFSET - 1 downto 0)
  );
end alu;

architecture arch of alu is
  component one_bit_alu is
    generic (
      OPERATION_WIDTH : integer := 3
    );
    port (
      -- inputs
      a, b, cin : in std_logic;
      less : in std_logic;

      -- outputs
      result : out std_logic;
      cout : out std_logic;
      set : out std_logic;

      -- controls
      operation : in std_logic_vector(OPERATION_WIDTH - 1 downto 0);
      binvert : in std_logic;
      ainvert : in std_logic
    );
  end component;

  constant AND_OP : integer := 0;
  constant OR_OP : integer := 1;
  constant ADD_OP : integer := 2;
  constant SUB_OP : integer := 3;
  constant NOR_OP : integer := 4;
  constant SLT_OP : integer := 5;
  signal carry_buffer : std_logic_vector(DATA_WIDTH downto 0) := (others => '0');
  signal bnegate, ainvert : std_logic := '0';
  signal op_code : std_logic_vector(OPERATION_WIDTH - 1 downto 0) := (others => '0');
  signal set_buff : std_logic_vector(DATA_WIDTH - 1 downto 0) := (others => '0');
begin

  ainvert <= operation(OPERATION_WIDTH + CONTROL_OFFSET - 1);
  bnegate <= operation(OPERATION_WIDTH + CONTROL_OFFSET - 2);
  op_code <= operation(OPERATION_WIDTH - 1 downto 0);

  one_bit_alu_least : one_bit_alu generic map(
    OPERATION_WIDTH => OPERATION_WIDTH
  )
  port map(
    a => A(0), b => B(0), cin => bnegate, result => result(0), cout => carry_buffer(1),
    operation => op_code, binvert => bnegate, ainvert => ainvert, less => set_buff(DATA_WIDTH - 1), set => set_buff(0)
  );
  one_bit_alu_most : one_bit_alu generic map(
    OPERATION_WIDTH => OPERATION_WIDTH
  )
  port map(
    a => A(DATA_WIDTH - 1), b => B(DATA_WIDTH - 1), cin => carry_buffer(DATA_WIDTH - 1), result => result(DATA_WIDTH - 1), cout => carry_buffer(DATA_WIDTH),
    operation => op_code, binvert => bnegate, ainvert => ainvert, less => '0', set => set_buff(DATA_WIDTH - 1)
  );
  ONE_BIT_ALU_GEN : for i in 1 to DATA_WIDTH - 2 generate
    one_bit_aluX : one_bit_alu generic map(
      OPERATION_WIDTH => OPERATION_WIDTH
    )
    port map(
      a => A(i), b => B(i), cin => carry_buffer(i), result => result(i), cout => carry_buffer(i + 1),
      operation => op_code, binvert => bnegate, ainvert => ainvert, less => '0', set => set_buff(i)
    );
  end generate;

  cout <= carry_buffer(DATA_WIDTH);
end architecture;