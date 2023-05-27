LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY portA IS
    PORT (
        port_data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        pin_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        pinA : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END portA;

ARCHITECTURE arch OF portA IS
    COMPONENT io_pin IS
        PORT (
            data_in : IN STD_LOGIC;
            data_out : OUT STD_LOGIC;
            pin : INOUT STD_LOGIC
        );
    END COMPONENT;
BEGIN
    portA_1 : io_pin
    PORT MAP(port_data(0), pin_out(0), pinA(0));
    portA_2 : io_pin
    PORT MAP(port_data(1), pin_out(1), pinA(1));
    portA_3 : io_pin
    PORT MAP(port_data(2), pin_out(2), pinA(2));
    portA_4 : io_pin
    PORT MAP(port_data(3), pin_out(3), pinA(3));
    portA_5 : io_pin
    PORT MAP(port_data(4), pin_out(4), pinA(4));
    portA_6 : io_pin
    PORT MAP(port_data(5), pin_out(5), pinA(5));
    portA_7 : io_pin
    PORT MAP(port_data(6), pin_out(6), pinA(6));
    portA_8 : io_pin
    PORT MAP(port_data(7), pin_out(7), pinA(7));

END ARCHITECTURE;