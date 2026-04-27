library ieee;
use ieee.std_logic_1164.all;

entity portaNot is port(
	a: in std_logic;
	s: out std_logic);
end portaNot;

architecture arq of portaNot is
begin
	s <= not a;
end arq;