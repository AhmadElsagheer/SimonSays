-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

-- DATE "12/13/2015 11:07:22"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SimonSays IS
    PORT (
	clk : IN std_logic;
	s3 : IN std_logic;
	s2 : IN std_logic;
	s1 : IN std_logic;
	s0 : IN std_logic;
	isPlayer : OUT std_logic;
	wrong : OUT std_logic;
	correct : OUT std_logic;
	leds : OUT std_logic_vector(3 DOWNTO 0);
	track_seq : OUT std_logic_vector(3 DOWNTO 0);
	l3 : OUT std_logic_vector(6 DOWNTO 0);
	l2 : OUT std_logic_vector(6 DOWNTO 0);
	l1 : OUT std_logic_vector(6 DOWNTO 0)
	);
END SimonSays;

-- Design Ports Information
-- isPlayer	=>  Location: PIN_AD15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- wrong	=>  Location: PIN_AC19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- correct	=>  Location: PIN_AE15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[0]	=>  Location: PIN_AC15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[1]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[2]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- leds[3]	=>  Location: PIN_AE16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- track_seq[0]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- track_seq[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- track_seq[2]	=>  Location: PIN_E25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- track_seq[3]	=>  Location: PIN_E24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l3[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l3[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l3[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l3[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l3[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l3[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l3[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l2[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l2[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l2[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l2[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l2[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l2[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l2[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l1[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l1[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l1[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l1[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l1[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l1[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- l1[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s3	=>  Location: PIN_AD21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s2	=>  Location: PIN_AC21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s1	=>  Location: PIN_AB21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- s0	=>  Location: PIN_AB22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SimonSays IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_s3 : std_logic;
SIGNAL ww_s2 : std_logic;
SIGNAL ww_s1 : std_logic;
SIGNAL ww_s0 : std_logic;
SIGNAL ww_isPlayer : std_logic;
SIGNAL ww_wrong : std_logic;
SIGNAL ww_correct : std_logic;
SIGNAL ww_leds : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_track_seq : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_l3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_l2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_l1 : std_logic_vector(6 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \comb_3|outClock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \isPlayer~output_o\ : std_logic;
SIGNAL \wrong~output_o\ : std_logic;
SIGNAL \correct~output_o\ : std_logic;
SIGNAL \leds[0]~output_o\ : std_logic;
SIGNAL \leds[1]~output_o\ : std_logic;
SIGNAL \leds[2]~output_o\ : std_logic;
SIGNAL \leds[3]~output_o\ : std_logic;
SIGNAL \track_seq[0]~output_o\ : std_logic;
SIGNAL \track_seq[1]~output_o\ : std_logic;
SIGNAL \track_seq[2]~output_o\ : std_logic;
SIGNAL \track_seq[3]~output_o\ : std_logic;
SIGNAL \l3[0]~output_o\ : std_logic;
SIGNAL \l3[1]~output_o\ : std_logic;
SIGNAL \l3[2]~output_o\ : std_logic;
SIGNAL \l3[3]~output_o\ : std_logic;
SIGNAL \l3[4]~output_o\ : std_logic;
SIGNAL \l3[5]~output_o\ : std_logic;
SIGNAL \l3[6]~output_o\ : std_logic;
SIGNAL \l2[0]~output_o\ : std_logic;
SIGNAL \l2[1]~output_o\ : std_logic;
SIGNAL \l2[2]~output_o\ : std_logic;
SIGNAL \l2[3]~output_o\ : std_logic;
SIGNAL \l2[4]~output_o\ : std_logic;
SIGNAL \l2[5]~output_o\ : std_logic;
SIGNAL \l2[6]~output_o\ : std_logic;
SIGNAL \l1[0]~output_o\ : std_logic;
SIGNAL \l1[1]~output_o\ : std_logic;
SIGNAL \l1[2]~output_o\ : std_logic;
SIGNAL \l1[3]~output_o\ : std_logic;
SIGNAL \l1[4]~output_o\ : std_logic;
SIGNAL \l1[5]~output_o\ : std_logic;
SIGNAL \l1[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \comb_3|Add0~0_combout\ : std_logic;
SIGNAL \comb_3|Add0~1\ : std_logic;
SIGNAL \comb_3|Add0~2_combout\ : std_logic;
SIGNAL \comb_3|Add0~3\ : std_logic;
SIGNAL \comb_3|Add0~4_combout\ : std_logic;
SIGNAL \comb_3|Add0~5\ : std_logic;
SIGNAL \comb_3|Add0~6_combout\ : std_logic;
SIGNAL \comb_3|Add0~7\ : std_logic;
SIGNAL \comb_3|Add0~8_combout\ : std_logic;
SIGNAL \comb_3|Add0~9\ : std_logic;
SIGNAL \comb_3|Add0~10_combout\ : std_logic;
SIGNAL \comb_3|Add0~11\ : std_logic;
SIGNAL \comb_3|Add0~12_combout\ : std_logic;
SIGNAL \comb_3|count~11_combout\ : std_logic;
SIGNAL \comb_3|Add0~13\ : std_logic;
SIGNAL \comb_3|Add0~14_combout\ : std_logic;
SIGNAL \comb_3|Add0~15\ : std_logic;
SIGNAL \comb_3|Add0~16_combout\ : std_logic;
SIGNAL \comb_3|Add0~17\ : std_logic;
SIGNAL \comb_3|Add0~18_combout\ : std_logic;
SIGNAL \comb_3|Add0~19\ : std_logic;
SIGNAL \comb_3|Add0~20_combout\ : std_logic;
SIGNAL \comb_3|Add0~21\ : std_logic;
SIGNAL \comb_3|Add0~22_combout\ : std_logic;
SIGNAL \comb_3|count~10_combout\ : std_logic;
SIGNAL \comb_3|Add0~23\ : std_logic;
SIGNAL \comb_3|Add0~24_combout\ : std_logic;
SIGNAL \comb_3|count~9_combout\ : std_logic;
SIGNAL \comb_3|Add0~25\ : std_logic;
SIGNAL \comb_3|Add0~26_combout\ : std_logic;
SIGNAL \comb_3|count~8_combout\ : std_logic;
SIGNAL \comb_3|Add0~27\ : std_logic;
SIGNAL \comb_3|Add0~28_combout\ : std_logic;
SIGNAL \comb_3|count~7_combout\ : std_logic;
SIGNAL \comb_3|Add0~29\ : std_logic;
SIGNAL \comb_3|Add0~30_combout\ : std_logic;
SIGNAL \comb_3|Add0~31\ : std_logic;
SIGNAL \comb_3|Add0~32_combout\ : std_logic;
SIGNAL \comb_3|count~6_combout\ : std_logic;
SIGNAL \comb_3|Add0~33\ : std_logic;
SIGNAL \comb_3|Add0~34_combout\ : std_logic;
SIGNAL \comb_3|Add0~35\ : std_logic;
SIGNAL \comb_3|Add0~36_combout\ : std_logic;
SIGNAL \comb_3|count~5_combout\ : std_logic;
SIGNAL \comb_3|Add0~37\ : std_logic;
SIGNAL \comb_3|Add0~38_combout\ : std_logic;
SIGNAL \comb_3|count~4_combout\ : std_logic;
SIGNAL \comb_3|Add0~39\ : std_logic;
SIGNAL \comb_3|Add0~40_combout\ : std_logic;
SIGNAL \comb_3|count~3_combout\ : std_logic;
SIGNAL \comb_3|Add0~41\ : std_logic;
SIGNAL \comb_3|Add0~42_combout\ : std_logic;
SIGNAL \comb_3|count~2_combout\ : std_logic;
SIGNAL \comb_3|Add0~43\ : std_logic;
SIGNAL \comb_3|Add0~44_combout\ : std_logic;
SIGNAL \comb_3|count~1_combout\ : std_logic;
SIGNAL \comb_3|Add0~45\ : std_logic;
SIGNAL \comb_3|Add0~46_combout\ : std_logic;
SIGNAL \comb_3|Add0~47\ : std_logic;
SIGNAL \comb_3|Add0~48_combout\ : std_logic;
SIGNAL \comb_3|count~0_combout\ : std_logic;
SIGNAL \comb_3|Add0~49\ : std_logic;
SIGNAL \comb_3|Add0~50_combout\ : std_logic;
SIGNAL \comb_3|Add0~51\ : std_logic;
SIGNAL \comb_3|Add0~52_combout\ : std_logic;
SIGNAL \comb_3|Add0~53\ : std_logic;
SIGNAL \comb_3|Add0~54_combout\ : std_logic;
SIGNAL \comb_3|Add0~55\ : std_logic;
SIGNAL \comb_3|Add0~56_combout\ : std_logic;
SIGNAL \comb_3|Add0~57\ : std_logic;
SIGNAL \comb_3|Add0~58_combout\ : std_logic;
SIGNAL \comb_3|Add0~59\ : std_logic;
SIGNAL \comb_3|Add0~60_combout\ : std_logic;
SIGNAL \comb_3|Add0~61\ : std_logic;
SIGNAL \comb_3|Add0~62_combout\ : std_logic;
SIGNAL \comb_3|Equal0~9_combout\ : std_logic;
SIGNAL \comb_3|Equal0~5_combout\ : std_logic;
SIGNAL \comb_3|Equal0~0_combout\ : std_logic;
SIGNAL \comb_3|Equal0~1_combout\ : std_logic;
SIGNAL \comb_3|Equal0~2_combout\ : std_logic;
SIGNAL \comb_3|Equal0~3_combout\ : std_logic;
SIGNAL \comb_3|Equal0~4_combout\ : std_logic;
SIGNAL \comb_3|Equal0~6_combout\ : std_logic;
SIGNAL \comb_3|Equal0~7_combout\ : std_logic;
SIGNAL \comb_3|Equal0~8_combout\ : std_logic;
SIGNAL \comb_3|Equal0~10_combout\ : std_logic;
SIGNAL \comb_3|outClock~0_combout\ : std_logic;
SIGNAL \comb_3|outClock~feeder_combout\ : std_logic;
SIGNAL \comb_3|outClock~q\ : std_logic;
SIGNAL \s2~input_o\ : std_logic;
SIGNAL \s3~input_o\ : std_logic;
SIGNAL \s1~input_o\ : std_logic;
SIGNAL \s0~input_o\ : std_logic;
SIGNAL \always0~0_combout\ : std_logic;
SIGNAL \track_seq[0]~0_combout\ : std_logic;
SIGNAL \track_seq[3]~1_combout\ : std_logic;
SIGNAL \track_seq[0]$latch~combout\ : std_logic;
SIGNAL \track_seq[2]~3_combout\ : std_logic;
SIGNAL \track_seq[2]$latch~combout\ : std_logic;
SIGNAL \track_seq[3]~4_combout\ : std_logic;
SIGNAL \track_seq[3]$latch~combout\ : std_logic;
SIGNAL \track_seq[1]~2_combout\ : std_logic;
SIGNAL \track_seq[1]$latch~combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \wrong~2_combout\ : std_logic;
SIGNAL \correct~0_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \correct~1_combout\ : std_logic;
SIGNAL \correct$latch~combout\ : std_logic;
SIGNAL \lc[0]~5_combout\ : std_logic;
SIGNAL \lc[1]~6_combout\ : std_logic;
SIGNAL \lc[0]~8_combout\ : std_logic;
SIGNAL \lc[1]~7\ : std_logic;
SIGNAL \lc[2]~9_combout\ : std_logic;
SIGNAL \lc[2]~10\ : std_logic;
SIGNAL \lc[3]~11_combout\ : std_logic;
SIGNAL \lc[3]~12\ : std_logic;
SIGNAL \lc[4]~13_combout\ : std_logic;
SIGNAL \lc[4]~14\ : std_logic;
SIGNAL \lc[5]~15_combout\ : std_logic;
SIGNAL \sc2~0_combout\ : std_logic;
SIGNAL \sc2~1_combout\ : std_logic;
SIGNAL \sc2~2_combout\ : std_logic;
SIGNAL \sc2~3_combout\ : std_logic;
SIGNAL \sc2~4_combout\ : std_logic;
SIGNAL \sc2~5_combout\ : std_logic;
SIGNAL \LessThan0~1_cout\ : std_logic;
SIGNAL \LessThan0~3_cout\ : std_logic;
SIGNAL \LessThan0~5_cout\ : std_logic;
SIGNAL \LessThan0~7_cout\ : std_logic;
SIGNAL \LessThan0~9_cout\ : std_logic;
SIGNAL \LessThan0~10_combout\ : std_logic;
SIGNAL \sc2[4]~6_combout\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \sc2[0]~7_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \Add0~4\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~9_combout\ : std_logic;
SIGNAL \Add0~11_combout\ : std_logic;
SIGNAL \Add0~10\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \Add0~17_combout\ : std_logic;
SIGNAL \r|Mux61~4_combout\ : std_logic;
SIGNAL \r|Mux61~2_combout\ : std_logic;
SIGNAL \r|Mux61~1_combout\ : std_logic;
SIGNAL \r|Mux61~3_combout\ : std_logic;
SIGNAL \r|Mux61~0_combout\ : std_logic;
SIGNAL \r|Mux61~5_combout\ : std_logic;
SIGNAL \r|Mux82~3_combout\ : std_logic;
SIGNAL \r|Mux82~0_combout\ : std_logic;
SIGNAL \r|Mux82~1_combout\ : std_logic;
SIGNAL \r|Mux82~2_combout\ : std_logic;
SIGNAL \r|Mux82~4_combout\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;
SIGNAL \wrong~3_combout\ : std_logic;
SIGNAL \wrong$latch~combout\ : std_logic;
SIGNAL \comb_3|outClock~clkctrl_outclk\ : std_logic;
SIGNAL \sc[0]~6_combout\ : std_logic;
SIGNAL \sc[2]~12\ : std_logic;
SIGNAL \sc[3]~13_combout\ : std_logic;
SIGNAL \sc[3]~14\ : std_logic;
SIGNAL \sc[4]~15_combout\ : std_logic;
SIGNAL \sc[4]~16\ : std_logic;
SIGNAL \sc[5]~17_combout\ : std_logic;
SIGNAL \isPlayer~2_combout\ : std_logic;
SIGNAL \isPlayer~0_combout\ : std_logic;
SIGNAL \sc[3]~8_combout\ : std_logic;
SIGNAL \sc[0]~7\ : std_logic;
SIGNAL \sc[1]~9_combout\ : std_logic;
SIGNAL \sc[1]~10\ : std_logic;
SIGNAL \sc[2]~11_combout\ : std_logic;
SIGNAL \isPlayer~1_combout\ : std_logic;
SIGNAL \isPlayer~3_combout\ : std_logic;
SIGNAL \isPlayer~4_combout\ : std_logic;
SIGNAL \isPlayer~reg0_q\ : std_logic;
SIGNAL \r|Mux19~4_combout\ : std_logic;
SIGNAL \r|Mux19~2_combout\ : std_logic;
SIGNAL \r|Mux19~1_combout\ : std_logic;
SIGNAL \r|Mux19~3_combout\ : std_logic;
SIGNAL \r|Mux19~0_combout\ : std_logic;
SIGNAL \r|Mux19~5_combout\ : std_logic;
SIGNAL \r|Mux40~1_combout\ : std_logic;
SIGNAL \r|Mux40~0_combout\ : std_logic;
SIGNAL \r|Mux40~2_combout\ : std_logic;
SIGNAL \r|Mux40~3_combout\ : std_logic;
SIGNAL \r|Mux40~4_combout\ : std_logic;
SIGNAL \leds[0]$latch~combout\ : std_logic;
SIGNAL \leds[1]$latch~combout\ : std_logic;
SIGNAL \leds[2]$latch~combout\ : std_logic;
SIGNAL \leds[3]$latch~combout\ : std_logic;
SIGNAL \d3|segments[0]~0_combout\ : std_logic;
SIGNAL \d3|segments[0]~1_combout\ : std_logic;
SIGNAL \d3|segments[1]~2_combout\ : std_logic;
SIGNAL \d3|segments[1]~3_combout\ : std_logic;
SIGNAL \d3|Decoder0~0_combout\ : std_logic;
SIGNAL \d3|Decoder0~1_combout\ : std_logic;
SIGNAL \d3|WideOr7~0_combout\ : std_logic;
SIGNAL \d3|WideOr7~1_combout\ : std_logic;
SIGNAL \d3|WideOr5~0_combout\ : std_logic;
SIGNAL \d3|WideOr5~1_combout\ : std_logic;
SIGNAL \d3|WideOr3~0_combout\ : std_logic;
SIGNAL \d3|WideOr3~1_combout\ : std_logic;
SIGNAL \d3|WideOr1~0_combout\ : std_logic;
SIGNAL \d3|WideOr1~1_combout\ : std_logic;
SIGNAL \d2|segments[0]~0_combout\ : std_logic;
SIGNAL \d2|segments[0]~1_combout\ : std_logic;
SIGNAL \d2|segments[1]~2_combout\ : std_logic;
SIGNAL \d2|segments[1]~3_combout\ : std_logic;
SIGNAL \d2|Decoder0~0_combout\ : std_logic;
SIGNAL \d2|Decoder0~1_combout\ : std_logic;
SIGNAL \d2|WideOr7~0_combout\ : std_logic;
SIGNAL \d2|WideOr7~1_combout\ : std_logic;
SIGNAL \d2|WideOr5~0_combout\ : std_logic;
SIGNAL \d2|WideOr5~1_combout\ : std_logic;
SIGNAL \d2|WideOr3~0_combout\ : std_logic;
SIGNAL \d2|WideOr3~1_combout\ : std_logic;
SIGNAL \d2|WideOr1~0_combout\ : std_logic;
SIGNAL \d2|WideOr1~1_combout\ : std_logic;
SIGNAL \d1|segments[0]~0_combout\ : std_logic;
SIGNAL \d1|segments[0]~1_combout\ : std_logic;
SIGNAL \d1|segments[1]~2_combout\ : std_logic;
SIGNAL \d1|segments[1]~3_combout\ : std_logic;
SIGNAL \d1|Decoder0~0_combout\ : std_logic;
SIGNAL \d1|Decoder0~1_combout\ : std_logic;
SIGNAL \d1|WideOr7~0_combout\ : std_logic;
SIGNAL \d1|WideOr7~1_combout\ : std_logic;
SIGNAL \d1|WideOr5~0_combout\ : std_logic;
SIGNAL \d1|WideOr5~1_combout\ : std_logic;
SIGNAL \d1|WideOr3~0_combout\ : std_logic;
SIGNAL \d1|WideOr3~1_combout\ : std_logic;
SIGNAL \d1|WideOr1~0_combout\ : std_logic;
SIGNAL \d1|WideOr1~1_combout\ : std_logic;
SIGNAL sc : std_logic_vector(5 DOWNTO 0);
SIGNAL lc : std_logic_vector(5 DOWNTO 0);
SIGNAL \comb_3|count\ : std_logic_vector(31 DOWNTO 0);
SIGNAL sc2 : std_logic_vector(5 DOWNTO 0);
SIGNAL \comb_3|ALT_INV_outClock~clkctrl_outclk\ : std_logic;
SIGNAL \d3|ALT_INV_WideOr1~1_combout\ : std_logic;
SIGNAL \comb_3|ALT_INV_outClock~q\ : std_logic;
SIGNAL \d1|ALT_INV_WideOr1~1_combout\ : std_logic;
SIGNAL \d2|ALT_INV_WideOr1~1_combout\ : std_logic;

BEGIN

ww_clk <= clk;
ww_s3 <= s3;
ww_s2 <= s2;
ww_s1 <= s1;
ww_s0 <= s0;
isPlayer <= ww_isPlayer;
wrong <= ww_wrong;
correct <= ww_correct;
leds <= ww_leds;
track_seq <= ww_track_seq;
l3 <= ww_l3;
l2 <= ww_l2;
l1 <= ww_l1;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\comb_3|outClock~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \comb_3|outClock~q\);
\comb_3|ALT_INV_outClock~clkctrl_outclk\ <= NOT \comb_3|outClock~clkctrl_outclk\;
\d3|ALT_INV_WideOr1~1_combout\ <= NOT \d3|WideOr1~1_combout\;
\comb_3|ALT_INV_outClock~q\ <= NOT \comb_3|outClock~q\;
\d1|ALT_INV_WideOr1~1_combout\ <= NOT \d1|WideOr1~1_combout\;
\d2|ALT_INV_WideOr1~1_combout\ <= NOT \d2|WideOr1~1_combout\;

-- Location: IOOBUF_X60_Y0_N16
\isPlayer~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \isPlayer~reg0_q\,
	devoe => ww_devoe,
	o => \isPlayer~output_o\);

-- Location: IOOBUF_X94_Y0_N9
\wrong~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \wrong$latch~combout\,
	devoe => ww_devoe,
	o => \wrong~output_o\);

-- Location: IOOBUF_X60_Y0_N9
\correct~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \correct$latch~combout\,
	devoe => ww_devoe,
	o => \correct~output_o\);

-- Location: IOOBUF_X60_Y0_N23
\leds[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[0]$latch~combout\,
	devoe => ww_devoe,
	o => \leds[0]~output_o\);

-- Location: IOOBUF_X96_Y0_N23
\leds[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[1]$latch~combout\,
	devoe => ww_devoe,
	o => \leds[1]~output_o\);

-- Location: IOOBUF_X96_Y0_N16
\leds[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[2]$latch~combout\,
	devoe => ww_devoe,
	o => \leds[2]~output_o\);

-- Location: IOOBUF_X65_Y0_N23
\leds[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \leds[3]$latch~combout\,
	devoe => ww_devoe,
	o => \leds[3]~output_o\);

-- Location: IOOBUF_X107_Y73_N9
\track_seq[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \track_seq[0]$latch~combout\,
	devoe => ww_devoe,
	o => \track_seq[0]~output_o\);

-- Location: IOOBUF_X111_Y73_N9
\track_seq[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \track_seq[1]$latch~combout\,
	devoe => ww_devoe,
	o => \track_seq[1]~output_o\);

-- Location: IOOBUF_X83_Y73_N2
\track_seq[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \track_seq[2]$latch~combout\,
	devoe => ww_devoe,
	o => \track_seq[2]~output_o\);

-- Location: IOOBUF_X85_Y73_N23
\track_seq[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \track_seq[3]$latch~combout\,
	devoe => ww_devoe,
	o => \track_seq[3]~output_o\);

-- Location: IOOBUF_X115_Y17_N9
\l3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d3|segments[0]~1_combout\,
	devoe => ww_devoe,
	o => \l3[0]~output_o\);

-- Location: IOOBUF_X115_Y16_N2
\l3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d3|segments[1]~3_combout\,
	devoe => ww_devoe,
	o => \l3[1]~output_o\);

-- Location: IOOBUF_X115_Y19_N9
\l3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d3|Decoder0~1_combout\,
	devoe => ww_devoe,
	o => \l3[2]~output_o\);

-- Location: IOOBUF_X115_Y19_N2
\l3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d3|WideOr7~1_combout\,
	devoe => ww_devoe,
	o => \l3[3]~output_o\);

-- Location: IOOBUF_X115_Y18_N2
\l3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d3|WideOr5~1_combout\,
	devoe => ww_devoe,
	o => \l3[4]~output_o\);

-- Location: IOOBUF_X115_Y20_N2
\l3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d3|WideOr3~1_combout\,
	devoe => ww_devoe,
	o => \l3[5]~output_o\);

-- Location: IOOBUF_X115_Y21_N16
\l3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d3|ALT_INV_WideOr1~1_combout\,
	devoe => ww_devoe,
	o => \l3[6]~output_o\);

-- Location: IOOBUF_X115_Y41_N2
\l2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2|segments[0]~1_combout\,
	devoe => ww_devoe,
	o => \l2[0]~output_o\);

-- Location: IOOBUF_X115_Y30_N9
\l2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2|segments[1]~3_combout\,
	devoe => ww_devoe,
	o => \l2[1]~output_o\);

-- Location: IOOBUF_X115_Y25_N23
\l2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2|Decoder0~1_combout\,
	devoe => ww_devoe,
	o => \l2[2]~output_o\);

-- Location: IOOBUF_X115_Y30_N2
\l2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2|WideOr7~1_combout\,
	devoe => ww_devoe,
	o => \l2[3]~output_o\);

-- Location: IOOBUF_X115_Y20_N9
\l2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2|WideOr5~1_combout\,
	devoe => ww_devoe,
	o => \l2[4]~output_o\);

-- Location: IOOBUF_X115_Y22_N2
\l2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2|WideOr3~1_combout\,
	devoe => ww_devoe,
	o => \l2[5]~output_o\);

-- Location: IOOBUF_X115_Y28_N9
\l2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d2|ALT_INV_WideOr1~1_combout\,
	devoe => ww_devoe,
	o => \l2[6]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\l1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d1|segments[0]~1_combout\,
	devoe => ww_devoe,
	o => \l1[0]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\l1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d1|segments[1]~3_combout\,
	devoe => ww_devoe,
	o => \l1[1]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\l1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d1|Decoder0~1_combout\,
	devoe => ww_devoe,
	o => \l1[2]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\l1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d1|WideOr7~1_combout\,
	devoe => ww_devoe,
	o => \l1[3]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\l1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d1|WideOr5~1_combout\,
	devoe => ww_devoe,
	o => \l1[4]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\l1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d1|WideOr3~1_combout\,
	devoe => ww_devoe,
	o => \l1[5]~output_o\);

-- Location: IOOBUF_X115_Y69_N2
\l1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \d1|ALT_INV_WideOr1~1_combout\,
	devoe => ww_devoe,
	o => \l1[6]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: FF_X112_Y31_N31
\comb_3|count[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|count\(31));

-- Location: LCCOMB_X112_Y32_N0
\comb_3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~0_combout\ = \comb_3|count\(0) $ (VCC)
-- \comb_3|Add0~1\ = CARRY(\comb_3|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(0),
	datad => VCC,
	combout => \comb_3|Add0~0_combout\,
	cout => \comb_3|Add0~1\);

-- Location: FF_X112_Y32_N1
\comb_3|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|count\(0));

-- Location: LCCOMB_X112_Y32_N2
\comb_3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~2_combout\ = (\comb_3|count\(1) & (!\comb_3|Add0~1\)) # (!\comb_3|count\(1) & ((\comb_3|Add0~1\) # (GND)))
-- \comb_3|Add0~3\ = CARRY((!\comb_3|Add0~1\) # (!\comb_3|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(1),
	datad => VCC,
	cin => \comb_3|Add0~1\,
	combout => \comb_3|Add0~2_combout\,
	cout => \comb_3|Add0~3\);

-- Location: FF_X112_Y32_N3
\comb_3|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|count\(1));

-- Location: LCCOMB_X112_Y32_N4
\comb_3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~4_combout\ = (\comb_3|count\(2) & (\comb_3|Add0~3\ $ (GND))) # (!\comb_3|count\(2) & (!\comb_3|Add0~3\ & VCC))
-- \comb_3|Add0~5\ = CARRY((\comb_3|count\(2) & !\comb_3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(2),
	datad => VCC,
	cin => \comb_3|Add0~3\,
	combout => \comb_3|Add0~4_combout\,
	cout => \comb_3|Add0~5\);

-- Location: FF_X112_Y32_N5
\comb_3|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|count\(2));

-- Location: LCCOMB_X112_Y32_N6
\comb_3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~6_combout\ = (\comb_3|count\(3) & (!\comb_3|Add0~5\)) # (!\comb_3|count\(3) & ((\comb_3|Add0~5\) # (GND)))
-- \comb_3|Add0~7\ = CARRY((!\comb_3|Add0~5\) # (!\comb_3|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|count\(3),
	datad => VCC,
	cin => \comb_3|Add0~5\,
	combout => \comb_3|Add0~6_combout\,
	cout => \comb_3|Add0~7\);

-- Location: FF_X112_Y32_N7
\comb_3|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|count\(3));

-- Location: LCCOMB_X112_Y32_N8
\comb_3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~8_combout\ = (\comb_3|count\(4) & (\comb_3|Add0~7\ $ (GND))) # (!\comb_3|count\(4) & (!\comb_3|Add0~7\ & VCC))
-- \comb_3|Add0~9\ = CARRY((\comb_3|count\(4) & !\comb_3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(4),
	datad => VCC,
	cin => \comb_3|Add0~7\,
	combout => \comb_3|Add0~8_combout\,
	cout => \comb_3|Add0~9\);

-- Location: FF_X112_Y32_N9
\comb_3|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|count\(4));

-- Location: LCCOMB_X112_Y32_N10
\comb_3|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~10_combout\ = (\comb_3|count\(5) & (!\comb_3|Add0~9\)) # (!\comb_3|count\(5) & ((\comb_3|Add0~9\) # (GND)))
-- \comb_3|Add0~11\ = CARRY((!\comb_3|Add0~9\) # (!\comb_3|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|count\(5),
	datad => VCC,
	cin => \comb_3|Add0~9\,
	combout => \comb_3|Add0~10_combout\,
	cout => \comb_3|Add0~11\);

-- Location: FF_X112_Y32_N11
\comb_3|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|count\(5));

-- Location: LCCOMB_X112_Y32_N12
\comb_3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~12_combout\ = (\comb_3|count\(6) & (\comb_3|Add0~11\ $ (GND))) # (!\comb_3|count\(6) & (!\comb_3|Add0~11\ & VCC))
-- \comb_3|Add0~13\ = CARRY((\comb_3|count\(6) & !\comb_3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|count\(6),
	datad => VCC,
	cin => \comb_3|Add0~11\,
	combout => \comb_3|Add0~12_combout\,
	cout => \comb_3|Add0~13\);

-- Location: LCCOMB_X111_Y31_N22
\comb_3|count~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|count~11_combout\ = (\comb_3|Add0~12_combout\ & !\comb_3|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|Add0~12_combout\,
	datac => \comb_3|Equal0~10_combout\,
	combout => \comb_3|count~11_combout\);

-- Location: FF_X111_Y31_N23
\comb_3|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|count~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|count\(6));

-- Location: LCCOMB_X112_Y32_N14
\comb_3|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~14_combout\ = (\comb_3|count\(7) & (!\comb_3|Add0~13\)) # (!\comb_3|count\(7) & ((\comb_3|Add0~13\) # (GND)))
-- \comb_3|Add0~15\ = CARRY((!\comb_3|Add0~13\) # (!\comb_3|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(7),
	datad => VCC,
	cin => \comb_3|Add0~13\,
	combout => \comb_3|Add0~14_combout\,
	cout => \comb_3|Add0~15\);

-- Location: FF_X112_Y32_N15
\comb_3|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|count\(7));

-- Location: LCCOMB_X112_Y32_N16
\comb_3|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~16_combout\ = (\comb_3|count\(8) & (\comb_3|Add0~15\ $ (GND))) # (!\comb_3|count\(8) & (!\comb_3|Add0~15\ & VCC))
-- \comb_3|Add0~17\ = CARRY((\comb_3|count\(8) & !\comb_3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(8),
	datad => VCC,
	cin => \comb_3|Add0~15\,
	combout => \comb_3|Add0~16_combout\,
	cout => \comb_3|Add0~17\);

-- Location: FF_X112_Y32_N17
\comb_3|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|count\(8));

-- Location: LCCOMB_X112_Y32_N18
\comb_3|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~18_combout\ = (\comb_3|count\(9) & (!\comb_3|Add0~17\)) # (!\comb_3|count\(9) & ((\comb_3|Add0~17\) # (GND)))
-- \comb_3|Add0~19\ = CARRY((!\comb_3|Add0~17\) # (!\comb_3|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(9),
	datad => VCC,
	cin => \comb_3|Add0~17\,
	combout => \comb_3|Add0~18_combout\,
	cout => \comb_3|Add0~19\);

-- Location: FF_X112_Y32_N19
\comb_3|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|count\(9));

