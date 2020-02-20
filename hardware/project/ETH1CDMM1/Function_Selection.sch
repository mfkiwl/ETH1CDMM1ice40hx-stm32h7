EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 14
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	9400 3250 9450 3250
Wire Wire Line
	6850 3950 6900 3950
Text HLabel 6850 3950 0    50   Input ~ 0
HI_SENSE
$Comp
L Device:R R922
U 1 1 5E81997D
P 7050 3950
F 0 "R922" V 6843 3950 50  0000 C CNN
F 1 "24k/200V" V 6934 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6980 3950 50  0001 C CNN
F 3 "~" H 7050 3950 50  0001 C CNN
	1    7050 3950
	0    1    1    0   
$EndComp
$Comp
L ETH1CDMM1:AQW210S U905
U 2 1 5E66A7FD
P 9750 3850
F 0 "U905" H 9750 4175 50  0000 C CNN
F 1 "AQW210S" H 9750 4084 50  0000 C CNN
F 2 "ETH1CDMM1:GU-SOP8" H 9750 4150 50  0001 C CNN
F 3 "" H 9750 4150 50  0001 C CNN
	2    9750 3850
	-1   0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:AQW210S U905
U 1 1 5E66A7F7
P 9750 3150
F 0 "U905" H 9750 3475 50  0000 C CNN
F 1 "AQW210S" H 9750 3384 50  0000 C CNN
F 2 "ETH1CDMM1:GU-SOP8" H 9750 3450 50  0001 C CNN
F 3 "" H 9750 3450 50  0001 C CNN
	1    9750 3150
	-1   0    0    -1  
$EndComp
Text Label 4800 2600 2    50   ~ 0
XH_RLY
Wire Wire Line
	4400 2600 4450 2600
Wire Wire Line
	5250 3700 4850 3700
$Comp
L Device:R R914
U 1 1 5E53A100
P 5400 3700
F 0 "R914" V 5193 3700 50  0000 C CNN
F 1 "100k/200V" V 5284 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5330 3700 50  0001 C CNN
F 3 "~" H 5400 3700 50  0001 C CNN
	1    5400 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 4500 4850 4450
$Comp
L ETH1CDMM1:AGNDF #PWR0910
U 1 1 5E52E76F
P 4850 4500
F 0 "#PWR0910" H 4850 4250 50  0001 C CNN
F 1 "AGNDF" H 4855 4327 50  0000 C CNN
F 2 "" H 4850 4500 50  0001 C CNN
F 3 "" H 4850 4500 50  0001 C CNN
	1    4850 4500
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 4100 4850 4050
Connection ~ 4850 4100
Wire Wire Line
	4850 4150 4850 4100
$Comp
L Device:R R909
U 1 1 5E5164FE
P 4850 4300
F 0 "R909" H 4920 4346 50  0000 L CNN
F 1 "PCS2512DR1000ET" H 4920 4255 50  0000 L CNN
F 2 "Resistor_SMD:R_2512_6332Metric_Pad1.52x3.35mm_HandSolder" V 4780 4300 50  0001 C CNN
F 3 "~" H 4850 4300 50  0001 C CNN
	1    4850 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:R R908
U 1 1 5E516010
P 4850 3900
F 0 "R908" H 4920 3946 50  0000 L CNN
F 1 "5" H 4920 3855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4780 3900 50  0001 C CNN
F 3 "~" H 4850 3900 50  0001 C CNN
	1    4850 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 3400 7200 3350
$Comp
L ETH1CDMM1:AGNDF #PWR0914
U 1 1 5E4B6CA6
P 7200 3400
F 0 "#PWR0914" H 7200 3150 50  0001 C CNN
F 1 "AGNDF" H 7205 3227 50  0000 C CNN
F 2 "" H 7200 3400 50  0001 C CNN
F 3 "" H 7200 3400 50  0001 C CNN
	1    7200 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6550 3000 6750 3000
Wire Wire Line
	6100 3000 6250 3000
Wire Wire Line
	5650 3000 5800 3000
Wire Wire Line
	5200 3000 5350 3000
Wire Wire Line
	4750 3000 4900 3000
Wire Wire Line
	7200 3000 7200 3050
$Comp
L Device:R R921
U 1 1 5E4B36EA
P 7200 3200
F 0 "R921" H 7270 3246 50  0000 L CNN
F 1 "100k/200V" H 7270 3155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 7130 3200 50  0001 C CNN
F 3 "~" H 7200 3200 50  0001 C CNN
	1    7200 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R920
U 1 1 5E4B1B56
P 6900 3000
F 0 "R920" V 6693 3000 50  0000 C CNN
F 1 "1M1/200V" V 6784 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6830 3000 50  0001 C CNN
F 3 "~" H 6900 3000 50  0001 C CNN
	1    6900 3000
	0    1    1    0   
$EndComp
$Comp
L Device:R R919
U 1 1 5E4B183F
P 6400 3000
F 0 "R919" V 6193 3000 50  0000 C CNN
F 1 "2M2/200V" V 6284 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6330 3000 50  0001 C CNN
F 3 "~" H 6400 3000 50  0001 C CNN
	1    6400 3000
	0    1    1    0   
$EndComp
$Comp
L Device:R R918
U 1 1 5E4B15AC
P 5950 3000
F 0 "R918" V 5743 3000 50  0000 C CNN
F 1 "2M2/200V" V 5835 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5880 3000 50  0001 C CNN
F 3 "~" H 5950 3000 50  0001 C CNN
	1    5950 3000
	0    1    1    0   
$EndComp
$Comp
L Device:R R916
U 1 1 5E4B1023
P 5500 3000
F 0 "R916" V 5293 3000 50  0000 C CNN
F 1 "2M2/200V" V 5384 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5430 3000 50  0001 C CNN
F 3 "~" H 5500 3000 50  0001 C CNN
	1    5500 3000
	0    1    1    0   
