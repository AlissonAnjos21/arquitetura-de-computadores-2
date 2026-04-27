library ieee;
use ieee.std_logic_1164.all;

entity ula4bits is port(
	a, b: in std_logic_vector(3 downto 0);
	op: in std_logic_vector(2 downto 0);
	overflow: out std_logic;
	r: out std_logic_vector(3 downto 0));
end ula4bits;

architecture arq of ula4bits is
	signal fio1, fio2, fio3: std_logic;
begin
	
	u0: work.celula1bit port map(a=>a(0), b=>b(0), op=>op(1 downto 0), negaB=>op(2), cin=>op(2), cout=>fio1, r=>r(0));
	
	u1: work.celula1bit port map(a=>a(1), b=>b(1), op=>op(1 downto 0), negaB=>op(2), cin=>fio1, cout=>fio2, r=>r(1));
	
	u2: work.celula1bit port map(a=>a(2), b=>b(2), op=>op(1 downto 0), negaB=>op(2), cin=>fio2, cout=>fio3, r=>r(2));
	
	u3: work.celulaMostSignificantBit port map(a=>a(3), b=>b(3), op=>op(1 downto 0), negaB=>op(2), cin=>fio3, overflow=>overflow, r=>r(3));
	
end arq;