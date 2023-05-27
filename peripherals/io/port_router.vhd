LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY port_router IS
    PORT (
        dirA_control : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        portA_in : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        pinA_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        pinA : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);

        uart_tx1 : IN STD_LOGIC;
        uart_rx1 : BUFFER STD_LOGIC;

        alternateA_control : IN STD_LOGIC_VECTOR(7 DOWNTO 0);

        -- alternateA : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        -- alternateA_control : IN STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END port_router;

ARCHITECTURE arch OF port_router IS

    COMPONENT portA IS
        PORT (
            port_data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
            pin_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
            pinA : INOUT STD_LOGIC_VECTOR(7 DOWNTO 0)
        );
    END COMPONENT;

    SIGNAL portA_data : STD_LOGIC_VECTOR(7 DOWNTO 0);
    SIGNAL alternateA : STD_LOGIC_VECTOR(1 DOWNTO 0);
BEGIN

    -- alternate function constructions
    -- alternateA <= uart_tx & uart_rx;

    -- port A
    PORT_A : portA
    PORT MAP(portA_data, pinA_out, pinA);

    portA_data(0) <= uart_tx1 WHEN alternateA_control(0) = '1' ELSE
                    'Z' WHEN dirA_control(0) = '1' ELSE
                    portA_in(0);
    portA_data(1) <= uart_rx1 when alternateA_control(0) = '1' else
                    'Z' WHEN dirA_control(1) = '1' ELSE
                    portA_in(1);
    portA_data(2) <= 'Z' WHEN dirA_control(2) = '1' ELSE
    portA_in(2);
    portA_data(3) <= 'Z' WHEN dirA_control(3) = '1' ELSE
    portA_in(3);
    portA_data(4) <= 'Z' WHEN dirA_control(4) = '1' ELSE
    portA_in(4);
    portA_data(5) <= 'Z' WHEN dirA_control(5) = '1' ELSE
    portA_in(5);
    portA_data(6) <= 'Z' WHEN dirA_control(6) = '1' ELSE
    portA_in(6);
    portA_data(7) <= 'Z' WHEN dirA_control(7) = '1' ELSE
    portA_in(7);

END ARCHITECTURE;