$EndComp
$Comp
L Device:R R913
U 1 1 5E4AF1C6
P 5050 3000
F 0 "R913" V 4843 3000 50  0000 C CNN
F 1 "2M2/200V" V 4934 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4980 3000 50  0001 C CNN
F 3 "~" H 5050 3000 50  0001 C CNN
	1    5050 3000
	0    1    1    0   
$EndComp
$Comp
L Device:R R911
U 1 1 5E4AC329
P 4600 3000
F 0 "R911" V 4393 3000 50  0000 C CNN
F 1 "6k19/200V" V 4484 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4530 3000 50  0001 C CNN
F 3 "~" H 4600 3000 50  0001 C CNN
	1    4600 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	6000 2100 6000 2050
Wire Wire Line
	6900 2100 6900 2050
$Comp
L ETH1CDMM1:AGNDF #PWR0912
U 1 1 5E4A05F4
P 6900 2100
F 0 "#PWR0912" H 6900 1850 50  0001 C CNN
F 1 "AGNDF" H 6905 1927 50  0000 C CNN
F 2 "" H 6900 2100 50  0001 C CNN
F 3 "" H 6900 2100 50  0001 C CNN
	1    6900 2100
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:AGNDF #PWR0911
U 1 1 5E49FED0
P 6000 2100
F 0 "#PWR0911" H 6000 1850 50  0001 C CNN
F 1 "AGNDF" H 6005 1927 50  0000 C CNN
F 2 "" H 6000 2100 50  0001 C CNN
F 3 "" H 6000 2100 50  0001 C CNN
	1    6000 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 1750 6000 1700
Wire Wire Line
	6900 1750 6900 1700
Wire Wire Line
	7350 1700 7750 1700
Wire Wire Line
	6350 1700 6500 1700
Wire Wire Line
	5450 1700 5600 1700
Wire Wire Line
	5000 1700 5150 1700
Wire Wire Line
	4550 1700 4700 1700
Wire Wire Line
	4100 1700 4250 1700
Wire Wire Line
	3700 1700 3800 1700
Wire Wire Line
	3350 1700 3400 1700
$Comp
L Device:L L905
U 1 1 5E4980B5
P 7900 1700
F 0 "L905" V 8090 1700 50  0000 C CNN
F 1 "L0805R100MPWRT" V 7999 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7900 1700 50  0001 C CNN
F 3 "~" H 7900 1700 50  0001 C CNN
	1    7900 1700
	0    -1   -1   0   
$EndComp
$Comp
L Device:L L904
U 1 1 5E497CEE
P 7200 1700
F 0 "L904" V 7390 1700 50  0000 C CNN
F 1 "L0805R100MPWRT" V 7299 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7200 1700 50  0001 C CNN
F 3 "~" H 7200 1700 50  0001 C CNN
	1    7200 1700
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C902
U 1 1 5E4976DD
P 6900 1900
F 0 "C902" H 7015 1946 50  0000 L CNN
F 1 "220p" H 7015 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6938 1750 50  0001 C CNN
F 3 "~" H 6900 1900 50  0001 C CNN
	1    6900 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R917
U 1 1 5E49708E
P 6650 1700
F 0 "R917" V 6443 1700 50  0000 C CNN
F 1 "13k/200V" V 6534 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6580 1700 50  0001 C CNN
F 3 "~" H 6650 1700 50  0001 C CNN
	1    6650 1700
	0    1    1    0   
$EndComp
$Comp
L Device:R R915
U 1 1 5E496DA5
P 6200 1700
F 0 "R915" V 5993 1700 50  0000 C CNN
F 1 "13k/200V" V 6084 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6130 1700 50  0001 C CNN
F 3 "~" H 6200 1700 50  0001 C CNN
	1    6200 1700
	0    1    1    0   
$EndComp
$Comp
L Device:C C901
U 1 1 5E496914
P 6000 1900
F 0 "C901" H 6115 1946 50  0000 L CNN
F 1 "470p" H 6115 1855 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6038 1750 50  0001 C CNN
F 3 "~" H 6000 1900 50  0001 C CNN
	1    6000 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R912
U 1 1 5E496289
P 5750 1700
F 0 "R912" V 5543 1700 50  0000 C CNN
F 1 "13k/200V" V 5634 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5680 1700 50  0001 C CNN
F 3 "~" H 5750 1700 50  0001 C CNN
	1    5750 1700
	0    1    1    0   
$EndComp
$Comp
L Device:R R910
U 1 1 5E495EC4
P 5300 1700
F 0 "R910" V 5093 1700 50  0000 C CNN
F 1 "13k/200V" V 5184 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 5230 1700 50  0001 C CNN
F 3 "~" H 5300 1700 50  0001 C CNN
	1    5300 1700
	0    1    1    0   
$EndComp
$Comp
L Device:R R907
U 1 1 5E495C43
P 4850 1700
F 0 "R907" V 4643 1700 50  0000 C CNN
F 1 "13k/200V" V 4734 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4780 1700 50  0001 C CNN
F 3 "~" H 4850 1700 50  0001 C CNN
	1    4850 1700
	0    1    1    0   
$EndComp
$Comp
L Device:R R906
U 1 1 5E4954B7
P 4400 1700
F 0 "R906" V 4193 1700 50  0000 C CNN
F 1 "13k/200V" V 4284 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4330 1700 50  0001 C CNN
F 3 "~" H 4400 1700 50  0001 C CNN
	1    4400 1700
	0    1    1    0   
