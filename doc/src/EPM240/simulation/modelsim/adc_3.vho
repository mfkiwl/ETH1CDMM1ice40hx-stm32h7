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

-- VENDOR "Altera"
-- PROGRAM "Quartus II 32-bit"
-- VERSION "Version 13.0.1 Build 232 06/12/2013 Service Pack 1 SJ Web Edition"

-- DATE "05/26/2019 00:58:02"

-- 
-- Device: Altera EPM240T100C5 Package TQFP100
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXII;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXII.MAXII_COMPONENTS.ALL;

ENTITY 	adc_3 IS
    PORT (
	mclk : IN std_logic;
	comp : IN std_logic;
	sw_in : OUT std_logic;
	sw_up : OUT std_logic;
	sw_dn : OUT std_logic;
	sw_rst : OUT std_logic;
	sw_vref : OUT std_logic;
	sw_vref_n : OUT std_logic;
	so_dat : OUT std_logic;
	deb_0 : OUT std_logic;
	deb_1 : OUT std_logic;
	deb_2 : OUT std_logic
	);
END adc_3;

-- Design Ports Information
-- mclk	=>  Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- comp	=>  Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- sw_in	=>  Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sw_up	=>  Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sw_dn	=>  Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sw_rst	=>  Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sw_vref	=>  Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- sw_vref_n	=>  Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- so_dat	=>  Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- deb_0	=>  Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- deb_1	=>  Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
-- deb_2	=>  Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA


ARCHITECTURE structure OF adc_3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_mclk : std_logic;
SIGNAL ww_comp : std_logic;
SIGNAL ww_sw_in : std_logic;
SIGNAL ww_sw_up : std_logic;
SIGNAL ww_sw_dn : std_logic;
SIGNAL ww_sw_rst : std_logic;
SIGNAL ww_sw_vref : std_logic;
SIGNAL ww_sw_vref_n : std_logic;
SIGNAL ww_so_dat : std_logic;
SIGNAL ww_deb_0 : std_logic;
SIGNAL ww_deb_1 : std_logic;
SIGNAL ww_deb_2 : std_logic;
SIGNAL \mclk~combout\ : std_logic;
SIGNAL \cnt[0]~3\ : std_logic;
SIGNAL \cnt[0]~3COUT1_18\ : std_logic;
SIGNAL \cnt[1]~5\ : std_logic;
SIGNAL \cnt[1]~5COUT1_20\ : std_logic;
SIGNAL \cnt[2]~7\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \cnt[3]~9\ : std_logic;
SIGNAL \cnt[3]~9COUT1_22\ : std_logic;
SIGNAL \comp~combout\ : std_logic;
SIGNAL \cnt_stat[0]~15\ : std_logic;
SIGNAL \cnt_stat[0]~15COUT1_35\ : std_logic;
SIGNAL \cnt_stat[1]~19\ : std_logic;
SIGNAL \cnt_stat[1]~19COUT1_37\ : std_logic;
SIGNAL \cnt_stat[2]~21\ : std_logic;
SIGNAL \cnt_stat[2]~21COUT1_39\ : std_logic;
SIGNAL \cnt_stat[3]~17\ : std_logic;
SIGNAL \cnt_stat[3]~17COUT1_41\ : std_logic;
SIGNAL \cnt_stat[4]~11\ : std_logic;
SIGNAL \cnt_stat[5]~1\ : std_logic;
SIGNAL \cnt_stat[5]~1COUT1_43\ : std_logic;
SIGNAL \cnt_stat[6]~13\ : std_logic;
SIGNAL \cnt_stat[6]~13COUT1_45\ : std_logic;
SIGNAL \cnt_stat[7]~7\ : std_logic;
SIGNAL \cnt_stat[7]~7COUT1_47\ : std_logic;
SIGNAL \cnt_stat[8]~3\ : std_logic;
SIGNAL \cnt_stat[8]~3COUT1_49\ : std_logic;
SIGNAL \cnt_stat[9]~5\ : std_logic;
SIGNAL \rundown_cnt[0]~27\ : std_logic;
SIGNAL \rundown_cnt[0]~27COUT1_48\ : std_logic;
SIGNAL \rundown_cnt[1]~23\ : std_logic;
SIGNAL \rundown_cnt[1]~23COUT1_50\ : std_logic;
SIGNAL \rundown_cnt[2]~19\ : std_logic;
SIGNAL \rundown_cnt[3]~29\ : std_logic;
SIGNAL \rundown_cnt[3]~29COUT1_52\ : std_logic;
SIGNAL \rundown_cnt[4]~9\ : std_logic;
SIGNAL \rundown_cnt[4]~9COUT1_54\ : std_logic;
SIGNAL \rundown_cnt[5]~1\ : std_logic;
SIGNAL \rundown_cnt[5]~1COUT1_56\ : std_logic;
SIGNAL \rundown_cnt[6]~7\ : std_logic;
SIGNAL \rundown_cnt[6]~7COUT1_58\ : std_logic;
SIGNAL \LessThan4~0_combout\ : std_logic;
SIGNAL \LessThan6~1_combout\ : std_logic;
SIGNAL \runup_cnt[6]~23_combout\ : std_logic;
SIGNAL \runup_cnt[0]~17\ : std_logic;
SIGNAL \runup_cnt[0]~17COUT1_34\ : std_logic;
SIGNAL \runup_cnt[1]~13\ : std_logic;
SIGNAL \runup_cnt[1]~13COUT1_36\ : std_logic;
SIGNAL \runup_cnt[2]~9\ : std_logic;
SIGNAL \runup_cnt[2]~9COUT1_38\ : std_logic;
SIGNAL \runup_cnt[3]~21\ : std_logic;
SIGNAL \runup_cnt[3]~21COUT1_40\ : std_logic;
SIGNAL \runup_cnt[4]~5\ : std_logic;
SIGNAL \sw_up_r~0\ : std_logic;
SIGNAL \runup_cnt[5]~1\ : std_logic;
SIGNAL \runup_cnt[5]~1COUT1_42\ : std_logic;
SIGNAL \runup_cnt[6]~3\ : std_logic;
SIGNAL \runup_cnt[6]~3COUT1_44\ : std_logic;
SIGNAL \runup_cnt[7]~7\ : std_logic;
SIGNAL \runup_cnt[7]~7COUT1_46\ : std_logic;
SIGNAL \runup_cnt[8]~19\ : std_logic;
SIGNAL \runup_cnt[8]~19COUT1_48\ : std_logic;
SIGNAL \runup_cnt[9]~15\ : std_logic;
SIGNAL \LessThan7~1\ : std_logic;
SIGNAL \LessThan7~0\ : std_logic;
SIGNAL \LessThan7~2_combout\ : std_logic;
SIGNAL \state~14_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \state~18\ : std_logic;
SIGNAL \state.000~regout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \state~13_combout\ : std_logic;
SIGNAL \state~15\ : std_logic;
SIGNAL \state.001~regout\ : std_logic;
SIGNAL \uart_frame_start~regout\ : std_logic;
SIGNAL \always3~0\ : std_logic;
SIGNAL \LessThan6~2\ : std_logic;
SIGNAL \runup_state_r~7_combout\ : std_logic;
SIGNAL \runup_state_r.1~regout\ : std_logic;
SIGNAL \rundown_cnt[9]~33_combout\ : std_logic;
SIGNAL \rundown_cnt[7]~13\ : std_logic;
SIGNAL \rundown_cnt[8]~25\ : std_logic;
SIGNAL \rundown_cnt[8]~25COUT1_60\ : std_logic;
SIGNAL \rundown_cnt[9]~21\ : std_logic;
SIGNAL \rundown_cnt[9]~21COUT1_62\ : std_logic;
SIGNAL \rundown_cnt[10]~17\ : std_logic;
SIGNAL \rundown_cnt[10]~17COUT1_64\ : std_logic;
SIGNAL \rundown_cnt[11]~31\ : std_logic;
SIGNAL \rundown_cnt[11]~31COUT1_66\ : std_logic;
SIGNAL \rundown_cnt[12]~11\ : std_logic;
SIGNAL \rundown_cnt[9]~32\ : std_logic;
SIGNAL \state~16\ : std_logic;
SIGNAL \rundown_sign~regout\ : std_logic;
SIGNAL \LessThan6~0\ : std_logic;
SIGNAL \runup_state_r~6_combout\ : std_logic;
SIGNAL \state.010~0_combout\ : std_logic;
SIGNAL \state.010~regout\ : std_logic;
SIGNAL \state.011~regout\ : std_logic;
SIGNAL \cnt_stat[1]~22_combout\ : std_logic;
SIGNAL \cnt_stat[1]~23_combout\ : std_logic;
SIGNAL \cnt_stat[1]~24\ : std_logic;
SIGNAL \LessThan4~1_combout\ : std_logic;
SIGNAL \runup_state_r~5\ : std_logic;
SIGNAL \cnt_runup[0]~22_combout\ : std_logic;
SIGNAL \cnt_runup[0]~7\ : std_logic;
SIGNAL \cnt_runup[0]~7COUT1_33\ : std_logic;
SIGNAL \cnt_runup[1]~9\ : std_logic;
SIGNAL \cnt_runup[1]~9COUT1_35\ : std_logic;
SIGNAL \cnt_runup[2]~11\ : std_logic;
SIGNAL \cnt_runup[2]~11COUT1_37\ : std_logic;
SIGNAL \cnt_runup[3]~13\ : std_logic;
SIGNAL \cnt_runup[3]~13COUT1_39\ : std_logic;
SIGNAL \cnt_runup[4]~15\ : std_logic;
SIGNAL \cnt_runup[5]~17\ : std_logic;
SIGNAL \cnt_runup[5]~17COUT1_41\ : std_logic;
SIGNAL \cnt_runup[6]~19\ : std_logic;
SIGNAL \cnt_runup[6]~19COUT1_43\ : std_logic;
SIGNAL \cnt_runup[7]~21\ : std_logic;
SIGNAL \cnt_runup[7]~21COUT1_45\ : std_logic;
SIGNAL \cnt_runup[8]~1\ : std_logic;
SIGNAL \cnt_runup[8]~1COUT1_47\ : std_logic;
SIGNAL \cnt_runup[9]~3\ : std_logic;
SIGNAL \rundown_cnt[13]~3\ : std_logic;
SIGNAL \rundown_cnt[13]~3COUT1_68\ : std_logic;
SIGNAL \rundown_cnt[14]~5\ : std_logic;
SIGNAL \rundown_cnt[14]~5COUT1_70\ : std_logic;
SIGNAL \LessThan5~0\ : std_logic;
SIGNAL \LessThan5~1\ : std_logic;
SIGNAL \LessThan5~2_combout\ : std_logic;
SIGNAL \LessThan5~3_combout\ : std_logic;
SIGNAL \runup_cnt[6]~22\ : std_logic;
SIGNAL \LessThan0~1\ : std_logic;
SIGNAL \cnt[4]~11\ : std_logic;
SIGNAL \cnt[4]~11COUT1_24\ : std_logic;
SIGNAL \sw_vref_r[0]~2\ : std_logic;
SIGNAL \sw_vref_r[0]~3_combout\ : std_logic;
SIGNAL \sw_up_r~1\ : std_logic;
SIGNAL \sw_up_r~2_combout\ : std_logic;
SIGNAL \sw_up_r~3_combout\ : std_logic;
SIGNAL \runup_state_r.1~_wirecell\ : std_logic;
SIGNAL \uart_divider[1]~7\ : std_logic;
SIGNAL \uart_divider[1]~7COUT1_14\ : std_logic;
SIGNAL \uart_divider[2]~5\ : std_logic;
SIGNAL \uart_divider[2]~5COUT1_16\ : std_logic;
SIGNAL \uart_divider[3]~3\ : std_logic;
SIGNAL \uart_divider[3]~3COUT1_18\ : std_logic;
SIGNAL \uart_tx_a|Add0~0\ : std_logic;
SIGNAL \uart_tx_a|uart_tx_bit[2]~0_combout\ : std_logic;
SIGNAL \uart_tx_a|uart_tx_state~14_combout\ : std_logic;
SIGNAL \uart_tx_a|uart_tx_state~15_combout\ : std_logic;
SIGNAL \uart_tx_a|uart_tx_state~16\ : std_logic;
SIGNAL \uart_tx_a|uart_tx_state.011~regout\ : std_logic;
SIGNAL \uart_tx_a|uart_tx_state.100~regout\ : std_logic;
SIGNAL \uart_tx_a|uart_tx_busy~regout\ : std_logic;
SIGNAL \uart_frame_state~9_combout\ : std_logic;
SIGNAL \uart_frame_cnt[0]~6\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \uart_frame_cnt[3]~11_combout\ : std_logic;
SIGNAL \Add6~0\ : std_logic;
SIGNAL \Equal2~2\ : std_logic;
SIGNAL \uart_frame_state~10_combout\ : std_logic;
SIGNAL \uart_frame_state.000~regout\ : std_logic;
SIGNAL \uart_frame_state.001~regout\ : std_logic;
SIGNAL \uart_tx_start~regout\ : std_logic;
SIGNAL \uart_tx_a|uart_tx_state.000~regout\ : std_logic;
SIGNAL \uart_tx_a|uart_tx_state.001~regout\ : std_logic;
SIGNAL \uart_tx_a|uart_tx_state.010~regout\ : std_logic;
SIGNAL \uart_tx_a|uart_tx_pin~0\ : std_logic;
SIGNAL \Equal2~0_combout\ : std_logic;
SIGNAL \Equal4~0_combout\ : std_logic;
SIGNAL \Equal3~0_combout\ : std_logic;
SIGNAL \uart_tx_register[7]~0\ : std_logic;
SIGNAL \uart_tx_register[6]~1\ : std_logic;
SIGNAL \Equal2~1\ : std_logic;
SIGNAL \uart_tx_register~4\ : std_logic;
SIGNAL \uart_tx_register~8\ : std_logic;
SIGNAL \uart_tx_register~6\ : std_logic;
SIGNAL \uart_tx_a|Mux0~2_combout\ : std_logic;
SIGNAL \uart_tx_a|Mux0~3_combout\ : std_logic;
SIGNAL \uart_tx_register~2\ : std_logic;
SIGNAL \uart_tx_a|Mux0~0_combout\ : std_logic;
SIGNAL \uart_tx_a|Mux0~1_combout\ : std_logic;
SIGNAL \uart_tx_a|uart_tx_pin~1\ : std_logic;
SIGNAL \uart_tx_a|uart_tx_pin~regout\ : std_logic;
SIGNAL \uart_frame_r.001~regout\ : std_logic;
SIGNAL \~GND\ : std_logic;
SIGNAL uart_tx_register : std_logic_vector(7 DOWNTO 0);
SIGNAL uart_frame_cnt : std_logic_vector(3 DOWNTO 0);
SIGNAL uart_divider : std_logic_vector(5 DOWNTO 0);
SIGNAL cnt_stat : std_logic_vector(10 DOWNTO 0);
SIGNAL debug : std_logic_vector(2 DOWNTO 0);
SIGNAL sw_rst_r : std_logic_vector(0 DOWNTO 0);
SIGNAL frame_content : std_logic_vector(31 DOWNTO 0);
SIGNAL runup_cnt : std_logic_vector(10 DOWNTO 0);
SIGNAL sw_vref_r : std_logic_vector(0 DOWNTO 0);
SIGNAL cnt_runup : std_logic_vector(10 DOWNTO 0);
SIGNAL sw_up_r : std_logic_vector(0 DOWNTO 0);
SIGNAL cnt : std_logic_vector(5 DOWNTO 0);
SIGNAL rundown_cnt : std_logic_vector(15 DOWNTO 0);
SIGNAL result_content : std_logic_vector(31 DOWNTO 0);
SIGNAL \uart_tx_a|uart_tx_bit\ : std_logic_vector(2 DOWNTO 0);
SIGNAL sw_in_r : std_logic_vector(0 DOWNTO 0);
SIGNAL sw_dn_r : std_logic_vector(0 DOWNTO 0);
SIGNAL \ALT_INV_uart_frame_state.000~regout\ : std_logic;
SIGNAL ALT_INV_sw_vref_r : std_logic_vector(0 DOWNTO 0);
SIGNAL ALT_INV_sw_rst_r : std_logic_vector(0 DOWNTO 0);
SIGNAL ALT_INV_sw_in_r : std_logic_vector(0 DOWNTO 0);

BEGIN

ww_mclk <= mclk;
ww_comp <= comp;
sw_in <= ww_sw_in;
sw_up <= ww_sw_up;
sw_dn <= ww_sw_dn;
sw_rst <= ww_sw_rst;
sw_vref <= ww_sw_vref;
sw_vref_n <= ww_sw_vref_n;
so_dat <= ww_so_dat;
deb_0 <= ww_deb_0;
deb_1 <= ww_deb_1;
deb_2 <= ww_deb_2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_uart_frame_state.000~regout\ <= NOT \uart_frame_state.000~regout\;
ALT_INV_sw_vref_r(0) <= NOT sw_vref_r(0);
ALT_INV_sw_rst_r(0) <= NOT sw_rst_r(0);
ALT_INV_sw_in_r(0) <= NOT sw_in_r(0);

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\mclk~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_mclk,
	combout => \mclk~combout\);

