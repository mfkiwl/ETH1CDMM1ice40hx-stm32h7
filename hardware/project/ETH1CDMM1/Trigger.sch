EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 5 14
Title "Trigger"
Date "2020-03-07"
Rev "1.00"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Isolator:ADuM5402 U502
U 1 1 5D995D35
P 4700 3350
F 0 "U502" H 4300 4000 50  0000 C CNN
F 1 "ADuM5402" H 4300 3900 50  0000 C CNN
F 2 "Package_SO:SOIC-16W_7.5x10.3mm_P1.27mm" H 4700 2400 50  0001 C CIN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/ADuM5401_5402_5403_5404.pdf" H 4250 3650 50  0001 C CNN
	1    4700 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 2750 4600 2700
Wire Wire Line
	4600 2700 4500 2700
Wire Wire Line
	4500 2700 4500 2650
Wire Wire Line
	5000 2650 5000 2700
Wire Wire Line
	5000 2700 4800 2700
Wire Wire Line
	4800 2700 4800 2750
$Comp
L ETH1CDMM1:74AC125 U503
U 4 1 5D9C7DE2
P 7900 3250
F 0 "U503" H 7900 3650 50  0000 C CNN
F 1 "74AC125" H 7900 3550 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 7900 3250 50  0001 C CNN
F 3 "" H 7900 3250 50  0001 C CNN
	4    7900 3250
	-1   0    0    -1  
$EndComp
$Comp
L Device:D_TVS D503
U 1 1 5D1C7899
P 9850 5650
F 0 "D503" V 9804 5729 50  0000 L CNN
F 1 "SD36C-01FTG" V 9895 5729 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-323_HandSoldering" H 9850 5650 50  0001 C CNN
F 3 "~" H 9850 5650 50  0001 C CNN
	1    9850 5650
	0    -1   1    0   
$EndComp
$Comp
L Device:C C509
U 1 1 5D1C9929
P 9100 5650
F 0 "C509" H 9215 5696 50  0000 L CNN
F 1 "47p" H 9215 5605 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 9138 5500 50  0001 C CNN
F 3 "~" H 9100 5650 50  0001 C CNN
	1    9100 5650
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R506
U 1 1 5D1CBB2B
P 9100 5950
F 0 "R506" H 9170 5996 50  0000 L CNN
F 1 "51R1" H 9170 5905 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9030 5950 50  0001 C CNN
F 3 "~" H 9100 5950 50  0001 C CNN
	1    9100 5950
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9850 6100 9850 5800
Wire Wire Line
	9850 5500 9850 5450
Wire Wire Line
	9850 5450 9100 5450
Wire Wire Line
	9100 5450 9100 5500
Text HLabel 10050 5450 2    50   BiDi ~ 0
EXT_TRIG
Wire Wire Line
	10050 5450 9850 5450
Connection ~ 9850 5450
$Comp
L Device:L L501
U 1 1 5D1DE621
P 8800 5450
F 0 "L501" V 8990 5450 50  0000 C CNN
F 1 "CW252016-R33G" V 8899 5450 50  0000 C CNN
F 2 "ETH1CDMM1:CW252016" H 8800 5450 50  0001 C CNN
F 3 "~" H 8800 5450 50  0001 C CNN
	1    8800 5450
	0    1    -1   0   
$EndComp
Wire Wire Line
	8950 5450 9100 5450
Connection ~ 9100 5450
$Comp
L Device:R R505
U 1 1 5D1E09C3
P 8300 5450
F 0 "R505" V 8093 5450 50  0000 C CNN
F 1 "47" V 8184 5450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8230 5450 50  0001 C CNN
F 3 "~" H 8300 5450 50  0001 C CNN
	1    8300 5450
	0    -1   1    0   
$EndComp
Wire Wire Line
	8450 5450 8650 5450
$Comp
L Device:D_Zener D502
U 1 1 5D1F1550
P 8550 4800
F 0 "D502" V 8504 4879 50  0000 L CNN
F 1 "SMBJ5.0A" V 8595 4879 50  0000 L CNN
F 2 "Diode_SMD:D_SMB" H 8550 4800 50  0001 C CNN
F 3 "~" H 8550 4800 50  0001 C CNN
	1    8550 4800
	0    -1   1    0   
$EndComp
Wire Wire Line
	8550 4650 8550 4600
Wire Wire Line
	8550 4600 7950 4600
