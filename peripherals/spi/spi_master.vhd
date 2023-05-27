------------------------------------------------------------------------------/
-- Description: SPI (Serial Peripheral Interface) Master
--              Creates master based on input configuration.
--              Sends a byte one bit at a time on MOSI
--              Will also receive byte data one bit at a time on MISO.
--              Any data on input byte will be shipped out on MOSI.
--
--              To kick-off transaction, user must pulse i_TX_DV.
--              This module supports multi-byte transmissions by pulsing
--              i_TX_DV and loading up i_TX_Byte when o_TX_Ready is high.
--
--              This module is only responsible for controlling Clk, MOSI, 
--              and MISO.  If the SPI peripheral requires a chip-select, 
--              this must be done at a higher level.
--
-- Note:        clk must be at least 2x faster than i_SPI_Clk
--
-- Generics:    SPI_MODE, can be 0, 1, 2, or 3.  See above.
--              Can be configured in one of 4 modes:
--              Mode | Clock Polarity (CPOL/CKP) | Clock Phase (CPHA)
--               0   |             0             |        0
--               1   |             0             |        1
--               2   |             1             |        0
--               3   |             1             |        1
--              More: https:--en.wikipedia.org/wiki/Serial_Peripheral_Interface_Bus#Mode_numbers
--              CLKS_PER_HALF_BIT - Sets frequency of o_SPI_Clk.  o_SPI_Clk is
--              derived from clk.  Set to integer number of clocks for each
--              half-bit of SPI data.  E.g. 100 MHz clk, CLKS_PER_HALF_BIT = 2
--              would create o_SPI_CLK of 25 MHz.  Must be >= 2
--
------------------------------------------------------------------------------/

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY spi_master IS
    GENERIC (
        SPI_MODE : INTEGER := 0;
        INPUT_CLK : INTEGER := 50e6;
        BUS_CLK : INTEGER := 25e6
        -- CLKS_PER_HALF_BIT : INTEGER := 2
    );
    PORT (
        -- Control/Data Signals,
        reset_n : IN STD_LOGIC; -- FPGA Reset
        clk : IN STD_LOGIC; -- FPGA Clock

        -- TX (MOSI) Signals
        i_TX_Byte : IN STD_LOGIC_VECTOR(7 DOWNTO 0); -- Byte to transmit on MOSI
        i_TX_DV : IN STD_LOGIC; -- Data Valid Pulse with i_TX_Byte
        o_TX_Ready : BUFFER STD_LOGIC; -- Transmit Ready for next byte

        -- RX (MISO) Signals
        o_RX_DV : OUT STD_LOGIC; -- Data Valid pulse (1 clock cycle)
        o_RX_Byte : OUT STD_LOGIC_VECTOR(7 DOWNTO 0); -- Byte received on MISO

        -- SPI Interface
        o_SPI_Clk : OUT STD_LOGIC;
        i_SPI_MISO : IN STD_LOGIC;
        o_SPI_MOSI : OUT STD_LOGIC
    );
END ENTITY spi_master;

ARCHITECTURE RTL OF spi_master IS
    CONSTANT CLKS_PER_HALF_BIT : INTEGER := INPUT_CLK/BUS_CLK;

    -- SPI Interface (All Runs at SPI Clock Domain)
    SIGNAL w_CPOL : STD_LOGIC; -- Clock polarity
    SIGNAL w_CPHA : STD_LOGIC; -- Clock phase
    SIGNAL r_SPI_Clk_Count : INTEGER RANGE 0 TO CLKS_PER_HALF_BIT * 2 - 1;
    SIGNAL r_SPI_Clk : STD_LOGIC;
    SIGNAL r_SPI_Clk_Edges : INTEGER RANGE 0 TO 16;
    SIGNAL r_Leading_Edge : STD_LOGIC;
    SIGNAL r_Trailing_Edge : STD_LOGIC;
    SIGNAL r_TX_DV : STD_LOGIC;
    SIGNAL r_TX_Byte : STD_LOGIC_VECTOR(7 DOWNTO 0);

    SIGNAL r_RX_Bit_Count : unsigned(2 DOWNTO 0);
    SIGNAL r_TX_Bit_Count : unsigned(2 DOWNTO 0);

