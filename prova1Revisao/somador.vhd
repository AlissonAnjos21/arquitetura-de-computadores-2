library ieee;
use ieee.std_logic_1164.all;

entity somador is port(
	a, b, cin: in std_logic;
	r, cout: out std_logic);
end somador;

architecture arq of somador is
begin
	r <= ((not a) and (not b) and cin) or ((not a) and b and (not cin)) or (a and (not b) and (not cin)) or(a and b and cin);
	cout <= (a and b) or (b and cin) or (a and cin);
	
end arq;