-- Location: LC_X5_Y3_N2
\cnt[0]\ : maxii_lcell
-- Equation(s):
-- cnt(0) = DFFEAS((!cnt(0)), GLOBAL(\mclk~combout\), VCC, , , , , \LessThan0~1\, )
-- \cnt[0]~3\ = CARRY((cnt(0)))
-- \cnt[0]~3COUT1_18\ = CARRY((cnt(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	dataa => cnt(0),
	aclr => GND,
	sclr => \LessThan0~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(0),
	cout0 => \cnt[0]~3\,
	cout1 => \cnt[0]~3COUT1_18\);

-- Location: LC_X5_Y3_N3
\cnt[1]\ : maxii_lcell
-- Equation(s):
-- cnt(1) = DFFEAS(cnt(1) $ ((((\cnt[0]~3\)))), GLOBAL(\mclk~combout\), VCC, , , , , \LessThan0~1\, )
-- \cnt[1]~5\ = CARRY(((!\cnt[0]~3\)) # (!cnt(1)))
-- \cnt[1]~5COUT1_20\ = CARRY(((!\cnt[0]~3COUT1_18\)) # (!cnt(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	dataa => cnt(1),
	aclr => GND,
	sclr => \LessThan0~1\,
	cin0 => \cnt[0]~3\,
	cin1 => \cnt[0]~3COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(1),
	cout0 => \cnt[1]~5\,
	cout1 => \cnt[1]~5COUT1_20\);

-- Location: LC_X5_Y3_N4
\cnt[2]\ : maxii_lcell
-- Equation(s):
-- cnt(2) = DFFEAS(cnt(2) $ ((((!\cnt[1]~5\)))), GLOBAL(\mclk~combout\), VCC, , , , , \LessThan0~1\, )
-- \cnt[2]~7\ = CARRY((cnt(2) & ((!\cnt[1]~5COUT1_20\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	dataa => cnt(2),
	aclr => GND,
	sclr => \LessThan0~1\,
	cin0 => \cnt[1]~5\,
	cin1 => \cnt[1]~5COUT1_20\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(2),
	cout => \cnt[2]~7\);

-- Location: LC_X5_Y3_N5
\cnt[3]\ : maxii_lcell
-- Equation(s):
-- cnt(3) = DFFEAS(cnt(3) $ ((((\cnt[2]~7\)))), GLOBAL(\mclk~combout\), VCC, , , , , \LessThan0~1\, )
-- \cnt[3]~9\ = CARRY(((!\cnt[2]~7\)) # (!cnt(3)))
-- \cnt[3]~9COUT1_22\ = CARRY(((!\cnt[2]~7\)) # (!cnt(3)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	dataa => cnt(3),
	aclr => GND,
	sclr => \LessThan0~1\,
	cin => \cnt[2]~7\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(3),
	cout0 => \cnt[3]~9\,
	cout1 => \cnt[3]~9COUT1_22\);

-- Location: LC_X5_Y3_N0
\LessThan0~0\ : maxii_lcell
-- Equation(s):
-- \LessThan0~0_combout\ = (!cnt(3) & (!cnt(0) & (!cnt(2) & !cnt(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt(3),
	datab => cnt(0),
	datac => cnt(2),
	datad => cnt(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~0_combout\);

-- Location: LC_X5_Y3_N6
\cnt[4]\ : maxii_lcell
-- Equation(s):
-- cnt(4) = DFFEAS(cnt(4) $ ((((!(!\cnt[2]~7\ & \cnt[3]~9\) # (\cnt[2]~7\ & \cnt[3]~9COUT1_22\))))), GLOBAL(\mclk~combout\), VCC, , , , , \LessThan0~1\, )
-- \cnt[4]~11\ = CARRY((cnt(4) & ((!\cnt[3]~9\))))
-- \cnt[4]~11COUT1_24\ = CARRY((cnt(4) & ((!\cnt[3]~9COUT1_22\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	dataa => cnt(4),
	aclr => GND,
	sclr => \LessThan0~1\,
	cin => \cnt[2]~7\,
	cin0 => \cnt[3]~9\,
	cin1 => \cnt[3]~9COUT1_22\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(4),
	cout0 => \cnt[4]~11\,
	cout1 => \cnt[4]~11COUT1_24\);

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\comp~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_comp,
	combout => \comp~combout\);

-- Location: LC_X4_Y1_N5
\cnt_stat[0]\ : maxii_lcell
-- Equation(s):
-- cnt_stat(0) = DFFEAS((!cnt_stat(0)), GLOBAL(cnt(5)), VCC, , , , , \cnt_stat[1]~24\, )
-- \cnt_stat[0]~15\ = CARRY((cnt_stat(0)))
-- \cnt_stat[0]~15COUT1_35\ = CARRY((cnt_stat(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	dataa => cnt_stat(0),
	aclr => GND,
	sclr => \cnt_stat[1]~24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_stat(0),
	cout0 => \cnt_stat[0]~15\,
	cout1 => \cnt_stat[0]~15COUT1_35\);

-- Location: LC_X4_Y1_N6
\cnt_stat[1]\ : maxii_lcell
-- Equation(s):
-- cnt_stat(1) = DFFEAS(cnt_stat(1) $ ((((\cnt_stat[0]~15\)))), GLOBAL(cnt(5)), VCC, , , , , \cnt_stat[1]~24\, )
-- \cnt_stat[1]~19\ = CARRY(((!\cnt_stat[0]~15\)) # (!cnt_stat(1)))
-- \cnt_stat[1]~19COUT1_37\ = CARRY(((!\cnt_stat[0]~15COUT1_35\)) # (!cnt_stat(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	dataa => cnt_stat(1),
	aclr => GND,
	sclr => \cnt_stat[1]~24\,
	cin0 => \cnt_stat[0]~15\,
	cin1 => \cnt_stat[0]~15COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_stat(1),
	cout0 => \cnt_stat[1]~19\,
	cout1 => \cnt_stat[1]~19COUT1_37\);

-- Location: LC_X4_Y1_N7
\cnt_stat[2]\ : maxii_lcell
-- Equation(s):
-- cnt_stat(2) = DFFEAS(cnt_stat(2) $ ((((!\cnt_stat[1]~19\)))), GLOBAL(cnt(5)), VCC, , , , , \cnt_stat[1]~24\, )
-- \cnt_stat[2]~21\ = CARRY((cnt_stat(2) & ((!\cnt_stat[1]~19\))))
-- \cnt_stat[2]~21COUT1_39\ = CARRY((cnt_stat(2) & ((!\cnt_stat[1]~19COUT1_37\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	dataa => cnt_stat(2),
	aclr => GND,
	sclr => \cnt_stat[1]~24\,
	cin0 => \cnt_stat[1]~19\,
	cin1 => \cnt_stat[1]~19COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_stat(2),
	cout0 => \cnt_stat[2]~21\,
	cout1 => \cnt_stat[2]~21COUT1_39\);

-- Location: LC_X4_Y1_N8
\cnt_stat[3]\ : maxii_lcell
-- Equation(s):
-- cnt_stat(3) = DFFEAS((cnt_stat(3) $ ((\cnt_stat[2]~21\))), GLOBAL(cnt(5)), VCC, , , , , \cnt_stat[1]~24\, )
-- \cnt_stat[3]~17\ = CARRY(((!\cnt_stat[2]~21\) # (!cnt_stat(3))))
-- \cnt_stat[3]~17COUT1_41\ = CARRY(((!\cnt_stat[2]~21COUT1_39\) # (!cnt_stat(3))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datab => cnt_stat(3),
	aclr => GND,
	sclr => \cnt_stat[1]~24\,
	cin0 => \cnt_stat[2]~21\,
	cin1 => \cnt_stat[2]~21COUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_stat(3),
	cout0 => \cnt_stat[3]~17\,
	cout1 => \cnt_stat[3]~17COUT1_41\);

-- Location: LC_X4_Y1_N9
\cnt_stat[4]\ : maxii_lcell
-- Equation(s):
-- cnt_stat(4) = DFFEAS((cnt_stat(4) $ ((!\cnt_stat[3]~17\))), GLOBAL(cnt(5)), VCC, , , , , \cnt_stat[1]~24\, )
-- \cnt_stat[4]~11\ = CARRY(((cnt_stat(4) & !\cnt_stat[3]~17COUT1_41\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datab => cnt_stat(4),
	aclr => GND,
	sclr => \cnt_stat[1]~24\,
	cin0 => \cnt_stat[3]~17\,
	cin1 => \cnt_stat[3]~17COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_stat(4),
	cout => \cnt_stat[4]~11\);

-- Location: LC_X5_Y1_N0
\cnt_stat[5]\ : maxii_lcell
-- Equation(s):
-- cnt_stat(5) = DFFEAS((cnt_stat(5) $ ((\cnt_stat[4]~11\))), GLOBAL(cnt(5)), VCC, , , , , \cnt_stat[1]~24\, )
-- \cnt_stat[5]~1\ = CARRY(((!\cnt_stat[4]~11\) # (!cnt_stat(5))))
-- \cnt_stat[5]~1COUT1_43\ = CARRY(((!\cnt_stat[4]~11\) # (!cnt_stat(5))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datab => cnt_stat(5),
	aclr => GND,
	sclr => \cnt_stat[1]~24\,
	cin => \cnt_stat[4]~11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_stat(5),
	cout0 => \cnt_stat[5]~1\,
	cout1 => \cnt_stat[5]~1COUT1_43\);

-- Location: LC_X5_Y1_N1
\cnt_stat[6]\ : maxii_lcell
-- Equation(s):
-- cnt_stat(6) = DFFEAS((cnt_stat(6) $ ((!(!\cnt_stat[4]~11\ & \cnt_stat[5]~1\) # (\cnt_stat[4]~11\ & \cnt_stat[5]~1COUT1_43\)))), GLOBAL(cnt(5)), VCC, , , , , \cnt_stat[1]~24\, )
-- \cnt_stat[6]~13\ = CARRY(((cnt_stat(6) & !\cnt_stat[5]~1\)))
-- \cnt_stat[6]~13COUT1_45\ = CARRY(((cnt_stat(6) & !\cnt_stat[5]~1COUT1_43\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datab => cnt_stat(6),
	aclr => GND,
	sclr => \cnt_stat[1]~24\,
	cin => \cnt_stat[4]~11\,
	cin0 => \cnt_stat[5]~1\,
	cin1 => \cnt_stat[5]~1COUT1_43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_stat(6),
	cout0 => \cnt_stat[6]~13\,
	cout1 => \cnt_stat[6]~13COUT1_45\);

-- Location: LC_X5_Y1_N2
\cnt_stat[7]\ : maxii_lcell
-- Equation(s):
-- cnt_stat(7) = DFFEAS(cnt_stat(7) $ (((((!\cnt_stat[4]~11\ & \cnt_stat[6]~13\) # (\cnt_stat[4]~11\ & \cnt_stat[6]~13COUT1_45\))))), GLOBAL(cnt(5)), VCC, , , , , \cnt_stat[1]~24\, )
-- \cnt_stat[7]~7\ = CARRY(((!\cnt_stat[6]~13\)) # (!cnt_stat(7)))
-- \cnt_stat[7]~7COUT1_47\ = CARRY(((!\cnt_stat[6]~13COUT1_45\)) # (!cnt_stat(7)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	dataa => cnt_stat(7),
	aclr => GND,
	sclr => \cnt_stat[1]~24\,
	cin => \cnt_stat[4]~11\,
	cin0 => \cnt_stat[6]~13\,
	cin1 => \cnt_stat[6]~13COUT1_45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_stat(7),
	cout0 => \cnt_stat[7]~7\,
	cout1 => \cnt_stat[7]~7COUT1_47\);

-- Location: LC_X5_Y1_N3
\cnt_stat[8]\ : maxii_lcell
-- Equation(s):
-- cnt_stat(8) = DFFEAS(cnt_stat(8) $ ((((!(!\cnt_stat[4]~11\ & \cnt_stat[7]~7\) # (\cnt_stat[4]~11\ & \cnt_stat[7]~7COUT1_47\))))), GLOBAL(cnt(5)), VCC, , , , , \cnt_stat[1]~24\, )
-- \cnt_stat[8]~3\ = CARRY((cnt_stat(8) & ((!\cnt_stat[7]~7\))))
-- \cnt_stat[8]~3COUT1_49\ = CARRY((cnt_stat(8) & ((!\cnt_stat[7]~7COUT1_47\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	dataa => cnt_stat(8),
	aclr => GND,
	sclr => \cnt_stat[1]~24\,
	cin => \cnt_stat[4]~11\,
	cin0 => \cnt_stat[7]~7\,
	cin1 => \cnt_stat[7]~7COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_stat(8),
	cout0 => \cnt_stat[8]~3\,
	cout1 => \cnt_stat[8]~3COUT1_49\);

-- Location: LC_X5_Y1_N4
\cnt_stat[9]\ : maxii_lcell
-- Equation(s):
-- cnt_stat(9) = DFFEAS(cnt_stat(9) $ (((((!\cnt_stat[4]~11\ & \cnt_stat[8]~3\) # (\cnt_stat[4]~11\ & \cnt_stat[8]~3COUT1_49\))))), GLOBAL(cnt(5)), VCC, , , , , \cnt_stat[1]~24\, )
-- \cnt_stat[9]~5\ = CARRY(((!\cnt_stat[8]~3COUT1_49\)) # (!cnt_stat(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	dataa => cnt_stat(9),
	aclr => GND,
	sclr => \cnt_stat[1]~24\,
	cin => \cnt_stat[4]~11\,
	cin0 => \cnt_stat[8]~3\,
	cin1 => \cnt_stat[8]~3COUT1_49\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_stat(9),
	cout => \cnt_stat[9]~5\);

-- Location: LC_X5_Y1_N5
\cnt_stat[10]\ : maxii_lcell
-- Equation(s):
-- cnt_stat(10) = DFFEAS((cnt_stat(10) $ ((!\cnt_stat[9]~5\))), GLOBAL(cnt(5)), VCC, , , , , \cnt_stat[1]~24\, )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c3c3",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datab => cnt_stat(10),
	aclr => GND,
	sclr => \cnt_stat[1]~24\,
	cin => \cnt_stat[9]~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_stat(10));

-- Location: LC_X4_Y4_N2
\rundown_cnt[0]\ : maxii_lcell
-- Equation(s):
-- rundown_cnt(0) = DFFEAS(((!rundown_cnt(0))), GLOBAL(\mclk~combout\), VCC, , \rundown_cnt[9]~33_combout\, , , \rundown_cnt[9]~32\, )
-- \rundown_cnt[0]~27\ = CARRY(((rundown_cnt(0))))
-- \rundown_cnt[0]~27COUT1_48\ = CARRY(((rundown_cnt(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	datab => rundown_cnt(0),
	aclr => GND,
	sclr => \rundown_cnt[9]~32\,
	ena => \rundown_cnt[9]~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rundown_cnt(0),
	cout0 => \rundown_cnt[0]~27\,
	cout1 => \rundown_cnt[0]~27COUT1_48\);

-- Location: LC_X4_Y4_N3
\rundown_cnt[1]\ : maxii_lcell
-- Equation(s):
-- rundown_cnt(1) = DFFEAS(rundown_cnt(1) $ ((((\rundown_cnt[0]~27\)))), GLOBAL(\mclk~combout\), VCC, , \rundown_cnt[9]~33_combout\, , , \rundown_cnt[9]~32\, )
-- \rundown_cnt[1]~23\ = CARRY(((!\rundown_cnt[0]~27\)) # (!rundown_cnt(1)))
-- \rundown_cnt[1]~23COUT1_50\ = CARRY(((!\rundown_cnt[0]~27COUT1_48\)) # (!rundown_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	dataa => rundown_cnt(1),
	aclr => GND,
	sclr => \rundown_cnt[9]~32\,
	ena => \rundown_cnt[9]~33_combout\,
	cin0 => \rundown_cnt[0]~27\,
	cin1 => \rundown_cnt[0]~27COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rundown_cnt(1),
	cout0 => \rundown_cnt[1]~23\,
	cout1 => \rundown_cnt[1]~23COUT1_50\);

-- Location: LC_X4_Y4_N4
\rundown_cnt[2]\ : maxii_lcell
-- Equation(s):
-- rundown_cnt(2) = DFFEAS(rundown_cnt(2) $ ((((!\rundown_cnt[1]~23\)))), GLOBAL(\mclk~combout\), VCC, , \rundown_cnt[9]~33_combout\, , , \rundown_cnt[9]~32\, )
-- \rundown_cnt[2]~19\ = CARRY((rundown_cnt(2) & ((!\rundown_cnt[1]~23COUT1_50\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	dataa => rundown_cnt(2),
	aclr => GND,
	sclr => \rundown_cnt[9]~32\,
	ena => \rundown_cnt[9]~33_combout\,
	cin0 => \rundown_cnt[1]~23\,
	cin1 => \rundown_cnt[1]~23COUT1_50\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rundown_cnt(2),
	cout => \rundown_cnt[2]~19\);

-- Location: LC_X4_Y4_N5
\rundown_cnt[3]\ : maxii_lcell
-- Equation(s):
-- rundown_cnt(3) = DFFEAS(rundown_cnt(3) $ ((((\rundown_cnt[2]~19\)))), GLOBAL(\mclk~combout\), VCC, , \rundown_cnt[9]~33_combout\, , , \rundown_cnt[9]~32\, )
-- \rundown_cnt[3]~29\ = CARRY(((!\rundown_cnt[2]~19\)) # (!rundown_cnt(3)))
-- \rundown_cnt[3]~29COUT1_52\ = CARRY(((!\rundown_cnt[2]~19\)) # (!rundown_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	dataa => rundown_cnt(3),
	aclr => GND,
	sclr => \rundown_cnt[9]~32\,
	ena => \rundown_cnt[9]~33_combout\,
	cin => \rundown_cnt[2]~19\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rundown_cnt(3),
	cout0 => \rundown_cnt[3]~29\,
	cout1 => \rundown_cnt[3]~29COUT1_52\);

-- Location: LC_X4_Y4_N6
\rundown_cnt[4]\ : maxii_lcell
-- Equation(s):
-- rundown_cnt(4) = DFFEAS(rundown_cnt(4) $ ((((!(!\rundown_cnt[2]~19\ & \rundown_cnt[3]~29\) # (\rundown_cnt[2]~19\ & \rundown_cnt[3]~29COUT1_52\))))), GLOBAL(\mclk~combout\), VCC, , \rundown_cnt[9]~33_combout\, , , \rundown_cnt[9]~32\, )
-- \rundown_cnt[4]~9\ = CARRY((rundown_cnt(4) & ((!\rundown_cnt[3]~29\))))
-- \rundown_cnt[4]~9COUT1_54\ = CARRY((rundown_cnt(4) & ((!\rundown_cnt[3]~29COUT1_52\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	dataa => rundown_cnt(4),
	aclr => GND,
	sclr => \rundown_cnt[9]~32\,
	ena => \rundown_cnt[9]~33_combout\,
	cin => \rundown_cnt[2]~19\,
	cin0 => \rundown_cnt[3]~29\,
	cin1 => \rundown_cnt[3]~29COUT1_52\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rundown_cnt(4),
	cout0 => \rundown_cnt[4]~9\,
	cout1 => \rundown_cnt[4]~9COUT1_54\);

-- Location: LC_X4_Y4_N7
\rundown_cnt[5]\ : maxii_lcell
-- Equation(s):
-- rundown_cnt(5) = DFFEAS((rundown_cnt(5) $ (((!\rundown_cnt[2]~19\ & \rundown_cnt[4]~9\) # (\rundown_cnt[2]~19\ & \rundown_cnt[4]~9COUT1_54\)))), GLOBAL(\mclk~combout\), VCC, , \rundown_cnt[9]~33_combout\, , , \rundown_cnt[9]~32\, )
-- \rundown_cnt[5]~1\ = CARRY(((!\rundown_cnt[4]~9\) # (!rundown_cnt(5))))
-- \rundown_cnt[5]~1COUT1_56\ = CARRY(((!\rundown_cnt[4]~9COUT1_54\) # (!rundown_cnt(5))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	datab => rundown_cnt(5),
	aclr => GND,
	sclr => \rundown_cnt[9]~32\,
	ena => \rundown_cnt[9]~33_combout\,
	cin => \rundown_cnt[2]~19\,
	cin0 => \rundown_cnt[4]~9\,
	cin1 => \rundown_cnt[4]~9COUT1_54\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rundown_cnt(5),
	cout0 => \rundown_cnt[5]~1\,
	cout1 => \rundown_cnt[5]~1COUT1_56\);

-- Location: LC_X4_Y4_N8
\rundown_cnt[6]\ : maxii_lcell
-- Equation(s):
-- rundown_cnt(6) = DFFEAS(rundown_cnt(6) $ ((((!(!\rundown_cnt[2]~19\ & \rundown_cnt[5]~1\) # (\rundown_cnt[2]~19\ & \rundown_cnt[5]~1COUT1_56\))))), GLOBAL(\mclk~combout\), VCC, , \rundown_cnt[9]~33_combout\, , , \rundown_cnt[9]~32\, )
-- \rundown_cnt[6]~7\ = CARRY((rundown_cnt(6) & ((!\rundown_cnt[5]~1\))))
-- \rundown_cnt[6]~7COUT1_58\ = CARRY((rundown_cnt(6) & ((!\rundown_cnt[5]~1COUT1_56\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	dataa => rundown_cnt(6),
	aclr => GND,
	sclr => \rundown_cnt[9]~32\,
	ena => \rundown_cnt[9]~33_combout\,
	cin => \rundown_cnt[2]~19\,
	cin0 => \rundown_cnt[5]~1\,
	cin1 => \rundown_cnt[5]~1COUT1_56\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rundown_cnt(6),
	cout0 => \rundown_cnt[6]~7\,
	cout1 => \rundown_cnt[6]~7COUT1_58\);

-- Location: LC_X4_Y4_N9
\rundown_cnt[7]\ : maxii_lcell
-- Equation(s):
-- rundown_cnt(7) = DFFEAS((rundown_cnt(7) $ (((!\rundown_cnt[2]~19\ & \rundown_cnt[6]~7\) # (\rundown_cnt[2]~19\ & \rundown_cnt[6]~7COUT1_58\)))), GLOBAL(\mclk~combout\), VCC, , \rundown_cnt[9]~33_combout\, , , \rundown_cnt[9]~32\, )
-- \rundown_cnt[7]~13\ = CARRY(((!\rundown_cnt[6]~7COUT1_58\) # (!rundown_cnt(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	datab => rundown_cnt(7),
	aclr => GND,
	sclr => \rundown_cnt[9]~32\,
	ena => \rundown_cnt[9]~33_combout\,
	cin => \rundown_cnt[2]~19\,
	cin0 => \rundown_cnt[6]~7\,
	cin1 => \rundown_cnt[6]~7COUT1_58\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rundown_cnt(7),
	cout => \rundown_cnt[7]~13\);

-- Location: LC_X4_Y4_N0
\result_content[7]\ : maxii_lcell
-- Equation(s):
-- result_content(7) = DFFEAS((((rundown_cnt(7)))), GLOBAL(cnt(5)), VCC, , \state~16\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datad => rundown_cnt(7),
	aclr => GND,
	ena => \state~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => result_content(7));

-- Location: LC_X4_Y1_N3
\LessThan4~0\ : maxii_lcell
-- Equation(s):
-- \LessThan4~0_combout\ = (!cnt_stat(2) & (!cnt_stat(3) & ((!cnt_stat(1)) # (!cnt_stat(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0013",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt_stat(0),
	datab => cnt_stat(2),
	datac => cnt_stat(1),
	datad => cnt_stat(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~0_combout\);

-- Location: LC_X4_Y1_N1
\LessThan6~1\ : maxii_lcell
-- Equation(s):
-- \LessThan6~1_combout\ = (!cnt_stat(6) & (!cnt_stat(5) & ((\LessThan4~0_combout\) # (!cnt_stat(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0501",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt_stat(6),
	datab => cnt_stat(4),
	datac => cnt_stat(5),
	datad => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~1_combout\);

-- Location: LC_X3_Y3_N7
\runup_cnt[6]~23\ : maxii_lcell
-- Equation(s):
-- \runup_cnt[6]~23_combout\ = ((!\runup_state_r~5\ & (!\comp~combout\ & \LessThan5~3_combout\))) # (!\runup_state_r~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1f0f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \runup_state_r~5\,
	datab => \comp~combout\,
	datac => \runup_state_r~6_combout\,
	datad => \LessThan5~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \runup_cnt[6]~23_combout\);

-- Location: LC_X2_Y3_N5
\runup_cnt[0]\ : maxii_lcell
-- Equation(s):
-- runup_cnt(0) = DFFEAS((!runup_cnt(0)), GLOBAL(cnt(5)), VCC, , \runup_cnt[6]~23_combout\, , , \runup_cnt[6]~22\, )
-- \runup_cnt[0]~17\ = CARRY((runup_cnt(0)))
-- \runup_cnt[0]~17COUT1_34\ = CARRY((runup_cnt(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	dataa => runup_cnt(0),
	aclr => GND,
	sclr => \runup_cnt[6]~22\,
	ena => \runup_cnt[6]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => runup_cnt(0),
	cout0 => \runup_cnt[0]~17\,
	cout1 => \runup_cnt[0]~17COUT1_34\);

-- Location: LC_X2_Y3_N6
\runup_cnt[1]\ : maxii_lcell
-- Equation(s):
-- runup_cnt(1) = DFFEAS(runup_cnt(1) $ ((((\runup_cnt[0]~17\)))), GLOBAL(cnt(5)), VCC, , \runup_cnt[6]~23_combout\, , , \runup_cnt[6]~22\, )
-- \runup_cnt[1]~13\ = CARRY(((!\runup_cnt[0]~17\)) # (!runup_cnt(1)))
-- \runup_cnt[1]~13COUT1_36\ = CARRY(((!\runup_cnt[0]~17COUT1_34\)) # (!runup_cnt(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	dataa => runup_cnt(1),
	aclr => GND,
	sclr => \runup_cnt[6]~22\,
	ena => \runup_cnt[6]~23_combout\,
	cin0 => \runup_cnt[0]~17\,
	cin1 => \runup_cnt[0]~17COUT1_34\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => runup_cnt(1),
	cout0 => \runup_cnt[1]~13\,
	cout1 => \runup_cnt[1]~13COUT1_36\);

-- Location: LC_X2_Y3_N7
\runup_cnt[2]\ : maxii_lcell
-- Equation(s):
-- runup_cnt(2) = DFFEAS((runup_cnt(2) $ ((!\runup_cnt[1]~13\))), GLOBAL(cnt(5)), VCC, , \runup_cnt[6]~23_combout\, , , \runup_cnt[6]~22\, )
-- \runup_cnt[2]~9\ = CARRY(((runup_cnt(2) & !\runup_cnt[1]~13\)))
-- \runup_cnt[2]~9COUT1_38\ = CARRY(((runup_cnt(2) & !\runup_cnt[1]~13COUT1_36\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datab => runup_cnt(2),
	aclr => GND,
	sclr => \runup_cnt[6]~22\,
	ena => \runup_cnt[6]~23_combout\,
	cin0 => \runup_cnt[1]~13\,
	cin1 => \runup_cnt[1]~13COUT1_36\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => runup_cnt(2),
	cout0 => \runup_cnt[2]~9\,
	cout1 => \runup_cnt[2]~9COUT1_38\);

-- Location: LC_X2_Y3_N8
\runup_cnt[3]\ : maxii_lcell
-- Equation(s):
-- runup_cnt(3) = DFFEAS(runup_cnt(3) $ ((((\runup_cnt[2]~9\)))), GLOBAL(cnt(5)), VCC, , \runup_cnt[6]~23_combout\, , , \runup_cnt[6]~22\, )
-- \runup_cnt[3]~21\ = CARRY(((!\runup_cnt[2]~9\)) # (!runup_cnt(3)))
-- \runup_cnt[3]~21COUT1_40\ = CARRY(((!\runup_cnt[2]~9COUT1_38\)) # (!runup_cnt(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	dataa => runup_cnt(3),
	aclr => GND,
	sclr => \runup_cnt[6]~22\,
	ena => \runup_cnt[6]~23_combout\,
	cin0 => \runup_cnt[2]~9\,
	cin1 => \runup_cnt[2]~9COUT1_38\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => runup_cnt(3),
	cout0 => \runup_cnt[3]~21\,
	cout1 => \runup_cnt[3]~21COUT1_40\);

-- Location: LC_X2_Y3_N9
\runup_cnt[4]\ : maxii_lcell
-- Equation(s):
-- runup_cnt(4) = DFFEAS((runup_cnt(4) $ ((!\runup_cnt[3]~21\))), GLOBAL(cnt(5)), VCC, , \runup_cnt[6]~23_combout\, , , \runup_cnt[6]~22\, )
-- \runup_cnt[4]~5\ = CARRY(((runup_cnt(4) & !\runup_cnt[3]~21COUT1_40\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datab => runup_cnt(4),
	aclr => GND,
	sclr => \runup_cnt[6]~22\,
	ena => \runup_cnt[6]~23_combout\,
	cin0 => \runup_cnt[3]~21\,
	cin1 => \runup_cnt[3]~21COUT1_40\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => runup_cnt(4),
	cout => \runup_cnt[4]~5\);

-- Location: LC_X3_Y3_N0
\runup_cnt[5]\ : maxii_lcell
-- Equation(s):
-- runup_cnt(5) = DFFEAS((runup_cnt(5) $ ((\runup_cnt[4]~5\))), GLOBAL(cnt(5)), VCC, , \runup_cnt[6]~23_combout\, , , \runup_cnt[6]~22\, )
-- \runup_cnt[5]~1\ = CARRY(((!\runup_cnt[4]~5\) # (!runup_cnt(5))))
-- \runup_cnt[5]~1COUT1_42\ = CARRY(((!\runup_cnt[4]~5\) # (!runup_cnt(5))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datab => runup_cnt(5),
	aclr => GND,
	sclr => \runup_cnt[6]~22\,
	ena => \runup_cnt[6]~23_combout\,
	cin => \runup_cnt[4]~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => runup_cnt(5),
	cout0 => \runup_cnt[5]~1\,
	cout1 => \runup_cnt[5]~1COUT1_42\);

-- Location: LC_X3_Y4_N6
\result_content[21]\ : maxii_lcell
-- Equation(s):
-- \runup_cnt[6]~22\ = (\comp~combout\) # (((\runup_state_r~5\)) # (!\LessThan5~3_combout\))
-- result_content(21) = DFFEAS(\runup_cnt[6]~22\, GLOBAL(cnt(5)), VCC, , \state~16\, runup_cnt(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffbb",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	dataa => \comp~combout\,
	datab => \LessThan5~3_combout\,
	datac => runup_cnt(5),
	datad => \runup_state_r~5\,
	aclr => GND,
	sload => VCC,
	ena => \state~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \runup_cnt[6]~22\,
	regout => result_content(21));

-- Location: LC_X3_Y1_N4
\frame_content[21]\ : maxii_lcell
-- Equation(s):
-- \sw_up_r~0\ = ((!cnt_stat(4) & ((!cnt_stat(6)))))
-- frame_content(21) = DFFEAS(\sw_up_r~0\, GLOBAL(uart_divider(4)), VCC, , \always3~0\, result_content(21), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	datab => cnt_stat(4),
	datac => result_content(21),
	datad => cnt_stat(6),
	aclr => GND,
	sload => VCC,
	ena => \always3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sw_up_r~0\,
	regout => frame_content(21));

-- Location: LC_X3_Y3_N1
\runup_cnt[6]\ : maxii_lcell
-- Equation(s):
-- runup_cnt(6) = DFFEAS((runup_cnt(6) $ ((!(!\runup_cnt[4]~5\ & \runup_cnt[5]~1\) # (\runup_cnt[4]~5\ & \runup_cnt[5]~1COUT1_42\)))), GLOBAL(cnt(5)), VCC, , \runup_cnt[6]~23_combout\, , , \runup_cnt[6]~22\, )
-- \runup_cnt[6]~3\ = CARRY(((runup_cnt(6) & !\runup_cnt[5]~1\)))
-- \runup_cnt[6]~3COUT1_44\ = CARRY(((runup_cnt(6) & !\runup_cnt[5]~1COUT1_42\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datab => runup_cnt(6),
	aclr => GND,
	sclr => \runup_cnt[6]~22\,
	ena => \runup_cnt[6]~23_combout\,
	cin => \runup_cnt[4]~5\,
	cin0 => \runup_cnt[5]~1\,
	cin1 => \runup_cnt[5]~1COUT1_42\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => runup_cnt(6),
	cout0 => \runup_cnt[6]~3\,
	cout1 => \runup_cnt[6]~3COUT1_44\);

-- Location: LC_X3_Y3_N2
\runup_cnt[7]\ : maxii_lcell
-- Equation(s):
-- runup_cnt(7) = DFFEAS((runup_cnt(7) $ (((!\runup_cnt[4]~5\ & \runup_cnt[6]~3\) # (\runup_cnt[4]~5\ & \runup_cnt[6]~3COUT1_44\)))), GLOBAL(cnt(5)), VCC, , \runup_cnt[6]~23_combout\, , , \runup_cnt[6]~22\, )
-- \runup_cnt[7]~7\ = CARRY(((!\runup_cnt[6]~3\) # (!runup_cnt(7))))
-- \runup_cnt[7]~7COUT1_46\ = CARRY(((!\runup_cnt[6]~3COUT1_44\) # (!runup_cnt(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datab => runup_cnt(7),
	aclr => GND,
	sclr => \runup_cnt[6]~22\,
	ena => \runup_cnt[6]~23_combout\,
	cin => \runup_cnt[4]~5\,
	cin0 => \runup_cnt[6]~3\,
	cin1 => \runup_cnt[6]~3COUT1_44\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => runup_cnt(7),
	cout0 => \runup_cnt[7]~7\,
	cout1 => \runup_cnt[7]~7COUT1_46\);

-- Location: LC_X3_Y3_N3
\runup_cnt[8]\ : maxii_lcell
-- Equation(s):
-- runup_cnt(8) = DFFEAS(runup_cnt(8) $ ((((!(!\runup_cnt[4]~5\ & \runup_cnt[7]~7\) # (\runup_cnt[4]~5\ & \runup_cnt[7]~7COUT1_46\))))), GLOBAL(cnt(5)), VCC, , \runup_cnt[6]~23_combout\, , , \runup_cnt[6]~22\, )
-- \runup_cnt[8]~19\ = CARRY((runup_cnt(8) & ((!\runup_cnt[7]~7\))))
-- \runup_cnt[8]~19COUT1_48\ = CARRY((runup_cnt(8) & ((!\runup_cnt[7]~7COUT1_46\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	dataa => runup_cnt(8),
	aclr => GND,
	sclr => \runup_cnt[6]~22\,
	ena => \runup_cnt[6]~23_combout\,
	cin => \runup_cnt[4]~5\,
	cin0 => \runup_cnt[7]~7\,
	cin1 => \runup_cnt[7]~7COUT1_46\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => runup_cnt(8),
	cout0 => \runup_cnt[8]~19\,
	cout1 => \runup_cnt[8]~19COUT1_48\);

-- Location: LC_X3_Y3_N4
\runup_cnt[9]\ : maxii_lcell
-- Equation(s):
-- runup_cnt(9) = DFFEAS(runup_cnt(9) $ (((((!\runup_cnt[4]~5\ & \runup_cnt[8]~19\) # (\runup_cnt[4]~5\ & \runup_cnt[8]~19COUT1_48\))))), GLOBAL(cnt(5)), VCC, , \runup_cnt[6]~23_combout\, , , \runup_cnt[6]~22\, )
-- \runup_cnt[9]~15\ = CARRY(((!\runup_cnt[8]~19COUT1_48\)) # (!runup_cnt(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	dataa => runup_cnt(9),
	aclr => GND,
	sclr => \runup_cnt[6]~22\,
	ena => \runup_cnt[6]~23_combout\,
	cin => \runup_cnt[4]~5\,
	cin0 => \runup_cnt[8]~19\,
	cin1 => \runup_cnt[8]~19COUT1_48\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => runup_cnt(9),
	cout => \runup_cnt[9]~15\);

-- Location: LC_X3_Y3_N5
\runup_cnt[10]\ : maxii_lcell
-- Equation(s):
-- runup_cnt(10) = DFFEAS(runup_cnt(10) $ ((((!\runup_cnt[9]~15\)))), GLOBAL(cnt(5)), VCC, , \runup_cnt[6]~23_combout\, , , \runup_cnt[6]~22\, )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a5a5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	dataa => runup_cnt(10),
	aclr => GND,
	sclr => \runup_cnt[6]~22\,
	ena => \runup_cnt[6]~23_combout\,
	cin => \runup_cnt[9]~15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => runup_cnt(10));

-- Location: LC_X3_Y1_N6
\result_content[26]\ : maxii_lcell
-- Equation(s):
-- result_content(26) = DFFEAS((((runup_cnt(10)))), GLOBAL(cnt(5)), VCC, , \state~16\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datad => runup_cnt(10),
	aclr => GND,
	ena => \state~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => result_content(26));

-- Location: LC_X3_Y1_N7
\frame_content[26]\ : maxii_lcell
-- Equation(s):
-- \LessThan7~1\ = (cnt_stat(1) & (cnt_stat(0) & ((cnt_stat(2)))))
-- frame_content(26) = DFFEAS(\LessThan7~1\, GLOBAL(uart_divider(4)), VCC, , \always3~0\, result_content(26), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => cnt_stat(1),
	datab => cnt_stat(0),
	datac => result_content(26),
	datad => cnt_stat(2),
	aclr => GND,
	sload => VCC,
	ena => \always3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan7~1\,
	regout => frame_content(26));

-- Location: LC_X3_Y4_N1
\result_content[2]\ : maxii_lcell
-- Equation(s):
-- result_content(2) = DFFEAS((((rundown_cnt(2)))), GLOBAL(cnt(5)), VCC, , \state~16\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datad => rundown_cnt(2),
	aclr => GND,
	ena => \state~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => result_content(2));

-- Location: LC_X3_Y1_N8
\frame_content[2]\ : maxii_lcell
-- Equation(s):
-- \LessThan7~0\ = ((!cnt_stat(5) & ((!cnt_stat(6))))) # (!cnt_stat(7))
-- frame_content(2) = DFFEAS(\LessThan7~0\, GLOBAL(uart_divider(4)), VCC, , \always3~0\, result_content(2), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3377",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => cnt_stat(5),
	datab => cnt_stat(7),
	datac => result_content(2),
	datad => cnt_stat(6),
	aclr => GND,
	sload => VCC,
	ena => \always3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan7~0\,
	regout => frame_content(2));

-- Location: LC_X3_Y1_N9
\LessThan7~2\ : maxii_lcell
-- Equation(s):
-- \LessThan7~2_combout\ = (\LessThan7~0\) # ((\sw_up_r~0\ & ((!\LessThan7~1\) # (!cnt_stat(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff2a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \sw_up_r~0\,
	datab => cnt_stat(3),
	datac => \LessThan7~1\,
	datad => \LessThan7~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan7~2_combout\);

-- Location: LC_X3_Y1_N2
\state~14\ : maxii_lcell
-- Equation(s):
-- \state~14_combout\ = (cnt_stat(10) & ((cnt_stat(8)) # ((cnt_stat(9)) # (!\LessThan7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a8aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt_stat(10),
	datab => cnt_stat(8),
	datac => cnt_stat(9),
	datad => \LessThan7~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \state~14_combout\);

-- Location: LC_X2_Y1_N2
\LessThan1~0\ : maxii_lcell
-- Equation(s):
-- \LessThan1~0_combout\ = ((!cnt_stat(3) & (!cnt_stat(4) & !\LessThan7~1\))) # (!cnt_stat(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3337",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt_stat(3),
	datab => cnt_stat(5),
	datac => cnt_stat(4),
	datad => \LessThan7~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan1~0_combout\);

-- Location: LC_X3_Y3_N6
\result_content[25]\ : maxii_lcell
-- Equation(s):
-- result_content(25) = DFFEAS((((runup_cnt(9)))), GLOBAL(cnt(5)), VCC, , \state~16\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datac => runup_cnt(9),
	aclr => GND,
	ena => \state~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => result_content(25));

-- Location: LC_X3_Y2_N4
\frame_content[25]\ : maxii_lcell
-- Equation(s):
-- \state~18\ = (\LessThan1~0_combout\ & (!cnt_stat(6) & ((\LessThan6~0\))))
-- frame_content(25) = DFFEAS(\state~18\, GLOBAL(uart_divider(4)), VCC, , \always3~0\, result_content(25), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2200",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => \LessThan1~0_combout\,
	datab => cnt_stat(6),
	datac => result_content(25),
	datad => \LessThan6~0\,
	aclr => GND,
	sload => VCC,
	ena => \always3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \state~18\,
	regout => frame_content(25));

-- Location: LC_X2_Y2_N2
\state.000\ : maxii_lcell
-- Equation(s):
-- \state.000~regout\ = DFFEAS((\state.011~regout\ & (((!\state~14_combout\)))) # (!\state.011~regout\ & ((\state.000~regout\) # ((!\state~18\)))), GLOBAL(cnt(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2e3f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	dataa => \state.000~regout\,
	datab => \state.011~regout\,
	datac => \state~14_combout\,
	datad => \state~18\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.000~regout\);

-- Location: LC_X3_Y1_N0
\Equal0~0\ : maxii_lcell
-- Equation(s):
-- \Equal0~0_combout\ = (cnt_stat(2)) # ((cnt_stat(0)) # ((cnt_stat(1)) # (cnt_stat(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt_stat(2),
	datab => cnt_stat(0),
	datac => cnt_stat(1),
	datad => cnt_stat(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~0_combout\);

-- Location: LC_X2_Y4_N7
\Equal0~1\ : maxii_lcell
-- Equation(s):
-- \Equal0~1_combout\ = ((cnt_stat(5)) # ((\Equal0~0_combout\) # (!\sw_up_r~0\))) # (!\LessThan6~0\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fdff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan6~0\,
	datab => cnt_stat(5),
	datac => \Equal0~0_combout\,
	datad => \sw_up_r~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal0~1_combout\);

-- Location: LC_X2_Y1_N8
\result_content[17]\ : maxii_lcell
-- Equation(s):
-- result_content(17) = DFFEAS((((runup_cnt(1)))), GLOBAL(cnt(5)), VCC, , \state~16\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datad => runup_cnt(1),
	aclr => GND,
	ena => \state~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => result_content(17));

-- Location: LC_X3_Y2_N8
\state~13\ : maxii_lcell
-- Equation(s):
-- \state~13_combout\ = (\state.010~regout\ & (((\LessThan6~2\)))) # (!\state.010~regout\ & ((\LessThan5~3_combout\) # ((\runup_state_r~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fe54",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.010~regout\,
	datab => \LessThan5~3_combout\,
	datac => \runup_state_r~5\,
	datad => \LessThan6~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \state~13_combout\);

-- Location: LC_X3_Y1_N5
\frame_content[17]\ : maxii_lcell
-- Equation(s):
-- \state~15\ = (\state.011~regout\ & (!\state~14_combout\)) # (!\state.011~regout\ & (((\state~13_combout\))))
-- frame_content(17) = DFFEAS(\state~15\, GLOBAL(uart_divider(4)), VCC, , \always3~0\, result_content(17), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7722",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => \state.011~regout\,
	datab => \state~14_combout\,
	datac => result_content(17),
	datad => \state~13_combout\,
	aclr => GND,
	sload => VCC,
	ena => \always3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \state~15\,
	regout => frame_content(17));

-- Location: LC_X2_Y1_N1
\state.001\ : maxii_lcell
-- Equation(s):
-- \state.001~regout\ = DFFEAS(((\state~15\ & ((\state.001~regout\) # (!\runup_state_r~6_combout\)))), GLOBAL(cnt(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datab => \state.001~regout\,
	datac => \runup_state_r~6_combout\,
	datad => \state~15\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.001~regout\);

-- Location: LC_X2_Y4_N0
uart_frame_start : maxii_lcell
-- Equation(s):
-- \uart_frame_start~regout\ = DFFEAS(((\uart_frame_start~regout\) # ((!\state.000~regout\ & !\Equal0~1_combout\))), GLOBAL(cnt(5)), VCC, , , , , \state.001~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff05",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	dataa => \state.000~regout\,
	datac => \Equal0~1_combout\,
	datad => \uart_frame_start~regout\,
	aclr => GND,
	sclr => \state.001~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart_frame_start~regout\);

-- Location: LC_X3_Y2_N0
\uart_frame_r.001\ : maxii_lcell
-- Equation(s):
-- \always3~0\ = (((uart_frame_r.001 & !\uart_frame_start~regout\)))
-- \uart_frame_r.001~regout\ = DFFEAS(\always3~0\, GLOBAL(uart_divider(4)), VCC, , , \uart_frame_start~regout\, , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	datac => \uart_frame_start~regout\,
	datad => \uart_frame_start~regout\,
	aclr => GND,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \always3~0\,
	regout => \uart_frame_r.001~regout\);

-- Location: LC_X3_Y2_N9
\frame_content[7]\ : maxii_lcell
-- Equation(s):
-- \LessThan6~2\ = ((\LessThan6~0\ & ((\LessThan6~1_combout\))))
-- frame_content(7) = DFFEAS(\LessThan6~2\, GLOBAL(uart_divider(4)), VCC, , \always3~0\, result_content(7), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	datab => \LessThan6~0\,
	datac => result_content(7),
	datad => \LessThan6~1_combout\,
	aclr => GND,
	sload => VCC,
	ena => \always3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~2\,
	regout => frame_content(7));

-- Location: LC_X4_Y2_N0
\runup_state_r~7\ : maxii_lcell
-- Equation(s):
-- \runup_state_r~7_combout\ = (\state.010~regout\ & (((\LessThan6~2\)))) # (!\state.010~regout\ & (((\runup_state_r~5\)) # (!\LessThan5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3d1",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan5~3_combout\,
	datab => \state.010~regout\,
	datac => \LessThan6~2\,
	datad => \runup_state_r~5\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \runup_state_r~7_combout\);

-- Location: LC_X3_Y4_N8
\runup_state_r.1\ : maxii_lcell
-- Equation(s):
-- \runup_state_r.1~regout\ = DFFEAS((\runup_state_r~7_combout\ & (\runup_state_r~6_combout\ & ((\runup_state_r.1~regout\)))) # (!\runup_state_r~7_combout\ & (((!\comp~combout\)))), GLOBAL(cnt(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a303",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	dataa => \runup_state_r~6_combout\,
	datab => \comp~combout\,
	datac => \runup_state_r~7_combout\,
	datad => \runup_state_r.1~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \runup_state_r.1~regout\);

-- Location: LC_X3_Y4_N0
\rundown_cnt[9]~33\ : maxii_lcell
-- Equation(s):
-- \rundown_cnt[9]~33_combout\ = (\state.010~regout\) # ((\state.011~regout\ & (\runup_state_r.1~regout\ $ (\comp~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff60",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \runup_state_r.1~regout\,
	datab => \comp~combout\,
	datac => \state.011~regout\,
	datad => \state.010~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rundown_cnt[9]~33_combout\);

-- Location: LC_X5_Y4_N0
\rundown_cnt[8]\ : maxii_lcell
-- Equation(s):
-- rundown_cnt(8) = DFFEAS((rundown_cnt(8) $ ((!\rundown_cnt[7]~13\))), GLOBAL(\mclk~combout\), VCC, , \rundown_cnt[9]~33_combout\, , , \rundown_cnt[9]~32\, )
-- \rundown_cnt[8]~25\ = CARRY(((rundown_cnt(8) & !\rundown_cnt[7]~13\)))
-- \rundown_cnt[8]~25COUT1_60\ = CARRY(((rundown_cnt(8) & !\rundown_cnt[7]~13\)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	datab => rundown_cnt(8),
	aclr => GND,
	sclr => \rundown_cnt[9]~32\,
	ena => \rundown_cnt[9]~33_combout\,
	cin => \rundown_cnt[7]~13\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rundown_cnt(8),
	cout0 => \rundown_cnt[8]~25\,
	cout1 => \rundown_cnt[8]~25COUT1_60\);

-- Location: LC_X5_Y4_N1
\rundown_cnt[9]\ : maxii_lcell
-- Equation(s):
-- rundown_cnt(9) = DFFEAS((rundown_cnt(9) $ (((!\rundown_cnt[7]~13\ & \rundown_cnt[8]~25\) # (\rundown_cnt[7]~13\ & \rundown_cnt[8]~25COUT1_60\)))), GLOBAL(\mclk~combout\), VCC, , \rundown_cnt[9]~33_combout\, , , \rundown_cnt[9]~32\, )
-- \rundown_cnt[9]~21\ = CARRY(((!\rundown_cnt[8]~25\) # (!rundown_cnt(9))))
-- \rundown_cnt[9]~21COUT1_62\ = CARRY(((!\rundown_cnt[8]~25COUT1_60\) # (!rundown_cnt(9))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	datab => rundown_cnt(9),
	aclr => GND,
	sclr => \rundown_cnt[9]~32\,
	ena => \rundown_cnt[9]~33_combout\,
	cin => \rundown_cnt[7]~13\,
	cin0 => \rundown_cnt[8]~25\,
	cin1 => \rundown_cnt[8]~25COUT1_60\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rundown_cnt(9),
	cout0 => \rundown_cnt[9]~21\,
	cout1 => \rundown_cnt[9]~21COUT1_62\);

-- Location: LC_X5_Y4_N2
\rundown_cnt[10]\ : maxii_lcell
-- Equation(s):
-- rundown_cnt(10) = DFFEAS((rundown_cnt(10) $ ((!(!\rundown_cnt[7]~13\ & \rundown_cnt[9]~21\) # (\rundown_cnt[7]~13\ & \rundown_cnt[9]~21COUT1_62\)))), GLOBAL(\mclk~combout\), VCC, , \rundown_cnt[9]~33_combout\, , , \rundown_cnt[9]~32\, )
-- \rundown_cnt[10]~17\ = CARRY(((rundown_cnt(10) & !\rundown_cnt[9]~21\)))
-- \rundown_cnt[10]~17COUT1_64\ = CARRY(((rundown_cnt(10) & !\rundown_cnt[9]~21COUT1_62\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	datab => rundown_cnt(10),
	aclr => GND,
	sclr => \rundown_cnt[9]~32\,
	ena => \rundown_cnt[9]~33_combout\,
	cin => \rundown_cnt[7]~13\,
	cin0 => \rundown_cnt[9]~21\,
	cin1 => \rundown_cnt[9]~21COUT1_62\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rundown_cnt(10),
	cout0 => \rundown_cnt[10]~17\,
	cout1 => \rundown_cnt[10]~17COUT1_64\);

-- Location: LC_X5_Y4_N3
\rundown_cnt[11]\ : maxii_lcell
-- Equation(s):
-- rundown_cnt(11) = DFFEAS(rundown_cnt(11) $ (((((!\rundown_cnt[7]~13\ & \rundown_cnt[10]~17\) # (\rundown_cnt[7]~13\ & \rundown_cnt[10]~17COUT1_64\))))), GLOBAL(\mclk~combout\), VCC, , \rundown_cnt[9]~33_combout\, , , \rundown_cnt[9]~32\, )
-- \rundown_cnt[11]~31\ = CARRY(((!\rundown_cnt[10]~17\)) # (!rundown_cnt(11)))
-- \rundown_cnt[11]~31COUT1_66\ = CARRY(((!\rundown_cnt[10]~17COUT1_64\)) # (!rundown_cnt(11)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	dataa => rundown_cnt(11),
	aclr => GND,
	sclr => \rundown_cnt[9]~32\,
	ena => \rundown_cnt[9]~33_combout\,
	cin => \rundown_cnt[7]~13\,
	cin0 => \rundown_cnt[10]~17\,
	cin1 => \rundown_cnt[10]~17COUT1_64\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rundown_cnt(11),
	cout0 => \rundown_cnt[11]~31\,
	cout1 => \rundown_cnt[11]~31COUT1_66\);

-- Location: LC_X5_Y4_N4
\rundown_cnt[12]\ : maxii_lcell
-- Equation(s):
-- rundown_cnt(12) = DFFEAS(rundown_cnt(12) $ ((((!(!\rundown_cnt[7]~13\ & \rundown_cnt[11]~31\) # (\rundown_cnt[7]~13\ & \rundown_cnt[11]~31COUT1_66\))))), GLOBAL(\mclk~combout\), VCC, , \rundown_cnt[9]~33_combout\, , , \rundown_cnt[9]~32\, )
-- \rundown_cnt[12]~11\ = CARRY((rundown_cnt(12) & ((!\rundown_cnt[11]~31COUT1_66\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	dataa => rundown_cnt(12),
	aclr => GND,
	sclr => \rundown_cnt[9]~32\,
	ena => \rundown_cnt[9]~33_combout\,
	cin => \rundown_cnt[7]~13\,
	cin0 => \rundown_cnt[11]~31\,
	cin1 => \rundown_cnt[11]~31COUT1_66\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rundown_cnt(12),
	cout => \rundown_cnt[12]~11\);

-- Location: LC_X5_Y4_N5
\rundown_cnt[13]\ : maxii_lcell
-- Equation(s):
-- rundown_cnt(13) = DFFEAS(rundown_cnt(13) $ ((((\rundown_cnt[12]~11\)))), GLOBAL(\mclk~combout\), VCC, , \rundown_cnt[9]~33_combout\, , , \rundown_cnt[9]~32\, )
-- \rundown_cnt[13]~3\ = CARRY(((!\rundown_cnt[12]~11\)) # (!rundown_cnt(13)))
-- \rundown_cnt[13]~3COUT1_68\ = CARRY(((!\rundown_cnt[12]~11\)) # (!rundown_cnt(13)))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	dataa => rundown_cnt(13),
	aclr => GND,
	sclr => \rundown_cnt[9]~32\,
	ena => \rundown_cnt[9]~33_combout\,
	cin => \rundown_cnt[12]~11\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rundown_cnt(13),
	cout0 => \rundown_cnt[13]~3\,
	cout1 => \rundown_cnt[13]~3COUT1_68\);

-- Location: LC_X3_Y4_N2
\result_content[13]\ : maxii_lcell
-- Equation(s):
-- \rundown_cnt[9]~32\ = (\comp~combout\ $ (((!\runup_state_r.1~regout\)))) # (!\state.011~regout\)
-- result_content(13) = DFFEAS(\rundown_cnt[9]~32\, GLOBAL(cnt(5)), VCC, , \state~16\, rundown_cnt(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb77",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	dataa => \comp~combout\,
	datab => \state.011~regout\,
	datac => rundown_cnt(13),
	datad => \runup_state_r.1~regout\,
	aclr => GND,
	sload => VCC,
	ena => \state~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \rundown_cnt[9]~32\,
	regout => result_content(13));

-- Location: LC_X3_Y4_N3
\result_content[1]\ : maxii_lcell
-- Equation(s):
-- result_content(1) = DFFEAS(GND, GLOBAL(cnt(5)), VCC, , \state~16\, rundown_cnt(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datac => rundown_cnt(1),
	aclr => GND,
	sload => VCC,
	ena => \state~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => result_content(1));

-- Location: LC_X3_Y1_N3
\frame_content[1]\ : maxii_lcell
-- Equation(s):
-- \state~16\ = ((\state.011~regout\ & ((\state~14_combout\))))
-- frame_content(1) = DFFEAS(\state~16\, GLOBAL(uart_divider(4)), VCC, , \always3~0\, result_content(1), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	datab => \state.011~regout\,
	datac => result_content(1),
	datad => \state~14_combout\,
	aclr => GND,
	sload => VCC,
	ena => \always3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \state~16\,
	regout => frame_content(1));

-- Location: LC_X5_Y1_N6
rundown_sign : maxii_lcell
-- Equation(s):
-- \rundown_sign~regout\ = DFFEAS(((\state.011~regout\ & (\runup_state_r.1~regout\)) # (!\state.011~regout\ & ((\rundown_sign~regout\)))), GLOBAL(cnt(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datab => \runup_state_r.1~regout\,
	datac => \rundown_sign~regout\,
	datad => \state.011~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \rundown_sign~regout\);

-- Location: LC_X5_Y1_N7
\result_content[30]\ : maxii_lcell
-- Equation(s):
-- \LessThan6~0\ = (!cnt_stat(9) & (!cnt_stat(7) & (!cnt_stat(10) & !cnt_stat(8))))
-- result_content(30) = DFFEAS(rundown_sign, GLOBAL(cnt(5)), VCC, , \state~16\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "on",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	dataa => cnt_stat(9),
	datab => cnt_stat(7),
	datac => cnt_stat(10),
	datad => cnt_stat(8),
	aclr => GND,
	ena => \state~16\,
	regcascin => \rundown_sign~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan6~0\,
	regout => result_content(30));

-- Location: LC_X2_Y1_N6
\runup_state_r~6\ : maxii_lcell
-- Equation(s):
-- \runup_state_r~6_combout\ = (\state.000~regout\) # ((!cnt_stat(6) & (\LessThan6~0\ & \LessThan1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f4f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt_stat(6),
	datab => \LessThan6~0\,
	datac => \state.000~regout\,
	datad => \LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \runup_state_r~6_combout\);

-- Location: LC_X2_Y1_N5
\state.010~0\ : maxii_lcell
-- Equation(s):
-- \state.010~0_combout\ = (!\state~16\ & (!\state~13_combout\ & ((\LessThan6~2\) # (!\state.010~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0501",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state~16\,
	datab => \state.010~regout\,
	datac => \state~13_combout\,
	datad => \LessThan6~2\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \state.010~0_combout\);

-- Location: LC_X2_Y1_N4
\state.010\ : maxii_lcell
-- Equation(s):
-- \state.010~regout\ = DFFEAS((\runup_state_r~6_combout\ & ((\state~15\ & (\state.010~regout\)) # (!\state~15\ & ((\state.010~0_combout\))))) # (!\runup_state_r~6_combout\ & (((\state.010~0_combout\)))), GLOBAL(cnt(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d8f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	dataa => \runup_state_r~6_combout\,
	datab => \state.010~regout\,
	datac => \state.010~0_combout\,
	datad => \state~15\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.010~regout\);

-- Location: LC_X3_Y4_N7
\state.011\ : maxii_lcell
-- Equation(s):
-- \state.011~regout\ = DFFEAS((\state.011~regout\ & (((!\state~14_combout\)))) # (!\state.011~regout\ & (\state.010~regout\ & ((!\LessThan6~2\)))), GLOBAL(cnt(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0c2e",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	dataa => \state.010~regout\,
	datab => \state.011~regout\,
	datac => \state~14_combout\,
	datad => \LessThan6~2\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \state.011~regout\);

-- Location: LC_X5_Y4_N8
\result_content[8]\ : maxii_lcell
-- Equation(s):
-- result_content(8) = DFFEAS((((rundown_cnt(8)))), GLOBAL(cnt(5)), VCC, , \state~16\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datac => rundown_cnt(8),
	aclr => GND,
	ena => \state~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => result_content(8));

-- Location: LC_X2_Y1_N3
\cnt_stat[1]~22\ : maxii_lcell
-- Equation(s):
-- \cnt_stat[1]~22_combout\ = (\state.001~regout\ & (((!\LessThan4~1_combout\)))) # (!\state.001~regout\ & ((cnt_stat(6)) # ((!\LessThan1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2e3f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt_stat(6),
	datab => \state.001~regout\,
	datac => \LessThan4~1_combout\,
	datad => \LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cnt_stat[1]~22_combout\);

-- Location: LC_X2_Y1_N0
\cnt_stat[1]~23\ : maxii_lcell
-- Equation(s):
-- \cnt_stat[1]~23_combout\ = ((\state.010~regout\ & (!\LessThan6~1_combout\)) # (!\state.010~regout\ & ((\cnt_stat[1]~22_combout\)))) # (!\LessThan6~0\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f3b",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.010~regout\,
	datab => \LessThan6~0\,
	datac => \LessThan6~1_combout\,
	datad => \cnt_stat[1]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cnt_stat[1]~23_combout\);

-- Location: LC_X3_Y1_N1
\frame_content[8]\ : maxii_lcell
-- Equation(s):
-- \cnt_stat[1]~24\ = (\state.011~regout\ & (\state~14_combout\)) # (!\state.011~regout\ & (((\cnt_stat[1]~23_combout\))))
-- frame_content(8) = DFFEAS(\cnt_stat[1]~24\, GLOBAL(uart_divider(4)), VCC, , \always3~0\, result_content(8), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => \state.011~regout\,
	datab => \state~14_combout\,
	datac => result_content(8),
	datad => \cnt_stat[1]~23_combout\,
	aclr => GND,
	sload => VCC,
	ena => \always3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cnt_stat[1]~24\,
	regout => frame_content(8));

-- Location: LC_X4_Y1_N4
\LessThan4~1\ : maxii_lcell
-- Equation(s):
-- \LessThan4~1_combout\ = (((!cnt_stat(4) & \LessThan4~0_combout\)) # (!cnt_stat(5))) # (!cnt_stat(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7f5f",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt_stat(6),
	datab => cnt_stat(4),
	datac => cnt_stat(5),
	datad => \LessThan4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan4~1_combout\);

-- Location: LC_X2_Y4_N1
\result_content[10]\ : maxii_lcell
-- Equation(s):
-- result_content(10) = DFFEAS((((rundown_cnt(10)))), GLOBAL(cnt(5)), VCC, , \state~16\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datad => rundown_cnt(10),
	aclr => GND,
	ena => \state~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => result_content(10));

-- Location: LC_X3_Y2_N6
\frame_content[10]\ : maxii_lcell
-- Equation(s):
-- \runup_state_r~5\ = ((\LessThan4~1_combout\ & ((\LessThan6~0\)))) # (!\state.001~regout\)
-- frame_content(10) = DFFEAS(\runup_state_r~5\, GLOBAL(uart_divider(4)), VCC, , \always3~0\, result_content(10), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb33",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => \LessThan4~1_combout\,
	datab => \state.001~regout\,
	datac => result_content(10),
	datad => \LessThan6~0\,
	aclr => GND,
	sload => VCC,
	ena => \always3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \runup_state_r~5\,
	regout => frame_content(10));

-- Location: LC_X2_Y1_N7
\cnt_runup[0]~22\ : maxii_lcell
-- Equation(s):
-- \cnt_runup[0]~22_combout\ = (\state.001~regout\ & (((!\LessThan4~1_combout\) # (!\LessThan6~0\)))) # (!\state.001~regout\ & (!\runup_state_r~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "35f5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \runup_state_r~6_combout\,
	datab => \LessThan6~0\,
	datac => \state.001~regout\,
	datad => \LessThan4~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \cnt_runup[0]~22_combout\);

-- Location: LC_X4_Y2_N5
\cnt_runup[0]\ : maxii_lcell
-- Equation(s):
-- cnt_runup(0) = DFFEAS((!cnt_runup(0)), GLOBAL(cnt(5)), VCC, , \cnt_runup[0]~22_combout\, , , \runup_state_r~5\, )
-- \cnt_runup[0]~7\ = CARRY((cnt_runup(0)))
-- \cnt_runup[0]~7COUT1_33\ = CARRY((cnt_runup(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "55aa",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	dataa => cnt_runup(0),
	aclr => GND,
	sclr => \runup_state_r~5\,
	ena => \cnt_runup[0]~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_runup(0),
	cout0 => \cnt_runup[0]~7\,
	cout1 => \cnt_runup[0]~7COUT1_33\);

-- Location: LC_X4_Y2_N6
\cnt_runup[1]\ : maxii_lcell
-- Equation(s):
-- cnt_runup(1) = DFFEAS(cnt_runup(1) $ ((((\cnt_runup[0]~7\)))), GLOBAL(cnt(5)), VCC, , \cnt_runup[0]~22_combout\, , , \runup_state_r~5\, )
-- \cnt_runup[1]~9\ = CARRY(((!\cnt_runup[0]~7\)) # (!cnt_runup(1)))
-- \cnt_runup[1]~9COUT1_35\ = CARRY(((!\cnt_runup[0]~7COUT1_33\)) # (!cnt_runup(1)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	dataa => cnt_runup(1),
	aclr => GND,
	sclr => \runup_state_r~5\,
	ena => \cnt_runup[0]~22_combout\,
	cin0 => \cnt_runup[0]~7\,
	cin1 => \cnt_runup[0]~7COUT1_33\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_runup(1),
	cout0 => \cnt_runup[1]~9\,
	cout1 => \cnt_runup[1]~9COUT1_35\);

-- Location: LC_X4_Y2_N7
\cnt_runup[2]\ : maxii_lcell
-- Equation(s):
-- cnt_runup(2) = DFFEAS((cnt_runup(2) $ ((!\cnt_runup[1]~9\))), GLOBAL(cnt(5)), VCC, , \cnt_runup[0]~22_combout\, , , \runup_state_r~5\, )
-- \cnt_runup[2]~11\ = CARRY(((cnt_runup(2) & !\cnt_runup[1]~9\)))
-- \cnt_runup[2]~11COUT1_37\ = CARRY(((cnt_runup(2) & !\cnt_runup[1]~9COUT1_35\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datab => cnt_runup(2),
	aclr => GND,
	sclr => \runup_state_r~5\,
	ena => \cnt_runup[0]~22_combout\,
	cin0 => \cnt_runup[1]~9\,
	cin1 => \cnt_runup[1]~9COUT1_35\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_runup(2),
	cout0 => \cnt_runup[2]~11\,
	cout1 => \cnt_runup[2]~11COUT1_37\);

-- Location: LC_X4_Y2_N8
\cnt_runup[3]\ : maxii_lcell
-- Equation(s):
-- cnt_runup(3) = DFFEAS(cnt_runup(3) $ ((((\cnt_runup[2]~11\)))), GLOBAL(cnt(5)), VCC, , \cnt_runup[0]~22_combout\, , , \runup_state_r~5\, )
-- \cnt_runup[3]~13\ = CARRY(((!\cnt_runup[2]~11\)) # (!cnt_runup(3)))
-- \cnt_runup[3]~13COUT1_39\ = CARRY(((!\cnt_runup[2]~11COUT1_37\)) # (!cnt_runup(3)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	dataa => cnt_runup(3),
	aclr => GND,
	sclr => \runup_state_r~5\,
	ena => \cnt_runup[0]~22_combout\,
	cin0 => \cnt_runup[2]~11\,
	cin1 => \cnt_runup[2]~11COUT1_37\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_runup(3),
	cout0 => \cnt_runup[3]~13\,
	cout1 => \cnt_runup[3]~13COUT1_39\);

-- Location: LC_X4_Y2_N9
\cnt_runup[4]\ : maxii_lcell
-- Equation(s):
-- cnt_runup(4) = DFFEAS((cnt_runup(4) $ ((!\cnt_runup[3]~13\))), GLOBAL(cnt(5)), VCC, , \cnt_runup[0]~22_combout\, , , \runup_state_r~5\, )
-- \cnt_runup[4]~15\ = CARRY(((cnt_runup(4) & !\cnt_runup[3]~13COUT1_39\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datab => cnt_runup(4),
	aclr => GND,
	sclr => \runup_state_r~5\,
	ena => \cnt_runup[0]~22_combout\,
	cin0 => \cnt_runup[3]~13\,
	cin1 => \cnt_runup[3]~13COUT1_39\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_runup(4),
	cout => \cnt_runup[4]~15\);

-- Location: LC_X5_Y2_N0
\cnt_runup[5]\ : maxii_lcell
-- Equation(s):
-- cnt_runup(5) = DFFEAS((cnt_runup(5) $ ((\cnt_runup[4]~15\))), GLOBAL(cnt(5)), VCC, , \cnt_runup[0]~22_combout\, , , \runup_state_r~5\, )
-- \cnt_runup[5]~17\ = CARRY(((!\cnt_runup[4]~15\) # (!cnt_runup(5))))
-- \cnt_runup[5]~17COUT1_41\ = CARRY(((!\cnt_runup[4]~15\) # (!cnt_runup(5))))

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datab => cnt_runup(5),
	aclr => GND,
	sclr => \runup_state_r~5\,
	ena => \cnt_runup[0]~22_combout\,
	cin => \cnt_runup[4]~15\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_runup(5),
	cout0 => \cnt_runup[5]~17\,
	cout1 => \cnt_runup[5]~17COUT1_41\);

-- Location: LC_X5_Y2_N1
\cnt_runup[6]\ : maxii_lcell
-- Equation(s):
-- cnt_runup(6) = DFFEAS((cnt_runup(6) $ ((!(!\cnt_runup[4]~15\ & \cnt_runup[5]~17\) # (\cnt_runup[4]~15\ & \cnt_runup[5]~17COUT1_41\)))), GLOBAL(cnt(5)), VCC, , \cnt_runup[0]~22_combout\, , , \runup_state_r~5\, )
-- \cnt_runup[6]~19\ = CARRY(((cnt_runup(6) & !\cnt_runup[5]~17\)))
-- \cnt_runup[6]~19COUT1_43\ = CARRY(((cnt_runup(6) & !\cnt_runup[5]~17COUT1_41\)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "c30c",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datab => cnt_runup(6),
	aclr => GND,
	sclr => \runup_state_r~5\,
	ena => \cnt_runup[0]~22_combout\,
	cin => \cnt_runup[4]~15\,
	cin0 => \cnt_runup[5]~17\,
	cin1 => \cnt_runup[5]~17COUT1_41\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_runup(6),
	cout0 => \cnt_runup[6]~19\,
	cout1 => \cnt_runup[6]~19COUT1_43\);

-- Location: LC_X5_Y2_N2
\cnt_runup[7]\ : maxii_lcell
-- Equation(s):
-- cnt_runup(7) = DFFEAS((cnt_runup(7) $ (((!\cnt_runup[4]~15\ & \cnt_runup[6]~19\) # (\cnt_runup[4]~15\ & \cnt_runup[6]~19COUT1_43\)))), GLOBAL(cnt(5)), VCC, , \cnt_runup[0]~22_combout\, , , \runup_state_r~5\, )
-- \cnt_runup[7]~21\ = CARRY(((!\cnt_runup[6]~19\) # (!cnt_runup(7))))
-- \cnt_runup[7]~21COUT1_45\ = CARRY(((!\cnt_runup[6]~19COUT1_43\) # (!cnt_runup(7))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datab => cnt_runup(7),
	aclr => GND,
	sclr => \runup_state_r~5\,
	ena => \cnt_runup[0]~22_combout\,
	cin => \cnt_runup[4]~15\,
	cin0 => \cnt_runup[6]~19\,
	cin1 => \cnt_runup[6]~19COUT1_43\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_runup(7),
	cout0 => \cnt_runup[7]~21\,
	cout1 => \cnt_runup[7]~21COUT1_45\);

-- Location: LC_X5_Y2_N3
\cnt_runup[8]\ : maxii_lcell
-- Equation(s):
-- cnt_runup(8) = DFFEAS(cnt_runup(8) $ ((((!(!\cnt_runup[4]~15\ & \cnt_runup[7]~21\) # (\cnt_runup[4]~15\ & \cnt_runup[7]~21COUT1_45\))))), GLOBAL(cnt(5)), VCC, , \cnt_runup[0]~22_combout\, , , \runup_state_r~5\, )
-- \cnt_runup[8]~1\ = CARRY((cnt_runup(8) & ((!\cnt_runup[7]~21\))))
-- \cnt_runup[8]~1COUT1_47\ = CARRY((cnt_runup(8) & ((!\cnt_runup[7]~21COUT1_45\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	dataa => cnt_runup(8),
	aclr => GND,
	sclr => \runup_state_r~5\,
	ena => \cnt_runup[0]~22_combout\,
	cin => \cnt_runup[4]~15\,
	cin0 => \cnt_runup[7]~21\,
	cin1 => \cnt_runup[7]~21COUT1_45\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_runup(8),
	cout0 => \cnt_runup[8]~1\,
	cout1 => \cnt_runup[8]~1COUT1_47\);

-- Location: LC_X5_Y2_N4
\cnt_runup[9]\ : maxii_lcell
-- Equation(s):
-- cnt_runup(9) = DFFEAS(cnt_runup(9) $ (((((!\cnt_runup[4]~15\ & \cnt_runup[8]~1\) # (\cnt_runup[4]~15\ & \cnt_runup[8]~1COUT1_47\))))), GLOBAL(cnt(5)), VCC, , \cnt_runup[0]~22_combout\, , , \runup_state_r~5\, )
-- \cnt_runup[9]~3\ = CARRY(((!\cnt_runup[8]~1COUT1_47\)) # (!cnt_runup(9)))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "5a5f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	dataa => cnt_runup(9),
	aclr => GND,
	sclr => \runup_state_r~5\,
	ena => \cnt_runup[0]~22_combout\,
	cin => \cnt_runup[4]~15\,
	cin0 => \cnt_runup[8]~1\,
	cin1 => \cnt_runup[8]~1COUT1_47\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_runup(9),
	cout => \cnt_runup[9]~3\);

-- Location: LC_X5_Y2_N5
\cnt_runup[10]\ : maxii_lcell
-- Equation(s):
-- cnt_runup(10) = DFFEAS(cnt_runup(10) $ ((((!\cnt_runup[9]~3\)))), GLOBAL(cnt(5)), VCC, , \cnt_runup[0]~22_combout\, , , \runup_state_r~5\, )

-- pragma translate_off
GENERIC MAP (
	cin_used => "true",
	lut_mask => "a5a5",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	dataa => cnt_runup(10),
	aclr => GND,
	sclr => \runup_state_r~5\,
	ena => \cnt_runup[0]~22_combout\,
	cin => \cnt_runup[9]~3\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt_runup(10));

-- Location: LC_X5_Y4_N6
\rundown_cnt[14]\ : maxii_lcell
-- Equation(s):
-- rundown_cnt(14) = DFFEAS(rundown_cnt(14) $ ((((!(!\rundown_cnt[12]~11\ & \rundown_cnt[13]~3\) # (\rundown_cnt[12]~11\ & \rundown_cnt[13]~3COUT1_68\))))), GLOBAL(\mclk~combout\), VCC, , \rundown_cnt[9]~33_combout\, , , \rundown_cnt[9]~32\, )
-- \rundown_cnt[14]~5\ = CARRY((rundown_cnt(14) & ((!\rundown_cnt[13]~3\))))
-- \rundown_cnt[14]~5COUT1_70\ = CARRY((rundown_cnt(14) & ((!\rundown_cnt[13]~3COUT1_68\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	dataa => rundown_cnt(14),
	aclr => GND,
	sclr => \rundown_cnt[9]~32\,
	ena => \rundown_cnt[9]~33_combout\,
	cin => \rundown_cnt[12]~11\,
	cin0 => \rundown_cnt[13]~3\,
	cin1 => \rundown_cnt[13]~3COUT1_68\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rundown_cnt(14),
	cout0 => \rundown_cnt[14]~5\,
	cout1 => \rundown_cnt[14]~5COUT1_70\);

-- Location: LC_X5_Y4_N7
\rundown_cnt[15]\ : maxii_lcell
-- Equation(s):
-- rundown_cnt(15) = DFFEAS((rundown_cnt(15) $ (((!\rundown_cnt[12]~11\ & \rundown_cnt[14]~5\) # (\rundown_cnt[12]~11\ & \rundown_cnt[14]~5COUT1_70\)))), GLOBAL(\mclk~combout\), VCC, , \rundown_cnt[9]~33_combout\, , , \rundown_cnt[9]~32\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	datab => rundown_cnt(15),
	aclr => GND,
	sclr => \rundown_cnt[9]~32\,
	ena => \rundown_cnt[9]~33_combout\,
	cin => \rundown_cnt[12]~11\,
	cin0 => \rundown_cnt[14]~5\,
	cin1 => \rundown_cnt[14]~5COUT1_70\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => rundown_cnt(15));

-- Location: LC_X6_Y4_N5
\result_content[15]\ : maxii_lcell
-- Equation(s):
-- result_content(15) = DFFEAS((((rundown_cnt(15)))), GLOBAL(cnt(5)), VCC, , \state~16\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datad => rundown_cnt(15),
	aclr => GND,
	ena => \state~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => result_content(15));

-- Location: LC_X6_Y2_N4
\frame_content[15]\ : maxii_lcell
-- Equation(s):
-- \LessThan5~0\ = (!cnt_runup(10) & (!cnt_runup(8) & ((!cnt_runup(9)))))
-- frame_content(15) = DFFEAS(\LessThan5~0\, GLOBAL(uart_divider(4)), VCC, , \always3~0\, result_content(15), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => cnt_runup(10),
	datab => cnt_runup(8),
	datac => result_content(15),
	datad => cnt_runup(9),
	aclr => GND,
	sload => VCC,
	ena => \always3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~0\,
	regout => frame_content(15));

-- Location: LC_X3_Y3_N8
\result_content[23]\ : maxii_lcell
-- Equation(s):
-- result_content(23) = DFFEAS((((runup_cnt(7)))), GLOBAL(cnt(5)), VCC, , \state~16\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datad => runup_cnt(7),
	aclr => GND,
	ena => \state~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => result_content(23));

-- Location: LC_X3_Y2_N3
\frame_content[23]\ : maxii_lcell
-- Equation(s):
-- \LessThan5~1\ = (((!cnt_runup(2))) # (!cnt_runup(0))) # (!cnt_runup(1))
-- frame_content(23) = DFFEAS(\LessThan5~1\, GLOBAL(uart_divider(4)), VCC, , \always3~0\, result_content(23), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "77ff",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => cnt_runup(1),
	datab => cnt_runup(0),
	datac => result_content(23),
	datad => cnt_runup(2),
	aclr => GND,
	sload => VCC,
	ena => \always3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~1\,
	regout => frame_content(23));

-- Location: LC_X4_Y2_N1
\LessThan5~2\ : maxii_lcell
-- Equation(s):
-- \LessThan5~2_combout\ = (!cnt_runup(3) & (!cnt_runup(4) & (!cnt_runup(5) & \LessThan5~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt_runup(3),
	datab => cnt_runup(4),
	datac => cnt_runup(5),
	datad => \LessThan5~1\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~2_combout\);

-- Location: LC_X4_Y2_N2
\LessThan5~3\ : maxii_lcell
-- Equation(s):
-- \LessThan5~3_combout\ = (\LessThan5~0\ & (((\LessThan5~2_combout\) # (!cnt_runup(7))) # (!cnt_runup(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f070",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => cnt_runup(6),
	datab => cnt_runup(7),
	datac => \LessThan5~0\,
	datad => \LessThan5~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan5~3_combout\);

-- Location: LC_X2_Y3_N4
\result_content[20]\ : maxii_lcell
-- Equation(s):
-- result_content(20) = DFFEAS((((runup_cnt(4)))), GLOBAL(cnt(5)), VCC, , \state~16\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datad => runup_cnt(4),
	aclr => GND,
	ena => \state~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => result_content(20));

-- Location: LC_X6_Y3_N4
\frame_content[20]\ : maxii_lcell
-- Equation(s):
-- \LessThan0~1\ = (!\LessThan0~0_combout\ & (cnt(4) & ((cnt(5)))))
-- frame_content(20) = DFFEAS(\LessThan0~1\, GLOBAL(uart_divider(4)), VCC, , \always3~0\, result_content(20), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4400",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => \LessThan0~0_combout\,
	datab => cnt(4),
	datac => result_content(20),
	datad => cnt(5),
	aclr => GND,
	sload => VCC,
	ena => \always3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \LessThan0~1\,
	regout => frame_content(20));

-- Location: LC_X5_Y3_N7
\cnt[5]\ : maxii_lcell
-- Equation(s):
-- cnt(5) = DFFEAS((cnt(5) $ (((!\cnt[2]~7\ & \cnt[4]~11\) # (\cnt[2]~7\ & \cnt[4]~11COUT1_24\)))), GLOBAL(\mclk~combout\), VCC, , , , , \LessThan0~1\, )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	cin_used => "true",
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \mclk~combout\,
	datab => cnt(5),
	aclr => GND,
	sclr => \LessThan0~1\,
	cin => \cnt[2]~7\,
	cin0 => \cnt[4]~11\,
	cin1 => \cnt[4]~11COUT1_24\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => cnt(5));

-- Location: LC_X3_Y2_N5
\frame_content[13]\ : maxii_lcell
-- Equation(s):
-- \sw_vref_r[0]~2\ = (!\state.010~regout\ & (((!\state.011~regout\))))
-- frame_content(13) = DFFEAS(\sw_vref_r[0]~2\, GLOBAL(uart_divider(4)), VCC, , \always3~0\, result_content(13), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0055",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => \state.010~regout\,
	datac => result_content(13),
	datad => \state.011~regout\,
	aclr => GND,
	sload => VCC,
	ena => \always3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sw_vref_r[0]~2\,
	regout => frame_content(13));

-- Location: LC_X2_Y4_N8
\sw_vref_r[0]~3\ : maxii_lcell
-- Equation(s):
-- \sw_vref_r[0]~3_combout\ = (\state.001~regout\) # (((!\state.000~regout\ & !\Equal0~1_combout\)) # (!\sw_vref_r[0]~2\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbbf",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \state.001~regout\,
	datab => \sw_vref_r[0]~2\,
	datac => \state.000~regout\,
	datad => \Equal0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sw_vref_r[0]~3_combout\);

-- Location: LC_X7_Y1_N4
\sw_in_r[0]\ : maxii_lcell
-- Equation(s):
-- sw_in_r(0) = DFFEAS((((!\state.010~regout\ & \state.001~regout\))), GLOBAL(cnt(5)), VCC, , \sw_vref_r[0]~3_combout\, , , \state.011~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datac => \state.010~regout\,
	datad => \state.001~regout\,
	aclr => GND,
	sclr => \state.011~regout\,
	ena => \sw_vref_r[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sw_in_r(0));

-- Location: LC_X3_Y2_N1
\frame_content[30]\ : maxii_lcell
-- Equation(s):
-- \sw_up_r~1\ = (cnt_stat(3) & ((cnt_stat(2)) # ((cnt_stat(1)))))
-- frame_content(30) = DFFEAS(\sw_up_r~1\, GLOBAL(uart_divider(4)), VCC, , \always3~0\, result_content(30), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc88",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => cnt_stat(2),
	datab => cnt_stat(3),
	datac => result_content(30),
	datad => cnt_stat(1),
	aclr => GND,
	sload => VCC,
	ena => \always3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sw_up_r~1\,
	regout => frame_content(30));

-- Location: LC_X3_Y2_N2
\sw_up_r~2\ : maxii_lcell
-- Equation(s):
-- \sw_up_r~2_combout\ = (cnt_stat(5)) # ((\runup_state_r.1~regout\ & ((\sw_up_r~1\) # (cnt_stat(4)))) # (!\runup_state_r.1~regout\ & (\sw_up_r~1\ & cnt_stat(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fef8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \runup_state_r.1~regout\,
	datab => \sw_up_r~1\,
	datac => cnt_stat(5),
	datad => cnt_stat(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sw_up_r~2_combout\);

-- Location: LC_X3_Y2_N7
\sw_up_r~3\ : maxii_lcell
-- Equation(s):
-- \sw_up_r~3_combout\ = (\LessThan6~0\ & ((\runup_state_r.1~regout\ & (!\sw_up_r~2_combout\ & !cnt_stat(6))) # (!\runup_state_r.1~regout\ & ((!cnt_stat(6)) # (!\sw_up_r~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1700",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \runup_state_r.1~regout\,
	datab => \sw_up_r~2_combout\,
	datac => cnt_stat(6),
	datad => \LessThan6~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \sw_up_r~3_combout\);

-- Location: LC_X4_Y3_N5
\sw_up_r[0]\ : maxii_lcell
-- Equation(s):
-- sw_up_r(0) = DFFEAS((\state.001~regout\ & (!\state.010~regout\ & ((!\sw_up_r~3_combout\)))), GLOBAL(cnt(5)), VCC, , \sw_vref_r[0]~3_combout\, \runup_state_r.1~regout\, , , \state.011~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0022",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	dataa => \state.001~regout\,
	datab => \state.010~regout\,
	datac => \runup_state_r.1~regout\,
	datad => \sw_up_r~3_combout\,
	aclr => GND,
	sload => \state.011~regout\,
	ena => \sw_vref_r[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sw_up_r(0));

-- Location: LC_X6_Y4_N9
\result_content[14]\ : maxii_lcell
-- Equation(s):
-- \runup_state_r.1~_wirecell\ = ((!\runup_state_r.1~regout\))
-- result_content(14) = DFFEAS(\runup_state_r.1~_wirecell\, GLOBAL(cnt(5)), VCC, , \state~16\, rundown_cnt(14), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3333",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datab => \runup_state_r.1~regout\,
	datac => rundown_cnt(14),
	aclr => GND,
	sload => VCC,
	ena => \state~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \runup_state_r.1~_wirecell\,
	regout => result_content(14));

-- Location: LC_X4_Y3_N7
\sw_dn_r[0]\ : maxii_lcell
-- Equation(s):
-- sw_dn_r(0) = DFFEAS((\state.001~regout\ & (!\state.010~regout\ & ((\sw_up_r~3_combout\)))), GLOBAL(cnt(5)), VCC, , \sw_vref_r[0]~3_combout\, \runup_state_r.1~_wirecell\, , , \state.011~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2200",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	dataa => \state.001~regout\,
	datab => \state.010~regout\,
	datac => \runup_state_r.1~_wirecell\,
	datad => \sw_up_r~3_combout\,
	aclr => GND,
	sload => \state.011~regout\,
	ena => \sw_vref_r[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sw_dn_r(0));

-- Location: LC_X7_Y1_N3
\sw_rst_r[0]\ : maxii_lcell
-- Equation(s):
-- sw_rst_r(0) = DFFEAS((((!\state.010~regout\ & !\state.001~regout\))), GLOBAL(cnt(5)), VCC, , \sw_vref_r[0]~3_combout\, , , \state.011~regout\, )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datac => \state.010~regout\,
	datad => \state.001~regout\,
	aclr => GND,
	sclr => \state.011~regout\,
	ena => \sw_vref_r[0]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sw_rst_r(0));

-- Location: LC_X2_Y4_N6
\sw_vref_r[0]\ : maxii_lcell
-- Equation(s):
-- sw_vref_r(0) = DFFEAS((\sw_vref_r[0]~3_combout\ & (!\state.011~regout\ & (!\state.010~regout\))) # (!\sw_vref_r[0]~3_combout\ & (((sw_vref_r(0))))), GLOBAL(cnt(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "11f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	dataa => \state.011~regout\,
	datab => \state.010~regout\,
	datac => sw_vref_r(0),
	datad => \sw_vref_r[0]~3_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => sw_vref_r(0));

-- Location: LC_X2_Y2_N0
\uart_divider[0]\ : maxii_lcell
-- Equation(s):
-- uart_divider(0) = DFFEAS((((!uart_divider(0)))), GLOBAL(cnt(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0f0f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datac => uart_divider(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uart_divider(0));

-- Location: LC_X2_Y2_N6
\uart_divider[1]\ : maxii_lcell
-- Equation(s):
-- uart_divider(1) = DFFEAS(uart_divider(1) $ ((uart_divider(0))), GLOBAL(cnt(5)), VCC, , , , , , )
-- \uart_divider[1]~7\ = CARRY((uart_divider(1) & (uart_divider(0))))
-- \uart_divider[1]~7COUT1_14\ = CARRY((uart_divider(1) & (uart_divider(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6688",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	dataa => uart_divider(1),
	datab => uart_divider(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uart_divider(1),
	cout0 => \uart_divider[1]~7\,
	cout1 => \uart_divider[1]~7COUT1_14\);

-- Location: LC_X2_Y2_N7
\uart_divider[2]\ : maxii_lcell
-- Equation(s):
-- uart_divider(2) = DFFEAS((uart_divider(2) $ ((\uart_divider[1]~7\))), GLOBAL(cnt(5)), VCC, , , , , , )
-- \uart_divider[2]~5\ = CARRY(((!\uart_divider[1]~7\) # (!uart_divider(2))))
-- \uart_divider[2]~5COUT1_16\ = CARRY(((!\uart_divider[1]~7COUT1_14\) # (!uart_divider(2))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "3c3f",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datab => uart_divider(2),
	aclr => GND,
	cin0 => \uart_divider[1]~7\,
	cin1 => \uart_divider[1]~7COUT1_14\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uart_divider(2),
	cout0 => \uart_divider[2]~5\,
	cout1 => \uart_divider[2]~5COUT1_16\);

-- Location: LC_X2_Y2_N8
\uart_divider[3]\ : maxii_lcell
-- Equation(s):
-- uart_divider(3) = DFFEAS(uart_divider(3) $ ((((!\uart_divider[2]~5\)))), GLOBAL(cnt(5)), VCC, , , , , , )
-- \uart_divider[3]~3\ = CARRY((uart_divider(3) & ((!\uart_divider[2]~5\))))
-- \uart_divider[3]~3COUT1_18\ = CARRY((uart_divider(3) & ((!\uart_divider[2]~5COUT1_16\))))

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "a50a",
	operation_mode => "arithmetic",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	dataa => uart_divider(3),
	aclr => GND,
	cin0 => \uart_divider[2]~5\,
	cin1 => \uart_divider[2]~5COUT1_16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uart_divider(3),
	cout0 => \uart_divider[3]~3\,
	cout1 => \uart_divider[3]~3COUT1_18\);

-- Location: LC_X2_Y2_N9
\uart_divider[4]\ : maxii_lcell
-- Equation(s):
-- uart_divider(4) = DFFEAS(((\uart_divider[3]~3\ $ (uart_divider(4)))), GLOBAL(cnt(5)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	cin0_used => "true",
	cin1_used => "true",
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "cin",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datad => uart_divider(4),
	aclr => GND,
	cin0 => \uart_divider[3]~3\,
	cin1 => \uart_divider[3]~3COUT1_18\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uart_divider(4));

-- Location: LC_X4_Y1_N2
\result_content[24]\ : maxii_lcell
-- Equation(s):
-- result_content(24) = DFFEAS((((runup_cnt(8)))), GLOBAL(cnt(5)), VCC, , \state~16\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datac => runup_cnt(8),
	aclr => GND,
	ena => \state~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => result_content(24));

-- Location: LC_X6_Y2_N7
\frame_content[24]\ : maxii_lcell
-- Equation(s):
-- \uart_tx_a|Add0~0\ = (\uart_tx_a|uart_tx_bit\(0) & (((\uart_tx_a|uart_tx_bit\(1)))))
-- frame_content(24) = DFFEAS(\uart_tx_a|Add0~0\, GLOBAL(uart_divider(4)), VCC, , \always3~0\, result_content(24), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => \uart_tx_a|uart_tx_bit\(0),
	datac => result_content(24),
	datad => \uart_tx_a|uart_tx_bit\(1),
	aclr => GND,
	sload => VCC,
	ena => \always3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uart_tx_a|Add0~0\,
	regout => frame_content(24));

-- Location: LC_X6_Y3_N5
\uart_tx_a|uart_tx_bit[2]\ : maxii_lcell
-- Equation(s):
-- \uart_tx_a|uart_tx_bit\(2) = DFFEAS((\uart_tx_a|uart_tx_bit\(2) & (((!\uart_tx_a|uart_tx_state.010~regout\ & !\uart_tx_a|Add0~0\)) # (!\uart_tx_a|uart_tx_state.001~regout\))) # (!\uart_tx_a|uart_tx_bit\(2) & (((!\uart_tx_a|uart_tx_state.010~regout\ & 
-- \uart_tx_a|Add0~0\)))), GLOBAL(uart_divider(4)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "272a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => \uart_tx_a|uart_tx_bit\(2),
	datab => \uart_tx_a|uart_tx_state.001~regout\,
	datac => \uart_tx_a|uart_tx_state.010~regout\,
	datad => \uart_tx_a|Add0~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart_tx_a|uart_tx_bit\(2));

-- Location: LC_X6_Y2_N8
\uart_tx_a|uart_tx_bit[2]~0\ : maxii_lcell
-- Equation(s):
-- \uart_tx_a|uart_tx_bit[2]~0_combout\ = (!\uart_tx_a|uart_tx_state.010~regout\ & (((!\uart_tx_a|uart_tx_bit\(2)) # (!\uart_tx_a|uart_tx_bit\(0))) # (!\uart_tx_a|uart_tx_bit\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1555",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_a|uart_tx_state.010~regout\,
	datab => \uart_tx_a|uart_tx_bit\(1),
	datac => \uart_tx_a|uart_tx_bit\(0),
	datad => \uart_tx_a|uart_tx_bit\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uart_tx_a|uart_tx_bit[2]~0_combout\);

-- Location: LC_X6_Y2_N6
\uart_tx_a|uart_tx_bit[0]\ : maxii_lcell
-- Equation(s):
-- \uart_tx_a|uart_tx_bit\(0) = DFFEAS((\uart_tx_a|uart_tx_bit\(0) & (((!\uart_tx_a|uart_tx_state.001~regout\ & !\uart_tx_a|uart_tx_bit[2]~0_combout\)))) # (!\uart_tx_a|uart_tx_bit\(0) & (!\uart_tx_a|uart_tx_state.010~regout\)), GLOBAL(uart_divider(4)), VCC, 
-- , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0535",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => \uart_tx_a|uart_tx_state.010~regout\,
	datab => \uart_tx_a|uart_tx_state.001~regout\,
	datac => \uart_tx_a|uart_tx_bit\(0),
	datad => \uart_tx_a|uart_tx_bit[2]~0_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart_tx_a|uart_tx_bit\(0));

-- Location: LC_X6_Y2_N2
\uart_tx_a|uart_tx_bit[1]\ : maxii_lcell
-- Equation(s):
-- \uart_tx_a|uart_tx_bit\(1) = DFFEAS((\uart_tx_a|uart_tx_bit[2]~0_combout\ & (\uart_tx_a|uart_tx_bit\(0) $ (((\uart_tx_a|uart_tx_bit\(1)))))) # (!\uart_tx_a|uart_tx_bit[2]~0_combout\ & (((!\uart_tx_a|uart_tx_state.001~regout\ & 
-- \uart_tx_a|uart_tx_bit\(1))))), GLOBAL(uart_divider(4)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4788",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => \uart_tx_a|uart_tx_bit\(0),
	datab => \uart_tx_a|uart_tx_bit[2]~0_combout\,
	datac => \uart_tx_a|uart_tx_state.001~regout\,
	datad => \uart_tx_a|uart_tx_bit\(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart_tx_a|uart_tx_bit\(1));

-- Location: LC_X6_Y3_N0
\uart_tx_a|uart_tx_state~14\ : maxii_lcell
-- Equation(s):
-- \uart_tx_a|uart_tx_state~14_combout\ = (!\uart_tx_a|uart_tx_state.010~regout\ & (\uart_tx_a|uart_tx_bit\(1) & (\uart_tx_a|uart_tx_bit\(2) & \uart_tx_a|uart_tx_bit\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_a|uart_tx_state.010~regout\,
	datab => \uart_tx_a|uart_tx_bit\(1),
	datac => \uart_tx_a|uart_tx_bit\(2),
	datad => \uart_tx_a|uart_tx_bit\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uart_tx_a|uart_tx_state~14_combout\);

-- Location: LC_X3_Y4_N9
\result_content[0]\ : maxii_lcell
-- Equation(s):
-- result_content(0) = DFFEAS(GND, GLOBAL(cnt(5)), VCC, , \state~16\, rundown_cnt(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datac => rundown_cnt(0),
	aclr => GND,
	sload => VCC,
	ena => \state~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => result_content(0));

-- Location: LC_X6_Y3_N1
\uart_tx_a|uart_tx_state~15\ : maxii_lcell
-- Equation(s):
-- \uart_tx_a|uart_tx_state~15_combout\ = (!\uart_tx_a|uart_tx_state.001~regout\ & (!\uart_tx_a|uart_tx_state~14_combout\ & ((!\uart_tx_a|uart_tx_state.011~regout\) # (!\uart_tx_a|uart_tx_state.010~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0013",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_a|uart_tx_state.010~regout\,
	datab => \uart_tx_a|uart_tx_state.001~regout\,
	datac => \uart_tx_a|uart_tx_state.011~regout\,
	datad => \uart_tx_a|uart_tx_state~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uart_tx_a|uart_tx_state~15_combout\);

-- Location: LC_X6_Y3_N2
\frame_content[0]\ : maxii_lcell
-- Equation(s):
-- \uart_tx_a|uart_tx_state~16\ = (\uart_tx_a|uart_tx_state.000~regout\) # ((\uart_tx_start~regout\) # ((!\uart_tx_a|uart_tx_state~15_combout\)))
-- frame_content(0) = DFFEAS(\uart_tx_a|uart_tx_state~16\, GLOBAL(uart_divider(4)), VCC, , \always3~0\, result_content(0), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eeff",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => \uart_tx_a|uart_tx_state.000~regout\,
	datab => \uart_tx_start~regout\,
	datac => result_content(0),
	datad => \uart_tx_a|uart_tx_state~15_combout\,
	aclr => GND,
	sload => VCC,
	ena => \always3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uart_tx_a|uart_tx_state~16\,
	regout => frame_content(0));

-- Location: LC_X6_Y3_N7
\uart_tx_a|uart_tx_state.011\ : maxii_lcell
-- Equation(s):
-- \uart_tx_a|uart_tx_state.011~regout\ = DFFEAS((\uart_tx_a|uart_tx_state~16\ & (((!\uart_tx_a|uart_tx_state.001~regout\ & \uart_tx_a|uart_tx_state~14_combout\)))) # (!\uart_tx_a|uart_tx_state~16\ & (\uart_tx_a|uart_tx_state.011~regout\)), 
-- GLOBAL(uart_divider(4)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => \uart_tx_a|uart_tx_state.011~regout\,
	datab => \uart_tx_a|uart_tx_state.001~regout\,
	datac => \uart_tx_a|uart_tx_state~14_combout\,
	datad => \uart_tx_a|uart_tx_state~16\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart_tx_a|uart_tx_state.011~regout\);

-- Location: LC_X6_Y3_N9
\uart_tx_a|uart_tx_state.100\ : maxii_lcell
-- Equation(s):
-- \uart_tx_a|uart_tx_state.100~regout\ = DFFEAS((\uart_tx_a|uart_tx_state~16\ & (!\uart_tx_a|uart_tx_state.001~regout\ & ((\uart_tx_a|uart_tx_state.011~regout\)))) # (!\uart_tx_a|uart_tx_state~16\ & (((\uart_tx_a|uart_tx_state.100~regout\)))), 
-- GLOBAL(uart_divider(4)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "50cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => \uart_tx_a|uart_tx_state.001~regout\,
	datab => \uart_tx_a|uart_tx_state.100~regout\,
	datac => \uart_tx_a|uart_tx_state.011~regout\,
	datad => \uart_tx_a|uart_tx_state~16\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart_tx_a|uart_tx_state.100~regout\);

-- Location: LC_X7_Y3_N8
\uart_tx_a|uart_tx_busy\ : maxii_lcell
-- Equation(s):
-- \uart_tx_a|uart_tx_busy~regout\ = DFFEAS((!\uart_tx_a|uart_tx_state.100~regout\ & ((\uart_tx_a|uart_tx_state.000~regout\) # ((\uart_tx_a|uart_tx_busy~regout\)))), GLOBAL(uart_divider(4)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5544",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => \uart_tx_a|uart_tx_state.100~regout\,
	datab => \uart_tx_a|uart_tx_state.000~regout\,
	datad => \uart_tx_a|uart_tx_busy~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart_tx_a|uart_tx_busy~regout\);

-- Location: LC_X4_Y3_N6
\uart_frame_state~9\ : maxii_lcell
-- Equation(s):
-- \uart_frame_state~9_combout\ = (!\always3~0\ & ((\uart_tx_a|uart_tx_busy~regout\) # ((!\uart_frame_state.001~regout\ & \uart_frame_state.000~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00dc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_frame_state.001~regout\,
	datab => \uart_tx_a|uart_tx_busy~regout\,
	datac => \uart_frame_state.000~regout\,
	datad => \always3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uart_frame_state~9_combout\);

-- Location: LC_X2_Y3_N1
\result_content[19]\ : maxii_lcell
-- Equation(s):
-- result_content(19) = DFFEAS((((runup_cnt(3)))), GLOBAL(cnt(5)), VCC, , \state~16\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datad => runup_cnt(3),
	aclr => GND,
	ena => \state~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => result_content(19));

-- Location: LC_X7_Y3_N9
\frame_content[19]\ : maxii_lcell
-- Equation(s):
-- \uart_frame_cnt[0]~6\ = (!\uart_tx_a|uart_tx_busy~regout\ & (((\uart_frame_state.001~regout\))))
-- frame_content(19) = DFFEAS(\uart_frame_cnt[0]~6\, GLOBAL(uart_divider(4)), VCC, , \always3~0\, result_content(19), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5500",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => \uart_tx_a|uart_tx_busy~regout\,
	datac => result_content(19),
	datad => \uart_frame_state.001~regout\,
	aclr => GND,
	sload => VCC,
	ena => \always3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uart_frame_cnt[0]~6\,
	regout => frame_content(19));

-- Location: LC_X7_Y3_N2
\uart_frame_cnt[2]\ : maxii_lcell
-- Equation(s):
-- uart_frame_cnt(2) = DFFEAS((\uart_frame_cnt[3]~11_combout\ & (((uart_frame_cnt(2) & !\always3~0\)))) # (!\uart_frame_cnt[3]~11_combout\ & (\Add6~0\ $ ((uart_frame_cnt(2))))), GLOBAL(uart_divider(4)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "06c6",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => \Add6~0\,
	datab => uart_frame_cnt(2),
	datac => \uart_frame_cnt[3]~11_combout\,
	datad => \always3~0\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uart_frame_cnt(2));

-- Location: LC_X7_Y3_N3
\uart_frame_cnt[1]\ : maxii_lcell
-- Equation(s):
-- uart_frame_cnt(1) = DFFEAS((\uart_frame_cnt[3]~11_combout\ & (((!\always3~0\ & uart_frame_cnt(1))))) # (!\uart_frame_cnt[3]~11_combout\ & (uart_frame_cnt(0) $ (((uart_frame_cnt(1)))))), GLOBAL(uart_divider(4)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "350a",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => uart_frame_cnt(0),
	datab => \always3~0\,
	datac => \uart_frame_cnt[3]~11_combout\,
	datad => uart_frame_cnt(1),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uart_frame_cnt(1));

-- Location: LC_X3_Y4_N5
\result_content[5]\ : maxii_lcell
-- Equation(s):
-- \Add6~1\ = (uart_frame_cnt(1) & (uart_frame_cnt(2) & ((uart_frame_cnt(0)))))
-- result_content(5) = DFFEAS(\Add6~1\, GLOBAL(cnt(5)), VCC, , \state~16\, rundown_cnt(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8800",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	dataa => uart_frame_cnt(1),
	datab => uart_frame_cnt(2),
	datac => rundown_cnt(5),
	datad => uart_frame_cnt(0),
	aclr => GND,
	sload => VCC,
	ena => \state~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~1\,
	regout => result_content(5));

-- Location: LC_X7_Y3_N0
\uart_frame_cnt[3]\ : maxii_lcell
-- Equation(s):
-- uart_frame_cnt(3) = DFFEAS((\uart_frame_cnt[3]~11_combout\ & (uart_frame_cnt(3) & (!\always3~0\))) # (!\uart_frame_cnt[3]~11_combout\ & (uart_frame_cnt(3) $ (((\Add6~1\))))), GLOBAL(uart_divider(4)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "194c",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => \uart_frame_cnt[3]~11_combout\,
	datab => uart_frame_cnt(3),
	datac => \always3~0\,
	datad => \Add6~1\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uart_frame_cnt(3));

-- Location: LC_X7_Y3_N4
\uart_frame_cnt[3]~11\ : maxii_lcell
-- Equation(s):
-- \uart_frame_cnt[3]~11_combout\ = ((\Add6~0\ & (!uart_frame_cnt(2) & !uart_frame_cnt(3)))) # (!\uart_frame_cnt[0]~6\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "02ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0\,
	datab => uart_frame_cnt(2),
	datac => uart_frame_cnt(3),
	datad => \uart_frame_cnt[0]~6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uart_frame_cnt[3]~11_combout\);

-- Location: LC_X7_Y3_N5
\uart_frame_cnt[0]\ : maxii_lcell
-- Equation(s):
-- uart_frame_cnt(0) = DFFEAS((uart_frame_cnt(0) & (((!\always3~0\ & \uart_frame_cnt[3]~11_combout\)))) # (!uart_frame_cnt(0) & (\uart_frame_cnt[0]~6\)), GLOBAL(uart_divider(4)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "4e44",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => uart_frame_cnt(0),
	datab => \uart_frame_cnt[0]~6\,
	datac => \always3~0\,
	datad => \uart_frame_cnt[3]~11_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uart_frame_cnt(0));

-- Location: LC_X5_Y4_N9
\result_content[11]\ : maxii_lcell
-- Equation(s):
-- result_content(11) = DFFEAS((((rundown_cnt(11)))), GLOBAL(cnt(5)), VCC, , \state~16\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datad => rundown_cnt(11),
	aclr => GND,
	ena => \state~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => result_content(11));

-- Location: LC_X7_Y3_N6
\frame_content[11]\ : maxii_lcell
-- Equation(s):
-- \Add6~0\ = (uart_frame_cnt(0) & (((uart_frame_cnt(1)))))
-- frame_content(11) = DFFEAS(\Add6~0\, GLOBAL(uart_divider(4)), VCC, , \always3~0\, result_content(11), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => uart_frame_cnt(0),
	datac => result_content(11),
	datad => uart_frame_cnt(1),
	aclr => GND,
	sload => VCC,
	ena => \always3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Add6~0\,
	regout => frame_content(11));

-- Location: LC_X4_Y4_N1
\result_content[3]\ : maxii_lcell
-- Equation(s):
-- result_content(3) = DFFEAS((((rundown_cnt(3)))), GLOBAL(cnt(5)), VCC, , \state~16\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datac => rundown_cnt(3),
	aclr => GND,
	ena => \state~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => result_content(3));

-- Location: LC_X7_Y3_N1
\frame_content[3]\ : maxii_lcell
-- Equation(s):
-- \Equal2~2\ = ((!uart_frame_cnt(3) & ((!uart_frame_cnt(2)))))
-- frame_content(3) = DFFEAS(\Equal2~2\, GLOBAL(uart_divider(4)), VCC, , \always3~0\, result_content(3), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0033",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	datab => uart_frame_cnt(3),
	datac => result_content(3),
	datad => uart_frame_cnt(2),
	aclr => GND,
	sload => VCC,
	ena => \always3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal2~2\,
	regout => frame_content(3));

-- Location: LC_X4_Y3_N8
\uart_frame_state~10\ : maxii_lcell
-- Equation(s):
-- \uart_frame_state~10_combout\ = (\Add6~0\ & (\uart_frame_state.000~regout\ & (\Equal2~2\ & \uart_frame_cnt[0]~6\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~0\,
	datab => \uart_frame_state.000~regout\,
	datac => \Equal2~2\,
	datad => \uart_frame_cnt[0]~6\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uart_frame_state~10_combout\);

-- Location: LC_X4_Y3_N9
\uart_frame_state.000\ : maxii_lcell
-- Equation(s):
-- \uart_frame_state.000~regout\ = DFFEAS((\uart_frame_state~9_combout\) # ((\uart_frame_state~10_combout\) # ((!\uart_frame_state.000~regout\ & \uart_tx_a|uart_tx_busy~regout\))), GLOBAL(uart_divider(4)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff4",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => \uart_frame_state.000~regout\,
	datab => \uart_tx_a|uart_tx_busy~regout\,
	datac => \uart_frame_state~9_combout\,
	datad => \uart_frame_state~10_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart_frame_state.000~regout\);

-- Location: LC_X4_Y3_N4
\uart_frame_state.001\ : maxii_lcell
-- Equation(s):
-- \uart_frame_state.001~regout\ = DFFEAS((\uart_tx_a|uart_tx_busy~regout\ & (((!\always3~0\ & \uart_frame_state.001~regout\)) # (!\uart_frame_state.000~regout\))), GLOBAL(uart_divider(4)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "40cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => \always3~0\,
	datab => \uart_tx_a|uart_tx_busy~regout\,
	datac => \uart_frame_state.001~regout\,
	datad => \uart_frame_state.000~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart_frame_state.001~regout\);

-- Location: LC_X6_Y1_N2
uart_tx_start : maxii_lcell
-- Equation(s):
-- \uart_tx_start~regout\ = DFFEAS(((!\uart_frame_state.001~regout\ & ((\uart_tx_start~regout\)))), GLOBAL(uart_divider(4)), VCC, , , VCC, , , !\uart_frame_state.000~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3300",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	datab => \uart_frame_state.001~regout\,
	datac => VCC,
	datad => \uart_tx_start~regout\,
	aclr => GND,
	sload => \ALT_INV_uart_frame_state.000~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart_tx_start~regout\);

-- Location: LC_X6_Y3_N6
\uart_tx_a|uart_tx_state.000\ : maxii_lcell
-- Equation(s):
-- \uart_tx_a|uart_tx_state.000~regout\ = DFFEAS(((\uart_tx_start~regout\ & ((\uart_tx_a|uart_tx_state~15_combout\)))), GLOBAL(uart_divider(4)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	datab => \uart_tx_start~regout\,
	datad => \uart_tx_a|uart_tx_state~15_combout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart_tx_a|uart_tx_state.000~regout\);

-- Location: LC_X6_Y3_N8
\uart_tx_a|uart_tx_state.001\ : maxii_lcell
-- Equation(s):
-- \uart_tx_a|uart_tx_state.001~regout\ = DFFEAS((\uart_tx_a|uart_tx_state.000~regout\ & (((!\uart_tx_start~regout\)))), GLOBAL(uart_divider(4)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00aa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => \uart_tx_a|uart_tx_state.000~regout\,
	datad => \uart_tx_start~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart_tx_a|uart_tx_state.001~regout\);

-- Location: LC_X6_Y3_N3
\uart_tx_a|uart_tx_state.010\ : maxii_lcell
-- Equation(s):
-- \uart_tx_a|uart_tx_state.010~regout\ = DFFEAS(((\uart_tx_a|uart_tx_state~16\ & (!\uart_tx_a|uart_tx_state.001~regout\)) # (!\uart_tx_a|uart_tx_state~16\ & ((\uart_tx_a|uart_tx_state.010~regout\)))), GLOBAL(uart_divider(4)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	datab => \uart_tx_a|uart_tx_state.001~regout\,
	datac => \uart_tx_a|uart_tx_state.010~regout\,
	datad => \uart_tx_a|uart_tx_state~16\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart_tx_a|uart_tx_state.010~regout\);

-- Location: LC_X4_Y2_N4
\result_content[4]\ : maxii_lcell
-- Equation(s):
-- result_content(4) = DFFEAS((((rundown_cnt(4)))), GLOBAL(cnt(5)), VCC, , \state~16\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datad => rundown_cnt(4),
	aclr => GND,
	ena => \state~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => result_content(4));

-- Location: LC_X6_Y2_N5
\frame_content[4]\ : maxii_lcell
-- Equation(s):
-- \uart_tx_a|uart_tx_pin~0\ = ((\uart_tx_a|uart_tx_pin~regout\) # ((\uart_tx_a|uart_tx_state.011~regout\)))
-- frame_content(4) = DFFEAS(\uart_tx_a|uart_tx_pin~0\, GLOBAL(uart_divider(4)), VCC, , \always3~0\, result_content(4), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	datab => \uart_tx_a|uart_tx_pin~regout\,
	datac => result_content(4),
	datad => \uart_tx_a|uart_tx_state.011~regout\,
	aclr => GND,
	sload => VCC,
	ena => \always3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uart_tx_a|uart_tx_pin~0\,
	regout => frame_content(4));

-- Location: LC_X7_Y2_N2
\Equal2~0\ : maxii_lcell
-- Equation(s):
-- \Equal2~0_combout\ = (!uart_frame_cnt(3) & (!uart_frame_cnt(0) & (uart_frame_cnt(1) & !uart_frame_cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uart_frame_cnt(3),
	datab => uart_frame_cnt(0),
	datac => uart_frame_cnt(1),
	datad => uart_frame_cnt(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal2~0_combout\);

-- Location: LC_X7_Y2_N8
\Equal4~0\ : maxii_lcell
-- Equation(s):
-- \Equal4~0_combout\ = (!uart_frame_cnt(3) & (!uart_frame_cnt(0) & (!uart_frame_cnt(1) & !uart_frame_cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uart_frame_cnt(3),
	datab => uart_frame_cnt(0),
	datac => uart_frame_cnt(1),
	datad => uart_frame_cnt(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal4~0_combout\);

-- Location: LC_X7_Y2_N9
\Equal3~0\ : maxii_lcell
-- Equation(s):
-- \Equal3~0_combout\ = (!uart_frame_cnt(3) & (uart_frame_cnt(0) & (!uart_frame_cnt(1) & !uart_frame_cnt(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0004",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uart_frame_cnt(3),
	datab => uart_frame_cnt(0),
	datac => uart_frame_cnt(1),
	datad => uart_frame_cnt(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal3~0_combout\);

-- Location: LC_X7_Y3_N7
\frame_content[5]\ : maxii_lcell
-- Equation(s):
-- \uart_tx_register[7]~0\ = (!uart_frame_cnt(2) & (!uart_frame_cnt(3) & ((!\uart_frame_state.000~regout\))))
-- frame_content(5) = DFFEAS(\uart_tx_register[7]~0\, GLOBAL(uart_divider(4)), VCC, , \always3~0\, result_content(5), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => uart_frame_cnt(2),
	datab => uart_frame_cnt(3),
	datac => result_content(5),
	datad => \uart_frame_state.000~regout\,
	aclr => GND,
	sload => VCC,
	ena => \always3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uart_tx_register[7]~0\,
	regout => frame_content(5));

-- Location: LC_X7_Y2_N5
\uart_tx_register[7]\ : maxii_lcell
-- Equation(s):
-- uart_tx_register(7) = DFFEAS(((\Equal2~0_combout\ & ((frame_content(15)))) # (!\Equal2~0_combout\ & (frame_content(7)))), GLOBAL(uart_divider(4)), VCC, , \uart_tx_register[7]~0\, frame_content(23), , \Equal4~0_combout\, \Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => frame_content(7),
	datab => frame_content(15),
	datac => frame_content(23),
	datad => \Equal2~0_combout\,
	aclr => GND,
	sclr => \Equal4~0_combout\,
	sload => \Equal3~0_combout\,
	ena => \uart_tx_register[7]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uart_tx_register(7));

-- Location: LC_X7_Y2_N0
\uart_tx_register[5]\ : maxii_lcell
-- Equation(s):
-- uart_tx_register(5) = DFFEAS((\Equal2~0_combout\ & (frame_content(13))) # (!\Equal2~0_combout\ & (((frame_content(5))))), GLOBAL(uart_divider(4)), VCC, , \uart_tx_register[7]~0\, frame_content(21), , \Equal4~0_combout\, \Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => frame_content(13),
	datab => \Equal2~0_combout\,
	datac => frame_content(21),
	datad => frame_content(5),
	aclr => GND,
	sclr => \Equal4~0_combout\,
	sload => \Equal3~0_combout\,
	ena => \uart_tx_register[7]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uart_tx_register(5));

-- Location: LC_X6_Y4_N2
\result_content[12]\ : maxii_lcell
-- Equation(s):
-- result_content(12) = DFFEAS((((rundown_cnt(12)))), GLOBAL(cnt(5)), VCC, , \state~16\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datad => rundown_cnt(12),
	aclr => GND,
	ena => \state~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => result_content(12));

-- Location: LC_X7_Y2_N7
\uart_tx_register[3]\ : maxii_lcell
-- Equation(s):
-- uart_tx_register(3) = DFFEAS(((\Equal2~0_combout\ & ((frame_content(11)))) # (!\Equal2~0_combout\ & (frame_content(3)))), GLOBAL(uart_divider(4)), VCC, , \uart_tx_register[7]~0\, frame_content(19), , \Equal4~0_combout\, \Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccaa",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => frame_content(3),
	datab => frame_content(11),
	datac => frame_content(19),
	datad => \Equal2~0_combout\,
	aclr => GND,
	sclr => \Equal4~0_combout\,
	sload => \Equal3~0_combout\,
	ena => \uart_tx_register[7]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uart_tx_register(3));

-- Location: LC_X2_Y2_N5
\result_content[22]\ : maxii_lcell
-- Equation(s):
-- \~GND\ = GND
-- result_content(22) = DFFEAS(\~GND\, GLOBAL(cnt(5)), VCC, , \state~16\, runup_cnt(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datac => runup_cnt(6),
	aclr => GND,
	sload => VCC,
	ena => \state~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \~GND\,
	regout => result_content(22));

-- Location: LC_X7_Y4_N6
\frame_content[22]\ : maxii_lcell
-- Equation(s):
-- \uart_tx_register[6]~1\ = (!uart_frame_cnt(2) & (!uart_frame_cnt(3) & ((!uart_frame_cnt(1)))))
-- frame_content(22) = DFFEAS(\uart_tx_register[6]~1\, GLOBAL(uart_divider(4)), VCC, , \always3~0\, result_content(22), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => uart_frame_cnt(2),
	datab => uart_frame_cnt(3),
	datac => result_content(22),
	datad => uart_frame_cnt(1),
	aclr => GND,
	sload => VCC,
	ena => \always3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uart_tx_register[6]~1\,
	regout => frame_content(22));

-- Location: LC_X3_Y4_N4
\result_content[6]\ : maxii_lcell
-- Equation(s):
-- result_content(6) = DFFEAS((((rundown_cnt(6)))), GLOBAL(cnt(5)), VCC, , \state~16\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff00",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datad => rundown_cnt(6),
	aclr => GND,
	ena => \state~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => result_content(6));

-- Location: LC_X7_Y4_N2
\frame_content[6]\ : maxii_lcell
-- Equation(s):
-- \Equal2~1\ = (!uart_frame_cnt(2) & (!uart_frame_cnt(3) & ((!uart_frame_cnt(0)))))
-- frame_content(6) = DFFEAS(\Equal2~1\, GLOBAL(uart_divider(4)), VCC, , \always3~0\, result_content(6), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => uart_frame_cnt(2),
	datab => uart_frame_cnt(3),
	datac => result_content(6),
	datad => uart_frame_cnt(0),
	aclr => GND,
	sload => VCC,
	ena => \always3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \Equal2~1\,
	regout => frame_content(6));

-- Location: LC_X2_Y3_N0
\result_content[18]\ : maxii_lcell
-- Equation(s):
-- result_content(18) = DFFEAS((((runup_cnt(2)))), GLOBAL(cnt(5)), VCC, , \state~16\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datac => runup_cnt(2),
	aclr => GND,
	ena => \state~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => result_content(18));

-- Location: LC_X7_Y4_N5
\frame_content[18]\ : maxii_lcell
-- Equation(s):
-- \uart_tx_register~4\ = (\uart_tx_register[6]~1\ & ((\Equal2~1\) # ((frame_content[18])))) # (!\uart_tx_register[6]~1\ & (!\Equal2~1\ & ((frame_content(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => \uart_tx_register[6]~1\,
	datab => \Equal2~1\,
	datac => result_content(18),
	datad => frame_content(2),
	aclr => GND,
	sload => VCC,
	ena => \always3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uart_tx_register~4\,
	regout => frame_content(18));

-- Location: LC_X7_Y4_N4
\uart_tx_register[2]\ : maxii_lcell
-- Equation(s):
-- uart_tx_register(2) = DFFEAS((\uart_tx_register~4\ & ((frame_content(26)) # ((!\Equal2~1\)))) # (!\uart_tx_register~4\ & (((frame_content(10) & \Equal2~1\)))), GLOBAL(uart_divider(4)), VCC, , \uart_tx_register[7]~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "acf0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => frame_content(26),
	datab => frame_content(10),
	datac => \uart_tx_register~4\,
	datad => \Equal2~1\,
	aclr => GND,
	ena => \uart_tx_register[7]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uart_tx_register(2));

-- Location: LC_X2_Y3_N3
\result_content[16]\ : maxii_lcell
-- Equation(s):
-- result_content(16) = DFFEAS((((runup_cnt(0)))), GLOBAL(cnt(5)), VCC, , \state~16\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datac => runup_cnt(0),
	aclr => GND,
	ena => \state~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => result_content(16));

-- Location: LC_X7_Y4_N1
\frame_content[16]\ : maxii_lcell
-- Equation(s):
-- \uart_tx_register~8\ = (\uart_tx_register[6]~1\ & ((\Equal2~1\) # ((frame_content[16])))) # (!\uart_tx_register[6]~1\ & (!\Equal2~1\ & ((frame_content(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b9a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => \uart_tx_register[6]~1\,
	datab => \Equal2~1\,
	datac => result_content(16),
	datad => frame_content(0),
	aclr => GND,
	sload => VCC,
	ena => \always3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uart_tx_register~8\,
	regout => frame_content(16));

-- Location: LC_X7_Y4_N3
\uart_tx_register[0]\ : maxii_lcell
-- Equation(s):
-- uart_tx_register(0) = DFFEAS((\Equal2~1\ & ((\uart_tx_register~8\ & (frame_content(24))) # (!\uart_tx_register~8\ & ((frame_content(8)))))) # (!\Equal2~1\ & (((\uart_tx_register~8\)))), GLOBAL(uart_divider(4)), VCC, , \uart_tx_register[7]~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => frame_content(24),
	datab => \Equal2~1\,
	datac => frame_content(8),
	datad => \uart_tx_register~8\,
	aclr => GND,
	ena => \uart_tx_register[7]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uart_tx_register(0));

-- Location: LC_X6_Y4_N6
\result_content[9]\ : maxii_lcell
-- Equation(s):
-- result_content(9) = DFFEAS(GND, GLOBAL(cnt(5)), VCC, , \state~16\, rundown_cnt(9), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datac => rundown_cnt(9),
	aclr => GND,
	sload => VCC,
	ena => \state~16\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => result_content(9));

-- Location: LC_X7_Y4_N8
\frame_content[9]\ : maxii_lcell
-- Equation(s):
-- \uart_tx_register~6\ = (\uart_tx_register[6]~1\ & (((\Equal2~1\)))) # (!\uart_tx_register[6]~1\ & ((\Equal2~1\ & ((frame_content[9]))) # (!\Equal2~1\ & (frame_content(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => \uart_tx_register[6]~1\,
	datab => frame_content(1),
	datac => result_content(9),
	datad => \Equal2~1\,
	aclr => GND,
	sload => VCC,
	ena => \always3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uart_tx_register~6\,
	regout => frame_content(9));

-- Location: LC_X7_Y4_N9
\uart_tx_register[1]\ : maxii_lcell
-- Equation(s):
-- uart_tx_register(1) = DFFEAS((\uart_tx_register[6]~1\ & ((\uart_tx_register~6\ & ((frame_content(25)))) # (!\uart_tx_register~6\ & (frame_content(17))))) # (!\uart_tx_register[6]~1\ & (((\uart_tx_register~6\)))), GLOBAL(uart_divider(4)), VCC, , 
-- \uart_tx_register[7]~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f388",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => frame_content(17),
	datab => \uart_tx_register[6]~1\,
	datac => frame_content(25),
	datad => \uart_tx_register~6\,
	aclr => GND,
	ena => \uart_tx_register[7]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uart_tx_register(1));

-- Location: LC_X6_Y2_N3
\uart_tx_a|Mux0~2\ : maxii_lcell
-- Equation(s):
-- \uart_tx_a|Mux0~2_combout\ = (\uart_tx_a|uart_tx_bit\(0) & ((\uart_tx_a|uart_tx_bit\(1)) # ((uart_tx_register(1))))) # (!\uart_tx_a|uart_tx_bit\(0) & (!\uart_tx_a|uart_tx_bit\(1) & (uart_tx_register(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ba98",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \uart_tx_a|uart_tx_bit\(0),
	datab => \uart_tx_a|uart_tx_bit\(1),
	datac => uart_tx_register(0),
	datad => uart_tx_register(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uart_tx_a|Mux0~2_combout\);

-- Location: LC_X6_Y2_N9
\uart_tx_a|Mux0~3\ : maxii_lcell
-- Equation(s):
-- \uart_tx_a|Mux0~3_combout\ = (\uart_tx_a|uart_tx_bit\(1) & ((\uart_tx_a|Mux0~2_combout\ & (uart_tx_register(3))) # (!\uart_tx_a|Mux0~2_combout\ & ((uart_tx_register(2)))))) # (!\uart_tx_a|uart_tx_bit\(1) & (((\uart_tx_a|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uart_tx_register(3),
	datab => \uart_tx_a|uart_tx_bit\(1),
	datac => uart_tx_register(2),
	datad => \uart_tx_a|Mux0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uart_tx_a|Mux0~3_combout\);

-- Location: LC_X6_Y2_N0
\frame_content[12]\ : maxii_lcell
-- Equation(s):
-- \uart_tx_a|uart_tx_pin~1\ = (\uart_tx_a|uart_tx_bit\(2) & (\uart_tx_a|Mux0~1_combout\)) # (!\uart_tx_a|uart_tx_bit\(2) & (((\uart_tx_a|Mux0~3_combout\))))
-- frame_content(12) = DFFEAS(\uart_tx_a|uart_tx_pin~1\, GLOBAL(uart_divider(4)), VCC, , \always3~0\, result_content(12), , , VCC)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => \uart_tx_a|uart_tx_bit\(2),
	datab => \uart_tx_a|Mux0~1_combout\,
	datac => result_content(12),
	datad => \uart_tx_a|Mux0~3_combout\,
	aclr => GND,
	sload => VCC,
	ena => \always3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uart_tx_a|uart_tx_pin~1\,
	regout => frame_content(12));

-- Location: LC_X7_Y2_N6
\uart_tx_register[4]\ : maxii_lcell
-- Equation(s):
-- uart_tx_register(4) = DFFEAS((\Equal2~0_combout\ & (frame_content(12))) # (!\Equal2~0_combout\ & (((frame_content(4))))), GLOBAL(uart_divider(4)), VCC, , \uart_tx_register[7]~0\, frame_content(20), , \Equal4~0_combout\, \Equal3~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => frame_content(12),
	datab => \Equal2~0_combout\,
	datac => frame_content(20),
	datad => frame_content(4),
	aclr => GND,
	sclr => \Equal4~0_combout\,
	sload => \Equal3~0_combout\,
	ena => \uart_tx_register[7]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uart_tx_register(4));

-- Location: LC_X7_Y4_N7
\frame_content[14]\ : maxii_lcell
-- Equation(s):
-- \uart_tx_register~2\ = (\Equal2~1\ & (((frame_content[14]) # (\uart_tx_register[6]~1\)))) # (!\Equal2~1\ & (frame_content(6) & ((!\uart_tx_register[6]~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cce2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => frame_content(6),
	datab => \Equal2~1\,
	datac => result_content(14),
	datad => \uart_tx_register[6]~1\,
	aclr => GND,
	sload => VCC,
	ena => \always3~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uart_tx_register~2\,
	regout => frame_content(14));

-- Location: LC_X7_Y2_N1
\uart_tx_register[6]\ : maxii_lcell
-- Equation(s):
-- uart_tx_register(6) = DFFEAS((\uart_tx_register[6]~1\ & ((\uart_tx_register~2\ & (frame_content(30))) # (!\uart_tx_register~2\ & ((frame_content(22)))))) # (!\uart_tx_register[6]~1\ & (((\uart_tx_register~2\)))), GLOBAL(uart_divider(4)), VCC, , 
-- \uart_tx_register[7]~0\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afc0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => frame_content(30),
	datab => frame_content(22),
	datac => \uart_tx_register[6]~1\,
	datad => \uart_tx_register~2\,
	aclr => GND,
	ena => \uart_tx_register[7]~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => uart_tx_register(6));

-- Location: LC_X7_Y2_N3
\uart_tx_a|Mux0~0\ : maxii_lcell
-- Equation(s):
-- \uart_tx_a|Mux0~0_combout\ = (\uart_tx_a|uart_tx_bit\(0) & (((\uart_tx_a|uart_tx_bit\(1))))) # (!\uart_tx_a|uart_tx_bit\(0) & ((\uart_tx_a|uart_tx_bit\(1) & ((uart_tx_register(6)))) # (!\uart_tx_a|uart_tx_bit\(1) & (uart_tx_register(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uart_tx_register(4),
	datab => uart_tx_register(6),
	datac => \uart_tx_a|uart_tx_bit\(0),
	datad => \uart_tx_a|uart_tx_bit\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uart_tx_a|Mux0~0_combout\);

-- Location: LC_X7_Y2_N4
\uart_tx_a|Mux0~1\ : maxii_lcell
-- Equation(s):
-- \uart_tx_a|Mux0~1_combout\ = (\uart_tx_a|uart_tx_bit\(0) & ((\uart_tx_a|Mux0~0_combout\ & (uart_tx_register(7))) # (!\uart_tx_a|Mux0~0_combout\ & ((uart_tx_register(5)))))) # (!\uart_tx_a|uart_tx_bit\(0) & (((\uart_tx_a|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bbc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => uart_tx_register(7),
	datab => \uart_tx_a|uart_tx_bit\(0),
	datac => uart_tx_register(5),
	datad => \uart_tx_a|Mux0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \uart_tx_a|Mux0~1_combout\);

-- Location: LC_X6_Y2_N1
\uart_tx_a|uart_tx_pin\ : maxii_lcell
-- Equation(s):
-- \uart_tx_a|uart_tx_pin~regout\ = DFFEAS((!\uart_tx_a|uart_tx_state.001~regout\ & ((\uart_tx_a|uart_tx_state.010~regout\ & (\uart_tx_a|uart_tx_pin~0\)) # (!\uart_tx_a|uart_tx_state.010~regout\ & ((\uart_tx_a|uart_tx_pin~1\))))), GLOBAL(uart_divider(4)), 
-- VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3120",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => uart_divider(4),
	dataa => \uart_tx_a|uart_tx_state.010~regout\,
	datab => \uart_tx_a|uart_tx_state.001~regout\,
	datac => \uart_tx_a|uart_tx_pin~0\,
	datad => \uart_tx_a|uart_tx_pin~1\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \uart_tx_a|uart_tx_pin~regout\);

-- Location: LC_X2_Y1_N9
\debug[0]\ : maxii_lcell
-- Equation(s):
-- debug(0) = DFFEAS((((debug(0))) # (!\state.000~regout\)), GLOBAL(cnt(5)), VCC, , , \~GND\, , \state.010~regout\, \state.001~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff33",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => cnt(5),
	datab => \state.000~regout\,
	datac => \~GND\,
	datad => debug(0),
	aclr => GND,
	sclr => \state.010~regout\,
	sload => \state.001~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => debug(0));

-- Location: PIN_54,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sw_in~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_sw_in_r(0),
	oe => VCC,
	padio => ww_sw_in);

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sw_up~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sw_up_r(0),
	oe => VCC,
	padio => ww_sw_up);

-- Location: PIN_56,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sw_dn~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sw_dn_r(0),
	oe => VCC,
	padio => ww_sw_dn);

-- Location: PIN_55,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sw_rst~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_sw_rst_r(0),
	oe => VCC,
	padio => ww_sw_rst);

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sw_vref~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => ALT_INV_sw_vref_r(0),
	oe => VCC,
	padio => ww_sw_vref);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\sw_vref_n~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => sw_vref_r(0),
	oe => VCC,
	padio => ww_sw_vref_n);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\so_dat~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \uart_tx_a|uart_tx_pin~regout\,
	oe => VCC,
	padio => ww_so_dat);

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\deb_0~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \uart_tx_a|uart_tx_pin~regout\,
	oe => VCC,
	padio => ww_deb_0);

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\deb_1~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \uart_frame_r.001~regout\,
	oe => VCC,
	padio => ww_deb_1);

-- Location: PIN_19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\deb_2~I\ : maxii_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => debug(0),
	oe => VCC,
	padio => ww_deb_2);
END structure;


