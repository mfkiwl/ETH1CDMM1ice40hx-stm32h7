EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 8
Title "Power supply one"
Date "2020-01-19"
Rev "1.0"
Comp ""
Comment1 "Verification done. "
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	2000 4050 2000 4250
Wire Wire Line
	4100 4150 4100 4250
Wire Wire Line
	5250 3850 5250 4250
$Comp
L power:GND #PWR0404
U 1 1 5D6E9D93
P 1350 4300
F 0 "#PWR0404" H 1350 4050 50  0001 C CNN
F 1 "GND" H 1355 4127 50  0000 C CNN
F 2 "" H 1350 4300 50  0001 C CNN
F 3 "" H 1350 4300 50  0001 C CNN
	1    1350 4300
	1    0    0    -1  
$EndComp
Connection ~ 2000 4250
Wire Wire Line
	1350 4250 1350 4300
Wire Wire Line
	2000 4250 1350 4250
Connection ~ 2000 3200
Wire Wire Line
	1950 3200 2000 3200
Wire Wire Line
	2000 3750 2000 3200
$Comp
L Device:D_Zener D401
U 1 1 5D70DE79
P 2000 3900
F 0 "D401" V 1954 3979 50  0000 L CNN
F 1 "SM6T30AY" V 2045 3979 50  0000 L CNN
F 2 "ETH1CDMM1:DO_214AA_REV" H 2000 3900 50  0001 C CNN
F 3 "~" H 2000 3900 50  0001 C CNN
	1    2000 3900
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 3800 4100 3850
Connection ~ 4100 3800
$Comp
L Device:D_Zener D403
U 1 1 5D6DFA8C
P 4650 3350
F 0 "D403" V 4604 3429 50  0000 L CNN
F 1 "MMSZ5249B" V 4695 3429 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 4650 3350 50  0001 C CNN
F 3 "~" H 4650 3350 50  0001 C CNN
	1    4650 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 3650 4100 3800
Wire Wire Line
	4100 3200 4100 3350
$Comp
L Device:R R403
U 1 1 5D6D8193
P 4650 3650
F 0 "R403" H 4720 3696 50  0000 L CNN
F 1 "370" H 4720 3605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4580 3650 50  0001 C CNN
F 3 "~" H 4650 3650 50  0001 C CNN
	1    4650 3650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R402
U 1 1 5D6D7B1E
P 4100 3500
F 0 "R402" H 4170 3546 50  0000 L CNN
F 1 "6k8/0.5W" H 4170 3455 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 4030 3500 50  0001 C CNN
F 3 "~" H 4100 3500 50  0001 C CNN
	1    4100 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:LED D402
U 1 1 5D6D7414
P 4100 4000
F 0 "D402" V 4139 3882 50  0000 R CNN
F 1 "RED" V 4048 3882 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4100 4000 50  0001 C CNN
F 3 "~" H 4100 4000 50  0001 C CNN
	1    4100 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5250 3550 5250 3200
$Comp
L Device:C C401
U 1 1 5D6CEB9C
P 5250 3700
F 0 "C401" H 5365 3746 50  0000 L CNN
F 1 "4u7/50V" H 5365 3655 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5288 3550 50  0001 C CNN
F 3 "~" H 5250 3700 50  0001 C CNN
	1    5250 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 3200 1350 3150
Wire Wire Line
	1650 3200 1350 3200
$Comp
L Device:Fuse F401
U 1 1 5D5D8684
P 1800 3200
F 0 "F401" V 1603 3200 50  0000 C CNN
F 1 "MF-LSMF185/33X" V 1694 3200 50  0000 C CNN
F 2 "ETH1CDMM1:Fuse_SMD2920" V 1730 3200 50  0001 C CNN
F 3 "~" H 1800 3200 50  0001 C CNN
	1    1800 3200
	0    1    1    0   
$EndComp
$Comp
L power:+24V #PWR0403
U 1 1 5D7B3705
P 1350 3150
F 0 "#PWR0403" H 1350 3000 50  0001 C CNN
F 1 "+24V" H 1365 3323 50  0000 C CNN
F 2 "" H 1350 3150 50  0001 C CNN
F 3 "" H 1350 3150 50  0001 C CNN
	1    1350 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 3800 4650 3800
Connection ~ 4100 3200
Connection ~ 4000 3200
Wire Wire Line
	3900 3200 4000 3200
Wire Wire Line
	4000 3200 4100 3200
Wire Wire Line
	4100 4250 2500 4250
Connection ~ 2500 3200
Connection ~ 2500 4250
Connection ~ 2200 3200
Wire Wire Line
	2500 3200 3500 3200
Wire Wire Line
	2000 4250 2500 4250
Wire Wire Line
	2200 3200 2500 3200
Wire Wire Line
	2000 3200 2200 3200
$Comp
L ETH1CDMM1:MAX5902 U401
U 1 1 5D6EBA14
P 3100 3700
F 0 "U401" H 3100 4065 50  0000 C CNN
F 1 "MAX5902" H 3100 3974 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6_Handsoldering" H 3100 3700 60  0001 C CNN
F 3 "" H 3100 3700 60  0001 C CNN
	1    3100 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_PMOS_GDS Q401
