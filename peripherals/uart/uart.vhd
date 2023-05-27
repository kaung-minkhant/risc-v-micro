LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY uart IS
    GENERIC (
        input_clock_frequency : NATURAL := 10e6;
        baudrate : NATURAL := 10e5
    );
    PORT (
        data_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        tx_start, clk : IN STD_LOGIC;
        uart_rx_line : IN STD_LOGIC;
        uart_tx_line : OUT STD_LOGIC;
        tx_busy, rx_busy, tx_done, rx_done : OUT STD_LOGIC;
        data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        data_out_32 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        rx_mode_32 : IN STD_LOGIC;
        frame_error : OUT STD_LOGIC
    );
END ENTITY uart;

ARCHITECTURE rtl OF uart IS
    CONSTANT count_per_bit : NATURAL := input_clock_frequency/baudrate;
    COMPONENT uart_tx IS
        GENERIC (
            count_per_bit : NATURAL := 20 -- clock per bit
        );
        PORT (
            clk, send : IN STD_LOGIC;
            data_in : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            tx_busy, tx, tx_done : OUT STD_LOGIC
        );
    END COMPONENT;

    COMPONENT uart_rx IS
        GENERIC (
            count_per_bit : NATURAL := 20 -- clock per bit
        );
        PORT (
            rx, clk : IN STD_LOGIC;
            data_out : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
            data_out_32 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            rx_busy, rx_done : OUT STD_LOGIC;
            mode32 : IN STD_LOGIC;
            frame_error : OUT STD_LOGIC
        );
    END COMPONENT;
BEGIN

    tx_u : uart_tx
    GENERIC MAP(
        count_per_bit => count_per_bit
    )
    PORT MAP(
        clk => clk, send => tx_start, data_in => data_in,
        tx_busy => tx_busy, tx => uart_tx_line, tx_done => tx_done
    );

    rx_u : uart_rx
    GENERIC MAP(
        count_per_bit => count_per_bit
    )
    PORT MAP(
        rx => uart_rx_line, clk => clk, data_out => data_out,
        rx_busy => rx_busy, rx_done => rx_done, data_out_32 => data_out_32, mode32 => rx_mode_32, frame_error => frame_error
    );

END ARCHITECTURE rtl;