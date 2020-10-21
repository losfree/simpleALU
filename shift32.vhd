LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
entity shift32 is
	port(	shiftHigh,shiftLow		:	in std_logic;
			A	:	in std_logic_vector(31 downto 0);
			shiftOut	:	out std_logic_vector(31 downto 0));
end entity shift32;
architecture rtl of shift32 is
begin
	process(shiftHigh,shiftLow,A)
	begin
		if(shiftHigh = '0' and shiftLow = '0') then		--	sll
			shiftOut<=std_logic_vector((A) SLL 2);
		elsif(shiftHigh = '0' and shiftLow = '1') then	--	srl
			shiftOut<=std_logic_vector(unsigned(A) srl 2) ;
		elsif(shiftHigh = '1' and shiftLow = '0') then	--	sra
			shiftOut<=std_logic_vector(unsigned(A) SRA 2);
		else
			shiftOut<="00000000000000000000000000000000";
		end if;
	end process;
end architecture rtl;