$EndComp
$Comp
L Device:R R905
U 1 1 5E494DA2
P 3950 1700
F 0 "R905" V 3743 1700 50  0000 C CNN
F 1 "13k/200V" V 3834 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3880 1700 50  0001 C CNN
F 3 "~" H 3950 1700 50  0001 C CNN
	1    3950 1700
	0    1    1    0   
$EndComp
$Comp
L Device:R R904
U 1 1 5E492CCC
P 3550 1700
F 0 "R904" V 3343 1700 50  0000 C CNN
F 1 "13k/200V" V 3434 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 3480 1700 50  0001 C CNN
F 3 "~" H 3550 1700 50  0001 C CNN
	1    3550 1700
	0    1    1    0   
$EndComp
NoConn ~ 3800 3500
NoConn ~ 3800 3300
Connection ~ 2550 1600
Wire Wire Line
	2500 1600 2550 1600
$Comp
L ETH1CDMM1:AGNDF #PWR0904
U 1 1 5E48B20E
P 2500 1600
F 0 "#PWR0904" H 2500 1350 50  0001 C CNN
F 1 "AGNDF" V 2505 1472 50  0000 R CNN
F 2 "" H 2500 1600 50  0001 C CNN
F 3 "" H 2500 1600 50  0001 C CNN
	1    2500 1600
	0    1    1    0   
$EndComp
$Comp
L ETH1CDMM1:+5VF #PWR0908
U 1 1 5E441EB6
P 3700 2600
F 0 "#PWR0908" H 3700 2450 50  0001 C CNN
F 1 "+5VF" V 3715 2727 50  0000 L CNN
F 2 "" H 3700 2600 50  0001 C CNN
F 3 "" H 3700 2600 50  0001 C CNN
	1    3700 2600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3750 2600 3800 2600
$Comp
L ETH1CDMM1:AGNDF #PWR0909
U 1 1 5E451240
P 3750 2900
F 0 "#PWR0909" H 3750 2650 50  0001 C CNN
F 1 "AGNDF" V 3755 2772 50  0000 R CNN
F 2 "" H 3750 2900 50  0001 C CNN
F 3 "" H 3750 2900 50  0001 C CNN
	1    3750 2900
	0    1    1    0   
$EndComp
Wire Wire Line
	3750 2900 3800 2900
NoConn ~ 4400 3400
$Comp
L Device:R R903
U 1 1 5E44C033
P 2250 2900
F 0 "R903" H 2320 2946 50  0000 L CNN
F 1 "6k19/200V" H 2320 2855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2180 2900 50  0001 C CNN
F 3 "~" H 2250 2900 50  0001 C CNN
	1    2250 2900
	1    0    0    -1  
$EndComp
$Comp
L Device:L L901
U 1 1 5E4258DC
P 850 3000
F 0 "L901" H 903 3046 50  0000 L CNN
F 1 "CBC3225T102MR" H 903 2955 50  0000 L CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 850 3000 50  0001 C CNN
F 3 "~" H 850 3000 50  0001 C CNN
	1    850  3000
	1    0    0    -1  
$EndComp
$Comp
L Device:L L902
U 1 1 5E425E7D
P 850 3400
F 0 "L902" H 903 3446 50  0000 L CNN
F 1 "CBC3225T102MR" H 903 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_1210_3225Metric_Pad1.42x2.65mm_HandSolder" H 850 3400 50  0001 C CNN
F 3 "~" H 850 3400 50  0001 C CNN
	1    850  3400
	1    0    0    -1  
$EndComp
$Comp
L Device:R R901
U 1 1 5E4266F4
P 1650 3000
F 0 "R901" H 1720 3046 50  0000 L CNN
F 1 "3k16/200V" H 1720 2955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1580 3000 50  0001 C CNN
F 3 "~" H 1650 3000 50  0001 C CNN
	1    1650 3000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R902
U 1 1 5E4269D5
P 1650 3400
F 0 "R902" H 1720 3446 50  0000 L CNN
F 1 "3k16/200V" H 1720 3355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 1580 3400 50  0001 C CNN
F 3 "~" H 1650 3400 50  0001 C CNN
	1    1650 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	850  3250 850  3200
Wire Wire Line
	850  2800 1250 2800
Wire Wire Line
	1650 2800 1650 2850
Wire Wire Line
	850  3600 850  3550
Wire Wire Line
	850  2850 850  2800
Wire Wire Line
	1650 3150 1650 3200
Wire Wire Line
	1650 3550 1650 3600
Wire Wire Line
	850  3200 1650 3200
Connection ~ 850  3200
Wire Wire Line
	850  3200 850  3150
Connection ~ 1650 3200
Wire Wire Line
	1650 3200 1650 3250
$Comp
L Device:L L903
U 1 1 5E42C503
P 1800 2650
F 0 "L903" V 1990 2650 50  0000 C CNN
F 1 "L0805R100MPWRT" V 1899 2650 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1800 2650 50  0001 C CNN
F 3 "~" H 1800 2650 50  0001 C CNN
	1    1800 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1950 2650 2250 2650
Wire Wire Line
	2250 2650 2250 1900
Wire Wire Line
	2250 2750 2250 2650
Connection ~ 2250 2650
Wire Wire Line
	2450 1900 2450 2000
Connection ~ 2450 1900
Wire Wire Line
	2450 1900 2250 1900
Wire Wire Line
	2450 1800 2450 1900
Wire Wire Line
	2450 1800 2750 1800
Wire Wire Line
	2750 2000 2450 2000
Wire Wire Line
	2550 2200 2750 2200
Wire Wire Line
	2550 1600 2550 2200
Wire Wire Line
	2750 1600 2550 1600
Wire Wire Line
	5550 3700 6050 3700
Wire Wire Line
	7200 3950 7750 3950
