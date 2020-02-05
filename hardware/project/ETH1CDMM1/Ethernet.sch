EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 13
Title "Ethernet"
Date "2020-01-19"
Rev "1.0"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L ETH1CDMM1:LAN8742 U301
U 1 1 5D7788FE
P 3500 3400
F 0 "U301" H 2850 4550 50  0000 C CNN
F 1 "LAN8742A" H 3900 4550 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-24-1EP_4x4mm_P0.5mm_EP2.6x2.6mm_ThermalVias" H 3550 2350 50  0001 L CNN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/8720a.pdf" H 3300 2450 50  0001 C CNN
	1    3500 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R312
U 1 1 5D77A84D
P 4400 3500
F 0 "R312" V 4200 3500 50  0000 C CNN
F 1 "12k1" V 4300 3500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4330 3500 50  0001 C CNN
F 3 "~" H 4400 3500 50  0001 C CNN
	1    4400 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	4250 3500 4200 3500
Wire Wire Line
	4600 3500 4550 3500
$Comp
L Device:LED D301
U 1 1 5D77BF7F
P 4700 4000
F 0 "D301" V 4739 3882 50  0000 R CNN
F 1 "YELLOW" V 4648 3882 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4700 4000 50  0001 C CNN
F 3 "~" H 4700 4000 50  0001 C CNN
	1    4700 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4700 3850 4700 3800
$Comp
L Device:LED D302
U 1 1 5D77C93E
P 5200 4000
F 0 "D302" V 5239 3882 50  0000 R CNN
F 1 "GREEN" V 5148 3882 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5200 4000 50  0001 C CNN
F 3 "~" H 5200 4000 50  0001 C CNN
	1    5200 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5200 3850 5200 3700
$Comp
L Device:R R313
U 1 1 5D77CF0D
P 4700 4300
F 0 "R313" H 4770 4346 50  0000 L CNN
F 1 "270" H 4770 4255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4630 4300 50  0001 C CNN
F 3 "~" H 4700 4300 50  0001 C CNN
	1    4700 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R314
U 1 1 5D77FB64
P 5200 4300
F 0 "R314" H 5270 4346 50  0000 L CNN
F 1 "270" H 5270 4255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5130 4300 50  0001 C CNN
F 3 "~" H 5200 4300 50  0001 C CNN
	1    5200 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 4450 4700 4500
Wire Wire Line
	4700 4500 4950 4500
Wire Wire Line
	5200 4500 5200 4450
Wire Wire Line
	4950 4550 4950 4500
Connection ~ 4950 4500
Wire Wire Line
	4950 4500 5200 4500
Wire Wire Line
	3500 4550 3500 4500
$Comp
L Device:C C303
U 1 1 5D7836AB
P 2200 1950
F 0 "C303" H 2315 1996 50  0000 L CNN
F 1 "470p" H 2315 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2238 1800 50  0001 C CNN
F 3 "~" H 2200 1950 50  0001 C CNN
	1    2200 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:C C306
U 1 1 5D7839BC
P 2650 1950
F 0 "C306" H 2765 1996 50  0000 L CNN
F 1 "1u" H 2765 1905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2688 1800 50  0001 C CNN
F 3 "~" H 2650 1950 50  0001 C CNN
	1    2650 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1750 2200 1800
Wire Wire Line
	2650 1800 2650 1750
Connection ~ 2650 1750
Wire Wire Line
	2200 2100 2200 2150
Wire Wire Line
	2200 2150 2450 2150
Wire Wire Line
	2650 2150 2650 2100
Wire Wire Line
	2450 2200 2450 2150
Connection ~ 2450 2150
Wire Wire Line
	2450 2150 2650 2150
$Comp
L power:PWR_FLAG #FLG0303
U 1 1 5D788385
P 2100 1750
F 0 "#FLG0303" H 2100 1825 50  0001 C CNN
F 1 "PWR_FLAG" V 2100 1877 50  0000 L CNN
F 2 "" H 2100 1750 50  0001 C CNN
F 3 "~" H 2100 1750 50  0001 C CNN
	1    2100 1750
	0    -1   -1   0   
$EndComp
$Comp
L ETH1CDMM1:749010012A L301
U 1 1 5D78EEFA
P 8350 3200
F 0 "L301" H 8350 3765 50  0000 C CNN
F 1 "749010012A" H 8350 3674 50  0000 C CNN
F 2 "ETH1CDMM1:749010012A" H 9350 3450 50  0001 C CNN
F 3 "" H 9350 3450 50  0001 C CNN
	1    8350 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 3400 7950 3400
