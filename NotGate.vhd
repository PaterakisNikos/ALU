LIBRARY ieee;

USE ieee.std_logic_1164.ALL;

ENTITY NotGate IS
PORT
(
	input: IN std_logic;
	output: OUT std_logic
);
END NotGate;

ARCHITECTURE Struct OF NotGate IS
BEGIN
	output <= NOT input;
END Struct;