-- Location: LCCOMB_X112_Y32_N20
\comb_3|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~20_combout\ = (\comb_3|count\(10) & (\comb_3|Add0~19\ $ (GND))) # (!\comb_3|count\(10) & (!\comb_3|Add0~19\ & VCC))
-- \comb_3|Add0~21\ = CARRY((\comb_3|count\(10) & !\comb_3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(10),
	datad => VCC,
	cin => \comb_3|Add0~19\,
	combout => \comb_3|Add0~20_combout\,
	cout => \comb_3|Add0~21\);

-- Location: FF_X112_Y32_N21
\comb_3|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|count\(10));

-- Location: LCCOMB_X112_Y32_N22
\comb_3|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~22_combout\ = (\comb_3|count\(11) & (!\comb_3|Add0~21\)) # (!\comb_3|count\(11) & ((\comb_3|Add0~21\) # (GND)))
-- \comb_3|Add0~23\ = CARRY((!\comb_3|Add0~21\) # (!\comb_3|count\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(11),
	datad => VCC,
	cin => \comb_3|Add0~21\,
	combout => \comb_3|Add0~22_combout\,
	cout => \comb_3|Add0~23\);

-- Location: LCCOMB_X111_Y31_N0
\comb_3|count~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|count~10_combout\ = (\comb_3|Add0~22_combout\ & !\comb_3|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|Add0~22_combout\,
	datac => \comb_3|Equal0~10_combout\,
	combout => \comb_3|count~10_combout\);