Wire Wire Line
	7850 3400 7850 3000
Wire Wire Line
	7850 3000 7950 3000
$Comp
L Device:R R320
U 1 1 5D798866
P 8850 3850
F 0 "R320" H 8920 3896 50  0000 L CNN
F 1 "75/1%" H 8920 3805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8780 3850 50  0001 C CNN
F 3 "~" H 8850 3850 50  0001 C CNN
	1    8850 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R321
U 1 1 5D798A04
P 9350 3850
F 0 "R321" H 9420 3896 50  0000 L CNN
F 1 "75/1%" H 9420 3805 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9280 3850 50  0001 C CNN
F 3 "~" H 9350 3850 50  0001 C CNN
	1    9350 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C314
U 1 1 5D798BC2
P 9100 4250
F 0 "C314" H 9215 4296 50  0000 L CNN
F 1 "1n/1kV" H 9215 4205 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 9138 4100 50  0001 C CNN
F 3 "~" H 9100 4250 50  0001 C CNN
	1    9100 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 4000 8850 4050
Wire Wire Line
	8850 4050 9100 4050
Wire Wire Line
	9350 4050 9350 4000
Wire Wire Line
	9100 4100 9100 4050
Connection ~ 9100 4050
Wire Wire Line
	9100 4050 9350 4050
$Comp
L power:Earth #PWR0323
U 1 1 5D79DEAE
P 9100 4450
F 0 "#PWR0323" H 9100 4200 50  0001 C CNN
F 1 "Earth" H 9100 4300 50  0001 C CNN
F 2 "" H 9100 4450 50  0001 C CNN
F 3 "~" H 9100 4450 50  0001 C CNN
	1    9100 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 4400 9100 4450
Wire Wire Line
	8850 3700 8850 3400
Wire Wire Line
	8850 3400 8750 3400
Wire Wire Line
	9350 3700 9350 3000
Wire Wire Line
	9350 3000 8750 3000
Wire Wire Line
	7850 3700 7850 3400
Wire Wire Line
	7850 4050 7850 4000
$Comp
L Device:C C312
U 1 1 5D78FAC8
P 7850 3850
F 0 "C312" H 7965 3896 50  0000 L CNN
F 1 "100n" H 7965 3805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7888 3700 50  0001 C CNN
F 3 "~" H 7850 3850 50  0001 C CNN
	1    7850 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R319
U 1 1 5D7A4345
P 8350 4500
F 0 "R319" V 8143 4500 50  0000 C CNN
F 1 "1M/1kV" V 8234 4500 50  0000 C CNN
F 2 "Resistor_SMD:R_1206_3216Metric_Pad1.42x1.75mm_HandSolder" V 8280 4500 50  0001 C CNN
F 3 "~" H 8350 4500 50  0001 C CNN
	1    8350 4500
	0    1    1    0   
$EndComp
$Comp
L Device:C C313
U 1 1 5D7A48DD
P 8350 4900
F 0 "C313" V 8098 4900 50  0000 C CNN
F 1 "1n/1kV" V 8189 4900 50  0000 C CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 8388 4750 50  0001 C CNN
F 3 "~" H 8350 4900 50  0001 C CNN
	1    8350 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	8200 4500 8100 4500
Wire Wire Line
	8100 4500 8100 4900
Wire Wire Line
	8100 4900 8200 4900
Wire Wire Line
	8500 4500 8600 4500
Wire Wire Line
	8600 4500 8600 4900
Wire Wire Line
	8600 4900 8500 4900
$Comp
L power:Earth #PWR0322
U 1 1 5D7A6317
P 8600 5100
F 0 "#PWR0322" H 8600 4850 50  0001 C CNN
F 1 "Earth" H 8600 4950 50  0001 C CNN
F 2 "" H 8600 5100 50  0001 C CNN
F 3 "~" H 8600 5100 50  0001 C CNN
	1    8600 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 5100 8600 4900
Connection ~ 8600 4900
Wire Wire Line
	8100 5100 8100 4900
Connection ~ 8100 4900
Wire Wire Line
	2650 1750 3400 1750
Wire Wire Line
	3400 1750 3400 2200
