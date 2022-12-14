library ieee;
use ieee.std_logic_1164.all;

entity bit_adder is
	port(a : in std_logic_vector(15 downto 0);
	b :in std_logic_vector(15 downto 0);
    	s : out std_logic_vector(15 downto 0);
    	cout : out std_logic);
end entity bit_adder;

architecture architecture_adder of bit_adder is
	component fa is
        port( a , b , cin : in std_logic;
              s,cout : out std_logic);
	end component fa;
    
   	-- Intermediate Carry declaration
	signal carry : std_logic_vector(15 downto 0);
    	signal result : std_logic;


begin
    	-- Port Mapping Full Adder 16times
    	carry(0) <= '0';
    	FA1 : fa port map(a(0),b(0),carry(0),s(0),carry(1));
    	FA2 : fa port map(a(1),b(1),carry(1),s(1),carry(2));
    	FA3 : fa port map(a(2),b(2),carry(2),s(2),carry(3));
	FA4 : fa port map(a(3),b(3),carry(3),s(3),carry(4));
	FA5 : fa port map(a(4),b(4),carry(4),s(4),carry(5));
	FA6 : fa port map(a(5),b(5),carry(5),s(5),carry(6));
    	FA7 : fa port map(a(6),b(6),carry(6),s(6),carry(7));
    	FA8 : fa port map(a(7),b(7),carry(7),s(7),carry(8));
    	FA9 : fa port map(a(8),b(8),carry(8),s(8),carry(9));
    	FA10 : fa port map(a(9),b(9),carry(9),s(9),carry(10));
    	FA11 : fa port map(a(10),b(10),carry(10),s(10),carry(11));
    	FA12 : fa port map(a(11),b(11),carry(11),s(11),carry(12));
    	FA13 : fa port map(a(12),b(12),carry(12),s(12),carry(13));
    	FA14 : fa port map(a(13),b(13),carry(13),s(13),carry(14));
    	FA15 : fa port map(a(14),b(14),carry(14),s(14),carry(15));
    	FA16 : fa port map(a(15),b(15),carry(15),s(15),result);
    	cout <= result;

end architecture_adder;
