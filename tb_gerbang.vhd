library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity tb_gerbang is
end tb_gerbang;

architecture behavior of tb_gerbang is

    component gerbang
        Port (
            A : in STD_LOGIC;
            B : in STD_LOGIC;

            Y1_AND  : out STD_LOGIC;
            Y2_OR   : out STD_LOGIC;
            Y3_XOR  : out STD_LOGIC;
            Y4_NAND : out STD_LOGIC;
            Y5_NOR  : out STD_LOGIC;
            Y6_XNOR : out STD_LOGIC;
            Y7_NOT  : out STD_LOGIC;
            Y8_AND  : out STD_LOGIC
        );
    end component;

    signal A, B : STD_LOGIC := '0';

    signal Y1_AND  : STD_LOGIC;
    signal Y2_OR   : STD_LOGIC;
    signal Y3_XOR  : STD_LOGIC;
    signal Y4_NAND : STD_LOGIC;
    signal Y5_NOR  : STD_LOGIC;
    signal Y6_XNOR : STD_LOGIC;
    signal Y7_NOT  : STD_LOGIC;
    signal Y8_AND  : STD_LOGIC;

begin

    UUT: gerbang
        port map (
            A => A,
            B => B,

            Y1_AND  => Y1_AND,
            Y2_OR   => Y2_OR,
            Y3_XOR  => Y3_XOR,
            Y4_NAND => Y4_NAND,
            Y5_NOR  => Y5_NOR,
            Y6_XNOR => Y6_XNOR,
            Y7_NOT  => Y7_NOT,
            Y8_AND  => Y8_AND
        );

    stim_proc: process
    begin

        A <= '0'; B <= '0';
        wait for 100 ns; -- Kombinasi 00

        A <= '0'; B <= '1';
        wait for 100 ns; -- Kombinasi 01

        A <= '1'; B <= '0';
        wait for 100 ns; -- Kombinasi 10

        A <= '1'; B <= '1';
        wait for 100 ns; -- Kombinasi 11

        wait;

    end process;

end behavior;