$Comp
L ETH1CDMM1:LC03-3.3 U302
U 1 1 5D7B5D01
P 10450 2850
F 0 "U302" H 10450 3287 60  0000 C CNN
F 1 "LC03-3.3" H 10450 3181 60  0000 C CNN
F 2 "ETH1CDMM1:SO8E" H 10450 2850 60  0001 C CNN
F 3 "" H 10450 2850 60  0000 C CNN
	1    10450 2850
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:LC03-3.3 U303
U 1 1 5D7B67F8
P 10450 3650
F 0 "U303" H 10450 4087 60  0000 C CNN
F 1 "LC03-3.3" H 10450 3981 60  0000 C CNN
F 2 "ETH1CDMM1:SO8E" H 10450 3650 60  0001 C CNN
F 3 "" H 10450 3650 60  0000 C CNN
	1    10450 3650
	1    0    0    -1  
$EndComp
NoConn ~ 10100 3600
NoConn ~ 10100 3700
NoConn ~ 10800 3700
NoConn ~ 10800 3600
NoConn ~ 10100 2900
NoConn ~ 10100 2800
NoConn ~ 10800 2800
NoConn ~ 10800 2900
Wire Wire Line
	8750 3100 10000 3100
Wire Wire Line
	10000 3100 10000 3000
Wire Wire Line
	10000 3000 10100 3000
Wire Wire Line
	8750 2900 9800 2900
Wire Wire Line
	9800 2900 9800 2700
Wire Wire Line
	9800 2700 10100 2700
Wire Wire Line
	8750 3300 10000 3300
Wire Wire Line
	10000 3300 10000 3500
Wire Wire Line
	10000 3500 10100 3500
Wire Wire Line
	8750 3500 9800 3500
Wire Wire Line
	9800 3500 9800 3800
Wire Wire Line
	9800 3800 10100 3800
Wire Wire Line
	10800 2700 10900 2700
Wire Wire Line
	10800 3000 10900 3000
Wire Wire Line
	10800 3500 10900 3500
Wire Wire Line
	10800 3800 10900 3800
Wire Wire Line
	7750 3000 7750 3100
Wire Wire Line
	7750 3100 7950 3100
Wire Wire Line
	7650 3100 7650 3300
Wire Wire Line
	7650 3300 7950 3300
Connection ~ 7850 3400
Wire Wire Line
	7500 3200 7500 3500
Wire Wire Line
	7500 3500 7950 3500
Text HLabel 10900 2700 2    50   BiDi ~ 0
TX+
Text HLabel 10900 3000 2    50   BiDi ~ 0
TX-
Text HLabel 10900 3500 2    50   BiDi ~ 0
RX+
Text HLabel 10900 3800 2    50   BiDi ~ 0
RX-
$Comp
L Device:C C302
U 1 1 5D812F75
P 2200 1250
F 0 "C302" H 2315 1296 50  0000 L CNN
F 1 "100n" H 2315 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2238 1100 50  0001 C CNN
F 3 "~" H 2200 1250 50  0001 C CNN
	1    2200 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C305
U 1 1 5D8133E4
P 2650 1250
F 0 "C305" H 2765 1296 50  0000 L CNN
F 1 "100n" H 2765 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2688 1100 50  0001 C CNN
F 3 "~" H 2650 1250 50  0001 C CNN
	1    2650 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1100 2200 1050
Wire Wire Line
	2200 1050 2650 1050
Wire Wire Line
	2650 1100 2650 1050
Connection ~ 2650 1050
$Comp
L Device:Ferrite_Bead FB301
U 1 1 5D817580
P 3500 1050
F 0 "FB301" V 3226 1050 50  0000 C CNN
F 1 "742792031" V 3317 1050 50  0000 C CNN
F 2 "Inductor_SMD:L_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3430 1050 50  0001 C CNN
F 3 "~" H 3500 1050 50  0001 C CNN
	1    3500 1050
	0    1    1    0   
$EndComp
$Comp
L Device:C C307
U 1 1 5D81C715
P 3750 1250
F 0 "C307" H 3865 1296 50  0000 L CNN
F 1 "1u" H 3865 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3788 1100 50  0001 C CNN
F 3 "~" H 3750 1250 50  0001 C CNN
	1    3750 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 1100 3750 1050
Wire Wire Line
	3750 1050 3650 1050
$Comp
L Device:C C308
U 1 1 5D81F20B
P 4200 1250
F 0 "C308" H 4315 1296 50  0000 L CNN
F 1 "100n" H 4315 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4238 1100 50  0001 C CNN
F 3 "~" H 4200 1250 50  0001 C CNN
	1    4200 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 1100 4200 1050
Wire Wire Line
	4200 1050 3750 1050
Connection ~ 3750 1050
$Comp
L Device:C C309
U 1 1 5D8215D9
P 4650 1250
F 0 "C309" H 4765 1296 50  0000 L CNN
F 1 "100n" H 4765 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4688 1100 50  0001 C CNN
F 3 "~" H 4650 1250 50  0001 C CNN
	1    4650 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1100 4650 1050