-- Location: FF_X111_Y31_N1
\comb_3|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|count~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|count\(11));

-- Location: LCCOMB_X112_Y32_N24
\comb_3|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~24_combout\ = (\comb_3|count\(12) & (\comb_3|Add0~23\ $ (GND))) # (!\comb_3|count\(12) & (!\comb_3|Add0~23\ & VCC))
-- \comb_3|Add0~25\ = CARRY((\comb_3|count\(12) & !\comb_3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(12),
	datad => VCC,
	cin => \comb_3|Add0~23\,
	combout => \comb_3|Add0~24_combout\,
	cout => \comb_3|Add0~25\);

-- Location: LCCOMB_X110_Y31_N0
\comb_3|count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|count~9_combout\ = (\comb_3|Add0~24_combout\ & !\comb_3|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|Add0~24_combout\,
	datad => \comb_3|Equal0~10_combout\,
	combout => \comb_3|count~9_combout\);

-- Location: FF_X110_Y31_N1
\comb_3|count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|count~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|count\(12));

-- Location: LCCOMB_X112_Y32_N26
\comb_3|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~26_combout\ = (\comb_3|count\(13) & (!\comb_3|Add0~25\)) # (!\comb_3|count\(13) & ((\comb_3|Add0~25\) # (GND)))
-- \comb_3|Add0~27\ = CARRY((!\comb_3|Add0~25\) # (!\comb_3|count\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(13),
	datad => VCC,
	cin => \comb_3|Add0~25\,
	combout => \comb_3|Add0~26_combout\,
	cout => \comb_3|Add0~27\);

-- Location: LCCOMB_X110_Y31_N14
\comb_3|count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|count~8_combout\ = (\comb_3|Add0~26_combout\ & !\comb_3|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|Add0~26_combout\,
	datad => \comb_3|Equal0~10_combout\,
	combout => \comb_3|count~8_combout\);

-- Location: FF_X110_Y31_N15
\comb_3|count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|count~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|count\(13));

-- Location: LCCOMB_X112_Y32_N28
\comb_3|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~28_combout\ = (\comb_3|count\(14) & (\comb_3|Add0~27\ $ (GND))) # (!\comb_3|count\(14) & (!\comb_3|Add0~27\ & VCC))
-- \comb_3|Add0~29\ = CARRY((\comb_3|count\(14) & !\comb_3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(14),
	datad => VCC,
	cin => \comb_3|Add0~27\,
	combout => \comb_3|Add0~28_combout\,
	cout => \comb_3|Add0~29\);

-- Location: LCCOMB_X110_Y31_N24
\comb_3|count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|count~7_combout\ = (\comb_3|Add0~28_combout\ & !\comb_3|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|Add0~28_combout\,
	datad => \comb_3|Equal0~10_combout\,
	combout => \comb_3|count~7_combout\);

-- Location: FF_X110_Y31_N25
\comb_3|count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|count~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|count\(14));

-- Location: LCCOMB_X112_Y32_N30
\comb_3|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~30_combout\ = (\comb_3|count\(15) & (!\comb_3|Add0~29\)) # (!\comb_3|count\(15) & ((\comb_3|Add0~29\) # (GND)))
-- \comb_3|Add0~31\ = CARRY((!\comb_3|Add0~29\) # (!\comb_3|count\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|count\(15),
	datad => VCC,
	cin => \comb_3|Add0~29\,
	combout => \comb_3|Add0~30_combout\,
	cout => \comb_3|Add0~31\);

-- Location: FF_X112_Y32_N31
\comb_3|count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|count\(15));

-- Location: LCCOMB_X112_Y31_N0
\comb_3|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~32_combout\ = (\comb_3|count\(16) & (\comb_3|Add0~31\ $ (GND))) # (!\comb_3|count\(16) & (!\comb_3|Add0~31\ & VCC))
-- \comb_3|Add0~33\ = CARRY((\comb_3|count\(16) & !\comb_3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|count\(16),
	datad => VCC,
	cin => \comb_3|Add0~31\,
	combout => \comb_3|Add0~32_combout\,
	cout => \comb_3|Add0~33\);

-- Location: LCCOMB_X111_Y31_N10
\comb_3|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|count~6_combout\ = (\comb_3|Add0~32_combout\ & !\comb_3|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|Add0~32_combout\,
	datac => \comb_3|Equal0~10_combout\,
	combout => \comb_3|count~6_combout\);

-- Location: FF_X111_Y31_N11
\comb_3|count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|count~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|count\(16));

-- Location: LCCOMB_X112_Y31_N2
\comb_3|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~34_combout\ = (\comb_3|count\(17) & (!\comb_3|Add0~33\)) # (!\comb_3|count\(17) & ((\comb_3|Add0~33\) # (GND)))
-- \comb_3|Add0~35\ = CARRY((!\comb_3|Add0~33\) # (!\comb_3|count\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(17),
	datad => VCC,
	cin => \comb_3|Add0~33\,
	combout => \comb_3|Add0~34_combout\,
	cout => \comb_3|Add0~35\);

-- Location: FF_X112_Y31_N3
\comb_3|count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|count\(17));

-- Location: LCCOMB_X112_Y31_N4
\comb_3|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~36_combout\ = (\comb_3|count\(18) & (\comb_3|Add0~35\ $ (GND))) # (!\comb_3|count\(18) & (!\comb_3|Add0~35\ & VCC))
-- \comb_3|Add0~37\ = CARRY((\comb_3|count\(18) & !\comb_3|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|count\(18),
	datad => VCC,
	cin => \comb_3|Add0~35\,
	combout => \comb_3|Add0~36_combout\,
	cout => \comb_3|Add0~37\);

-- Location: LCCOMB_X111_Y31_N16
\comb_3|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|count~5_combout\ = (!\comb_3|Equal0~10_combout\ & \comb_3|Add0~36_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|Equal0~10_combout\,
	datad => \comb_3|Add0~36_combout\,
	combout => \comb_3|count~5_combout\);

-- Location: FF_X111_Y31_N17
\comb_3|count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|count\(18));

-- Location: LCCOMB_X112_Y31_N6
\comb_3|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~38_combout\ = (\comb_3|count\(19) & (!\comb_3|Add0~37\)) # (!\comb_3|count\(19) & ((\comb_3|Add0~37\) # (GND)))
-- \comb_3|Add0~39\ = CARRY((!\comb_3|Add0~37\) # (!\comb_3|count\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(19),
	datad => VCC,
	cin => \comb_3|Add0~37\,
	combout => \comb_3|Add0~38_combout\,
	cout => \comb_3|Add0~39\);

-- Location: LCCOMB_X111_Y31_N18
\comb_3|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|count~4_combout\ = (\comb_3|Add0~38_combout\ & !\comb_3|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Add0~38_combout\,
	datac => \comb_3|Equal0~10_combout\,
	combout => \comb_3|count~4_combout\);

-- Location: FF_X111_Y31_N19
\comb_3|count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|count\(19));

-- Location: LCCOMB_X112_Y31_N8
\comb_3|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~40_combout\ = (\comb_3|count\(20) & (\comb_3|Add0~39\ $ (GND))) # (!\comb_3|count\(20) & (!\comb_3|Add0~39\ & VCC))
-- \comb_3|Add0~41\ = CARRY((\comb_3|count\(20) & !\comb_3|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|count\(20),
	datad => VCC,
	cin => \comb_3|Add0~39\,
	combout => \comb_3|Add0~40_combout\,
	cout => \comb_3|Add0~41\);

-- Location: LCCOMB_X110_Y31_N10
\comb_3|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|count~3_combout\ = (\comb_3|Add0~40_combout\ & !\comb_3|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|Add0~40_combout\,
	datad => \comb_3|Equal0~10_combout\,
	combout => \comb_3|count~3_combout\);

-- Location: FF_X110_Y31_N11
\comb_3|count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|count\(20));