$Comp
L ETH1CDMM1:AQW210S U902
U 2 1 5E6554D2
P 8050 4050
F 0 "U902" H 8050 4375 50  0000 C CNN
F 1 "AQW210S" H 8050 4284 50  0000 C CNN
F 2 "ETH1CDMM1:GU-SOP8" H 8050 4350 50  0001 C CNN
F 3 "" H 8050 4350 50  0001 C CNN
	2    8050 4050
	-1   0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:AQW210S U904
U 2 1 5E65BEAB
P 8500 1800
F 0 "U904" H 8500 2125 50  0000 C CNN
F 1 "AQW210S" H 8500 2034 50  0000 C CNN
F 2 "ETH1CDMM1:GU-SOP8" H 8500 2100 50  0001 C CNN
F 3 "" H 8500 2100 50  0001 C CNN
	2    8500 1800
	-1   0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:AQW210S U904
U 1 1 5E65BEA5
P 8100 3100
F 0 "U904" H 8100 3425 50  0000 C CNN
F 1 "AQW210S" H 8100 3334 50  0000 C CNN
F 2 "ETH1CDMM1:GU-SOP8" H 8100 3400 50  0001 C CNN
F 3 "" H 8100 3400 50  0001 C CNN
	1    8100 3100
	-1   0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:AQW210S U902
U 1 1 5E6554CC
P 8050 4850
F 0 "U902" H 8050 5175 50  0000 C CNN
F 1 "AQW210S" H 8050 5084 50  0000 C CNN
F 2 "ETH1CDMM1:GU-SOP8" H 8050 5150 50  0001 C CNN
F 3 "" H 8050 5150 50  0001 C CNN
	1    8050 4850
	-1   0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:AQW210S U903
U 2 1 5E6506AC
P 8050 5500
F 0 "U903" H 8050 5825 50  0000 C CNN
F 1 "AQW210S" H 8050 5734 50  0000 C CNN
F 2 "ETH1CDMM1:GU-SOP8" H 8050 5800 50  0001 C CNN
F 3 "" H 8050 5800 50  0001 C CNN
	2    8050 5500
	-1   0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:AQW210S U903
U 1 1 5E64F2DB
P 8050 6150
F 0 "U903" H 8050 6475 50  0000 C CNN
F 1 "AQW210S" H 8050 6384 50  0000 C CNN
F 2 "ETH1CDMM1:GU-SOP8" H 8050 6450 50  0001 C CNN
F 3 "" H 8050 6450 50  0001 C CNN
	1    8050 6150
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R924
U 1 1 5E6B38B7
P 7050 6050
F 0 "R924" V 6843 6050 50  0000 C CNN
F 1 "24k/200V" V 6934 6050 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6980 6050 50  0001 C CNN
F 3 "~" H 7050 6050 50  0001 C CNN
	1    7050 6050
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 6050 6900 6050
Wire Wire Line
	7200 6050 7750 6050
$Comp
L Device:R R923
U 1 1 5E73E9A1
P 7050 5400
F 0 "R923" V 6843 5400 50  0000 C CNN
F 1 "100k/200V" V 6934 5400 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6980 5400 50  0001 C CNN
F 3 "~" H 7050 5400 50  0001 C CNN
	1    7050 5400
	0    1    1    0   
$EndComp
$Comp
L ETH1CDMM1:AGNDF #PWR0913
U 1 1 5E741FCF
P 6850 5400
F 0 "#PWR0913" H 6850 5150 50  0001 C CNN
F 1 "AGNDF" V 6855 5272 50  0000 R CNN
F 2 "" H 6850 5400 50  0001 C CNN
F 3 "" H 6850 5400 50  0001 C CNN
	1    6850 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	6850 5400 6900 5400
Wire Wire Line
	7200 5400 7750 5400
Wire Wire Line
	9200 3050 9450 3050
Wire Wire Line
	7750 4150 7700 4150
Wire Wire Line
	7700 4150 7700 4350
Wire Wire Line
	7700 4350 9000 4350
Wire Wire Line
	7800 3200 7750 3200
Wire Wire Line
	7750 3200 7750 3350
Wire Wire Line
	7750 3350 9000 3350
Wire Wire Line
	8150 2000 8150 1900
Wire Wire Line
	8150 1900 8200 1900
Wire Wire Line
	9000 2000 9000 3350
$Comp
L ETH1CDMM1:TQ2SA-5V K901
U 1 1 5EBDF886
P 3050 1700
F 0 "K901" V 2283 1700 50  0000 C CNN
F 1 "TQ2SA-5V" V 2374 1700 50  0000 C CNN
F 2 "ETH1CDMM1:SA" H 3900 1650 50  0001 C CNN
F 3 "" H 3900 1650 50  0001 C CNN
	1    3050 1700
	0    -1   1    0   
$EndComp
$Comp
L ETH1CDMM1:+5VF #PWR0905
U 1 1 5E439E19
P 2650 1300
F 0 "#PWR0905" H 2650 1150 50  0001 C CNN
F 1 "+5VF" V 2665 1427 50  0000 L CNN
F 2 "" H 2650 1300 50  0001 C CNN
F 3 "" H 2650 1300 50  0001 C CNN
	1    2650 1300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2700 1300 2750 1300
Wire Wire Line
	3350 1300 3400 1300
Text Label 3700 1300 2    50   ~ 0
L_RLY
NoConn ~ 3350 2100
$Comp
L ETH1CDMM1:TQ2SA-5V K903
U 1 1 5EC09A74
P 4100 3000
F 0 "K903" V 3333 3000 50  0000 C CNN
F 1 "TQ2SA-5V" V 3424 3000 50  0000 C CNN
F 2 "ETH1CDMM1:SA" H 4950 2950 50  0001 C CNN
F 3 "" H 4950 2950 50  0001 C CNN
	1    4100 3000
	0    -1   1    0   
$EndComp
Wire Wire Line
	6050 4750 7750 4750