U 1 1 5D6F32E4
P 3700 3300
F 0 "Q401" V 4043 3300 50  0000 C CNN
F 1 "IRFR5410" V 3952 3300 50  0000 C CNN
F 2 "ETH1CDMM1:TO-252-2_Rectifier" H 3900 3400 50  0001 C CNN
F 3 "~" H 3700 3300 50  0001 C CNN
	1    3700 3300
	0    1    -1   0   
$EndComp
Wire Wire Line
	3700 3600 3700 3500
Wire Wire Line
	3700 3700 4000 3700
Wire Wire Line
	4000 3700 4000 3200
NoConn ~ 3700 3800
Wire Wire Line
	2500 3600 2500 3200
$Comp
L Device:R R401
U 1 1 5D709595
P 2200 3450
F 0 "R401" H 2270 3496 50  0000 L CNN
F 1 "100k" H 2270 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2130 3450 50  0001 C CNN
F 3 "~" H 2200 3450 50  0001 C CNN
	1    2200 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 3600 2200 3700
Wire Wire Line
	2200 3700 2500 3700
Wire Wire Line
	2200 3300 2200 3200
Wire Wire Line
	2500 3800 2500 4250
$Comp
L Device:C C402
U 1 1 5DA6571D
P 5850 3700
F 0 "C402" H 5965 3746 50  0000 L CNN
F 1 "4u7/50V" H 5965 3655 50  0000 L CNN
F 2 "Capacitor_SMD:C_1206_3216Metric_Pad1.42x1.75mm_HandSolder" H 5888 3550 50  0001 C CNN
F 3 "~" H 5850 3700 50  0001 C CNN
	1    5850 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3850 5850 4250
Wire Wire Line
	5850 3550 5850 3200
Wire Wire Line
	4100 3200 4650 3200
Connection ~ 4650 3200
Wire Wire Line
	4100 4250 5250 4250
Connection ~ 4100 4250
Wire Wire Line
	5250 3200 4650 3200
Connection ~ 5850 3200
Wire Wire Line
	5850 4250 5250 4250
Connection ~ 5250 4250
$Comp
L power:PWR_FLAG #FLG0404
U 1 1 5E5270F4
P 5850 3150
F 0 "#FLG0404" H 5850 3225 50  0001 C CNN
F 1 "PWR_FLAG" H 5850 3323 50  0000 C CNN
F 2 "" H 5850 3150 50  0001 C CNN
F 3 "~" H 5850 3150 50  0001 C CNN
	1    5850 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5850 3150 5850 3200
$Comp
L power:PWR_FLAG #FLG0401
U 1 1 5DDE91B3
P 850 7350
F 0 "#FLG0401" H 850 7425 50  0001 C CNN
F 1 "PWR_FLAG" H 850 7523 50  0000 C CNN
F 2 "" H 850 7350 50  0001 C CNN
F 3 "~" H 850 7350 50  0001 C CNN
	1    850  7350
	-1   0    0    1   
$EndComp
$Comp
L power:+24V #PWR0401
U 1 1 5DDE9577
P 850 7350
F 0 "#PWR0401" H 850 7200 50  0001 C CNN
F 1 "+24V" H 865 7523 50  0000 C CNN
F 2 "" H 850 7350 50  0001 C CNN
F 3 "" H 850 7350 50  0001 C CNN
	1    850  7350
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG0402
U 1 1 5DDF63B9
P 1300 7350
F 0 "#FLG0402" H 1300 7425 50  0001 C CNN
F 1 "PWR_FLAG" H 1300 7523 50  0000 C CNN
F 2 "" H 1300 7350 50  0001 C CNN
F 3 "~" H 1300 7350 50  0001 C CNN
	1    1300 7350
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR0402
U 1 1 5DDF6902
P 1300 7350
F 0 "#PWR0402" H 1300 7100 50  0001 C CNN
F 1 "GND" H 1305 7177 50  0000 C CNN
F 2 "" H 1300 7350 50  0001 C CNN
F 3 "" H 1300 7350 50  0001 C CNN
	1    1300 7350
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0403
U 1 1 5DDFBB5F
P 1750 7350
F 0 "#FLG0403" H 1750 7425 50  0001 C CNN
F 1 "PWR_FLAG" H 1750 7523 50  0000 C CNN
F 2 "" H 1750 7350 50  0001 C CNN
F 3 "~" H 1750 7350 50  0001 C CNN
	1    1750 7350
	-1   0    0    1   
$EndComp
$Comp
L ETH1CDMM1:+24VDD #PWR0405
U 1 1 5DDFC0E6
P 1750 7350
F 0 "#PWR0405" H 1750 7200 50  0001 C CNN
F 1 "+24VDD" H 1765 7523 50  0000 C CNN
F 2 "" H 1750 7350 50  0001 C CNN
F 3 "" H 1750 7350 50  0001 C CNN
	1    1750 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 3200 5850 3200
