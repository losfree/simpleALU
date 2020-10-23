LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
entity optrans is
	port(	op		:	in std_logic_vector(10 downto 0);
			arith,logic,sign,shift,arithMode,logicHigh,logicLow,shiftHigh,shiftLow	:	out std_logic);
end entity optrans;

architecture trans of optrans is 
--signal result: std_logic_vector
begin
	process(op)
	begin
		if(op="00000000001")  then				--	add
			arith<='1';
			arithMode<='0';
			sign<='0';
			logic<='0';
			logicHigh<='0';
			logicLow<='0';
			shift<='0';
			shiftHigh<='0';
			shiftLow<='0';
		elsif(op="00000000010")	then			--	sub
			arith<='1';
			arithMode<='1';
			sign<='0';
			logic<='0';
			logicHigh<='0';
			logicLow<='0';
			shift<='0';
			shiftHigh<='0';
			shiftLow<='0';
		elsif(op="00000000100")	then			--	and
			logic<='1';
			logicHigh<='0';
			logicLow<='0';
			arith<='0';
			arithMode<='0';
			sign<='0';
			shift<='0';
			shiftHigh<='0';
			shiftLow<='0';
		elsif(op="00000001000")	then			--	or
			logic<='1';
			logicHigh<='0';
			logicLow<='1';
			arith<='0';
			arithMode<='0';
			sign<='0';
			shift<='0';
			shiftHigh<='0';
			shiftLow<='0';
		elsif(op="00000010000")	then			--	xor
			logic<='1';
			logicHigh<='1';
			logicLow<='0';
			arith<='0';
			arithMode<='0';
			sign<='0';
			shift<='0';
			shiftHigh<='0';
			shiftLow<='0';
		elsif(op="00000100000")	then			--	nor
			logic<='1';
			logicHigh<='1';
			logicLow<='1';
			arith<='0';
			arithMode<='0';
			sign<='0';
			shift<='0';
			shiftHigh<='0';
			shiftLow<='0';
		elsif(op="00001000000")	then			--	slt
			arith<='1';
			arithMode<='1';
			sign<='1';
			logic<='0';
			logicHigh<='0';
			logicLow<='0';
			shift<='0';
			shiftHigh<='0';
			shiftLow<='0';
		elsif(op="00010000000")	then			--	sltu
			arith<='1';
			arithMode<='1';
			sign<='0';
			logic<='0';
			logicHigh<='0';
			logicLow<='0';
			shift<='0';
			shiftHigh<='0';
			shiftLow<='0';
		elsif(op="00100000000")	then			--	sll
			shift<='1';
			shiftHigh<='0';
			shiftLow<='0';
			arith<='0';
			arithMode<='0';
			sign<='0';
			logic<='0';
			logicHigh<='0';
			logicLow<='0';
		elsif(op="01000000000")	then			--	srl
			shift<='1';
			shiftHigh<='0';
			shiftLow<='1';
			arith<='0';
			arithMode<='0';
			sign<='0';
			logic<='0';
			logicHigh<='0';
			logicLow<='0';
		elsif(op="10000000000")	then			--	sra
			shift<='1';
			shiftHigh<='1';
			shiftLow<='0';
			arith<='0';
			arithMode<='0';
			sign<='0';
			logic<='0';
			logicHigh<='0';
			logicLow<='0';
		else
			arith<='0';
			arithMode<='0';
			sign<='0';
			logic<='0';
			logicHigh<='0';
			logicLow<='0';
			shift<='0';
			shiftHigh<='0';
			shiftLow<='0';
		end if;
	end process;
end	trans;
		