Wire Wire Line
	4650 1050 4200 1050
Connection ~ 4200 1050
Wire Wire Line
	3500 2200 3500 2150
Wire Wire Line
	3500 2150 3600 2150
Wire Wire Line
	3600 2150 3600 2200
Wire Wire Line
	3600 2150 3600 1750
Wire Wire Line
	3600 1750 5050 1750
Wire Wire Line
	5050 1050 4650 1050
Connection ~ 3600 2150
Connection ~ 4650 1050
$Comp
L Device:C C310
U 1 1 5D82B9EA
P 5250 1250
F 0 "C310" H 5365 1296 50  0000 L CNN
F 1 "100n" H 5365 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5288 1100 50  0001 C CNN
F 3 "~" H 5250 1250 50  0001 C CNN
	1    5250 1250
	1    0    0    -1  
$EndComp
Connection ~ 5050 1050
Wire Wire Line
	5250 1100 5250 1050
$Comp
L Device:C C311
U 1 1 5D856848
P 7400 1250
F 0 "C311" H 7515 1296 50  0000 L CNN
F 1 "100n" H 7515 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7438 1100 50  0001 C CNN
F 3 "~" H 7400 1250 50  0001 C CNN
	1    7400 1250
	1    0    0    -1  
$EndComp
Connection ~ 5250 1050
Wire Wire Line
	5050 1050 5250 1050
$Comp
L Device:R R318
U 1 1 5D83805E
P 6900 1250
F 0 "R318" H 6970 1296 50  0000 L CNN
F 1 "49R9" H 6970 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6830 1250 50  0001 C CNN
F 3 "~" H 6900 1250 50  0001 C CNN
	1    6900 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R317
U 1 1 5D8377DD
P 6500 1250
F 0 "R317" H 6570 1296 50  0000 L CNN
F 1 "49R9" H 6570 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6430 1250 50  0001 C CNN
F 3 "~" H 6500 1250 50  0001 C CNN
	1    6500 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R316
U 1 1 5D836A9D
P 6100 1250
F 0 "R316" H 6170 1296 50  0000 L CNN
F 1 "49R9" H 6170 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6030 1250 50  0001 C CNN
F 3 "~" H 6100 1250 50  0001 C CNN
	1    6100 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R R315
U 1 1 5D8334FE
P 5700 1250
F 0 "R315" H 5770 1296 50  0000 L CNN
F 1 "49R9" H 5770 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 5630 1250 50  0001 C CNN
F 3 "~" H 5700 1250 50  0001 C CNN
	1    5700 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3000 6100 3000
Wire Wire Line
	4200 2900 5700 2900
Wire Wire Line
	5250 1050 5700 1050
Wire Wire Line
	5700 1100 5700 1050
Connection ~ 5700 1050
Wire Wire Line
	5700 1050 6100 1050
Wire Wire Line
	6100 1100 6100 1050
Connection ~ 6100 1050
Wire Wire Line
	6100 1050 6500 1050
Wire Wire Line
	2100 1750 2200 1750
Connection ~ 2200 1750
Wire Wire Line
	2200 1750 2650 1750
Wire Wire Line
	2650 1050 3300 1050
Wire Wire Line
	3300 2200 3300 1050
Connection ~ 3300 1050
Wire Wire Line
	3300 1050 3350 1050
Wire Wire Line
	5050 1750 5050 1050
Wire Wire Line
	7850 1050 7850 3000
Connection ~ 7850 3000
Wire Wire Line
	7400 1100 7400 1050
Connection ~ 7400 1050
Wire Wire Line
	7400 1050 7850 1050
Wire Wire Line
	6900 1100 6900 1050
Connection ~ 6900 1050
Wire Wire Line
	6900 1050 7400 1050
Wire Wire Line
	6500 1100 6500 1050
Connection ~ 6500 1050
Wire Wire Line
	6500 1050 6900 1050
Wire Wire Line
	2200 1450 2200 1400
Wire Wire Line
	2650 1450 2650 1400
Wire Wire Line
	3750 1450 3750 1400
Wire Wire Line
	4200 1450 4200 1400
Wire Wire Line
	4650 1450 4650 1400
Wire Wire Line
	5250 1450 5250 1400
Wire Wire Line
	7400 1450 7400 1400
$Comp
L Device:R R306
U 1 1 5D90AA6A
P 2200 6900
F 0 "R306" H 2270 6946 50  0000 L CNN
F 1 "10k" H 2270 6855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2130 6900 50  0001 C CNN
F 3 "~" H 2200 6900 50  0001 C CNN
	1    2200 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R307