-- Location: LCCOMB_X112_Y31_N10
\comb_3|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~42_combout\ = (\comb_3|count\(21) & (!\comb_3|Add0~41\)) # (!\comb_3|count\(21) & ((\comb_3|Add0~41\) # (GND)))
-- \comb_3|Add0~43\ = CARRY((!\comb_3|Add0~41\) # (!\comb_3|count\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(21),
	datad => VCC,
	cin => \comb_3|Add0~41\,
	combout => \comb_3|Add0~42_combout\,
	cout => \comb_3|Add0~43\);

-- Location: LCCOMB_X110_Y31_N12
\comb_3|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|count~2_combout\ = (\comb_3|Add0~42_combout\ & !\comb_3|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|Add0~42_combout\,
	datad => \comb_3|Equal0~10_combout\,
	combout => \comb_3|count~2_combout\);

-- Location: FF_X110_Y31_N13
\comb_3|count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|count\(21));

-- Location: LCCOMB_X112_Y31_N12
\comb_3|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~44_combout\ = (\comb_3|count\(22) & (\comb_3|Add0~43\ $ (GND))) # (!\comb_3|count\(22) & (!\comb_3|Add0~43\ & VCC))
-- \comb_3|Add0~45\ = CARRY((\comb_3|count\(22) & !\comb_3|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|count\(22),
	datad => VCC,
	cin => \comb_3|Add0~43\,
	combout => \comb_3|Add0~44_combout\,
	cout => \comb_3|Add0~45\);

-- Location: LCCOMB_X111_Y31_N12
\comb_3|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|count~1_combout\ = (\comb_3|Add0~44_combout\ & !\comb_3|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|Add0~44_combout\,
	datac => \comb_3|Equal0~10_combout\,
	combout => \comb_3|count~1_combout\);

-- Location: FF_X111_Y31_N13
\comb_3|count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|count\(22));

-- Location: LCCOMB_X112_Y31_N14
\comb_3|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~46_combout\ = (\comb_3|count\(23) & (!\comb_3|Add0~45\)) # (!\comb_3|count\(23) & ((\comb_3|Add0~45\) # (GND)))
-- \comb_3|Add0~47\ = CARRY((!\comb_3|Add0~45\) # (!\comb_3|count\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(23),
	datad => VCC,
	cin => \comb_3|Add0~45\,
	combout => \comb_3|Add0~46_combout\,
	cout => \comb_3|Add0~47\);

-- Location: FF_X112_Y31_N15
\comb_3|count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|count\(23));

-- Location: LCCOMB_X112_Y31_N16
\comb_3|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~48_combout\ = (\comb_3|count\(24) & (\comb_3|Add0~47\ $ (GND))) # (!\comb_3|count\(24) & (!\comb_3|Add0~47\ & VCC))
-- \comb_3|Add0~49\ = CARRY((\comb_3|count\(24) & !\comb_3|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(24),
	datad => VCC,
	cin => \comb_3|Add0~47\,
	combout => \comb_3|Add0~48_combout\,
	cout => \comb_3|Add0~49\);

-- Location: LCCOMB_X110_Y31_N28
\comb_3|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|count~0_combout\ = (\comb_3|Add0~48_combout\ & !\comb_3|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|Add0~48_combout\,
	datad => \comb_3|Equal0~10_combout\,
	combout => \comb_3|count~0_combout\);

-- Location: FF_X110_Y31_N29
\comb_3|count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|count\(24));

-- Location: LCCOMB_X112_Y31_N18
\comb_3|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~50_combout\ = (\comb_3|count\(25) & (!\comb_3|Add0~49\)) # (!\comb_3|count\(25) & ((\comb_3|Add0~49\) # (GND)))
-- \comb_3|Add0~51\ = CARRY((!\comb_3|Add0~49\) # (!\comb_3|count\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(25),
	datad => VCC,
	cin => \comb_3|Add0~49\,
	combout => \comb_3|Add0~50_combout\,
	cout => \comb_3|Add0~51\);

-- Location: FF_X112_Y31_N19
\comb_3|count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|count\(25));

-- Location: LCCOMB_X112_Y31_N20
\comb_3|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~52_combout\ = (\comb_3|count\(26) & (\comb_3|Add0~51\ $ (GND))) # (!\comb_3|count\(26) & (!\comb_3|Add0~51\ & VCC))
-- \comb_3|Add0~53\ = CARRY((\comb_3|count\(26) & !\comb_3|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(26),
	datad => VCC,
	cin => \comb_3|Add0~51\,
	combout => \comb_3|Add0~52_combout\,
	cout => \comb_3|Add0~53\);

-- Location: FF_X112_Y31_N21
\comb_3|count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|count\(26));

-- Location: LCCOMB_X112_Y31_N22
\comb_3|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~54_combout\ = (\comb_3|count\(27) & (!\comb_3|Add0~53\)) # (!\comb_3|count\(27) & ((\comb_3|Add0~53\) # (GND)))
-- \comb_3|Add0~55\ = CARRY((!\comb_3|Add0~53\) # (!\comb_3|count\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|count\(27),
	datad => VCC,
	cin => \comb_3|Add0~53\,
	combout => \comb_3|Add0~54_combout\,
	cout => \comb_3|Add0~55\);

-- Location: FF_X112_Y31_N23
\comb_3|count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|count\(27));

-- Location: LCCOMB_X112_Y31_N24
\comb_3|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~56_combout\ = (\comb_3|count\(28) & (\comb_3|Add0~55\ $ (GND))) # (!\comb_3|count\(28) & (!\comb_3|Add0~55\ & VCC))
-- \comb_3|Add0~57\ = CARRY((\comb_3|count\(28) & !\comb_3|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(28),
	datad => VCC,
	cin => \comb_3|Add0~55\,
	combout => \comb_3|Add0~56_combout\,
	cout => \comb_3|Add0~57\);

-- Location: FF_X112_Y31_N25
\comb_3|count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|count\(28));

-- Location: LCCOMB_X112_Y31_N26
\comb_3|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~58_combout\ = (\comb_3|count\(29) & (!\comb_3|Add0~57\)) # (!\comb_3|count\(29) & ((\comb_3|Add0~57\) # (GND)))
-- \comb_3|Add0~59\ = CARRY((!\comb_3|Add0~57\) # (!\comb_3|count\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|count\(29),
	datad => VCC,
	cin => \comb_3|Add0~57\,
	combout => \comb_3|Add0~58_combout\,
	cout => \comb_3|Add0~59\);

-- Location: FF_X112_Y31_N27
\comb_3|count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|count\(29));

-- Location: LCCOMB_X112_Y31_N28
\comb_3|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~60_combout\ = (\comb_3|count\(30) & (\comb_3|Add0~59\ $ (GND))) # (!\comb_3|count\(30) & (!\comb_3|Add0~59\ & VCC))
-- \comb_3|Add0~61\ = CARRY((\comb_3|count\(30) & !\comb_3|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \comb_3|count\(30),
	datad => VCC,
	cin => \comb_3|Add0~59\,
	combout => \comb_3|Add0~60_combout\,
	cout => \comb_3|Add0~61\);

-- Location: FF_X112_Y31_N29
\comb_3|count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|count\(30));

-- Location: LCCOMB_X112_Y31_N30
\comb_3|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Add0~62_combout\ = \comb_3|count\(31) $ (\comb_3|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|count\(31),
	cin => \comb_3|Add0~61\,
	combout => \comb_3|Add0~62_combout\);

-- Location: LCCOMB_X111_Y31_N8
\comb_3|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~9_combout\ = (!\comb_3|Add0~56_combout\ & !\comb_3|Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|Add0~56_combout\,
	datad => \comb_3|Add0~58_combout\,
	combout => \comb_3|Equal0~9_combout\);

