library ieee;
use ieee.std_logic_1164.all;

entity portaXor is port(
	a, b: in std_logic;
	s: out std_logic);
end portaXor;

architecture arq of portaXor is
begin
	s <= a xor b;
end arq;