U 1 1 5D90BF82
P 2550 6900
F 0 "R307" H 2620 6946 50  0000 L CNN
F 1 "10k" H 2620 6855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2480 6900 50  0001 C CNN
F 3 "~" H 2550 6900 50  0001 C CNN
	1    2550 6900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R308
U 1 1 5D90C23E
P 2900 6900
F 0 "R308" H 2970 6946 50  0000 L CNN
F 1 "10k" H 2970 6855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2830 6900 50  0001 C CNN
F 3 "~" H 2900 6900 50  0001 C CNN
	1    2900 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 6750 2200 6700
Wire Wire Line
	2200 6700 2550 6700
Wire Wire Line
	2900 6700 2900 6750
Wire Wire Line
	2550 6750 2550 6700
Connection ~ 2550 6700
Wire Wire Line
	2550 6700 2900 6700
Wire Wire Line
	2200 7050 2200 7550
Wire Wire Line
	2550 7050 2550 7550
Wire Wire Line
	2900 7050 2900 7550
Text Label 4600 2900 2    50   ~ 0
ETH_TXP
Text Label 4600 3000 2    50   ~ 0
ETH_TXN
Text Label 4600 3100 2    50   ~ 0
ETH_RXP
Text Label 4600 3200 2    50   ~ 0
ETH_RXN
Wire Wire Line
	5700 1400 5700 2900
Connection ~ 5700 2900
Wire Wire Line
	6100 1400 6100 3000
Connection ~ 6100 3000
Wire Wire Line
	6500 1400 6500 3100
Connection ~ 6500 3100
Wire Wire Line
	6500 3100 7650 3100
Wire Wire Line
	6900 1400 6900 3200
Connection ~ 6900 3200
Wire Wire Line
	6900 3200 7500 3200
Wire Wire Line
	2200 1000 2200 1050
Connection ~ 2200 1050
Wire Wire Line
	2900 6650 2900 6700
Wire Notes Line
	8350 6450 8350 5100
Wire Notes Line
	8350 4150 8350 3650
Wire Notes Line
	8350 2550 8350 550 
Text Label 2350 3900 0    50   ~ 0
REFCLK0
Text HLabel 1450 2900 0    50   BiDi ~ 0
RMII_TXD1
Text HLabel 1450 2800 0    50   BiDi ~ 0
RMII_TXD0
Text HLabel 1450 3000 0    50   BiDi ~ 0
RMII_TXEN
Text HLabel 1450 3100 0    50   BiDi ~ 0
RMII_RXD0
Text HLabel 1450 3200 0    50   BiDi ~ 0
RMII_RXD1
Text HLabel 1450 3400 0    50   BiDi ~ 0
RMII_CRS_DV
Text HLabel 1450 3500 0    50   BiDi ~ 0
RMII_MDIO
Text HLabel 1450 3600 0    50   BiDi ~ 0
RMII_MDC
Text HLabel 1450 3800 0    50   BiDi ~ 0
NRST
Text HLabel 1450 3900 0    50   BiDi ~ 0
REF_CLK
$Comp
L power:GND #PWR0311
U 1 1 5DBA4079
P 3500 4550
F 0 "#PWR0311" H 3500 4300 50  0001 C CNN
F 1 "GND" H 3505 4377 50  0000 C CNN
F 2 "" H 3500 4550 50  0001 C CNN
F 3 "" H 3500 4550 50  0001 C CNN
	1    3500 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0316
U 1 1 5DBA4651
P 4950 4550
F 0 "#PWR0316" H 4950 4300 50  0001 C CNN
F 1 "GND" H 4955 4377 50  0000 C CNN
F 2 "" H 4950 4550 50  0001 C CNN
F 3 "" H 4950 4550 50  0001 C CNN
	1    4950 4550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0314
U 1 1 5DBA4993
P 4600 3500
F 0 "#PWR0314" H 4600 3250 50  0001 C CNN
F 1 "GND" V 4605 3372 50  0000 R CNN
F 2 "" H 4600 3500 50  0001 C CNN
F 3 "" H 4600 3500 50  0001 C CNN
	1    4600 3500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0307
