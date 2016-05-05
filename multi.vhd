-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- PROGRAM		"Quartus II 64-Bit"
-- VERSION		"Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"
-- CREATED		"Thu May 05 00:05:22 2016"

LIBRARY ieee;
USE ieee.std_logic_1164.all; 

LIBRARY work;

ENTITY multi IS 
	PORT
	(
		SW0 :  IN  STD_LOGIC;
		SW1 :  IN  STD_LOGIC;
		SW2 :  IN  STD_LOGIC;
		SW3 :  IN  STD_LOGIC;
		SW4 :  IN  STD_LOGIC;
		LEDR0 :  OUT  STD_LOGIC;
		LEDR2 :  OUT  STD_LOGIC;
		LEDR4 :  OUT  STD_LOGIC
	);
END multi;

ARCHITECTURE bdf_type OF multi IS 



BEGIN 



LEDR0 <= SW0 AND SW1;


LEDR2 <= SW3 OR SW2;


LEDR4 <= NOT(SW4);



END bdf_type;