$Comp
L Device:R R504
U 1 1 5D1F8BEC
P 7950 4400
F 0 "R504" H 8020 4446 50  0000 L CNN
F 1 "1k" H 8020 4355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7880 4400 50  0001 C CNN
F 3 "~" H 7950 4400 50  0001 C CNN
	1    7950 4400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7950 4550 7950 4600
Connection ~ 7950 4600
Wire Wire Line
	7950 4200 7950 4250
$Comp
L ETH1CDMM1:74AC125 U503
U 5 1 5D218310
P 5150 7100
F 0 "U503" H 4750 7150 50  0000 C CNN
F 1 "74AC125" H 4750 7050 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 5150 7100 50  0001 C CNN
F 3 "" H 5150 7100 50  0001 C CNN
	5    5150 7100
	-1   0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:74AC125 U503
U 3 1 5D2189A9
P 7900 2400
F 0 "U503" H 7900 2800 50  0000 C CNN
F 1 "74AC125" H 7900 2700 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 7900 2400 50  0001 C CNN
F 3 "" H 7900 2400 50  0001 C CNN
	3    7900 2400
	-1   0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:74AC125 U503
U 2 1 5D21AD13
P 7900 1550
F 0 "U503" H 7900 1950 50  0000 C CNN
F 1 "74AC125" H 7900 1850 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 7900 1550 50  0001 C CNN
F 3 "" H 7900 1550 50  0001 C CNN
	2    7900 1550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7400 1550 7350 1550
Wire Wire Line
	7350 1550 7350 2400
Wire Wire Line
	7350 3250 7400 3250
Wire Wire Line
	7400 2400 7350 2400
Connection ~ 7350 2400
Wire Wire Line
	7350 2400 7350 3250
Wire Wire Line
	8400 1650 8550 1650
Wire Wire Line
	8550 1650 8550 2500
Wire Wire Line
	8550 3350 8400 3350
Wire Wire Line
	8400 2500 8550 2500
Connection ~ 8550 2500
Wire Wire Line
	8550 2500 8550 3350
Wire Wire Line
	8400 3150 8450 3150
Wire Wire Line
	8450 3150 8450 2300
Wire Wire Line
	8450 1450 8400 1450
Wire Wire Line
	8400 2300 8450 2300
Connection ~ 8450 2300
Wire Wire Line
	8450 2300 8450 1450
Wire Wire Line
	8550 1650 9200 1650
Connection ~ 8550 1650
Wire Wire Line
	8450 1450 9200 1450
Connection ~ 8450 1450
Text Label 9200 1650 2    50   ~ 0
TRIG_OUT_SIGN
Text Label 9200 1450 2    50   ~ 0
TRIG_OUT_EN
Wire Wire Line
	7350 3250 7350 5450
Connection ~ 7350 3250
$Comp
L Device:R R503
U 1 1 5D25C5D7
P 7050 5450
F 0 "R503" V 6843 5450 50  0000 C CNN
F 1 "100" V 6934 5450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6980 5450 50  0001 C CNN
F 3 "~" H 7050 5450 50  0001 C CNN
	1    7050 5450
	0    -1   1    0   
$EndComp
Wire Wire Line
	7200 5450 7350 5450
Wire Wire Line
	6600 4700 6650 4700
Wire Wire Line
	6650 5450 6900 5450
$Comp
L Device:R R502
U 1 1 5D27667C
P 6100 5450
F 0 "R502" V 5893 5450 50  0000 C CNN
F 1 "14k7" V 5984 5450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6030 5450 50  0001 C CNN
F 3 "~" H 6100 5450 50  0001 C CNN
	1    6100 5450
	0    -1   1    0   
$EndComp
Wire Wire Line
	6650 4700 6650 5450
Wire Wire Line
	6250 5450 6650 5450
Connection ~ 6650 5450
Wire Wire Line
	5950 5450 5550 5450
Wire Wire Line
	5550 5450 5550 4600
Wire Wire Line
	5550 4600 5600 4600
Wire Wire Line
	4800 3950 4800 4000
Wire Wire Line
	4800 4000 4900 4000
Wire Wire Line
	5000 4000 5000 4050
Wire Wire Line
	4900 3950 4900 4000
Connection ~ 4900 4000
Wire Wire Line
	4900 4000 5000 4000
Wire Wire Line
	4600 3950 4600 4000
