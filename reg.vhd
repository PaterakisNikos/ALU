LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY reg IS
PORT
(	Clock: IN std_logic;
	Input: IN std_logic;
	Enable: IN std_logic;
	Output: OUT std_logic;
);
END reg;


ARCHITECTURE struct OF reg IS
BEGIN
	PROCESS(Enable, Clock)
	BEGIN
		IF(Enable='0') THEN
			OUT <= '0';
		ELSIF Clock'EVENT AND Clock='1' THEN
			Q <= D
		END IF;
	END PROCESS;
END struct;	