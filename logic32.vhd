LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
entity logic32 is
	port(	logicHigh,logicLow		:	in std_logic;
			A,B	:	in std_logic_vector(31 downto 0);
			logicOut	:	out std_logic_vector(31 downto 0));
end entity logic32;

architecture rtl of logic32 is 
component logic
	port(logicHigh,logicLow,A,B	:	in std_logic;
			Cout	:	out std_logic);
end component logic;
begin
	f0      :       logic port map  (logicHigh=>logicHigh,logicLow=>logicLow,A=>A(0),B=>B(0),Cout=>logicOut(0));
	f1      :       logic port map  (logicHigh=>logicHigh,logicLow=>logicLow,A=>A(1),B=>B(1),Cout=>logicOut(1));
	f2      :       logic port map  (logicHigh=>logicHigh,logicLow=>logicLow,A=>A(2),B=>B(2),Cout=>logicOut(2));
	f3      :       logic port map  (logicHigh=>logicHigh,logicLow=>logicLow,A=>A(3),B=>B(3),Cout=>logicOut(3));
	f4      :       logic port map  (logicHigh=>logicHigh,logicLow=>logicLow,A=>A(4),B=>B(4),Cout=>logicOut(4));
	f5      :       logic port map  (logicHigh=>logicHigh,logicLow=>logicLow,A=>A(5),B=>B(5),Cout=>logicOut(5));
	f6      :       logic port map  (logicHigh=>logicHigh,logicLow=>logicLow,A=>A(6),B=>B(6),Cout=>logicOut(6));
	f7      :       logic port map  (logicHigh=>logicHigh,logicLow=>logicLow,A=>A(7),B=>B(7),Cout=>logicOut(7));
	f8      :       logic port map  (logicHigh=>logicHigh,logicLow=>logicLow,A=>A(8),B=>B(8),Cout=>logicOut(8));
	f9      :       logic port map  (logicHigh=>logicHigh,logicLow=>logicLow,A=>A(9),B=>B(9),Cout=>logicOut(9));
	f10     :       logic port map  (logicHigh=>logicHigh,logicLow=>logicLow,A=>A(10),B=>B(10),Cout=>logicOut(10));
	f11     :       logic port map  (logicHigh=>logicHigh,logicLow=>logicLow,A=>A(11),B=>B(11),Cout=>logicOut(11));
	f12     :       logic port map  (logicHigh=>logicHigh,logicLow=>logicLow,A=>A(12),B=>B(12),Cout=>logicOut(12));
	f13     :       logic port map  (logicHigh=>logicHigh,logicLow=>logicLow,A=>A(13),B=>B(13),Cout=>logicOut(13));
	f14     :       logic port map  (logicHigh=>logicHigh,logicLow=>logicLow,A=>A(14),B=>B(14),Cout=>logicOut(14));
	f15     :       logic port map  (logicHigh=>logicHigh,logicLow=>logicLow,A=>A(15),B=>B(15),Cout=>logicOut(15));
	f16     :       logic port map  (logicHigh=>logicHigh,logicLow=>logicLow,A=>A(16),B=>B(16),Cout=>logicOut(16));
	f17     :       logic port map  (logicHigh=>logicHigh,logicLow=>logicLow,A=>A(17),B=>B(17),Cout=>logicOut(17));
	f18     :       logic port map  (logicHigh=>logicHigh,logicLow=>logicLow,A=>A(18),B=>B(18),Cout=>logicOut(18));
	f19     :       logic port map  (logicHigh=>logicHigh,logicLow=>logicLow,A=>A(19),B=>B(19),Cout=>logicOut(19));
	f20     :       logic port map  (logicHigh=>logicHigh,logicLow=>logicLow,A=>A(20),B=>B(20),Cout=>logicOut(20));
	f21     :       logic port map  (logicHigh=>logicHigh,logicLow=>logicLow,A=>A(21),B=>B(21),Cout=>logicOut(21));
	f22     :       logic port map  (logicHigh=>logicHigh,logicLow=>logicLow,A=>A(22),B=>B(22),Cout=>logicOut(22));
	f23     :       logic port map  (logicHigh=>logicHigh,logicLow=>logicLow,A=>A(23),B=>B(23),Cout=>logicOut(23));
	f24     :       logic port map  (logicHigh=>logicHigh,logicLow=>logicLow,A=>A(24),B=>B(24),Cout=>logicOut(24));
	f25     :       logic port map  (logicHigh=>logicHigh,logicLow=>logicLow,A=>A(25),B=>B(25),Cout=>logicOut(25));
	f26     :       logic port map  (logicHigh=>logicHigh,logicLow=>logicLow,A=>A(26),B=>B(26),Cout=>logicOut(26));
	f27     :       logic port map  (logicHigh=>logicHigh,logicLow=>logicLow,A=>A(27),B=>B(27),Cout=>logicOut(27));
	f28     :       logic port map  (logicHigh=>logicHigh,logicLow=>logicLow,A=>A(28),B=>B(28),Cout=>logicOut(28));
	f29     :       logic port map  (logicHigh=>logicHigh,logicLow=>logicLow,A=>A(29),B=>B(29),Cout=>logicOut(29));
	f30     :       logic port map  (logicHigh=>logicHigh,logicLow=>logicLow,A=>A(30),B=>B(30),Cout=>logicOut(30));
	f31     :       logic port map  (logicHigh=>logicHigh,logicLow=>logicLow,A=>A(31),B=>B(31),Cout=>logicOut(31));
end rtl;