Wire Wire Line
	4600 4000 4500 4000
Wire Wire Line
	4500 4000 4500 3950
Wire Wire Line
	4400 4050 4400 4000
Wire Wire Line
	4400 4000 4500 4000
Connection ~ 4500 4000
Text Label 5800 3050 2    50   ~ 0
TRIG_OUT_EN
Wire Wire Line
	5800 3050 5200 3050
Text Label 5800 3150 2    50   ~ 0
TRIG_OUT_SIGN
Wire Wire Line
	5200 3150 5800 3150
NoConn ~ 4200 3350
NoConn ~ 5200 3350
Connection ~ 5550 5450
Text Label 4900 5450 0    50   ~ 0
EXT_TRIG_SIGN
Wire Wire Line
	5550 5450 4900 5450
Text Label 5800 3250 2    50   ~ 0
EXT_TRIG_SIGN
Wire Wire Line
	5800 3250 5200 3250
Text HLabel 2650 3050 0    50   Input ~ 0
TRIG_EN
Text HLabel 2650 3250 0    50   Input ~ 0
TRIG_OUT
Text HLabel 2650 3450 0    50   Output ~ 0
TRIG_IN
Wire Notes Line
	4700 650  4700 2800
Wire Notes Line
	4700 3950 4700 7600
$Comp
L Device:C C505
U 1 1 5D2DABDB
P 4350 1150
F 0 "C505" H 4465 1196 50  0000 L CNN
F 1 "1u" H 4465 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4388 1000 50  0001 C CNN
F 3 "~" H 4350 1150 50  0001 C CNN
	1    4350 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C504
U 1 1 5D2DADB9
P 3850 1150
F 0 "C504" H 3965 1196 50  0000 L CNN
F 1 "100n" H 3965 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3888 1000 50  0001 C CNN
F 3 "~" H 3850 1150 50  0001 C CNN
	1    3850 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 1000 4350 950 
Wire Wire Line
	4350 950  4100 950 
Wire Wire Line
	3850 950  3850 1000
Wire Wire Line
	4350 1300 4350 1350
Wire Wire Line
	4350 1350 4100 1350
Wire Wire Line
	3850 1350 3850 1300
Wire Wire Line
	4100 900  4100 950 
Connection ~ 4100 950 
Wire Wire Line
	4100 950  3850 950 
Wire Wire Line
	4100 1400 4100 1350
Connection ~ 4100 1350
Wire Wire Line
	4100 1350 3850 1350
$Comp
L Device:C C507
U 1 1 5D2F1627
P 5500 1150
F 0 "C507" H 5615 1196 50  0000 L CNN
F 1 "1u" H 5615 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5538 1000 50  0001 C CNN
F 3 "~" H 5500 1150 50  0001 C CNN
	1    5500 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C506
U 1 1 5D2F162D
P 6000 1150
F 0 "C506" H 6115 1196 50  0000 L CNN
F 1 "100n" H 6115 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6038 1000 50  0001 C CNN
F 3 "~" H 6000 1150 50  0001 C CNN
	1    6000 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 1000 5500 950 
Wire Wire Line
	5500 950  5750 950 
Wire Wire Line
	6000 950  6000 1000
Wire Wire Line
	5500 1300 5500 1350
Wire Wire Line
	5500 1350 5750 1350
Wire Wire Line
	6000 1350 6000 1300
Wire Wire Line
	5750 900  5750 950 
Connection ~ 5750 950 
Wire Wire Line
	5750 950  6000 950 
Wire Wire Line
	5750 1400 5750 1350
Connection ~ 5750 1350
Wire Wire Line
	5750 1350 6000 1350
Wire Wire Line
	2650 3050 2750 3050
Wire Wire Line
	2650 3250 2750 3250
Wire Wire Line
	2650 3450 2750 3450
$Comp
L Device:C C508
U 1 1 5D3D2C36
P 5000 1150
F 0 "C508" H 5115 1196 50  0000 L CNN
F 1 "100n" H 5115 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5038 1000 50  0001 C CNN
F 3 "~" H 5000 1150 50  0001 C CNN
	1    5000 1150
	1    0    0    -1  
$EndComp
Wire Wire Line
	5000 1400 5000 1300
Wire Wire Line
	5000 1000 5000 900 
Wire Wire Line
	5250 3450 5200 3450