BEGIN

    -- CPOL: Clock Polarity
    -- CPOL=0 means clock idles at 0, leading edge is rising edge.
    -- CPOL=1 means clock idles at 1, leading edge is falling edge.
    w_CPOL <= '1' WHEN (SPI_MODE = 2) OR (SPI_MODE = 3) ELSE
        '0';

    -- CPHA: Clock Phase
    -- CPHA=0 means the "out" side changes the data on trailing edge of clock
    --              the "in" side captures data on leading edge of clock
    -- CPHA=1 means the "out" side changes the data on leading edge of clock
    --              the "in" side captures data on the trailing edge of clock
    w_CPHA <= '1' WHEN (SPI_MODE = 1) OR (SPI_MODE = 3) ELSE
        '0';

    -- Purpose: Generate SPI Clock correct number of times when DV pulse comes
    Edge_Indicator : PROCESS (clk, reset_n)
    BEGIN
        IF reset_n = '0' THEN
            o_TX_Ready <= '0';
            r_SPI_Clk_Edges <= 0;
            r_Leading_Edge <= '0';
            r_Trailing_Edge <= '0';
            r_SPI_Clk <= w_CPOL; -- assign default state to idle state
            r_SPI_Clk_Count <= 0;
        ELSIF rising_edge(clk) THEN

            -- Default assignments
            r_Leading_Edge <= '0';
            r_Trailing_Edge <= '0';

            IF i_TX_DV = '1' THEN
                o_TX_Ready <= '0';
                r_SPI_Clk_Edges <= 16; -- Total # edges in one byte ALWAYS 16
            ELSIF r_SPI_Clk_Edges > 0 THEN
                o_TX_Ready <= '0';

                IF r_SPI_Clk_Count = CLKS_PER_HALF_BIT * 2 - 1 THEN
                    r_SPI_Clk_Edges <= r_SPI_Clk_Edges - 1;
                    r_Trailing_Edge <= '1';
                    r_SPI_Clk_Count <= 0;
                    r_SPI_Clk <= NOT r_SPI_Clk;
                ELSIF r_SPI_Clk_Count = CLKS_PER_HALF_BIT - 1 THEN
                    r_SPI_Clk_Edges <= r_SPI_Clk_Edges - 1;
                    r_Leading_Edge <= '1';
                    r_SPI_Clk_Count <= r_SPI_Clk_Count + 1;
                    r_SPI_Clk <= NOT r_SPI_Clk;
                ELSE
                    r_SPI_Clk_Count <= r_SPI_Clk_Count + 1;
                END IF;
            ELSE
                o_TX_Ready <= '1';
            END IF;
        END IF;
    END PROCESS Edge_Indicator;

    -- Purpose: Register i_TX_Byte when Data Valid is pulsed.
    -- Keeps local storage of byte in case higher level module changes the data
    Byte_Reg : PROCESS (clk, reset_n)
    BEGIN
        IF reset_n = '0' THEN
            r_TX_Byte <= X"00";
            r_TX_DV <= '0';
        ELSIF rising_edge(clk) THEN
            r_TX_DV <= i_TX_DV; -- 1 clock cycle delay
            IF i_TX_DV = '1' THEN
                r_TX_Byte <= i_TX_Byte;
            END IF;
        END IF;
    END PROCESS Byte_Reg;
    -- Purpose: Generate MOSI data
    -- Works with both CPHA=0 and CPHA=1
    MOSI_Data : PROCESS (clk, reset_n)
    BEGIN
        IF reset_n = '0' THEN
            o_SPI_MOSI <= '0';
            r_TX_Bit_Count <= "111"; -- Send MSB first -- 7
        ELSIF rising_edge(clk) THEN
            -- If ready is high, reset bit counts to default
            IF o_TX_Ready = '1' THEN
                r_TX_Bit_Count <= "111"; -- 7

                -- Catch the case where we start transaction and CPHA = 0
            ELSIF (r_TX_DV = '1' AND w_CPHA = '0') THEN
                o_SPI_MOSI <= r_TX_Byte(7);
                r_TX_Bit_Count <= "110"; -- 6
            ELSIF (r_Leading_Edge = '1' AND w_CPHA = '1') OR (r_Trailing_Edge = '1' AND w_CPHA = '0') THEN
                r_TX_Bit_Count <= r_TX_Bit_Count - 1;
                o_SPI_MOSI <= r_TX_Byte(to_integer(r_TX_Bit_Count));
            END IF;
        END IF;
    END PROCESS MOSI_Data;
    -- Purpose: Read in MISO data.
    MISO_Data : PROCESS (clk, reset_n)
    BEGIN
        IF reset_n = '0' THEN
            o_RX_Byte <= X"00";
            o_RX_DV <= '0';
            r_RX_Bit_Count <= "111"; -- Starts at 7
        ELSIF rising_edge(clk) THEN
            -- Default Assignments
            o_RX_DV <= '0';

            IF o_TX_Ready = '1' THEN -- Check if ready, if so reset count to default
                r_RX_Bit_Count <= "111"; -- Starts at 7
            ELSIF (r_Leading_Edge = '1' AND w_CPHA = '0') OR (r_Trailing_Edge = '1' AND w_CPHA = '1') THEN
                o_RX_Byte(to_integer(r_RX_Bit_Count)) <= i_SPI_MISO; -- Sample data
                r_RX_Bit_Count <= r_RX_Bit_Count - 1;
                IF r_RX_Bit_Count = "000" THEN
                    o_RX_DV <= '1'; -- Byte done, pulse Data Valid
                END IF;
            END IF;
        END IF;
    END PROCESS MISO_Data;
    -- Purpose: Add clock delay to signals for alignment.
    SPI_Clock : PROCESS (clk, reset_n)
    BEGIN
        IF reset_n = '0' THEN
            o_SPI_Clk <= w_CPOL;
        ELSIF rising_edge(clk) THEN
            o_SPI_Clk <= r_SPI_Clk;
        END IF;
    END PROCESS SPI_Clock;

END ARCHITECTURE;