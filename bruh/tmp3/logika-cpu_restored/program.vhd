library ieee, work;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.procpak.all;

entity program is
    Port ( clk : in  STD_LOGIC;
	        adr : in  unsigned (7 downto 0);
           din : in  unsigned (11 downto 0);
           dout : out  unsigned (11 downto 0);
           we : in  STD_LOGIC
           );
end program;

architecture Behavioral of program is
  
 type memory is array(0 to 255) of unsigned(11 downto 0);
 signal m : memory := (
-- sem pisete vas program
0=> lda & x"08",
1=> sta & x"07",
2=> inp & x"00",
3=> add & x"07",
4=> sta & x"07",
5=> outp & x"00",
6=> jmp & x"02",
7=> x"000",
8=> x"000",
-- tu se konca vas program
others => x"000"
);  

begin

 p: process(clk)
 begin
  if rising_edge(clk) then
	dout <= m(to_integer(adr));
   if we = '1' then
     m(to_integer(adr)) <= din;
   end if;
  end if;
 end process;

end Behavioral;
