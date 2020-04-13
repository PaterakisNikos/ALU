LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY reg IS
PORT
(	
	clock: IN std_logic;
	input: IN std_logic_vector(15 DOWNTO 0);
	output: OUT std_logic_vector(15 DOWNTO 0)
);
END reg;


ARCHITECTURE struct OF reg IS

COMPONENT GatedLatch IS
PORT
(
	D, Enable: IN std_logic;
	Q:	OUT std_logic
);
END COMPONENT;

COMPONENT NotGate IS
PORT
(
	input: IN std_logic;
	output: OUT std_logic
);
END COMPONENT;

SIGNAL NOTCLOCK, MASTER0, MASTER1, MASTER2, MASTER3, MASTER4, MASTER5, MASTER6, MASTER7, MASTER8, MASTER9, MASTER10, MASTER11, MASTER12, MASTER13, MASTER14, MASTER15: std_logic;

BEGIN
	V0: NotGate PORT MAP(clock, NOTCLOCK);
	
	v1: GatedLatch PORT MAP(input(0), NOTCLOCK, MASTER0);
	V2: GatedLatch PORT MAP(MASTER0, clock, output(0));
	
	v3: GatedLatch PORT MAP(input(1), NOTCLOCK, MASTER1);
	V4: GatedLatch PORT MAP(MASTER1, clock, output(1));
	
	v5: GatedLatch PORT MAP(input(2), NOTCLOCK, MASTER2);
	V6: GatedLatch PORT MAP(MASTER2, clock, output(2));
	
	v7: GatedLatch PORT MAP(input(3), NOTCLOCK, MASTER3);
	V8: GatedLatch PORT MAP(MASTER3, clock, output(3));
	
	v9: GatedLatch PORT MAP(input(4), NOTCLOCK, MASTER4);
	V10: GatedLatch PORT MAP(MASTER4, clock, output(4));
	
	v11: GatedLatch PORT MAP(input(5), NOTCLOCK, MASTER5);
	V12: GatedLatch PORT MAP(MASTER5, clock, output(5));
	
	v13: GatedLatch PORT MAP(input(6), NOTCLOCK, MASTER6);
	V14: GatedLatch PORT MAP(MASTER6, clock, output(6));
	
	v15: GatedLatch PORT MAP(input(7), NOTCLOCK, MASTER7);
	V16: GatedLatch PORT MAP(MASTER7, clock, output(7));
	
	v17: GatedLatch PORT MAP(input(8), NOTCLOCK, MASTER8);
	V18: GatedLatch PORT MAP(MASTER8, clock, output(8));
	
	v19: GatedLatch PORT MAP(input(9), NOTCLOCK, MASTER9);
	V20: GatedLatch PORT MAP(MASTER9, clock, output(9));
	
	v21: GatedLatch PORT MAP(input(10), NOTCLOCK, MASTER10);
	V22: GatedLatch PORT MAP(MASTER10, clock, output(10));
	
	v23: GatedLatch PORT MAP(input(11), NOTCLOCK, MASTER11);
	V24: GatedLatch PORT MAP(MASTER11, clock, output(11));
	
	v25: GatedLatch PORT MAP(input(12), NOTCLOCK, MASTER12);
	V26: GatedLatch PORT MAP(MASTER12, clock, output(12));
	
	v27: GatedLatch PORT MAP(input(13), NOTCLOCK, MASTER13);
	V28: GatedLatch PORT MAP(MASTER13, clock, output(13));
	
	v29: GatedLatch PORT MAP(input(14), NOTCLOCK, MASTER14);
	V30: GatedLatch PORT MAP(MASTER14, clock, output(14));
	
	v31: GatedLatch PORT MAP(input(15), NOTCLOCK, MASTER15);
	V32: GatedLatch PORT MAP(MASTER15, clock, output(15));
	
END struct;	