U 1 1 5DBAA3D5
P 2450 2200
F 0 "#PWR0307" H 2450 1950 50  0001 C CNN
F 1 "GND" H 2455 2027 50  0000 C CNN
F 2 "" H 2450 2200 50  0001 C CNN
F 3 "" H 2450 2200 50  0001 C CNN
	1    2450 2200
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0306
U 1 1 5DBAB7F8
P 2200 1450
F 0 "#PWR0306" H 2200 1200 50  0001 C CNN
F 1 "GND" H 2205 1277 50  0000 C CNN
F 2 "" H 2200 1450 50  0001 C CNN
F 3 "" H 2200 1450 50  0001 C CNN
	1    2200 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0309
U 1 1 5DBABCDB
P 2650 1450
F 0 "#PWR0309" H 2650 1200 50  0001 C CNN
F 1 "GND" H 2655 1277 50  0000 C CNN
F 2 "" H 2650 1450 50  0001 C CNN
F 3 "" H 2650 1450 50  0001 C CNN
	1    2650 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0312
U 1 1 5DBABF48
P 3750 1450
F 0 "#PWR0312" H 3750 1200 50  0001 C CNN
F 1 "GND" H 3755 1277 50  0000 C CNN
F 2 "" H 3750 1450 50  0001 C CNN
F 3 "" H 3750 1450 50  0001 C CNN
	1    3750 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0313
U 1 1 5DBAC1F8
P 4200 1450
F 0 "#PWR0313" H 4200 1200 50  0001 C CNN
F 1 "GND" H 4205 1277 50  0000 C CNN
F 2 "" H 4200 1450 50  0001 C CNN
F 3 "" H 4200 1450 50  0001 C CNN
	1    4200 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0315
U 1 1 5DBAC3F4
P 4650 1450
F 0 "#PWR0315" H 4650 1200 50  0001 C CNN
F 1 "GND" H 4655 1277 50  0000 C CNN
F 2 "" H 4650 1450 50  0001 C CNN
F 3 "" H 4650 1450 50  0001 C CNN
	1    4650 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0317
U 1 1 5DBACB32
P 5250 1450
F 0 "#PWR0317" H 5250 1200 50  0001 C CNN
F 1 "GND" H 5255 1277 50  0000 C CNN
F 2 "" H 5250 1450 50  0001 C CNN
F 3 "" H 5250 1450 50  0001 C CNN
	1    5250 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0318
U 1 1 5DBAD08C
P 7400 1450
F 0 "#PWR0318" H 7400 1200 50  0001 C CNN
F 1 "GND" H 7405 1277 50  0000 C CNN
F 2 "" H 7400 1450 50  0001 C CNN
F 3 "" H 7400 1450 50  0001 C CNN
	1    7400 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0320
U 1 1 5DBAD404
P 7850 4050
F 0 "#PWR0320" H 7850 3800 50  0001 C CNN
F 1 "GND" H 7855 3877 50  0000 C CNN
F 2 "" H 7850 4050 50  0001 C CNN
F 3 "" H 7850 4050 50  0001 C CNN
	1    7850 4050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0321
U 1 1 5DBAF536
P 8100 5100
F 0 "#PWR0321" H 8100 4850 50  0001 C CNN
F 1 "GND" H 8105 4927 50  0000 C CNN
F 2 "" H 8100 5100 50  0001 C CNN
F 3 "" H 8100 5100 50  0001 C CNN
	1    8100 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R311
U 1 1 5D89401F
P 4300 4300
F 0 "R311" H 4370 4346 50  0000 L CNN
F 1 "10k" H 4370 4255 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4230 4300 50  0001 C CNN
F 3 "~" H 4300 4300 50  0001 C CNN
	1    4300 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 3800 4300 3800
Wire Wire Line
	4200 3700 5200 3700
Wire Wire Line
	4700 4500 4300 4500
Wire Wire Line
	4300 4500 4300 4450
Connection ~ 4700 4500
Wire Wire Line
	4300 4150 4300 3800
Connection ~ 4300 3800
Wire Wire Line
	4300 3800 4700 3800
$Comp
L power:VCCQ #PWR0319
U 1 1 5D8F8B7A
P 7850 1000
F 0 "#PWR0319" H 7850 850 50  0001 C CNN
F 1 "VCCQ" H 7867 1173 50  0000 C CNN
F 2 "" H 7850 1000 50  0001 C CNN
F 3 "" H 7850 1000 50  0001 C CNN
	1    7850 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 1000 7850 1050
Connection ~ 7850 1050
$Comp
L Device:R R301
U 1 1 5D94BE7C
P 1900 3100
F 0 "R301" V 1850 2800 50  0000 C CNN
F 1 "33" V 1900 3100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1830 3100 50  0001 C CNN
F 3 "~" H 1900 3100 50  0001 C CNN
	1    1900 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 3100 1450 3100