Wire Wire Line
	7750 5600 7700 5600
Wire Wire Line
	7700 5600 7700 5750
Wire Wire Line
	7700 5750 9200 5750
Wire Wire Line
	7750 6250 7700 6250
Wire Wire Line
	7700 6250 7700 6450
Wire Wire Line
	7700 6450 9200 6450
Wire Wire Line
	9200 3750 9450 3750
Wire Wire Line
	9400 3250 9400 3400
Wire Wire Line
	9450 3950 9400 3950
Wire Wire Line
	9400 3950 9400 4100
Wire Wire Line
	9400 4100 10650 4100
Wire Wire Line
	10650 4100 10650 3400
Wire Wire Line
	9400 3400 10650 3400
$Comp
L Device:R R932
U 1 1 5EC95834
P 10200 3750
F 0 "R932" V 9993 3750 50  0000 C CNN
F 1 "680" V 10084 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 10130 3750 50  0001 C CNN
F 3 "~" H 10200 3750 50  0001 C CNN
	1    10200 3750
	0    1    1    0   
$EndComp
$Comp
L ETH1CDMM1:+5VF #PWR0922
U 1 1 5EC961D8
P 10350 3750
F 0 "#PWR0922" H 10350 3600 50  0001 C CNN
F 1 "+5VF" H 10250 3900 50  0000 L CNN
F 2 "" H 10350 3750 50  0001 C CNN
F 3 "" H 10350 3750 50  0001 C CNN
	1    10350 3750
	0    1    1    0   
$EndComp
$Comp
L Device:R R930
U 1 1 5ECADF51
P 8550 3000
F 0 "R930" V 8343 3000 50  0000 C CNN
F 1 "680" V 8434 3000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8480 3000 50  0001 C CNN
F 3 "~" H 8550 3000 50  0001 C CNN
	1    8550 3000
	0    1    1    0   
$EndComp
$Comp
L ETH1CDMM1:+5VF #PWR0920
U 1 1 5ECADF57
P 8700 3000
F 0 "#PWR0920" H 8700 2850 50  0001 C CNN
F 1 "+5VF" H 8600 3150 50  0000 L CNN
F 2 "" H 8700 3000 50  0001 C CNN
F 3 "" H 8700 3000 50  0001 C CNN
	1    8700 3000
	0    1    1    0   
$EndComp
$Comp
L Device:R R925
U 1 1 5ECB397F
P 8500 3950
F 0 "R925" V 8293 3950 50  0000 C CNN
F 1 "680" V 8384 3950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8430 3950 50  0001 C CNN
F 3 "~" H 8500 3950 50  0001 C CNN
	1    8500 3950
	0    1    1    0   
$EndComp
$Comp
L ETH1CDMM1:+5VF #PWR0915
U 1 1 5ECB3985
P 8650 3950
F 0 "#PWR0915" H 8650 3800 50  0001 C CNN
F 1 "+5VF" H 8550 4100 50  0000 L CNN
F 2 "" H 8650 3950 50  0001 C CNN
F 3 "" H 8650 3950 50  0001 C CNN
	1    8650 3950
	0    1    1    0   
$EndComp
$Comp
L Device:R R926
U 1 1 5ECBC2DC
P 8500 4750
F 0 "R926" V 8293 4750 50  0000 C CNN
F 1 "680" V 8384 4750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8430 4750 50  0001 C CNN
F 3 "~" H 8500 4750 50  0001 C CNN
	1    8500 4750
	0    1    1    0   
$EndComp
$Comp
L ETH1CDMM1:+5VF #PWR0916
U 1 1 5ECBC2E2
P 8650 4750
F 0 "#PWR0916" H 8650 4600 50  0001 C CNN
F 1 "+5VF" H 8550 4900 50  0000 L CNN
F 2 "" H 8650 4750 50  0001 C CNN
F 3 "" H 8650 4750 50  0001 C CNN
	1    8650 4750
	0    1    1    0   
$EndComp
$Comp
L Device:R R928
U 1 1 5ECC2294
P 8500 6050
F 0 "R928" V 8293 6050 50  0000 C CNN
F 1 "680" V 8384 6050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8430 6050 50  0001 C CNN
F 3 "~" H 8500 6050 50  0001 C CNN
	1    8500 6050
	0    1    1    0   
$EndComp
$Comp
L ETH1CDMM1:+5VF #PWR0918
U 1 1 5ECC229A
P 8650 6050
F 0 "#PWR0918" H 8650 5900 50  0001 C CNN
F 1 "+5VF" H 8550 6200 50  0000 L CNN
F 2 "" H 8650 6050 50  0001 C CNN
F 3 "" H 8650 6050 50  0001 C CNN
	1    8650 6050
	0    1    1    0   
$EndComp
$Comp
L Device:R R927
U 1 1 5ECC7752
P 8500 5400
F 0 "R927" V 8293 5400 50  0000 C CNN
F 1 "680" V 8384 5400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8430 5400 50  0001 C CNN
F 3 "~" H 8500 5400 50  0001 C CNN
	1    8500 5400
	0    1    1    0   
$EndComp
$Comp
L ETH1CDMM1:+5VF #PWR0917
U 1 1 5ECC7758
P 8650 5400
F 0 "#PWR0917" H 8650 5250 50  0001 C CNN
F 1 "+5VF" H 8550 5550 50  0000 L CNN
F 2 "" H 8650 5400 50  0001 C CNN
F 3 "" H 8650 5400 50  0001 C CNN
	1    8650 5400
	0    1    1    0   
$EndComp
$Comp
L Device:R R929
U 1 1 5ECD2424
P 8950 1700
F 0 "R929" V 8743 1700 50  0000 C CNN
F 1 "680" V 8834 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8880 1700 50  0001 C CNN
F 3 "~" H 8950 1700 50  0001 C CNN
	1    8950 1700
	0    1    1    0   
