LIBRARY ieee;
USE ieee.std_logic_1164.ALL; 

ENTITY GatedLatch IS
PORT
(
	D, Enable: IN std_logic;
	Q:	OUT srd_logic
);
END GatedLatch;

ARCHITECTURE Behavior OF GatedLatch IS
BEGIN
	PROCESS(D, Enable)
	BEGIN
		IF Enable = '1' THEN
			Q <= D;
		END IF;
	END PROCESS;
END Behavior;	