-- Location: LCCOMB_X111_Y31_N4
\comb_3|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~5_combout\ = (!\comb_3|Add0~34_combout\ & (\comb_3|Add0~32_combout\ & (\comb_3|Add0~36_combout\ & \comb_3|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Add0~34_combout\,
	datab => \comb_3|Add0~32_combout\,
	datac => \comb_3|Add0~36_combout\,
	datad => \comb_3|Add0~38_combout\,
	combout => \comb_3|Equal0~5_combout\);

-- Location: LCCOMB_X111_Y32_N4
\comb_3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~0_combout\ = (!\comb_3|Add0~2_combout\ & (!\comb_3|Add0~0_combout\ & (!\comb_3|Add0~4_combout\ & !\comb_3|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Add0~2_combout\,
	datab => \comb_3|Add0~0_combout\,
	datac => \comb_3|Add0~4_combout\,
	datad => \comb_3|Add0~6_combout\,
	combout => \comb_3|Equal0~0_combout\);

-- Location: LCCOMB_X111_Y31_N28
\comb_3|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~1_combout\ = (!\comb_3|Add0~8_combout\ & (!\comb_3|Add0~10_combout\ & (\comb_3|Add0~12_combout\ & !\comb_3|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Add0~8_combout\,
	datab => \comb_3|Add0~10_combout\,
	datac => \comb_3|Add0~12_combout\,
	datad => \comb_3|Add0~14_combout\,
	combout => \comb_3|Equal0~1_combout\);

-- Location: LCCOMB_X111_Y31_N30
\comb_3|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~2_combout\ = (!\comb_3|Add0~18_combout\ & (\comb_3|Add0~22_combout\ & (!\comb_3|Add0~20_combout\ & !\comb_3|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Add0~18_combout\,
	datab => \comb_3|Add0~22_combout\,
	datac => \comb_3|Add0~20_combout\,
	datad => \comb_3|Add0~16_combout\,
	combout => \comb_3|Equal0~2_combout\);

-- Location: LCCOMB_X111_Y31_N24
\comb_3|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~3_combout\ = (\comb_3|Add0~24_combout\ & (\comb_3|Add0~26_combout\ & (!\comb_3|Add0~30_combout\ & \comb_3|Add0~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Add0~24_combout\,
	datab => \comb_3|Add0~26_combout\,
	datac => \comb_3|Add0~30_combout\,
	datad => \comb_3|Add0~28_combout\,
	combout => \comb_3|Equal0~3_combout\);

-- Location: LCCOMB_X111_Y31_N14
\comb_3|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~4_combout\ = (\comb_3|Equal0~0_combout\ & (\comb_3|Equal0~1_combout\ & (\comb_3|Equal0~2_combout\ & \comb_3|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Equal0~0_combout\,
	datab => \comb_3|Equal0~1_combout\,
	datac => \comb_3|Equal0~2_combout\,
	datad => \comb_3|Equal0~3_combout\,
	combout => \comb_3|Equal0~4_combout\);

-- Location: LCCOMB_X111_Y31_N6
\comb_3|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~6_combout\ = (\comb_3|Add0~40_combout\ & (\comb_3|Add0~44_combout\ & (!\comb_3|Add0~46_combout\ & \comb_3|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Add0~40_combout\,
	datab => \comb_3|Add0~44_combout\,
	datac => \comb_3|Add0~46_combout\,
	datad => \comb_3|Add0~42_combout\,
	combout => \comb_3|Equal0~6_combout\);

-- Location: LCCOMB_X111_Y31_N20
\comb_3|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~7_combout\ = (\comb_3|Add0~48_combout\ & (\comb_3|Equal0~5_combout\ & (\comb_3|Equal0~4_combout\ & \comb_3|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Add0~48_combout\,
	datab => \comb_3|Equal0~5_combout\,
	datac => \comb_3|Equal0~4_combout\,
	datad => \comb_3|Equal0~6_combout\,
	combout => \comb_3|Equal0~7_combout\);

-- Location: LCCOMB_X111_Y31_N2
\comb_3|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~8_combout\ = (!\comb_3|Add0~54_combout\ & (!\comb_3|Add0~50_combout\ & (!\comb_3|Add0~52_combout\ & \comb_3|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Add0~54_combout\,
	datab => \comb_3|Add0~50_combout\,
	datac => \comb_3|Add0~52_combout\,
	datad => \comb_3|Equal0~7_combout\,
	combout => \comb_3|Equal0~8_combout\);

-- Location: LCCOMB_X111_Y31_N26
\comb_3|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|Equal0~10_combout\ = (!\comb_3|Add0~62_combout\ & (!\comb_3|Add0~60_combout\ & (\comb_3|Equal0~9_combout\ & \comb_3|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|Add0~62_combout\,
	datab => \comb_3|Add0~60_combout\,
	datac => \comb_3|Equal0~9_combout\,
	datad => \comb_3|Equal0~8_combout\,
	combout => \comb_3|Equal0~10_combout\);

-- Location: LCCOMB_X110_Y31_N16
\comb_3|outClock~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|outClock~0_combout\ = \comb_3|outClock~q\ $ (\comb_3|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \comb_3|outClock~q\,
	datad => \comb_3|Equal0~10_combout\,
	combout => \comb_3|outClock~0_combout\);

-- Location: LCCOMB_X110_Y31_N8
\comb_3|outClock~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb_3|outClock~feeder_combout\ = \comb_3|outClock~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb_3|outClock~0_combout\,
	combout => \comb_3|outClock~feeder_combout\);

-- Location: FF_X110_Y31_N9
\comb_3|outClock\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \comb_3|outClock~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \comb_3|outClock~q\);

-- Location: IOIBUF_X102_Y0_N22
\s2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s2,
	o => \s2~input_o\);

-- Location: IOIBUF_X102_Y0_N15
\s3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s3,
	o => \s3~input_o\);

-- Location: IOIBUF_X109_Y0_N8
\s1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s1,
	o => \s1~input_o\);

-- Location: IOIBUF_X107_Y0_N1
\s0~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_s0,
	o => \s0~input_o\);

-- Location: LCCOMB_X107_Y24_N2
\always0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \always0~0_combout\ = (((!\s0~input_o\) # (!\s1~input_o\)) # (!\s3~input_o\)) # (!\s2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s2~input_o\,
	datab => \s3~input_o\,
	datac => \s1~input_o\,
	datad => \s0~input_o\,
	combout => \always0~0_combout\);

-- Location: LCCOMB_X107_Y24_N14
\track_seq[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \track_seq[0]~0_combout\ = (((\s0~input_o\) # (!\always0~0_combout\)) # (!\Equal0~0_combout\)) # (!\isPlayer~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \isPlayer~reg0_q\,
	datab => \Equal0~0_combout\,
	datac => \always0~0_combout\,
	datad => \s0~input_o\,
	combout => \track_seq[0]~0_combout\);

-- Location: LCCOMB_X107_Y24_N18
\track_seq[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \track_seq[3]~1_combout\ = (\Equal0~0_combout\) # ((!\always0~0_combout\) # (!\isPlayer~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Equal0~0_combout\,
	datac => \isPlayer~reg0_q\,
	datad => \always0~0_combout\,
	combout => \track_seq[3]~1_combout\);

-- Location: LCCOMB_X107_Y24_N12
\track_seq[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \track_seq[0]$latch~combout\ = (\track_seq[3]~1_combout\ & (!\track_seq[0]~0_combout\)) # (!\track_seq[3]~1_combout\ & ((\track_seq[0]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_seq[0]~0_combout\,
	datac => \track_seq[0]$latch~combout\,
	datad => \track_seq[3]~1_combout\,
	combout => \track_seq[0]$latch~combout\);

-- Location: LCCOMB_X107_Y24_N6
\track_seq[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \track_seq[2]~3_combout\ = ((\s2~input_o\) # ((!\Equal0~0_combout\) # (!\always0~0_combout\))) # (!\isPlayer~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \isPlayer~reg0_q\,
	datab => \s2~input_o\,
	datac => \always0~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \track_seq[2]~3_combout\);

-- Location: LCCOMB_X107_Y24_N4
\track_seq[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \track_seq[2]$latch~combout\ = (\track_seq[3]~1_combout\ & (!\track_seq[2]~3_combout\)) # (!\track_seq[3]~1_combout\ & ((\track_seq[2]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_seq[2]~3_combout\,
	datac => \track_seq[2]$latch~combout\,
	datad => \track_seq[3]~1_combout\,
	combout => \track_seq[2]$latch~combout\);

-- Location: LCCOMB_X107_Y24_N16
\track_seq[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \track_seq[3]~4_combout\ = ((\s3~input_o\) # ((!\Equal0~0_combout\) # (!\always0~0_combout\))) # (!\isPlayer~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \isPlayer~reg0_q\,
	datab => \s3~input_o\,
	datac => \always0~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \track_seq[3]~4_combout\);

-- Location: LCCOMB_X107_Y24_N30
\track_seq[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \track_seq[3]$latch~combout\ = (\track_seq[3]~1_combout\ & ((!\track_seq[3]~4_combout\))) # (!\track_seq[3]~1_combout\ & (\track_seq[3]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_seq[3]$latch~combout\,
	datac => \track_seq[3]~4_combout\,
	datad => \track_seq[3]~1_combout\,
	combout => \track_seq[3]$latch~combout\);

-- Location: LCCOMB_X107_Y24_N20
\track_seq[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \track_seq[1]~2_combout\ = ((\s1~input_o\) # ((!\Equal0~0_combout\) # (!\always0~0_combout\))) # (!\isPlayer~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \isPlayer~reg0_q\,
	datab => \s1~input_o\,
	datac => \always0~0_combout\,
	datad => \Equal0~0_combout\,
	combout => \track_seq[1]~2_combout\);

-- Location: LCCOMB_X107_Y24_N10
\track_seq[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \track_seq[1]$latch~combout\ = (\track_seq[3]~1_combout\ & ((!\track_seq[1]~2_combout\))) # (!\track_seq[3]~1_combout\ & (\track_seq[1]$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_seq[1]$latch~combout\,
	datac => \track_seq[1]~2_combout\,
	datad => \track_seq[3]~1_combout\,
	combout => \track_seq[1]$latch~combout\);

-- Location: LCCOMB_X107_Y24_N26
\Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\track_seq[0]$latch~combout\ & (!\track_seq[2]$latch~combout\ & (!\track_seq[3]$latch~combout\ & !\track_seq[1]$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \track_seq[0]$latch~combout\,
	datab => \track_seq[2]$latch~combout\,
	datac => \track_seq[3]$latch~combout\,
	datad => \track_seq[1]$latch~combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X106_Y24_N2
\wrong~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \wrong~2_combout\ = (\always0~0_combout\ & (\isPlayer~reg0_q\ & \Equal0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \always0~0_combout\,
	datac => \isPlayer~reg0_q\,
	datad => \Equal0~0_combout\,
	combout => \wrong~2_combout\);

-- Location: LCCOMB_X107_Y24_N28
\correct~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \correct~0_combout\ = (\always0~0_combout\ & ((\Equal0~0_combout\) # (!\isPlayer~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \isPlayer~reg0_q\,
	datac => \Equal0~0_combout\,
	datad => \always0~0_combout\,
	combout => \correct~0_combout\);

-- Location: LCCOMB_X108_Y24_N12
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = (((sc2(0) & \isPlayer~reg0_q\)))
-- \Add0~1\ = CARRY((sc2(0) & \isPlayer~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc2(0),
	datab => \isPlayer~reg0_q\,
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X108_Y24_N10
\correct~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \correct~1_combout\ = ((!\LessThan0~10_combout\ & (\correct~0_combout\ & \Mux0~1_combout\))) # (!\isPlayer~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~10_combout\,
	datab => \correct~0_combout\,
	datac => \isPlayer~reg0_q\,
	datad => \Mux0~1_combout\,
	combout => \correct~1_combout\);

-- Location: LCCOMB_X110_Y24_N6
\correct$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \correct$latch~combout\ = (\correct~1_combout\ & ((\wrong~2_combout\))) # (!\correct~1_combout\ & (\correct$latch~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \correct$latch~combout\,
	datac => \wrong~2_combout\,
	datad => \correct~1_combout\,
	combout => \correct$latch~combout\);

-- Location: LCCOMB_X110_Y24_N22
\lc[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \lc[0]~5_combout\ = lc(0) $ (((\isPlayer~reg0_q\ & \correct$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \isPlayer~reg0_q\,
	datac => lc(0),
	datad => \correct$latch~combout\,
	combout => \lc[0]~5_combout\);

-- Location: FF_X110_Y24_N23
\lc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|ALT_INV_outClock~q\,
	d => \lc[0]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lc(0));

-- Location: LCCOMB_X110_Y24_N10
\lc[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \lc[1]~6_combout\ = (lc(0) & (lc(1) $ (VCC))) # (!lc(0) & (lc(1) & VCC))
-- \lc[1]~7\ = CARRY((lc(0) & lc(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lc(0),
	datab => lc(1),
	datad => VCC,
	combout => \lc[1]~6_combout\,
	cout => \lc[1]~7\);

-- Location: LCCOMB_X110_Y24_N28
\lc[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \lc[0]~8_combout\ = (\isPlayer~reg0_q\ & \correct$latch~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \isPlayer~reg0_q\,
	datad => \correct$latch~combout\,
	combout => \lc[0]~8_combout\);

-- Location: FF_X110_Y24_N11
\lc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|ALT_INV_outClock~q\,
	d => \lc[1]~6_combout\,
	ena => \lc[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lc(1));

-- Location: LCCOMB_X110_Y24_N12
\lc[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \lc[2]~9_combout\ = (lc(2) & (!\lc[1]~7\)) # (!lc(2) & ((\lc[1]~7\) # (GND)))
-- \lc[2]~10\ = CARRY((!\lc[1]~7\) # (!lc(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => lc(2),
	datad => VCC,
	cin => \lc[1]~7\,
	combout => \lc[2]~9_combout\,
	cout => \lc[2]~10\);

-- Location: FF_X110_Y24_N13
\lc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|ALT_INV_outClock~q\,
	d => \lc[2]~9_combout\,
	ena => \lc[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lc(2));

-- Location: LCCOMB_X110_Y24_N14
\lc[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \lc[3]~11_combout\ = (lc(3) & (\lc[2]~10\ $ (GND))) # (!lc(3) & (!\lc[2]~10\ & VCC))
-- \lc[3]~12\ = CARRY((lc(3) & !\lc[2]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => lc(3),
	datad => VCC,
	cin => \lc[2]~10\,
	combout => \lc[3]~11_combout\,
	cout => \lc[3]~12\);

-- Location: FF_X110_Y24_N15
\lc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|ALT_INV_outClock~q\,
	d => \lc[3]~11_combout\,
	ena => \lc[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lc(3));

-- Location: LCCOMB_X110_Y24_N16
\lc[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \lc[4]~13_combout\ = (lc(4) & (!\lc[3]~12\)) # (!lc(4) & ((\lc[3]~12\) # (GND)))
-- \lc[4]~14\ = CARRY((!\lc[3]~12\) # (!lc(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => lc(4),
	datad => VCC,
	cin => \lc[3]~12\,
	combout => \lc[4]~13_combout\,
	cout => \lc[4]~14\);

-- Location: FF_X110_Y24_N17
\lc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|ALT_INV_outClock~q\,
	d => \lc[4]~13_combout\,
	ena => \lc[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lc(4));

-- Location: LCCOMB_X110_Y24_N18
\lc[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \lc[5]~15_combout\ = lc(5) $ (!\lc[4]~14\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => lc(5),
	cin => \lc[4]~14\,
	combout => \lc[5]~15_combout\);

-- Location: FF_X110_Y24_N19
\lc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|ALT_INV_outClock~q\,
	d => \lc[5]~15_combout\,
	ena => \lc[0]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => lc(5));

-- Location: LCCOMB_X108_Y24_N8
\sc2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2~0_combout\ = (\isPlayer~reg0_q\ & sc2(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \isPlayer~reg0_q\,
	datad => sc2(5),
	combout => \sc2~0_combout\);

-- Location: LCCOMB_X109_Y24_N30
\sc2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2~1_combout\ = (\isPlayer~reg0_q\ & sc2(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \isPlayer~reg0_q\,
	datad => sc2(4),
	combout => \sc2~1_combout\);

-- Location: LCCOMB_X109_Y24_N26
\sc2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2~2_combout\ = (\isPlayer~reg0_q\ & sc2(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \isPlayer~reg0_q\,
	datad => sc2(3),
	combout => \sc2~2_combout\);

-- Location: LCCOMB_X109_Y24_N6
\sc2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2~3_combout\ = (sc2(2) & \isPlayer~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sc2(2),
	datad => \isPlayer~reg0_q\,
	combout => \sc2~3_combout\);

-- Location: LCCOMB_X109_Y24_N0
\sc2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2~4_combout\ = (sc2(1) & \isPlayer~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sc2(1),
	datad => \isPlayer~reg0_q\,
	combout => \sc2~4_combout\);

-- Location: LCCOMB_X109_Y24_N22
\sc2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2~5_combout\ = (sc2(0) & \isPlayer~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => sc2(0),
	datad => \isPlayer~reg0_q\,
	combout => \sc2~5_combout\);

-- Location: LCCOMB_X109_Y24_N10
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_cout\ = CARRY((!\sc2~5_combout\ & lc(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc2~5_combout\,
	datab => lc(0),
	datad => VCC,
	cout => \LessThan0~1_cout\);

-- Location: LCCOMB_X109_Y24_N12
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_cout\ = CARRY((lc(1) & (\sc2~4_combout\ & !\LessThan0~1_cout\)) # (!lc(1) & ((\sc2~4_combout\) # (!\LessThan0~1_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => lc(1),
	datab => \sc2~4_combout\,
	datad => VCC,
	cin => \LessThan0~1_cout\,
	cout => \LessThan0~3_cout\);

-- Location: LCCOMB_X109_Y24_N14
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_cout\ = CARRY((\sc2~3_combout\ & (lc(2) & !\LessThan0~3_cout\)) # (!\sc2~3_combout\ & ((lc(2)) # (!\LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc2~3_combout\,
	datab => lc(2),
	datad => VCC,
	cin => \LessThan0~3_cout\,
	cout => \LessThan0~5_cout\);

-- Location: LCCOMB_X109_Y24_N16
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_cout\ = CARRY((\sc2~2_combout\ & ((!\LessThan0~5_cout\) # (!lc(3)))) # (!\sc2~2_combout\ & (!lc(3) & !\LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc2~2_combout\,
	datab => lc(3),
	datad => VCC,
	cin => \LessThan0~5_cout\,
	cout => \LessThan0~7_cout\);

-- Location: LCCOMB_X109_Y24_N18
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_cout\ = CARRY((\sc2~1_combout\ & (lc(4) & !\LessThan0~7_cout\)) # (!\sc2~1_combout\ & ((lc(4)) # (!\LessThan0~7_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \sc2~1_combout\,
	datab => lc(4),
	datad => VCC,
	cin => \LessThan0~7_cout\,
	cout => \LessThan0~9_cout\);

-- Location: LCCOMB_X109_Y24_N20
\LessThan0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~10_combout\ = (lc(5) & ((\LessThan0~9_cout\) # (!\sc2~0_combout\))) # (!lc(5) & (\LessThan0~9_cout\ & !\sc2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => lc(5),
	datad => \sc2~0_combout\,
	cin => \LessThan0~9_cout\,
	combout => \LessThan0~10_combout\);

-- Location: LCCOMB_X109_Y24_N2
\sc2[4]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2[4]~6_combout\ = (\isPlayer~reg0_q\ & \LessThan0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \isPlayer~reg0_q\,
	datad => \LessThan0~10_combout\,
	combout => \sc2[4]~6_combout\);

-- Location: LCCOMB_X109_Y24_N24
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (\correct~0_combout\ & (\Mux0~1_combout\ & (\Add0~0_combout\ & \sc2[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \correct~0_combout\,
	datab => \Mux0~1_combout\,
	datac => \Add0~0_combout\,
	datad => \sc2[4]~6_combout\,
	combout => \Add0~2_combout\);

-- Location: LCCOMB_X107_Y24_N24
\sc2[0]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc2[0]~7_combout\ = ((\Equal0~0_combout\ & \always0~0_combout\)) # (!\isPlayer~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \isPlayer~reg0_q\,
	datac => \Equal0~0_combout\,
	datad => \always0~0_combout\,
	combout => \sc2[0]~7_combout\);

-- Location: LCCOMB_X109_Y24_N4
\sc2[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- sc2(0) = (\sc2[0]~7_combout\ & ((\Add0~2_combout\))) # (!\sc2[0]~7_combout\ & (sc2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sc2(0),
	datac => \Add0~2_combout\,
	datad => \sc2[0]~7_combout\,
	combout => sc2(0));

-- Location: LCCOMB_X108_Y24_N14
\Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = (\Add0~1\ & (((!\isPlayer~reg0_q\)) # (!sc2(1)))) # (!\Add0~1\ & (((sc2(1) & \isPlayer~reg0_q\)) # (GND)))
-- \Add0~4\ = CARRY(((!\Add0~1\) # (!\isPlayer~reg0_q\)) # (!sc2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sc2(1),
	datab => \isPlayer~reg0_q\,
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~3_combout\,
	cout => \Add0~4\);

-- Location: LCCOMB_X108_Y24_N4
\Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = (\Add0~3_combout\ & (\Mux0~1_combout\ & (\correct~0_combout\ & \sc2[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datab => \Mux0~1_combout\,
	datac => \correct~0_combout\,
	datad => \sc2[4]~6_combout\,
	combout => \Add0~5_combout\);

-- Location: LCCOMB_X108_Y24_N6
\sc2[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- sc2(1) = (\sc2[0]~7_combout\ & ((\Add0~5_combout\))) # (!\sc2[0]~7_combout\ & (sc2(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc2(1),
	datab => \Add0~5_combout\,
	datad => \sc2[0]~7_combout\,
	combout => sc2(1));

-- Location: LCCOMB_X108_Y24_N16
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (\Add0~4\ & (\isPlayer~reg0_q\ & (sc2(2) & VCC))) # (!\Add0~4\ & ((((\isPlayer~reg0_q\ & sc2(2))))))
-- \Add0~7\ = CARRY((\isPlayer~reg0_q\ & (sc2(2) & !\Add0~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \isPlayer~reg0_q\,
	datab => sc2(2),
	datad => VCC,
	cin => \Add0~4\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X109_Y24_N28
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (\correct~0_combout\ & (\Mux0~1_combout\ & (\Add0~6_combout\ & \sc2[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \correct~0_combout\,
	datab => \Mux0~1_combout\,
	datac => \Add0~6_combout\,
	datad => \sc2[4]~6_combout\,
	combout => \Add0~8_combout\);

-- Location: LCCOMB_X109_Y24_N8
\sc2[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- sc2(2) = (\sc2[0]~7_combout\ & ((\Add0~8_combout\))) # (!\sc2[0]~7_combout\ & (sc2(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sc2(2),
	datac => \Add0~8_combout\,
	datad => \sc2[0]~7_combout\,
	combout => sc2(2));

-- Location: LCCOMB_X108_Y24_N18
\Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~9_combout\ = (\Add0~7\ & (((!sc2(3))) # (!\isPlayer~reg0_q\))) # (!\Add0~7\ & (((\isPlayer~reg0_q\ & sc2(3))) # (GND)))
-- \Add0~10\ = CARRY(((!\Add0~7\) # (!sc2(3))) # (!\isPlayer~reg0_q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \isPlayer~reg0_q\,
	datab => sc2(3),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~9_combout\,
	cout => \Add0~10\);

-- Location: LCCOMB_X108_Y24_N26
\Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~11_combout\ = (\Add0~9_combout\ & (\Mux0~1_combout\ & (\correct~0_combout\ & \sc2[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~9_combout\,
	datab => \Mux0~1_combout\,
	datac => \correct~0_combout\,
	datad => \sc2[4]~6_combout\,
	combout => \Add0~11_combout\);

-- Location: LCCOMB_X108_Y24_N28
\sc2[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- sc2(3) = (\sc2[0]~7_combout\ & (\Add0~11_combout\)) # (!\sc2[0]~7_combout\ & ((sc2(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~11_combout\,
	datac => sc2(3),
	datad => \sc2[0]~7_combout\,
	combout => sc2(3));

-- Location: LCCOMB_X108_Y24_N20
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (\Add0~10\ & (sc2(4) & (\isPlayer~reg0_q\ & VCC))) # (!\Add0~10\ & ((((sc2(4) & \isPlayer~reg0_q\)))))
-- \Add0~13\ = CARRY((sc2(4) & (\isPlayer~reg0_q\ & !\Add0~10\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011100001000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sc2(4),
	datab => \isPlayer~reg0_q\,
	datad => VCC,
	cin => \Add0~10\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X108_Y24_N0
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\Add0~12_combout\ & (\Mux0~1_combout\ & (\correct~0_combout\ & \sc2[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~12_combout\,
	datab => \Mux0~1_combout\,
	datac => \correct~0_combout\,
	datad => \sc2[4]~6_combout\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X108_Y24_N30
\sc2[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- sc2(4) = (\sc2[0]~7_combout\ & (\Add0~14_combout\)) # (!\sc2[0]~7_combout\ & ((sc2(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~14_combout\,
	datac => sc2(4),
	datad => \sc2[0]~7_combout\,
	combout => sc2(4));

-- Location: LCCOMB_X108_Y24_N22
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = \Add0~13\ $ (((\isPlayer~reg0_q\ & sc2(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \isPlayer~reg0_q\,
	datad => sc2(5),
	cin => \Add0~13\,
	combout => \Add0~15_combout\);

-- Location: LCCOMB_X108_Y24_N2
\Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~17_combout\ = (\Add0~15_combout\ & (\Mux0~1_combout\ & (\correct~0_combout\ & \sc2[4]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~15_combout\,
	datab => \Mux0~1_combout\,
	datac => \correct~0_combout\,
	datad => \sc2[4]~6_combout\,
	combout => \Add0~17_combout\);

-- Location: LCCOMB_X108_Y24_N24
\sc2[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- sc2(5) = (\sc2[0]~7_combout\ & ((\Add0~17_combout\))) # (!\sc2[0]~7_combout\ & (sc2(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sc2(5),
	datac => \Add0~17_combout\,
	datad => \sc2[0]~7_combout\,
	combout => sc2(5));

-- Location: LCCOMB_X111_Y24_N2
\r|Mux61~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Mux61~4_combout\ = (!sc2(1) & (!sc2(0) & (!sc2(2) & !sc2(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc2(1),
	datab => sc2(0),
	datac => sc2(2),
	datad => sc2(3),
	combout => \r|Mux61~4_combout\);

-- Location: LCCOMB_X111_Y24_N12
\r|Mux61~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Mux61~2_combout\ = (sc2(1) & ((sc2(0) & ((sc2(3)) # (!sc2(2)))) # (!sc2(0) & (sc2(2))))) # (!sc2(1) & (sc2(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc2(1),
	datab => sc2(0),
	datac => sc2(2),
	datad => sc2(3),
	combout => \r|Mux61~2_combout\);

-- Location: LCCOMB_X111_Y24_N30
\r|Mux61~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Mux61~1_combout\ = (sc2(1) & ((sc2(0)) # (sc2(2) $ (!sc2(3))))) # (!sc2(1) & (sc2(2) $ (((sc2(0) & sc2(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc2(1),
	datab => sc2(0),
	datac => sc2(2),
	datad => sc2(3),
	combout => \r|Mux61~1_combout\);

-- Location: LCCOMB_X111_Y24_N26
\r|Mux61~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Mux61~3_combout\ = (sc2(5) & (((sc2(4))))) # (!sc2(5) & ((sc2(4) & ((!\r|Mux61~1_combout\))) # (!sc2(4) & (\r|Mux61~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|Mux61~2_combout\,
	datab => sc2(5),
	datac => \r|Mux61~1_combout\,
	datad => sc2(4),
	combout => \r|Mux61~3_combout\);

-- Location: LCCOMB_X111_Y24_N10
\r|Mux61~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Mux61~0_combout\ = (sc2(0) & (!sc2(2) & (sc2(1) $ (sc2(3))))) # (!sc2(0) & (sc2(1) $ ((sc2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc2(1),
	datab => sc2(0),
	datac => sc2(2),
	datad => sc2(3),
	combout => \r|Mux61~0_combout\);

-- Location: LCCOMB_X111_Y24_N4
\r|Mux61~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Mux61~5_combout\ = (sc2(5) & ((\r|Mux61~3_combout\ & (\r|Mux61~4_combout\)) # (!\r|Mux61~3_combout\ & ((\r|Mux61~0_combout\))))) # (!sc2(5) & (((\r|Mux61~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc2(5),
	datab => \r|Mux61~4_combout\,
	datac => \r|Mux61~3_combout\,
	datad => \r|Mux61~0_combout\,
	combout => \r|Mux61~5_combout\);

-- Location: LCCOMB_X112_Y24_N30
\r|Mux82~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Mux82~3_combout\ = (sc2(0) & (!sc2(2) & ((!sc2(3)) # (!sc2(1))))) # (!sc2(0) & ((sc2(1) & ((!sc2(3)) # (!sc2(2)))) # (!sc2(1) & ((sc2(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011100101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc2(1),
	datab => sc2(0),
	datac => sc2(2),
	datad => sc2(3),
	combout => \r|Mux82~3_combout\);

-- Location: LCCOMB_X112_Y24_N28
\r|Mux82~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Mux82~0_combout\ = (sc2(0) & ((sc2(2)) # ((!sc2(1) & !sc2(3))))) # (!sc2(0) & ((sc2(2) & (!sc2(1))) # (!sc2(2) & ((sc2(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001111010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc2(1),
	datab => sc2(0),
	datac => sc2(2),
	datad => sc2(3),
	combout => \r|Mux82~0_combout\);

-- Location: LCCOMB_X112_Y24_N12
\r|Mux82~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Mux82~1_combout\ = (sc2(1) & ((sc2(0) & ((sc2(3)))) # (!sc2(0) & (!sc2(2))))) # (!sc2(1) & (sc2(0) $ (((sc2(2) & !sc2(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc2(1),
	datab => sc2(0),
	datac => sc2(2),
	datad => sc2(3),
	combout => \r|Mux82~1_combout\);

-- Location: LCCOMB_X112_Y24_N24
\r|Mux82~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Mux82~2_combout\ = (sc2(5) & (((!sc2(4) & !\r|Mux82~1_combout\)))) # (!sc2(5) & (!\r|Mux82~0_combout\ & (sc2(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc2(5),
	datab => \r|Mux82~0_combout\,
	datac => sc2(4),
	datad => \r|Mux82~1_combout\,
	combout => \r|Mux82~2_combout\);

-- Location: LCCOMB_X112_Y24_N20
\r|Mux82~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Mux82~4_combout\ = (\r|Mux82~2_combout\) # ((\r|Mux82~3_combout\ & (!sc2(5) & !sc2(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|Mux82~3_combout\,
	datab => sc2(5),
	datac => sc2(4),
	datad => \r|Mux82~2_combout\,
	combout => \r|Mux82~4_combout\);

-- Location: LCCOMB_X107_Y24_N0
\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\r|Mux82~4_combout\ & (((\r|Mux61~5_combout\)) # (!\s1~input_o\))) # (!\r|Mux82~4_combout\ & (((!\r|Mux61~5_combout\ & !\s0~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|Mux82~4_combout\,
	datab => \s1~input_o\,
	datac => \r|Mux61~5_combout\,
	datad => \s0~input_o\,
	combout => \Mux0~0_combout\);

-- Location: LCCOMB_X107_Y24_N8
\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\r|Mux61~5_combout\ & ((\Mux0~0_combout\ & ((!\s3~input_o\))) # (!\Mux0~0_combout\ & (!\s2~input_o\)))) # (!\r|Mux61~5_combout\ & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \s2~input_o\,
	datab => \s3~input_o\,
	datac => \r|Mux61~5_combout\,
	datad => \Mux0~0_combout\,
	combout => \Mux0~1_combout\);

-- Location: LCCOMB_X107_Y24_N22
\wrong~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \wrong~3_combout\ = ((\Equal0~0_combout\ & (!\Mux0~1_combout\ & \always0~0_combout\))) # (!\isPlayer~reg0_q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011101100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~0_combout\,
	datab => \isPlayer~reg0_q\,
	datac => \Mux0~1_combout\,
	datad => \always0~0_combout\,
	combout => \wrong~3_combout\);

-- Location: LCCOMB_X106_Y24_N10
\wrong$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \wrong$latch~combout\ = (\wrong~3_combout\ & (\wrong~2_combout\)) # (!\wrong~3_combout\ & ((\wrong$latch~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrong~2_combout\,
	datac => \wrong$latch~combout\,
	datad => \wrong~3_combout\,
	combout => \wrong$latch~combout\);

-- Location: CLKCTRL_G5
\comb_3|outClock~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \comb_3|outClock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \comb_3|outClock~clkctrl_outclk\);

-- Location: LCCOMB_X106_Y24_N14
\sc[0]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc[0]~6_combout\ = sc(0) $ (VCC)
-- \sc[0]~7\ = CARRY(sc(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc(0),
	datad => VCC,
	combout => \sc[0]~6_combout\,
	cout => \sc[0]~7\);

-- Location: LCCOMB_X106_Y24_N18
\sc[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc[2]~11_combout\ = (sc(2) & (\sc[1]~10\ $ (GND))) # (!sc(2) & (!\sc[1]~10\ & VCC))
-- \sc[2]~12\ = CARRY((sc(2) & !\sc[1]~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sc(2),
	datad => VCC,
	cin => \sc[1]~10\,
	combout => \sc[2]~11_combout\,
	cout => \sc[2]~12\);

-- Location: LCCOMB_X106_Y24_N20
\sc[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc[3]~13_combout\ = (sc(3) & (!\sc[2]~12\)) # (!sc(3) & ((\sc[2]~12\) # (GND)))
-- \sc[3]~14\ = CARRY((!\sc[2]~12\) # (!sc(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sc(3),
	datad => VCC,
	cin => \sc[2]~12\,
	combout => \sc[3]~13_combout\,
	cout => \sc[3]~14\);

-- Location: FF_X106_Y24_N21
\sc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|ALT_INV_outClock~clkctrl_outclk\,
	d => \sc[3]~13_combout\,
	sclr => \sc[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sc(3));

-- Location: LCCOMB_X106_Y24_N22
\sc[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc[4]~15_combout\ = (sc(4) & (\sc[3]~14\ $ (GND))) # (!sc(4) & (!\sc[3]~14\ & VCC))
-- \sc[4]~16\ = CARRY((sc(4) & !\sc[3]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sc(4),
	datad => VCC,
	cin => \sc[3]~14\,
	combout => \sc[4]~15_combout\,
	cout => \sc[4]~16\);

-- Location: FF_X106_Y24_N23
\sc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|ALT_INV_outClock~clkctrl_outclk\,
	d => \sc[4]~15_combout\,
	sclr => \sc[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sc(4));

-- Location: LCCOMB_X106_Y24_N24
\sc[5]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc[5]~17_combout\ = sc(5) $ (\sc[4]~16\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => sc(5),
	cin => \sc[4]~16\,
	combout => \sc[5]~17_combout\);

-- Location: FF_X106_Y24_N25
\sc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|ALT_INV_outClock~clkctrl_outclk\,
	d => \sc[5]~17_combout\,
	sclr => \sc[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sc(5));

-- Location: LCCOMB_X106_Y24_N28
\isPlayer~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \isPlayer~2_combout\ = (lc(5) & (sc(5) & (lc(4) $ (!sc(4))))) # (!lc(5) & (!sc(5) & (lc(4) $ (!sc(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lc(5),
	datab => lc(4),
	datac => sc(4),
	datad => sc(5),
	combout => \isPlayer~2_combout\);

-- Location: LCCOMB_X106_Y24_N26
\isPlayer~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \isPlayer~0_combout\ = (lc(1) & (sc(1) & (lc(0) $ (!sc(0))))) # (!lc(1) & (!sc(1) & (lc(0) $ (!sc(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lc(1),
	datab => lc(0),
	datac => sc(0),
	datad => sc(1),
	combout => \isPlayer~0_combout\);

-- Location: LCCOMB_X106_Y24_N30
\sc[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc[3]~8_combout\ = (\isPlayer~reg0_q\) # ((\isPlayer~1_combout\ & (\isPlayer~2_combout\ & \isPlayer~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \isPlayer~1_combout\,
	datab => \isPlayer~2_combout\,
	datac => \isPlayer~reg0_q\,
	datad => \isPlayer~0_combout\,
	combout => \sc[3]~8_combout\);

-- Location: FF_X106_Y24_N15
\sc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|ALT_INV_outClock~clkctrl_outclk\,
	d => \sc[0]~6_combout\,
	sclr => \sc[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sc(0));

-- Location: LCCOMB_X106_Y24_N16
\sc[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sc[1]~9_combout\ = (sc(1) & (!\sc[0]~7\)) # (!sc(1) & ((\sc[0]~7\) # (GND)))
-- \sc[1]~10\ = CARRY((!\sc[0]~7\) # (!sc(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => sc(1),
	datad => VCC,
	cin => \sc[0]~7\,
	combout => \sc[1]~9_combout\,
	cout => \sc[1]~10\);

-- Location: FF_X106_Y24_N17
\sc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|ALT_INV_outClock~clkctrl_outclk\,
	d => \sc[1]~9_combout\,
	sclr => \sc[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sc(1));

-- Location: FF_X106_Y24_N19
\sc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|ALT_INV_outClock~clkctrl_outclk\,
	d => \sc[2]~11_combout\,
	sclr => \sc[3]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => sc(2));

-- Location: LCCOMB_X106_Y24_N8
\isPlayer~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \isPlayer~1_combout\ = (lc(3) & (sc(3) & (sc(2) $ (!lc(2))))) # (!lc(3) & (!sc(3) & (sc(2) $ (!lc(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lc(3),
	datab => sc(2),
	datac => lc(2),
	datad => sc(3),
	combout => \isPlayer~1_combout\);

-- Location: LCCOMB_X106_Y24_N0
\isPlayer~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \isPlayer~3_combout\ = (!\isPlayer~reg0_q\ & (\isPlayer~1_combout\ & (\isPlayer~0_combout\ & \isPlayer~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \isPlayer~reg0_q\,
	datab => \isPlayer~1_combout\,
	datac => \isPlayer~0_combout\,
	datad => \isPlayer~2_combout\,
	combout => \isPlayer~3_combout\);

-- Location: LCCOMB_X106_Y24_N6
\isPlayer~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \isPlayer~4_combout\ = (\isPlayer~3_combout\) # ((!\wrong$latch~combout\ & (!\correct$latch~combout\ & \isPlayer~reg0_q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \wrong$latch~combout\,
	datab => \correct$latch~combout\,
	datac => \isPlayer~reg0_q\,
	datad => \isPlayer~3_combout\,
	combout => \isPlayer~4_combout\);

-- Location: FF_X106_Y24_N7
\isPlayer~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \comb_3|ALT_INV_outClock~q\,
	d => \isPlayer~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \isPlayer~reg0_q\);

-- Location: LCCOMB_X105_Y24_N6
\r|Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Mux19~4_combout\ = (!sc(2) & (!sc(0) & (!sc(3) & !sc(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc(2),
	datab => sc(0),
	datac => sc(3),
	datad => sc(1),
	combout => \r|Mux19~4_combout\);

-- Location: LCCOMB_X105_Y24_N22
\r|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Mux19~2_combout\ = (sc(2) & ((sc(0) & ((sc(3)) # (!sc(1)))) # (!sc(0) & ((sc(1)))))) # (!sc(2) & (sc(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc(2),
	datab => sc(0),
	datac => sc(3),
	datad => sc(1),
	combout => \r|Mux19~2_combout\);

-- Location: LCCOMB_X105_Y24_N24
\r|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Mux19~1_combout\ = (sc(0) & ((sc(1)) # (sc(2) $ (sc(3))))) # (!sc(0) & (sc(2) $ (((!sc(3) & sc(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc(2),
	datab => sc(0),
	datac => sc(3),
	datad => sc(1),
	combout => \r|Mux19~1_combout\);

-- Location: LCCOMB_X105_Y24_N20
\r|Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Mux19~3_combout\ = (sc(4) & (((sc(5)) # (!\r|Mux19~1_combout\)))) # (!sc(4) & (\r|Mux19~2_combout\ & (!sc(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|Mux19~2_combout\,
	datab => sc(4),
	datac => sc(5),
	datad => \r|Mux19~1_combout\,
	combout => \r|Mux19~3_combout\);

-- Location: LCCOMB_X105_Y24_N2
\r|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Mux19~0_combout\ = (sc(2) & (!sc(0) & ((!sc(1))))) # (!sc(2) & (sc(1) $ (((sc(0) & sc(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010101100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc(2),
	datab => sc(0),
	datac => sc(3),
	datad => sc(1),
	combout => \r|Mux19~0_combout\);

-- Location: LCCOMB_X105_Y24_N4
\r|Mux19~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Mux19~5_combout\ = (\r|Mux19~3_combout\ & ((\r|Mux19~4_combout\) # ((!sc(5))))) # (!\r|Mux19~3_combout\ & (((sc(5) & \r|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|Mux19~4_combout\,
	datab => \r|Mux19~3_combout\,
	datac => sc(5),
	datad => \r|Mux19~0_combout\,
	combout => \r|Mux19~5_combout\);

-- Location: LCCOMB_X105_Y24_N30
\r|Mux40~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Mux40~1_combout\ = (sc(1) & ((sc(0) & ((sc(3)))) # (!sc(0) & (!sc(2))))) # (!sc(1) & (sc(0) $ (((sc(2) & !sc(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000111000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc(2),
	datab => sc(0),
	datac => sc(3),
	datad => sc(1),
	combout => \r|Mux40~1_combout\);

-- Location: LCCOMB_X105_Y24_N0
\r|Mux40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Mux40~0_combout\ = (sc(0) & (!sc(2) & ((!sc(1)) # (!sc(3))))) # (!sc(0) & ((sc(3) & ((!sc(1)) # (!sc(2)))) # (!sc(3) & ((sc(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011101110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc(2),
	datab => sc(0),
	datac => sc(3),
	datad => sc(1),
	combout => \r|Mux40~0_combout\);

-- Location: LCCOMB_X105_Y24_N8
\r|Mux40~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Mux40~2_combout\ = (!sc(4) & ((sc(5) & (!\r|Mux40~1_combout\)) # (!sc(5) & ((\r|Mux40~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \r|Mux40~1_combout\,
	datab => sc(4),
	datac => sc(5),
	datad => \r|Mux40~0_combout\,
	combout => \r|Mux40~2_combout\);

-- Location: LCCOMB_X105_Y24_N10
\r|Mux40~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Mux40~3_combout\ = (sc(2) & ((sc(0)) # ((!sc(1))))) # (!sc(2) & ((sc(0) & (!sc(3) & !sc(1))) # (!sc(0) & (sc(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc(2),
	datab => sc(0),
	datac => sc(3),
	datad => sc(1),
	combout => \r|Mux40~3_combout\);

-- Location: LCCOMB_X105_Y24_N16
\r|Mux40~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \r|Mux40~4_combout\ = (\r|Mux40~2_combout\) # ((!sc(5) & (sc(4) & !\r|Mux40~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc(5),
	datab => sc(4),
	datac => \r|Mux40~2_combout\,
	datad => \r|Mux40~3_combout\,
	combout => \r|Mux40~4_combout\);

-- Location: LCCOMB_X105_Y24_N14
\leds[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds[0]$latch~combout\ = (!\isPlayer~reg0_q\ & (!\r|Mux19~5_combout\ & !\r|Mux40~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \isPlayer~reg0_q\,
	datac => \r|Mux19~5_combout\,
	datad => \r|Mux40~4_combout\,
	combout => \leds[0]$latch~combout\);

-- Location: LCCOMB_X105_Y24_N12
\leds[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds[1]$latch~combout\ = (!\isPlayer~reg0_q\ & (!\r|Mux19~5_combout\ & \r|Mux40~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \isPlayer~reg0_q\,
	datac => \r|Mux19~5_combout\,
	datad => \r|Mux40~4_combout\,
	combout => \leds[1]$latch~combout\);

-- Location: LCCOMB_X105_Y24_N18
\leds[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds[2]$latch~combout\ = (!\isPlayer~reg0_q\ & (\r|Mux19~5_combout\ & !\r|Mux40~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \isPlayer~reg0_q\,
	datac => \r|Mux19~5_combout\,
	datad => \r|Mux40~4_combout\,
	combout => \leds[2]$latch~combout\);

-- Location: LCCOMB_X105_Y24_N28
\leds[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \leds[3]$latch~combout\ = (!\isPlayer~reg0_q\ & (\r|Mux19~5_combout\ & \r|Mux40~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \isPlayer~reg0_q\,
	datac => \r|Mux19~5_combout\,
	datad => \r|Mux40~4_combout\,
	combout => \leds[3]$latch~combout\);

-- Location: LCCOMB_X110_Y24_N26
\d3|segments[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|segments[0]~0_combout\ = (!lc(1) & (!lc(3) & (lc(0) $ (lc(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lc(0),
	datab => lc(2),
	datac => lc(1),
	datad => lc(3),
	combout => \d3|segments[0]~0_combout\);

-- Location: LCCOMB_X110_Y20_N0
\d3|segments[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|segments[0]~1_combout\ = (!lc(4) & (!lc(5) & \d3|segments[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => lc(4),
	datac => lc(5),
	datad => \d3|segments[0]~0_combout\,
	combout => \d3|segments[0]~1_combout\);

-- Location: LCCOMB_X110_Y24_N20
\d3|segments[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|segments[1]~2_combout\ = (lc(2) & (!lc(3) & (lc(0) $ (lc(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lc(0),
	datab => lc(2),
	datac => lc(1),
	datad => lc(3),
	combout => \d3|segments[1]~2_combout\);

-- Location: LCCOMB_X110_Y20_N10
\d3|segments[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|segments[1]~3_combout\ = (!lc(4) & (!lc(5) & \d3|segments[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => lc(4),
	datac => lc(5),
	datad => \d3|segments[1]~2_combout\,
	combout => \d3|segments[1]~3_combout\);

-- Location: LCCOMB_X110_Y24_N2
\d3|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|Decoder0~0_combout\ = (!lc(0) & (!lc(4) & (lc(1) & !lc(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lc(0),
	datab => lc(4),
	datac => lc(1),
	datad => lc(5),
	combout => \d3|Decoder0~0_combout\);

-- Location: LCCOMB_X110_Y24_N30
\d3|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|Decoder0~1_combout\ = (!lc(2) & (!lc(3) & \d3|Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => lc(2),
	datac => lc(3),
	datad => \d3|Decoder0~0_combout\,
	combout => \d3|Decoder0~1_combout\);

-- Location: LCCOMB_X110_Y24_N24
\d3|WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|WideOr7~0_combout\ = (!lc(3) & ((lc(0) & (lc(2) $ (!lc(1)))) # (!lc(0) & (lc(2) & !lc(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lc(0),
	datab => lc(2),
	datac => lc(1),
	datad => lc(3),
	combout => \d3|WideOr7~0_combout\);

-- Location: LCCOMB_X110_Y20_N12
\d3|WideOr7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|WideOr7~1_combout\ = (!lc(4) & (!lc(5) & \d3|WideOr7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => lc(4),
	datac => lc(5),
	datad => \d3|WideOr7~0_combout\,
	combout => \d3|WideOr7~1_combout\);

-- Location: LCCOMB_X110_Y24_N8
\d3|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|WideOr5~0_combout\ = (lc(0)) # ((lc(1) & ((lc(3)))) # (!lc(1) & (lc(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lc(0),
	datab => lc(2),
	datac => lc(1),
	datad => lc(3),
	combout => \d3|WideOr5~0_combout\);

-- Location: LCCOMB_X110_Y20_N22
\d3|WideOr5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|WideOr5~1_combout\ = (lc(4)) # ((lc(5)) # (\d3|WideOr5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => lc(4),
	datac => lc(5),
	datad => \d3|WideOr5~0_combout\,
	combout => \d3|WideOr5~1_combout\);

-- Location: LCCOMB_X110_Y24_N4
\d3|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|WideOr3~0_combout\ = (!lc(3) & ((lc(0) & ((lc(1)) # (!lc(2)))) # (!lc(0) & (!lc(2) & lc(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lc(0),
	datab => lc(2),
	datac => lc(1),
	datad => lc(3),
	combout => \d3|WideOr3~0_combout\);

-- Location: LCCOMB_X110_Y20_N28
\d3|WideOr3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|WideOr3~1_combout\ = (!lc(4) & (!lc(5) & \d3|WideOr3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => lc(4),
	datac => lc(5),
	datad => \d3|WideOr3~0_combout\,
	combout => \d3|WideOr3~1_combout\);

-- Location: LCCOMB_X110_Y24_N0
\d3|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|WideOr1~0_combout\ = (lc(3)) # ((lc(2) & ((!lc(1)) # (!lc(0)))) # (!lc(2) & ((lc(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lc(0),
	datab => lc(2),
	datac => lc(1),
	datad => lc(3),
	combout => \d3|WideOr1~0_combout\);

-- Location: LCCOMB_X110_Y21_N0
\d3|WideOr1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d3|WideOr1~1_combout\ = (lc(5)) # ((lc(4)) # (\d3|WideOr1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => lc(5),
	datac => lc(4),
	datad => \d3|WideOr1~0_combout\,
	combout => \d3|WideOr1~1_combout\);

-- Location: LCCOMB_X111_Y24_N18
\d2|segments[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|segments[0]~0_combout\ = (!sc2(1) & (!sc2(3) & (sc2(0) $ (sc2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc2(1),
	datab => sc2(0),
	datac => sc2(2),
	datad => sc2(3),
	combout => \d2|segments[0]~0_combout\);

-- Location: LCCOMB_X111_Y24_N20
\d2|segments[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|segments[0]~1_combout\ = (!sc2(5) & (!sc2(4) & \d2|segments[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc2(5),
	datac => sc2(4),
	datad => \d2|segments[0]~0_combout\,
	combout => \d2|segments[0]~1_combout\);

-- Location: LCCOMB_X111_Y24_N22
\d2|segments[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|segments[1]~2_combout\ = (sc2(2) & (!sc2(3) & (sc2(1) $ (sc2(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc2(1),
	datab => sc2(0),
	datac => sc2(2),
	datad => sc2(3),
	combout => \d2|segments[1]~2_combout\);

-- Location: LCCOMB_X111_Y24_N24
\d2|segments[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|segments[1]~3_combout\ = (\d2|segments[1]~2_combout\ & (!sc2(5) & !sc2(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \d2|segments[1]~2_combout\,
	datac => sc2(5),
	datad => sc2(4),
	combout => \d2|segments[1]~3_combout\);

-- Location: LCCOMB_X111_Y24_N8
\d2|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|Decoder0~0_combout\ = (sc2(1) & (!sc2(0) & (!sc2(2) & !sc2(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc2(1),
	datab => sc2(0),
	datac => sc2(2),
	datad => sc2(3),
	combout => \d2|Decoder0~0_combout\);

-- Location: LCCOMB_X111_Y24_N0
\d2|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|Decoder0~1_combout\ = (!sc2(5) & (\d2|Decoder0~0_combout\ & !sc2(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc2(5),
	datac => \d2|Decoder0~0_combout\,
	datad => sc2(4),
	combout => \d2|Decoder0~1_combout\);

-- Location: LCCOMB_X111_Y24_N28
\d2|WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|WideOr7~0_combout\ = (!sc2(3) & ((sc2(1) & (sc2(0) & sc2(2))) # (!sc2(1) & (sc2(0) $ (sc2(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc2(1),
	datab => sc2(0),
	datac => sc2(2),
	datad => sc2(3),
	combout => \d2|WideOr7~0_combout\);

-- Location: LCCOMB_X111_Y24_N16
\d2|WideOr7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|WideOr7~1_combout\ = (!sc2(5) & (!sc2(4) & \d2|WideOr7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc2(5),
	datac => sc2(4),
	datad => \d2|WideOr7~0_combout\,
	combout => \d2|WideOr7~1_combout\);

-- Location: LCCOMB_X111_Y24_N6
\d2|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|WideOr5~0_combout\ = (sc2(0)) # ((sc2(1) & ((sc2(3)))) # (!sc2(1) & (sc2(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc2(1),
	datab => sc2(0),
	datac => sc2(2),
	datad => sc2(3),
	combout => \d2|WideOr5~0_combout\);

-- Location: LCCOMB_X111_Y24_N14
\d2|WideOr5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|WideOr5~1_combout\ = (sc2(5)) # ((sc2(4)) # (\d2|WideOr5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc2(5),
	datac => sc2(4),
	datad => \d2|WideOr5~0_combout\,
	combout => \d2|WideOr5~1_combout\);

-- Location: LCCOMB_X112_Y24_N4
\d2|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|WideOr3~0_combout\ = (!sc2(3) & ((sc2(1) & ((sc2(0)) # (!sc2(2)))) # (!sc2(1) & (sc2(0) & !sc2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc2(1),
	datab => sc2(0),
	datac => sc2(3),
	datad => sc2(2),
	combout => \d2|WideOr3~0_combout\);

-- Location: LCCOMB_X112_Y24_N16
\d2|WideOr3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|WideOr3~1_combout\ = (!sc2(4) & (\d2|WideOr3~0_combout\ & !sc2(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc2(4),
	datac => \d2|WideOr3~0_combout\,
	datad => sc2(5),
	combout => \d2|WideOr3~1_combout\);

-- Location: LCCOMB_X112_Y24_N18
\d2|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|WideOr1~0_combout\ = (sc2(3)) # ((sc2(1) & ((!sc2(2)) # (!sc2(0)))) # (!sc2(1) & ((sc2(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc2(1),
	datab => sc2(0),
	datac => sc2(3),
	datad => sc2(2),
	combout => \d2|WideOr1~0_combout\);

-- Location: LCCOMB_X112_Y24_N8
\d2|WideOr1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d2|WideOr1~1_combout\ = (sc2(5)) # ((sc2(4)) # (\d2|WideOr1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc2(5),
	datac => sc2(4),
	datad => \d2|WideOr1~0_combout\,
	combout => \d2|WideOr1~1_combout\);

-- Location: LCCOMB_X107_Y46_N4
\d1|segments[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|segments[0]~0_combout\ = (!sc(3) & (!sc(1) & (sc(2) $ (sc(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc(3),
	datab => sc(2),
	datac => sc(1),
	datad => sc(0),
	combout => \d1|segments[0]~0_combout\);

-- Location: LCCOMB_X107_Y46_N30
\d1|segments[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|segments[0]~1_combout\ = (!sc(4) & (!sc(5) & \d1|segments[0]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc(4),
	datab => sc(5),
	datac => \d1|segments[0]~0_combout\,
	combout => \d1|segments[0]~1_combout\);

-- Location: LCCOMB_X107_Y46_N8
\d1|segments[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|segments[1]~2_combout\ = (!sc(3) & (sc(2) & (sc(1) $ (sc(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc(3),
	datab => sc(2),
	datac => sc(1),
	datad => sc(0),
	combout => \d1|segments[1]~2_combout\);

-- Location: LCCOMB_X107_Y46_N18
\d1|segments[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|segments[1]~3_combout\ = (!sc(4) & (!sc(5) & \d1|segments[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc(4),
	datab => sc(5),
	datac => \d1|segments[1]~2_combout\,
	combout => \d1|segments[1]~3_combout\);

-- Location: LCCOMB_X107_Y46_N16
\d1|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Decoder0~0_combout\ = (!sc(3) & (!sc(2) & (sc(1) & !sc(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc(3),
	datab => sc(2),
	datac => sc(1),
	datad => sc(0),
	combout => \d1|Decoder0~0_combout\);

-- Location: LCCOMB_X107_Y46_N2
\d1|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|Decoder0~1_combout\ = (!sc(5) & (!sc(4) & \d1|Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sc(5),
	datac => sc(4),
	datad => \d1|Decoder0~0_combout\,
	combout => \d1|Decoder0~1_combout\);

-- Location: LCCOMB_X107_Y46_N12
\d1|WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|WideOr7~0_combout\ = (!sc(3) & ((sc(2) & (sc(1) $ (!sc(0)))) # (!sc(2) & (!sc(1) & sc(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc(3),
	datab => sc(2),
	datac => sc(1),
	datad => sc(0),
	combout => \d1|WideOr7~0_combout\);

-- Location: LCCOMB_X107_Y46_N10
\d1|WideOr7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|WideOr7~1_combout\ = (!sc(5) & (!sc(4) & \d1|WideOr7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sc(5),
	datac => sc(4),
	datad => \d1|WideOr7~0_combout\,
	combout => \d1|WideOr7~1_combout\);

-- Location: LCCOMB_X107_Y46_N24
\d1|WideOr5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|WideOr5~0_combout\ = (sc(0)) # ((sc(1) & (sc(3))) # (!sc(1) & ((sc(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc(3),
	datab => sc(2),
	datac => sc(1),
	datad => sc(0),
	combout => \d1|WideOr5~0_combout\);

-- Location: LCCOMB_X107_Y46_N26
\d1|WideOr5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|WideOr5~1_combout\ = (sc(5)) # ((sc(4)) # (\d1|WideOr5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sc(5),
	datac => sc(4),
	datad => \d1|WideOr5~0_combout\,
	combout => \d1|WideOr5~1_combout\);

-- Location: LCCOMB_X107_Y46_N28
\d1|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|WideOr3~0_combout\ = (!sc(3) & ((sc(2) & (sc(1) & sc(0))) # (!sc(2) & ((sc(1)) # (sc(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc(3),
	datab => sc(2),
	datac => sc(1),
	datad => sc(0),
	combout => \d1|WideOr3~0_combout\);

-- Location: LCCOMB_X107_Y46_N14
\d1|WideOr3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|WideOr3~1_combout\ = (!sc(5) & (!sc(4) & \d1|WideOr3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sc(5),
	datac => sc(4),
	datad => \d1|WideOr3~0_combout\,
	combout => \d1|WideOr3~1_combout\);

-- Location: LCCOMB_X107_Y46_N20
\d1|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|WideOr1~0_combout\ = (sc(3)) # ((sc(2) & ((!sc(0)) # (!sc(1)))) # (!sc(2) & (sc(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sc(3),
	datab => sc(2),
	datac => sc(1),
	datad => sc(0),
	combout => \d1|WideOr1~0_combout\);

-- Location: LCCOMB_X107_Y46_N22
\d1|WideOr1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \d1|WideOr1~1_combout\ = (sc(5)) # ((sc(4)) # (\d1|WideOr1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sc(5),
	datac => sc(4),
	datad => \d1|WideOr1~0_combout\,
	combout => \d1|WideOr1~1_combout\);

ww_isPlayer <= \isPlayer~output_o\;

ww_wrong <= \wrong~output_o\;

ww_correct <= \correct~output_o\;

ww_leds(0) <= \leds[0]~output_o\;

ww_leds(1) <= \leds[1]~output_o\;

ww_leds(2) <= \leds[2]~output_o\;

ww_leds(3) <= \leds[3]~output_o\;

ww_track_seq(0) <= \track_seq[0]~output_o\;

ww_track_seq(1) <= \track_seq[1]~output_o\;

ww_track_seq(2) <= \track_seq[2]~output_o\;

ww_track_seq(3) <= \track_seq[3]~output_o\;

ww_l3(0) <= \l3[0]~output_o\;

ww_l3(1) <= \l3[1]~output_o\;

ww_l3(2) <= \l3[2]~output_o\;

ww_l3(3) <= \l3[3]~output_o\;

ww_l3(4) <= \l3[4]~output_o\;

ww_l3(5) <= \l3[5]~output_o\;

ww_l3(6) <= \l3[6]~output_o\;

ww_l2(0) <= \l2[0]~output_o\;

ww_l2(1) <= \l2[1]~output_o\;

ww_l2(2) <= \l2[2]~output_o\;

ww_l2(3) <= \l2[3]~output_o\;

ww_l2(4) <= \l2[4]~output_o\;

ww_l2(5) <= \l2[5]~output_o\;

ww_l2(6) <= \l2[6]~output_o\;

ww_l1(0) <= \l1[0]~output_o\;

ww_l1(1) <= \l1[1]~output_o\;

ww_l1(2) <= \l1[2]~output_o\;

ww_l1(3) <= \l1[3]~output_o\;

ww_l1(4) <= \l1[4]~output_o\;

ww_l1(5) <= \l1[5]~output_o\;

ww_l1(6) <= \l1[6]~output_o\;
END structure;