Connection ~ 5250 3200
$Comp
L ETH1CDMM1:THL15-2415WI U402
U 1 1 5E4632D5
P 7900 3700
F 0 "U402" H 7900 4415 50  0000 C CNN
F 1 "THL15-2415WI" H 7900 4324 50  0000 C CNN
F 2 "" H 8800 4050 50  0001 C CNN
F 3 "" H 8800 4050 50  0001 C CNN
	1    7900 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R404
U 1 1 5E464415
P 8650 3450
F 0 "R404" H 8720 3496 50  0000 L CNN
F 1 "R" H 8720 3405 50  0000 L CNN
F 2 "" V 8580 3450 50  0001 C CNN
F 3 "~" H 8650 3450 50  0001 C CNN
	1    8650 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R405
U 1 1 5E464838
P 8650 3950
F 0 "R405" H 8720 3996 50  0000 L CNN
F 1 "R" H 8720 3905 50  0000 L CNN
F 2 "" V 8580 3950 50  0001 C CNN
F 3 "~" H 8650 3950 50  0001 C CNN
	1    8650 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 3250 8650 3250
Wire Wire Line
	8650 3250 8650 3300
Wire Wire Line
	8650 4150 8550 4150
Wire Wire Line
	8650 3600 8650 3700
Wire Wire Line
	8650 4100 8650 4150
Wire Wire Line
	8550 3700 8650 3700
Connection ~ 8650 3700
Wire Wire Line
	8650 3700 8650 3800
$Comp
L ETH1CDMM1:7448014501 L401
U 1 1 5E46ABAD
P 6750 3700
F 0 "L401" H 6750 4025 50  0000 C CNN
F 1 "7448014501" H 6750 3934 50  0000 C CNN
F 2 "" H 6750 4200 50  0001 C CNN
F 3 "" H 6750 4200 50  0001 C CNN
	1    6750 3700
	1    0    0    -1  
$EndComp
NoConn ~ 7250 3700
Wire Wire Line
	7000 3600 7100 3600
Wire Wire Line
	7100 3600 7100 3250
Wire Wire Line
	7100 3250 7250 3250
Wire Wire Line
	7000 3800 7100 3800
Wire Wire Line
	7100 3800 7100 4150
Wire Wire Line
	7100 4150 7250 4150
Wire Wire Line
	6500 3800 6400 3800
Wire Wire Line
	6400 3800 6400 4250
Wire Wire Line
	6400 4250 5850 4250
Connection ~ 5850 4250
Wire Wire Line
	6400 3200 6400 3600
Wire Wire Line
	6400 3600 6500 3600
Wire Wire Line
	5850 3200 6400 3200
$Comp
L Device:C C403
U 1 1 5E47CFD6
P 7900 2800
F 0 "C403" V 7648 2800 50  0000 C CNN
F 1 "330p/2kV" V 7739 2800 50  0000 C CNN
F 2 "" H 7938 2650 50  0001 C CNN
F 3 "~" H 7900 2800 50  0001 C CNN
	1    7900 2800
	0    1    1    0   
$EndComp
$Comp
L Device:C C404
U 1 1 5E47E7C0
P 7900 4600
F 0 "C404" V 7648 4600 50  0000 C CNN
F 1 "330p/2kV" V 7739 4600 50  0000 C CNN
F 2 "" H 7938 4450 50  0001 C CNN
F 3 "~" H 7900 4600 50  0001 C CNN
	1    7900 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 4600 7100 4600
Wire Wire Line
	7100 4600 7100 4150
Connection ~ 7100 4150
Wire Wire Line
	8050 4600 8650 4600
Wire Wire Line
	8650 4600 8650 4150
Connection ~ 8650 4150
Wire Wire Line
	7750 2800 7100 2800
Wire Wire Line
	7100 2800 7100 3250
Connection ~ 7100 3250
Wire Wire Line
	8050 2800 8650 2800
Wire Wire Line
	8650 2800 8650 3250
Connection ~ 8650 3250
$Comp
L ETH1CDMM1:+24VF #PWR0406
U 1 1 5E485438
P 8950 3250
F 0 "#PWR0406" H 8950 3100 50  0001 C CNN
F 1 "+24VF" V 8950 3400 50  0000 L CNN
F 2 "" H 8950 3250 50  0001 C CNN
F 3 "" H 8950 3250 50  0001 C CNN
	1    8950 3250
	0    1    1    0   
$EndComp
$Comp
L ETH1CDMM1:AGNDF #PWR0407
U 1 1 5E485B05
P 8950 4150
F 0 "#PWR0407" H 8950 3900 50  0001 C CNN
F 1 "AGNDF" V 8950 4000 50  0000 R CNN
F 2 "" H 8950 4150 50  0001 C CNN
F 3 "" H 8950 4150 50  0001 C CNN
	1    8950 4150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8950 4150 8650 4150
Wire Wire Line
	8950 3250 8650 3250
$EndSCHEMATC