$EndComp
$Comp
L ETH1CDMM1:+5VF #PWR0919
U 1 1 5ECD242A
P 9100 1700
F 0 "#PWR0919" H 9100 1550 50  0001 C CNN
F 1 "+5VF" H 9000 1850 50  0000 L CNN
F 2 "" H 9100 1700 50  0001 C CNN
F 3 "" H 9100 1700 50  0001 C CNN
	1    9100 1700
	0    1    1    0   
$EndComp
$Comp
L Device:R R931
U 1 1 5ECD904C
P 10200 3050
F 0 "R931" V 9993 3050 50  0000 C CNN
F 1 "680" V 10084 3050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 10130 3050 50  0001 C CNN
F 3 "~" H 10200 3050 50  0001 C CNN
	1    10200 3050
	0    1    1    0   
$EndComp
$Comp
L ETH1CDMM1:+5VF #PWR0921
U 1 1 5ECD9052
P 10350 3050
F 0 "#PWR0921" H 10350 2900 50  0001 C CNN
F 1 "+5VF" H 10250 3200 50  0000 L CNN
F 2 "" H 10350 3050 50  0001 C CNN
F 3 "" H 10350 3050 50  0001 C CNN
	1    10350 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	10650 3400 10750 3400
Connection ~ 10650 3400
Text HLabel 10750 3400 2    50   Output ~ 0
AMP+
Wire Wire Line
	9200 2000 9000 2000
Wire Wire Line
	9200 2000 9200 3050
Wire Wire Line
	7750 4950 7700 4950
Wire Wire Line
	7700 4950 7700 5100
Wire Wire Line
	9450 4900 9000 4900
$Comp
L Device:R R933
U 1 1 5EE7D21E
P 10200 4900
F 0 "R933" V 9993 4900 50  0000 C CNN
F 1 "680" V 10084 4900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 10130 4900 50  0001 C CNN
F 3 "~" H 10200 4900 50  0001 C CNN
	1    10200 4900
	0    1    1    0   
$EndComp
$Comp
L ETH1CDMM1:+5VF #PWR0923
U 1 1 5EE7D224
P 10350 4900
F 0 "#PWR0923" H 10350 4750 50  0001 C CNN
F 1 "+5VF" H 10250 5050 50  0000 L CNN
F 2 "" H 10350 4900 50  0001 C CNN
F 3 "" H 10350 4900 50  0001 C CNN
	1    10350 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	2250 3100 2250 3050
Connection ~ 9000 3350
Wire Wire Line
	9000 3350 9000 4350
Connection ~ 9000 4350
Wire Wire Line
	9000 4350 9000 4900
Wire Wire Line
	7700 5100 9450 5100
Connection ~ 9200 5750
Wire Wire Line
	9200 5750 9200 3750
Wire Wire Line
	9200 5750 9200 6450
$Comp
L ETH1CDMM1:TQ2SA-5V K902
U 1 1 5EC22506
P 3150 4650
F 0 "K902" H 4150 4700 50  0000 R CNN
F 1 "TQ2SA-5V" H 4200 4600 50  0000 R CNN
F 2 "ETH1CDMM1:SA" H 4000 4600 50  0001 C CNN
F 3 "" H 4000 4600 50  0001 C CNN
	1    3150 4650
	-1   0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:AGNDF #PWR0906
U 1 1 5E4D64C5
P 2650 4200
F 0 "#PWR0906" H 2650 3950 50  0001 C CNN
F 1 "AGNDF" H 2655 4027 50  0000 C CNN
F 2 "" H 2650 4200 50  0001 C CNN
F 3 "" H 2650 4200 50  0001 C CNN
	1    2650 4200
	-1   0    0    1   
$EndComp
Wire Wire Line
	2750 4950 2750 5000
Wire Wire Line
	2750 5000 1700 5000
Text HLabel 1700 5000 0    50   Input ~ 0
OHMS_CURRENT
Wire Wire Line
	3150 4950 3150 5150
Wire Wire Line
	3150 5150 1700 5150
Text HLabel 1700 5150 0    50   Input ~ 0
AMPS
$Comp
L ETH1CDMM1:+5VF #PWR0907
U 1 1 5E50EAE3
P 4100 4300
F 0 "#PWR0907" H 4100 4150 50  0001 C CNN
F 1 "+5VF" H 4000 4450 50  0000 L CNN
F 2 "" H 4100 4300 50  0001 C CNN
F 3 "" H 4100 4300 50  0001 C CNN
	1    4100 4300
	0    1    1    0   
$EndComp
Wire Wire Line
	2650 4200 2650 4350
Wire Wire Line
	3550 4950 3550 5000
Text Label 3550 5400 1    50   ~ 0
XO-A_RLY
Wire Wire Line
	3050 4350 3050 3700
Wire Wire Line
	3250 4350 3250 4100
$Comp
L Device:D D901
U 1 1 5EFEFF4E
P 3050 800
F 0 "D901" H 3050 1016 50  0000 C CNN
F 1 "1N4148W" H 3050 925 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 3050 800 50  0001 C CNN
F 3 "~" H 3050 800 50  0001 C CNN
	1    3050 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 800  2700 800 
Wire Wire Line
	2700 800  2700 1300
Connection ~ 2700 1300
Wire Wire Line
	2650 1300 2700 1300
Wire Wire Line
	3200 800  3400 800 
Wire Wire Line
	3400 800  3400 1300
Connection ~ 3400 1300
Wire Wire Line
	3400 1300 3700 1300
