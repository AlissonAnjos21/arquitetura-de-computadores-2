library ieee;
use ieee.std_logic_1164.all;

entity portaOr is port(
		a: in std_logic;
		b: in std_logic;
		s: out std_logic);
end portaOr;

architecture arq of portaOr is
begin
	s <= a or b;
end arq;