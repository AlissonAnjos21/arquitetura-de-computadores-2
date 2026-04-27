library ieee;
use ieee.std_logic_1164.all;

entity celulaMostSignificantBit is port(
	a, b, cin, negaB: in std_logic;
	op: in std_logic_vector(1 downto 0);
	r, overflow: out std_logic);
end celulaMostSignificantBit;

architecture arq of celulaMostSignificantBit is
 signal fio0, fio1, fio2, fio3: std_logic;
begin
	
	u0: work.portaAnd port map(a=>a, b=>b, s=>fio0);
	
	u1: work.portaOr port map(a=>a, b=>b, s=>fio1);
	
	u2: work.somadorSubtrator port map(a=>a, b=>b, cin=>cin, negaB=>negaB, r=>fio2, cout=>fio3);
	
	u3: work.multiplexador port map(e0=>fio0, e1=>fio1, e2=>fio2, seletor=>op, s=>r);
	
	u4: work.portaXor port map(a=>cin, b=>fio3, s=>overflow);
	
end arq;