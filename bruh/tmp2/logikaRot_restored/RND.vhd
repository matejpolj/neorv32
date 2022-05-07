

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity RND is
 port (
   clk : in std_logic;
   key : out std_logic_vector(3 downto 0) 
 );
end RND;

architecture RTL of RND is
 signal div : unsigned(3 downto 0) := "0000";
 signal key_counter: integer range 0 to 14;
			
 -- 15 "pseudorandom" key values, 0000 never appears		
 type key_type is array(0 to 14) of std_logic_vector(3 downto 0);
 constant KEYDATA: key_type := (
	     "0011",
		  "0110",
		  "1001",
		  "1100",
		  "1111",
		  "0010",
		  "0101",
		  "1000",
		  "1011",
		  "1110",
		  "0001",
		  "0100",
		  "0111",
		  "1010",
		  "1101"
 );

begin

process(clk)
begin
 if rising_edge(clk) then
  div <= div + 1;
  if div=0 then
	if key_counter < 14 then
		key_counter <= key_counter + 1;
	else
		key_counter <= 0;
	end if;
  end if;
 end if;
end process;

key <= KEYDATA(key_counter);

end RTL;