$Comp
L Device:D D903
U 1 1 5F06C805
P 4100 2100
F 0 "D903" H 4100 2316 50  0000 C CNN
F 1 "1N4148W" H 4100 2225 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 4100 2100 50  0001 C CNN
F 3 "~" H 4100 2100 50  0001 C CNN
	1    4100 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3950 2100 3750 2100
Wire Wire Line
	3750 2100 3750 2600
Wire Wire Line
	4250 2100 4450 2100
Wire Wire Line
	4450 2100 4450 2600
Wire Wire Line
	3700 2600 3750 2600
Connection ~ 3750 2600
Wire Wire Line
	4450 2600 4800 2600
Wire Wire Line
	4050 4500 4050 4300
Wire Wire Line
	4050 4300 3550 4300
Wire Wire Line
	4050 4800 4050 5000
Wire Wire Line
	4050 5000 3550 5000
Connection ~ 3550 5000
Wire Wire Line
	3550 5000 3550 5400
Wire Wire Line
	4100 4300 4050 4300
Connection ~ 4050 4300
Wire Wire Line
	3550 4300 3550 4350
$Comp
L Device:D D902
U 1 1 5F0BFDA9
P 4050 4650
F 0 "D902" V 4004 4729 50  0000 L CNN
F 1 "1N4148W" V 4095 4729 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 4050 4650 50  0001 C CNN
F 3 "~" H 4050 4650 50  0001 C CNN
	1    4050 4650
	0    1    1    0   
$EndComp
Wire Wire Line
	3250 4100 4850 4100
Wire Wire Line
	4850 3750 4850 3700
Connection ~ 4850 3700
Wire Wire Line
	3050 3700 4850 3700
Wire Wire Line
	8400 3200 8800 3200
Wire Wire Line
	8800 1900 9200 1900
Wire Wire Line
	8350 4150 8750 4150
Wire Wire Line
	8350 4950 8750 4950
Wire Wire Line
	8350 5600 8750 5600
Wire Wire Line
	8350 6250 8750 6250
Wire Wire Line
	10050 5100 10450 5100
Wire Wire Line
	10050 3950 10450 3950
Wire Wire Line
	10050 3250 10450 3250
Text Label 9200 1900 2    50   ~ 0
DCV_L_CTR
Text Label 8800 3200 2    50   ~ 0
DCV_H_CTR
Text Label 8750 4150 2    50   ~ 0
4W_HI_CTR
Text Label 8750 4950 2    50   ~ 0
AMPS_CTR
Text Label 8750 5600 2    50   ~ 0
VZERO_CTR
Text Label 8750 6250 2    50   ~ 0
4W_LO_CTR
Text Label 10450 5100 2    50   ~ 0
DCV_A_CTR
Text Label 10450 3950 2    50   ~ 0
MZ_CTR
Text Label 10450 3250 2    50   ~ 0
MC_CTR
Text HLabel 850  2650 0    50   Input ~ 0
HI
Wire Wire Line
	850  2650 1250 2650
Text HLabel 6850 6050 0    50   Input ~ 0
LO_SENSE
Text Label 700  6300 0    50   ~ 0
XO-A_RLY
Wire Wire Line
	1200 6300 700  6300
Text Label 700  6200 0    50   ~ 0
XH_RLY
Wire Wire Line
	1200 6200 700  6200
Text Label 700  6100 0    50   ~ 0
L_RLY
Wire Wire Line
	1200 6100 700  6100
Wire Wire Line
	1200 6400 700  6400
Text Label 700  6400 0    50   ~ 0
DCV_L_CTR
Wire Wire Line
	1200 6500 700  6500
Text Label 700  6500 0    50   ~ 0
DCV_H_CTR
Wire Wire Line
	1200 6600 700  6600
Text Label 700  6600 0    50   ~ 0
4W_HI_CTR
Wire Wire Line
	1200 6700 700  6700
Text Label 700  6700 0    50   ~ 0
AMPS_CTR
Wire Wire Line
	1200 6800 700  6800
Text Label 700  6800 0    50   ~ 0
VZERO_CTR
Wire Wire Line
	1200 6900 700  6900
Text Label 700  6900 0    50   ~ 0
4W_LO_CTR
Wire Wire Line
	1200 7000 700  7000
Text Label 700  7000 0    50   ~ 0
DCV_A_CTR
Wire Wire Line
	1200 7100 700  7100
Text Label 700  7100 0    50   ~ 0
MZ_CTR
Wire Wire Line
	1200 7200 700  7200
Text Label 700  7200 0    50   ~ 0
MC_CTR
$Comp
L ETH1CDMM1:MCZ33996 U901
U 1 1 5F327CC8
P 1650 6750
F 0 "U901" H 1650 7865 50  0000 C CNN
F 1 "MCZ33996" H 1650 7774 50  0000 C CNN
F 2 "ETH1CDMM1:HSOP-32-1EP_7.5x11.0mm_P0.65mm_ThermalVias" H 3000 7650 50  0001 C CNN
F 3 "" H 3000 7650 50  0001 C CNN
	1    1650 6750
	-1   0    0    -1  
$EndComp
NoConn ~ 1200 7400
NoConn ~ 1200 7500
NoConn ~ 1200 7600
Wire Wire Line
	2100 7600 2150 7600
Wire Wire Line
	2150 7600 2150 7500
Wire Wire Line
	2150 6800 2100 6800
Wire Wire Line
	2100 6900 2150 6900
Connection ~ 2150 6900
Wire Wire Line
	2150 6900 2150 6800
Wire Wire Line
	2100 7000 2150 7000
Connection ~ 2150 7000
Wire Wire Line
	2150 7000 2150 6900
Wire Wire Line
	2100 7100 2150 7100
Connection ~ 2150 7100
Wire Wire Line
	2150 7100 2150 7000
Wire Wire Line
	2100 7200 2150 7200
Connection ~ 2150 7200
Wire Wire Line
	2150 7200 2150 7100
