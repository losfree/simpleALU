LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;
entity alu32 is
	port(A,B	:	in std_logic_vector(31 downto 0);
			op	:	in std_logic_vector(10 downto 0);
			Carryout,Overflow,Zero:	out std_logic;
			output	:	out std_logic_vector(31 downto 0));
end entity alu32;
architecture rtl of alu32 is
component optrans
	port(	op		:	in std_logic_vector(10 downto 0);
			arith,logic,sign,shift	:	out std_logic;
			arithMode,logicHigh,logicLow,shiftHigh,shiftLow	:	out std_logic);
end component optrans;
component fd32
	port(A,B	:	in std_logic_vector(31 downto 0);
			sign,mode	:	in std_logic;
			Overflow,Carryout	:	out std_logic;
			S	:	out std_logic_vector(31 downto 0));
end component fd32;
component logic32
	port(	logicHigh,logicLow		:	in std_logic;
			A,B	:	in std_logic_vector(31 downto 0);
			logicOut	:	out std_logic_vector(31 downto 0));
end component logic32;
component shift32
	port(	shiftHigh,shiftLow		:	in std_logic;
			A	:	in std_logic_vector(31 downto 0);
			shiftOut	:	out std_logic_vector(31 downto 0));
end component shift32;
signal sarith,sarithMode,ssign,slogic,slogicHigh,slogicLow,sshift,sshiftHigh,sshiftLow,szero	:	std_logic;
signal arithResult,logicResult,shiftResult	:	std_logic_vector(31 downto 0);
begin
	f0	:	optrans 	port	map	(op=>op,arith=>sarith,arithMode=>sarithMode,sign=>ssign,logic=>slogic,logicHigh=>slogicHigh,logicLow=>slogicLow,shift=>sshift,shiftHigh=>sshiftHigh,shiftLow=>sshiftLow);
	f1	:	fd32		port	map	(A=>A,B=>B,mode=>sarithMode,sign=>ssign,Carryout=>Carryout,Overflow=>Overflow,s=>arithResult);
	f2	:	logic32	port	map	(A=>A,B=>B,logicHigh=>slogicHigh,logicLow=>slogicLow,logicOut=>logicResult);
	f3	:	shift32 	port 	map	(A=>A,shiftHigh=>sshiftHigh,shiftLow=>sshiftLow,shiftOut=>shiftResult);
	
	process(A,B,op,sarith,arithResult,slogic,logicResult,sshift,shiftResult)
	begin
		if(sarith = '1') then
			output<=arithResult;
			if(arithResult = "00000000000000000000000000000000") then 
				szero<='1';
			else
				szero<='0';
			end if;
		elsif(slogic = '1') then
			output<=logicResult;
			if(logicResult = "00000000000000000000000000000000") then 
				szero<='1';
			else
				szero<='0';
			end if;
		elsif(sshift = '1') then
			output<=shiftResult;
			if(shiftResult = "00000000000000000000000000000000") then 
				szero<='1';
			else
				szero<='0';
			end if;
		else
			output<="00000000000000000000000000000000";
			szero<='1';
		end if;
		Zero<=szero;
	end process;
end architecture rtl;
		
			