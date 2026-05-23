library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity gerbang is
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
end gerbang;

architecture Dataflow of gerbang is

    signal S1, S2, S3, S4, S5, S6, S7, S8 : STD_LOGIC;

begin

    -- Gerbang 1
    S1 <= A and B;

    -- Gerbang 2, inputnya dari output gerbang 1
    S2 <= S1 or A;

    -- Gerbang 3, inputnya dari output gerbang 2
    S3 <= S2 xor B;

    -- Gerbang 4, inputnya dari output gerbang 3
    S4 <= S3 nand A;

    -- Gerbang 5, inputnya dari output gerbang 4
    S5 <= S4 nor B;

    -- Gerbang 6, inputnya dari output gerbang 5
    S6 <= S5 xnor A;

    -- Gerbang 7, inputnya dari output gerbang 6
    S7 <= not S6;

    -- Gerbang 8, inputnya dari output gerbang 7
    S8 <= S7 and B;

    -- Output setiap gerbang
    Y1_AND  <= S1;
    Y2_OR   <= S2;
    Y3_XOR  <= S3;
    Y4_NAND <= S4;
    Y5_NOR  <= S5;
    Y6_XNOR <= S6;
    Y7_NOT  <= S7;
    Y8_AND  <= S8;

end Dataflow;