Wire Wire Line
	2100 7300 2150 7300
Connection ~ 2150 7300
Wire Wire Line
	2150 7300 2150 7200
Wire Wire Line
	2100 7400 2150 7400
Connection ~ 2150 7400
Wire Wire Line
	2150 7400 2150 7300
Wire Wire Line
	2100 7500 2150 7500
Connection ~ 2150 7500
Wire Wire Line
	2150 7500 2150 7400
$Comp
L ETH1CDMM1:DGNDF #PWR0903
U 1 1 5F416C8E
P 2200 7200
F 0 "#PWR0903" H 2200 6950 50  0001 C CNN
F 1 "DGNDF" V 2200 7050 50  0000 R CNN
F 2 "" H 2200 7200 50  0001 C CNN
F 3 "" H 2200 7200 50  0001 C CNN
	1    2200 7200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2200 7200 2150 7200
$Comp
L ETH1CDMM1:+5VF #PWR0901
U 1 1 5F4246E3
P 1200 5900
F 0 "#PWR0901" H 1200 5750 50  0001 C CNN
F 1 "+5VF" V 1200 6050 50  0000 L CNN
F 2 "" H 1200 5900 50  0001 C CNN
F 3 "" H 1200 5900 50  0001 C CNN
	1    1200 5900
	0    -1   -1   0   
$EndComp
$Comp
L ETH1CDMM1:+3.3VF #PWR0902
U 1 1 5F43E09C
P 2100 5900
F 0 "#PWR0902" H 2100 5750 50  0001 C CNN
F 1 "+3.3VF" V 2100 6050 50  0000 L CNN
F 2 "" H 2100 5900 50  0001 C CNN
F 3 "" H 2100 5900 50  0001 C CNN
	1    2100 5900
	0    1    1    0   
$EndComp
NoConn ~ 2100 6600
Text HLabel 2150 6100 2    50   Input ~ 0
SLE_SCLK
Wire Wire Line
	2150 6100 2100 6100
Wire Wire Line
	2100 6200 2150 6200
Wire Wire Line
	2100 6300 2150 6300
Wire Wire Line
	2100 6400 2150 6400
Wire Wire Line
	2100 6500 2150 6500
Text HLabel 2150 6200 2    50   Input ~ 0
SLE_~CS
Text HLabel 2150 6300 2    50   Input ~ 0
SLE_SI
Text HLabel 2150 6400 2    50   Output ~ 0
SLE_SO
Text HLabel 2150 6500 2    50   Input ~ 0
SLE_~RST
Wire Wire Line
	2850 4350 2850 3750
Wire Wire Line
	6050 4750 6050 3700
NoConn ~ 1200 7300
Connection ~ 6900 1700
Wire Wire Line
	6900 1700 7050 1700
Wire Wire Line
	6800 1700 6900 1700
Connection ~ 6000 1700
Wire Wire Line
	6000 1700 6050 1700
Wire Wire Line
	5900 1700 6000 1700
Connection ~ 7200 3000
Wire Wire Line
	7200 3000 7800 3000
Wire Wire Line
	7050 3000 7200 3000
Connection ~ 4450 2600
Wire Wire Line
	3800 3100 2250 3100
Wire Wire Line
	4400 3000 4450 3000
Wire Wire Line
	1250 3600 1250 3750
Connection ~ 1250 3600
Wire Wire Line
	1250 3600 850  3600
Wire Wire Line
	1250 3750 2850 3750
Wire Wire Line
	1250 3600 1650 3600
Wire Wire Line
	1250 2800 1250 2650
Connection ~ 1250 2800
Wire Wire Line
	1250 2800 1650 2800
Wire Wire Line
	8150 2000 9000 2000
Connection ~ 9000 2000
Wire Wire Line
	8050 1700 8200 1700
Connection ~ 1250 2650
Wire Wire Line
	1250 2650 1650 2650
$Comp
L ETH1CDMM1:AQW210S U906
U 1 1 5E7695A2
P 9750 5000
F 0 "U906" H 9750 5325 50  0000 C CNN
F 1 "AQW210S" H 9750 5234 50  0000 C CNN
F 2 "ETH1CDMM1:GU-SOP8" H 9750 5300 50  0001 C CNN
F 3 "" H 9750 5300 50  0001 C CNN
	1    9750 5000
	-1   0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:AQW210S U906
U 2 1 5E76CBF9
P 9950 5700
F 0 "U906" H 9950 6025 50  0000 C CNN
F 1 "AQW210S" H 9950 5934 50  0000 C CNN
F 2 "ETH1CDMM1:GU-SOP8" H 9950 6000 50  0001 C CNN
F 3 "" H 9950 6000 50  0001 C CNN
	2    9950 5700
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R935
U 1 1 5E7A437D
P 10400 5700
F 0 "R935" H 10470 5746 50  0000 L CNN
F 1 "OPT" H 10470 5655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 10330 5700 50  0001 C CNN
F 3 "~" H 10400 5700 50  0001 C CNN
	1    10400 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R934
U 1 1 5E7BAFB9
P 9400 5700
F 0 "R934" H 9470 5746 50  0000 L CNN
F 1 "OPT" H 9470 5655 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9330 5700 50  0001 C CNN
F 3 "~" H 9400 5700 50  0001 C CNN
	1    9400 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 5550 9650 5600
Wire Wire Line
	9400 5550 9650 5550
Wire Wire Line
	9400 5850 9650 5850
Wire Wire Line
	9650 5850 9650 5800
Wire Wire Line
	10400 5850 10250 5850
Wire Wire Line
	10250 5850 10250 5800
Wire Wire Line
	10400 5550 10250 5550
Wire Wire Line
	10250 5550 10250 5600
$EndSCHEMATC