NoConn ~ 4200 3550
$Comp
L power:GND #PWR0512
U 1 1 5EBCD574
P 4100 1400
F 0 "#PWR0512" H 4100 1150 50  0001 C CNN
F 1 "GND" H 4105 1227 50  0000 C CNN
F 2 "" H 4100 1400 50  0001 C CNN
F 3 "" H 4100 1400 50  0001 C CNN
	1    4100 1400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0513
U 1 1 5EBD53EB
P 4400 4050
F 0 "#PWR0513" H 4400 3800 50  0001 C CNN
F 1 "GND" H 4405 3877 50  0000 C CNN
F 2 "" H 4400 4050 50  0001 C CNN
F 3 "" H 4400 4050 50  0001 C CNN
	1    4400 4050
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:GND_TRIG #PWR0516
U 1 1 5EBDBFF4
P 5000 4050
F 0 "#PWR0516" H 5000 3800 50  0001 C CNN
F 1 "GND_TRIG" H 5005 3877 50  0000 C CNN
F 2 "" H 5000 4050 50  0001 C CNN
F 3 "" H 5000 4050 50  0001 C CNN
	1    5000 4050
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:GND_TRIG #PWR0528
U 1 1 5EBDCCC1
P 7950 6100
F 0 "#PWR0528" H 7950 5850 50  0001 C CNN
F 1 "GND_TRIG" H 7955 5927 50  0000 C CNN
F 2 "" H 7950 6100 50  0001 C CNN
F 3 "" H 7950 6100 50  0001 C CNN
	1    7950 6100
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:GND_TRIG #PWR0530
U 1 1 5EBDD668
P 9100 6100
F 0 "#PWR0530" H 9100 5850 50  0001 C CNN
F 1 "GND_TRIG" H 9105 5927 50  0000 C CNN
F 2 "" H 9100 6100 50  0001 C CNN
F 3 "" H 9100 6100 50  0001 C CNN
	1    9100 6100
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:GND_TRIG #PWR0531
U 1 1 5EBDD8F0
P 9850 6100
F 0 "#PWR0531" H 9850 5850 50  0001 C CNN
F 1 "GND_TRIG" H 9855 5927 50  0000 C CNN
F 2 "" H 9850 6100 50  0001 C CNN
F 3 "" H 9850 6100 50  0001 C CNN
	1    9850 6100
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:GND_TRIG #PWR0529
U 1 1 5EBDF6F2
P 8550 4950
F 0 "#PWR0529" H 8550 4700 50  0001 C CNN
F 1 "GND_TRIG" H 8555 4777 50  0000 C CNN
F 2 "" H 8550 4950 50  0001 C CNN
F 3 "" H 8550 4950 50  0001 C CNN
	1    8550 4950
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:GND_TRIG #PWR0521
U 1 1 5EBE030C
P 5750 1400
F 0 "#PWR0521" H 5750 1150 50  0001 C CNN
F 1 "GND_TRIG" H 5755 1227 50  0000 C CNN
F 2 "" H 5750 1400 50  0001 C CNN
F 3 "" H 5750 1400 50  0001 C CNN
	1    5750 1400
	-1   0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:GND_TRIG #PWR0525
U 1 1 5EBE0F56
P 5000 1400
F 0 "#PWR0525" H 5000 1150 50  0001 C CNN
F 1 "GND_TRIG" H 5005 1227 50  0000 C CNN
F 2 "" H 5000 1400 50  0001 C CNN
F 3 "" H 5000 1400 50  0001 C CNN
	1    5000 1400
	-1   0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:+5V_TRIG #PWR0520
U 1 1 5EBE2413
P 5750 900
F 0 "#PWR0520" H 5750 750 50  0001 C CNN
F 1 "+5V_TRIG" H 5765 1073 50  0000 C CNN
F 2 "" H 5750 900 50  0001 C CNN
F 3 "" H 5750 900 50  0001 C CNN
	1    5750 900 
	-1   0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:+5V_TRIG #PWR0524
U 1 1 5EBE29CC
P 5000 900
F 0 "#PWR0524" H 5000 750 50  0001 C CNN
F 1 "+5V_TRIG" H 5015 1073 50  0000 C CNN
F 2 "" H 5000 900 50  0001 C CNN
F 3 "" H 5000 900 50  0001 C CNN
	1    5000 900 
	-1   0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:+5V_TRIG #PWR0515