Wire Wire Line
	1450 2800 2700 2800
Wire Wire Line
	1450 2900 2700 2900
Wire Wire Line
	1450 3000 2700 3000
Wire Wire Line
	2050 3100 2700 3100
Wire Wire Line
	1450 3200 1750 3200
Wire Wire Line
	1450 3400 1750 3400
Wire Wire Line
	1450 3500 2700 3500
Wire Wire Line
	1450 3600 2700 3600
Wire Wire Line
	1450 3800 2700 3800
Wire Wire Line
	1450 3900 1750 3900
$Comp
L Device:R R302
U 1 1 5DA16938
P 1900 3200
F 0 "R302" V 1850 2900 50  0000 C CNN
F 1 "33" V 1900 3200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1830 3200 50  0001 C CNN
F 3 "~" H 1900 3200 50  0001 C CNN
	1    1900 3200
	0    1    1    0   
$EndComp
Wire Wire Line
	2050 3200 2700 3200
$Comp
L Device:R R303
U 1 1 5DA230F0
P 1900 3300
F 0 "R303" V 1850 3000 50  0000 C CNN
F 1 "10k" V 1900 3300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1830 3300 50  0001 C CNN
F 3 "~" H 1900 3300 50  0001 C CNN
	1    1900 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	2050 3300 2700 3300
$Comp
L power:GND #PWR0304
U 1 1 5DA2DBCB
P 1450 3300
F 0 "#PWR0304" H 1450 3050 50  0001 C CNN
F 1 "GND" V 1450 3100 50  0000 C CNN
F 2 "" H 1450 3300 50  0001 C CNN
F 3 "" H 1450 3300 50  0001 C CNN
	1    1450 3300
	0    1    1    0   
$EndComp
Wire Wire Line
	1450 3300 1750 3300
Text Label 2350 3100 0    50   ~ 0
MODE0
Text Label 2350 3200 0    50   ~ 0
MODE1
Text Label 2350 3400 0    50   ~ 0
MODE2
Text Label 2200 7550 1    50   ~ 0
MODE0
Text Label 2550 7550 1    50   ~ 0
MODE1
Text Label 2350 3500 0    50   ~ 0
MDIO
Text Label 2900 7550 1    50   ~ 0
MODE2
$Comp
L Device:R R309
U 1 1 5DA59190
P 3250 6900
F 0 "R309" H 3320 6946 50  0000 L CNN
F 1 "10k" H 3320 6855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3180 6900 50  0001 C CNN
F 3 "~" H 3250 6900 50  0001 C CNN
	1    3250 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 6750 3250 6700
Wire Wire Line
	3250 6700 2900 6700
Connection ~ 2900 6700
Wire Wire Line
	3250 7050 3250 7550
Text Label 3250 7550 1    50   ~ 0
REFCLK0
$Comp
L Device:R R310
U 1 1 5DA75FC2
P 3600 6900
F 0 "R310" H 3670 6946 50  0000 L CNN
F 1 "1k5" H 3670 6855 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 3530 6900 50  0001 C CNN
F 3 "~" H 3600 6900 50  0001 C CNN
	1    3600 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3600 6750 3600 6700
Wire Wire Line
	3600 6700 3250 6700
Connection ~ 3250 6700
Wire Wire Line
	3600 7050 3600 7550
Text Label 3600 7550 1    50   ~ 0
MDIO
$Comp
L Device:R R304
U 1 1 5DABA127
P 1900 3400
F 0 "R304" V 1850 3100 50  0000 C CNN
F 1 "33" V 1900 3400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1830 3400 50  0001 C CNN
F 3 "~" H 1900 3400 50  0001 C CNN
	1    1900 3400
	0    1    1    0   
$EndComp
Wire Wire Line
	2050 3400 2700 3400
$Comp
L Device:R R305
U 1 1 5DABA4F0
P 1900 3900
F 0 "R305" V 1850 3600 50  0000 C CNN
F 1 "33" V 1900 3900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1830 3900 50  0001 C CNN
F 3 "~" H 1900 3900 50  0001 C CNN
	1    1900 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	2050 3900 2700 3900
$Comp
L Device:Crystal Y301
U 1 1 5DC973B0
P 1900 4750
F 0 "Y301" H 1900 4482 50  0000 C CNN
F 1 "NX5032GA-25.000M-LN-CD-1" H 1900 4573 50  0000 C CNN
F 2 "ETH1CDMM1:NX5032GA" H 1900 4750 50  0001 C CNN
F 3 "~" H 1900 4750 50  0001 C CNN
	1    1900 4750
	-1   0    0    1   
