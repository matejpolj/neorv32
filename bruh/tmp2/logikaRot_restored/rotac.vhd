library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity rotac is
 port (
   clk : in std_logic;
   rot : in unsigned(1 downto 0);
   bcd : out unsigned(3 downto 0) );
end rotac;

architecture RTL of rotac is

begin


end RTL;