U 1 1 5EBE2D84
P 5000 2650
F 0 "#PWR0515" H 5000 2500 50  0001 C CNN
F 1 "+5V_TRIG" H 5015 2823 50  0000 C CNN
F 2 "" H 5000 2650 50  0001 C CNN
F 3 "" H 5000 2650 50  0001 C CNN
	1    5000 2650
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:+5V_TRIG #PWR0519
U 1 1 5EBE59AF
P 5250 3450
F 0 "#PWR0519" H 5250 3300 50  0001 C CNN
F 1 "+5V_TRIG" V 5250 3600 50  0000 L CNN
F 2 "" H 5250 3450 50  0001 C CNN
F 3 "" H 5250 3450 50  0001 C CNN
	1    5250 3450
	0    1    1    0   
$EndComp
$Comp
L ETH1CDMM1:+5V_TRIG #PWR0527
U 1 1 5EBE9033
P 7950 4200
F 0 "#PWR0527" H 7950 4050 50  0001 C CNN
F 1 "+5V_TRIG" H 7965 4373 50  0000 C CNN
F 2 "" H 7950 4200 50  0001 C CNN
F 3 "" H 7950 4200 50  0001 C CNN
	1    7950 4200
	1    0    0    -1  
$EndComp
$Comp
L Diode:BAV99 D501
U 1 1 5DD77A27
P 7950 5450
F 0 "D501" V 8200 5100 50  0000 L CNN
F 1 "BAV99" V 8100 5050 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7950 4950 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/BAV99_SER.pdf" H 7950 5450 50  0001 C CNN
	1    7950 5450
	0    1    -1   0   
$EndComp
Wire Wire Line
	7750 5450 7350 5450
Connection ~ 7350 5450
Wire Wire Line
	8150 5450 7750 5450
Connection ~ 7750 5450
Wire Wire Line
	7950 4600 7950 5150
Wire Wire Line
	7950 5750 7950 6100
$Comp
L ETH1CDMM1:74AC125 U503
U 1 1 5E72A776
P 6100 4600
F 0 "U503" H 6100 5000 50  0000 C CNN
F 1 "74AC125" H 6100 4900 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 6100 4600 50  0001 C CNN
F 3 "" H 6100 4600 50  0001 C CNN
	1    6100 4600
	-1   0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:+5V_TRIG #PWR0517
U 1 1 5E72EC8D
P 5150 6750
F 0 "#PWR0517" H 5150 6600 50  0001 C CNN
F 1 "+5V_TRIG" H 5165 6923 50  0000 C CNN
F 2 "" H 5150 6750 50  0001 C CNN
F 3 "" H 5150 6750 50  0001 C CNN
	1    5150 6750
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:GND_TRIG #PWR0518
U 1 1 5E7300C2
P 5150 7450
F 0 "#PWR0518" H 5150 7200 50  0001 C CNN
F 1 "GND_TRIG" H 5155 7277 50  0000 C CNN
F 2 "" H 5150 7450 50  0001 C CNN
F 3 "" H 5150 7450 50  0001 C CNN
	1    5150 7450
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:GND_TRIG #PWR0522
U 1 1 5DE91DF7
P 6050 7450
F 0 "#PWR0522" H 6050 7200 50  0001 C CNN
F 1 "GND_TRIG" H 6055 7277 50  0000 C CNN
F 2 "" H 6050 7450 50  0001 C CNN
F 3 "" H 6050 7450 50  0001 C CNN
	1    6050 7450
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0501
U 1 1 5DE922CA
P 6050 7450
F 0 "#FLG0501" H 6050 7525 50  0001 C CNN
F 1 "PWR_FLAG" H 6050 7623 50  0000 C CNN
F 2 "" H 6050 7450 50  0001 C CNN
F 3 "~" H 6050 7450 50  0001 C CNN
	1    6050 7450
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG0502
U 1 1 5DE95C9F
P 6500 7450
F 0 "#FLG0502" H 6500 7525 50  0001 C CNN
F 1 "PWR_FLAG" H 6500 7623 50  0000 C CNN
F 2 "" H 6500 7450 50  0001 C CNN
F 3 "~" H 6500 7450 50  0001 C CNN
	1    6500 7450
	-1   0    0    1   