$EndComp
Wire Wire Line
	2700 4100 1200 4100
Wire Wire Line
	1200 4100 1200 4750
Wire Wire Line
	1200 4750 1750 4750
Wire Wire Line
	2050 4750 2600 4750
Wire Wire Line
	2600 4750 2600 4200
Wire Wire Line
	2600 4200 2700 4200
$Comp
L Device:C C301
U 1 1 5DCB7289
P 1200 4950
F 0 "C301" H 1315 4996 50  0000 L CNN
F 1 "8p" H 1315 4905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1238 4800 50  0001 C CNN
F 3 "~" H 1200 4950 50  0001 C CNN
	1    1200 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 4800 1200 4750
Connection ~ 1200 4750
$Comp
L Device:C C304
U 1 1 5DCC1FC6
P 2600 4950
F 0 "C304" H 2715 4996 50  0000 L CNN
F 1 "8p" H 2715 4905 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2638 4800 50  0001 C CNN
F 3 "~" H 2600 4950 50  0001 C CNN
	1    2600 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4800 2600 4750
Connection ~ 2600 4750
$Comp
L power:GND #PWR0302
U 1 1 5DCCDCE6
P 1200 5150
F 0 "#PWR0302" H 1200 4900 50  0001 C CNN
F 1 "GND" H 1205 4977 50  0000 C CNN
F 2 "" H 1200 5150 50  0001 C CNN
F 3 "" H 1200 5150 50  0001 C CNN
	1    1200 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0308
U 1 1 5DCCE369
P 2600 5150
F 0 "#PWR0308" H 2600 4900 50  0001 C CNN
F 1 "GND" H 2605 4977 50  0000 C CNN
F 2 "" H 2600 5150 50  0001 C CNN
F 3 "" H 2600 5150 50  0001 C CNN
	1    2600 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 5150 2600 5100
Wire Wire Line
	1200 5100 1200 5150
Wire Wire Line
	4200 3200 6900 3200
Wire Wire Line
	4200 3100 6500 3100
Wire Wire Line
	6100 3000 7750 3000
Wire Wire Line
	5700 2900 7950 2900
$Comp
L power:VCCQ #PWR0301
U 1 1 5DD7CA2A
P 950 7350
F 0 "#PWR0301" H 950 7200 50  0001 C CNN
F 1 "VCCQ" H 967 7523 50  0000 C CNN
F 2 "" H 950 7350 50  0001 C CNN
F 3 "" H 950 7350 50  0001 C CNN
	1    950  7350
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0301
U 1 1 5DD89006
P 950 7350
F 0 "#FLG0301" H 950 7425 50  0001 C CNN
F 1 "PWR_FLAG" H 950 7523 50  0000 C CNN
F 2 "" H 950 7350 50  0001 C CNN
F 3 "~" H 950 7350 50  0001 C CNN
	1    950  7350
	-1   0    0    1   
$EndComp
$Comp
L power:Earth #PWR0303
U 1 1 5DDA24E1
P 1400 7350
F 0 "#PWR0303" H 1400 7100 50  0001 C CNN
F 1 "Earth" H 1400 7200 50  0001 C CNN
F 2 "" H 1400 7350 50  0001 C CNN
F 3 "~" H 1400 7350 50  0001 C CNN
	1    1400 7350
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0302
U 1 1 5DDAD668
P 1400 7350
F 0 "#FLG0302" H 1400 7425 50  0001 C CNN
F 1 "PWR_FLAG" H 1400 7523 50  0000 C CNN
F 2 "" H 1400 7350 50  0001 C CNN
F 3 "~" H 1400 7350 50  0001 C CNN
	1    1400 7350
	-1   0    0    1   
$EndComp
$Comp
L ETH1CDMM1:+3.3VF #PWR0310
U 1 1 5E43F690
P 2900 6650
F 0 "#PWR0310" H 2900 6500 50  0001 C CNN
F 1 "+3.3VF" H 2915 6823 50  0000 C CNN
F 2 "" H 2900 6650 50  0001 C CNN
F 3 "" H 2900 6650 50  0001 C CNN
	1    2900 6650
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:+3.3VF #PWR0305
U 1 1 5E43FBE7
P 2200 1000
F 0 "#PWR0305" H 2200 850 50  0001 C CNN
F 1 "+3.3VF" H 2215 1173 50  0000 C CNN
F 2 "" H 2200 1000 50  0001 C CNN
F 3 "" H 2200 1000 50  0001 C CNN
	1    2200 1000
	1    0    0    -1  
$EndComp
$EndSCHEMATC