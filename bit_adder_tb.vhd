library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity bit_adder_tb is
	end entity bit_adder_tb;

architecture architecture_bit_adder_tb of bit_adder_tb is
	signal a_s,b_s,s_s : std_logic_vector(15 downto 0);
	signal cout_s : std_logic;

	component bit_adder is
		port(a : in std_logic_vector(15 downto 0);
		b : in std_logic_vector(15 downto 0);
		s: out std_logic_vector(15 downto 0);
        	cout : out std_logic);
	end component bit_adder;

begin
	map0 : bit_adder port map(a_s,b_s,s_s,cout_s);
    	input_1 : process
    	begin
        	a_s <= "0010111010111011";
		wait for 20 ns;
        	a_s <= "1011110101011111";
        	wait for 20 ns;

        	b_s <= "1010111101010111";
		wait for 20 ns;
        	b_s <= "1101011010101111";
        	wait for 20 ns;
   	end process;
    
end architecture_bit_adder_tb;