$EndComp
$Comp
L ETH1CDMM1:+5V_TRIG #PWR0523
U 1 1 5DE9761E
P 6500 7450
F 0 "#PWR0523" H 6500 7300 50  0001 C CNN
F 1 "+5V_TRIG" H 6515 7623 50  0000 C CNN
F 2 "" H 6500 7450 50  0001 C CNN
F 3 "" H 6500 7450 50  0001 C CNN
	1    6500 7450
	1    0    0    -1  
$EndComp
$Comp
L Logic_LevelTranslator:TXB0104PW U?
U 1 1 5E35DAF4
P 3150 3350
AR Path="/5DEEF70B/5E35DAF4" Ref="U?"  Part="1" 
AR Path="/5DEA9498/5E35DAF4" Ref="U?"  Part="1" 
AR Path="/5E3DEED2/5E35DAF4" Ref="U501"  Part="1" 
F 0 "U501" H 3650 4100 50  0000 C CNN
F 1 "TXB0104PW" H 3650 4000 50  0000 C CNN
F 2 "Package_SO:TSSOP-14_4.4x5mm_P0.65mm" H 3150 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/txb0104.pdf" H 3260 3445 50  0001 C CNN
	1    3150 3350
	1    0    0    -1  
$EndComp
NoConn ~ 2750 3650
NoConn ~ 3550 3650
$Comp
L Device:R R?
U 1 1 5E35DB02
P 2550 2650
AR Path="/5DEEF70B/5E35DB02" Ref="R?"  Part="1" 
AR Path="/5DEA9498/5E35DB02" Ref="R?"  Part="1" 
AR Path="/5E3DEED2/5E35DB02" Ref="R501"  Part="1" 
F 0 "R501" H 2480 2696 50  0000 R CNN
F 1 "10k" H 2480 2605 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 2480 2650 50  0001 C CNN
F 3 "~" H 2550 2650 50  0001 C CNN
	1    2550 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	3050 2650 3050 2600
Wire Wire Line
	3050 2600 2950 2600
Wire Wire Line
	2950 2600 2950 2550
Wire Wire Line
	3250 2650 3250 2600
Wire Wire Line
	3250 2600 3350 2600
Wire Wire Line
	3350 2600 3350 2550
Wire Wire Line
	2750 2850 2550 2850
Wire Wire Line
	2550 2850 2550 2800
$Comp
L Device:C C501
U 1 1 5E381279
P 2400 1150
F 0 "C501" H 2515 1196 50  0000 L CNN
F 1 "100n" H 2515 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2438 1000 50  0001 C CNN
F 3 "~" H 2400 1150 50  0001 C CNN
	1    2400 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C502
U 1 1 5E381C99
P 2900 1150
F 0 "C502" H 3015 1196 50  0000 L CNN
F 1 "1u" H 3015 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2938 1000 50  0001 C CNN
F 3 "~" H 2900 1150 50  0001 C CNN
	1    2900 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0505
U 1 1 5E38746C
P 2900 1400
F 0 "#PWR0505" H 2900 1150 50  0001 C CNN
F 1 "GND" H 2905 1227 50  0000 C CNN
F 2 "" H 2900 1400 50  0001 C CNN
F 3 "" H 2900 1400 50  0001 C CNN
	1    2900 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 900  2900 1000
Wire Wire Line
	2900 1300 2900 1400
$Comp
L power:GND #PWR0502
U 1 1 5E38D207
P 2400 1400
F 0 "#PWR0502" H 2400 1150 50  0001 C CNN
F 1 "GND" H 2405 1227 50  0000 C CNN
F 2 "" H 2400 1400 50  0001 C CNN
F 3 "" H 2400 1400 50  0001 C CNN
	1    2400 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2400 1400 2400 1300
Wire Wire Line
	2400 1000 2400 900 
$Comp
L power:GND #PWR0507
U 1 1 5E39EC61
P 3150 4050
F 0 "#PWR0507" H 3150 3800 50  0001 C CNN
F 1 "GND" H 3155 3877 50  0000 C CNN
F 2 "" H 3150 4050 50  0001 C CNN
F 3 "" H 3150 4050 50  0001 C CNN
	1    3150 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 3050 4200 3050
Wire Wire Line
	4200 3150 3700 3150
Wire Wire Line
	3700 3150 3700 3250
Wire Wire Line
	3700 3250 3550 3250
Wire Wire Line
	3550 3450 3800 3450
Wire Wire Line
	3800 3450 3800 3250
