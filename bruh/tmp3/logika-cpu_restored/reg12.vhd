

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity reg12 is
 port (
   clk : in std_logic;
   load : in std_logic;
   d : in unsigned(11 downto 0);
   q : out unsigned(11 downto 0) );
end reg12;

architecture RTL of reg12 is
begin

process(clk)
begin
 if rising_edge(clk) then
  if load = '1' then
     q <= d;
  end if;
 end if;
end process;

end RTL;

