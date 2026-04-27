library ieee;
use ieee.std_logic_1164.all;

entity portaAnd is port(
	a: in std_logic;
	b: in std_logic;
	s: out std_logic);
end portaAnd;

architecture arq of portaAnd is
begin
	s <= a and b;
end arq;