Wire Wire Line
	3800 3250 4200 3250
$Comp
L ETH1CDMM1:GND_TRIG #PWR0526
U 1 1 5E9AD50E
P 6600 4500
F 0 "#PWR0526" H 6600 4250 50  0001 C CNN
F 1 "GND_TRIG" V 6600 4200 50  0000 C CNN
F 2 "" H 6600 4500 50  0001 C CNN
F 3 "" H 6600 4500 50  0001 C CNN
	1    6600 4500
	0    -1   -1   0   
$EndComp
$Comp
L ETH1CDMM1:+3.3VF #PWR0506
U 1 1 5E4486F7
P 2950 2550
F 0 "#PWR0506" H 2950 2400 50  0001 C CNN
F 1 "+3.3VF" H 2965 2723 50  0000 C CNN
F 2 "" H 2950 2550 50  0001 C CNN
F 3 "" H 2950 2550 50  0001 C CNN
	1    2950 2550
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:+3.3VF #PWR0503
U 1 1 5E448EDA
P 2550 2500
F 0 "#PWR0503" H 2550 2350 50  0001 C CNN
F 1 "+3.3VF" H 2565 2673 50  0000 C CNN
F 2 "" H 2550 2500 50  0001 C CNN
F 3 "" H 2550 2500 50  0001 C CNN
	1    2550 2500
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:+3.3VF #PWR0501
U 1 1 5E449101
P 2400 900
F 0 "#PWR0501" H 2400 750 50  0001 C CNN
F 1 "+3.3VF" H 2415 1073 50  0000 C CNN
F 2 "" H 2400 900 50  0001 C CNN
F 3 "" H 2400 900 50  0001 C CNN
	1    2400 900 
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:+3.3VF #PWR0504
U 1 1 5E449C1E
P 2900 900
F 0 "#PWR0504" H 2900 750 50  0001 C CNN
F 1 "+3.3VF" H 2915 1073 50  0000 C CNN
F 2 "" H 2900 900 50  0001 C CNN
F 3 "" H 2900 900 50  0001 C CNN
	1    2900 900 
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:+5VF #PWR0508
U 1 1 5E44B849
P 3350 2550
F 0 "#PWR0508" H 3350 2400 50  0001 C CNN
F 1 "+5VF" H 3365 2723 50  0000 C CNN
F 2 "" H 3350 2550 50  0001 C CNN
F 3 "" H 3350 2550 50  0001 C CNN
	1    3350 2550
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:+5VF #PWR0514
U 1 1 5E44BC82
P 4500 2650
F 0 "#PWR0514" H 4500 2500 50  0001 C CNN
F 1 "+5VF" H 4515 2823 50  0000 C CNN
F 2 "" H 4500 2650 50  0001 C CNN
F 3 "" H 4500 2650 50  0001 C CNN
	1    4500 2650
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:+5VF #PWR0511
U 1 1 5E49FB69
P 4100 900
F 0 "#PWR0511" H 4100 750 50  0001 C CNN
F 1 "+5VF" H 4115 1073 50  0000 C CNN
F 2 "" H 4100 900 50  0001 C CNN
F 3 "" H 4100 900 50  0001 C CNN
	1    4100 900 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C503
U 1 1 5E4ABB61
P 3400 1150
F 0 "C503" H 3515 1196 50  0000 L CNN
F 1 "100n" H 3515 1105 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3438 1000 50  0001 C CNN
F 3 "~" H 3400 1150 50  0001 C CNN
	1    3400 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0510
U 1 1 5E4ABB67
P 3400 1400
F 0 "#PWR0510" H 3400 1150 50  0001 C CNN
F 1 "GND" H 3405 1227 50  0000 C CNN
F 2 "" H 3400 1400 50  0001 C CNN
F 3 "" H 3400 1400 50  0001 C CNN
	1    3400 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 900  3400 1000
Wire Wire Line
	3400 1300 3400 1400
$Comp
L ETH1CDMM1:+5VF #PWR0509
U 1 1 5E4AF7CB
P 3400 900
F 0 "#PWR0509" H 3400 750 50  0001 C CNN
F 1 "+5VF" H 3415 1073 50  0000 C CNN
F 2 "" H 3400 900 50  0001 C CNN
F 3 "" H 3400 900 50  0001 C CNN
	1    3400 900 
	1    0    0    -1  
$EndComp
$EndSCHEMATC
