LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY io_pin IS
    PORT (
        data_in : IN STD_LOGIC;
        data_out : OUT STD_LOGIC;
        pin : INOUT STD_LOGIC
    );
END io_pin;

ARCHITECTURE arch OF io_pin IS

BEGIN

    data_out <= pin;
    pin <= data_in;

END ARCHITECTURE;