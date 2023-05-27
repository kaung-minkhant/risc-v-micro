LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY uart_tb IS
END ENTITY uart_tb;

ARCHITECTURE tb OF uart_tb IS
    COMPONENT uart IS
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
    END COMPONENT;

    SIGNAL data_in_tb : STD_LOGIC_VECTOR(31 DOWNTO 0) := x"00000000";
    SIGNAL clk_tb : STD_LOGIC := '0';
    SIGNAL tx_start_tb : STD_LOGIC := '0';
    SIGNAL uart_rx_line_tb : STD_LOGIC := '1';
    SIGNAL uart_tx_line_tb : STD_LOGIC := '1';
    SIGNAL tx_busy_tb, rx_busy_tb, tx_done_tb, rx_done_tb : STD_LOGIC := '1';
    SIGNAL data_out_tb : STD_LOGIC_VECTOR(7 DOWNTO 0) := x"00";
    SIGNAL rx_mode_32_tb : STD_LOGIC := '0';
    SIGNAL frame_error_tb : STD_LOGIC := '0';
    SIGNAL data_out_32_tb : STD_LOGIC_VECTOR(31 DOWNTO 0) := x"00000000";
    SIGNAL signal_source_tb : STD_LOGIC := '0';

    SIGNAL loop_signal_tb : STD_LOGIC;
    PROCEDURE transmit(
        VARIABLE tx_value : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
        SIGNAL tx_done : IN STD_LOGIC;
        SIGNAL data_in : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        SIGNAL rx_mode_32 : OUT STD_LOGIC;
        SIGNAL tx_start : OUT STD_LOGIC;
        VARIABLE mode_32_on : IN STD_LOGIC) IS
    BEGIN
        WAIT FOR 100 ps;
        data_in <= tx_value;
        IF (mode_32_on = '0') THEN
            rx_mode_32 <= '0';
        ELSIF (mode_32_on = '1') THEN
            rx_mode_32 <= '1';
        END IF;

        tx_start <= '0';
        WAIT FOR 100 ps;
        tx_start <= '1';
        WAIT FOR 50 ps;
        tx_start <= '0';
        WAIT UNTIL rising_edge(tx_done);
    END PROCEDURE;

    PROCEDURE transmit_same_twice(
        SIGNAL tx_done : IN STD_LOGIC;
        SIGNAL data_in : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        SIGNAL rx_mode_32 : OUT STD_LOGIC;
        SIGNAL tx_start : OUT STD_LOGIC;
        VARIABLE mode_32 : IN STD_LOGIC
    ) IS
        VARIABLE value : STD_LOGIC_VECTOR(31 DOWNTO 0);
    BEGIN
        value := x"ff11ff35";
        transmit(value, tx_done, data_in, rx_mode_32, tx_start, mode_32);
        value := x"ff11ff35";
        transmit(value, tx_done, data_in, rx_mode_32, tx_start, mode_32);
    END PROCEDURE;

    PROCEDURE transmit_different(
        SIGNAL tx_done : IN STD_LOGIC;
        SIGNAL data_in : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        SIGNAL rx_mode_32 : OUT STD_LOGIC;
        SIGNAL tx_start : OUT STD_LOGIC;
        VARIABLE mode_32 : IN STD_LOGIC
    ) IS
        VARIABLE value : STD_LOGIC_VECTOR(31 DOWNTO 0);
    BEGIN
        value := x"ff11ff35";
        transmit(value, tx_done, data_in, rx_mode_32, tx_start, mode_32);
        value := x"01824f35";
        transmit(value, tx_done, data_in, rx_mode_32, tx_start, mode_32);
    END PROCEDURE;

    PROCEDURE transmit_series(
        VARIABLE data : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
        SIGNAL tx : OUT STD_LOGIC
    ) IS
        CONSTANT one_cycle : TIME := 40 ps;
    BEGIN
        FOR index IN 0 TO 7 LOOP
            tx <= data(index);
            WAIT FOR one_cycle;
        END LOOP;

    END PROCEDURE;

    PROCEDURE framerate_testing(
        SIGNAL tx_signal : OUT STD_LOGIC
    ) IS
        CONSTANT one_cycle : TIME := 40 ps;
        VARIABLE data_to_transmit : STD_LOGIC_VECTOR(7 DOWNTO 0);
    BEGIN
        -- no frame error
        -- idle
        tx_signal <= '1';
        WAIT FOR 100 ps;
        -- start bit
        tx_signal <= '0';
        WAIT FOR one_cycle;
        -- data
        data_to_transmit := "01010101";
        transmit_series(data_to_transmit, tx_signal);
        -- stop bit and idle
        tx_signal <= '1';
        WAIT FOR 300 ps;

        -- start bit frame error
        -- data
        data_to_transmit := "01011101";
        transmit_series(data_to_transmit, tx_signal);
        -- stop bit and idle
        tx_signal <= '1';
        WAIT FOR 300 ps;

        --stop bit frame error
        -- start bit
        tx_signal <= '0';
        WAIT FOR one_cycle;
        -- data
        data_to_transmit := "01010101";
        transmit_series(data_to_transmit, tx_signal);
        WAIT FOR 300 ps;
    END PROCEDURE;

BEGIN
    -- set 'uart_tx_line_tb' for normal testing
    -- set 'signal_source_tb' for frame error testing
    loop_signal_tb <= signal_source_tb;

    DUT : uart
    GENERIC MAP(
        input_clock_frequency => 10e6,
        baudrate => 5e6
    )
    PORT MAP(
        data_in_tb, tx_start_tb, clk_tb, loop_signal_tb, uart_tx_line_tb, tx_busy_tb, rx_busy_tb, tx_done_tb, rx_done_tb, data_out_tb,
        data_out_32_tb, rx_mode_32_tb, frame_error_tb
    );

    clock_gen : PROCESS IS
    BEGIN
        WAIT FOR 10 ps;
        clk_tb <= NOT clk_tb;
    END PROCESS;

    input_gen : PROCESS IS
        VARIABLE value : STD_LOGIC_VECTOR(31 DOWNTO 0);
        VARIABLE mode_32 : STD_LOGIC;
    BEGIN
        mode_32 := '0';
        -- transmit_same_twice(tx_done_tb, data_in_tb, rx_mode_32_tb, tx_start_tb, mode_32);
        framerate_testing(signal_source_tb);
        WAIT FOR 500 ps;
        ASSERT (FALSE) REPORT "Simulation end." SEVERITY failure;
    END PROCESS;

END ARCHITECTURE tb;