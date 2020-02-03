EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 8
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:C C702
U 1 1 5EE9F0E0
P 950 7250
F 0 "C702" H 1065 7296 50  0000 L CNN
F 1 "10u" H 1065 7205 50  0000 L CNN
F 2 "" H 988 7100 50  0001 C CNN
F 3 "~" H 950 7250 50  0001 C CNN
	1    950  7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C704
U 1 1 5EE9FE32
P 1400 7250
F 0 "C704" H 1515 7296 50  0000 L CNN
F 1 "1u" H 1515 7205 50  0000 L CNN
F 2 "" H 1438 7100 50  0001 C CNN
F 3 "~" H 1400 7250 50  0001 C CNN
	1    1400 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C705
U 1 1 5EEA0C1F
P 1850 7250
F 0 "C705" H 1965 7296 50  0000 L CNN
F 1 "100n" H 1965 7205 50  0000 L CNN
F 2 "" H 1888 7100 50  0001 C CNN
F 3 "~" H 1850 7250 50  0001 C CNN
	1    1850 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C706
U 1 1 5EEA195A
P 2350 7250
F 0 "C706" H 2465 7296 50  0000 L CNN
F 1 "100n" H 2465 7205 50  0000 L CNN
F 2 "" H 2388 7100 50  0001 C CNN
F 3 "~" H 2350 7250 50  0001 C CNN
	1    2350 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C707
U 1 1 5EEA255B
P 2900 7250
F 0 "C707" H 3015 7296 50  0000 L CNN
F 1 "100n" H 3015 7205 50  0000 L CNN
F 2 "" H 2938 7100 50  0001 C CNN
F 3 "~" H 2900 7250 50  0001 C CNN
	1    2900 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C708
U 1 1 5EEA2561
P 3400 7250
F 0 "C708" H 3515 7296 50  0000 L CNN
F 1 "100n" H 3515 7205 50  0000 L CNN
F 2 "" H 3438 7100 50  0001 C CNN
F 3 "~" H 3400 7250 50  0001 C CNN
	1    3400 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C709
U 1 1 5EEA265D
P 3900 7250
F 0 "C709" H 4015 7296 50  0000 L CNN
F 1 "100n" H 4015 7205 50  0000 L CNN
F 2 "" H 3938 7100 50  0001 C CNN
F 3 "~" H 3900 7250 50  0001 C CNN
	1    3900 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	950  7400 950  7450
Wire Wire Line
	950  7450 1400 7450
Wire Wire Line
	3900 7450 3900 7400
Wire Wire Line
	3400 7400 3400 7450
Connection ~ 3400 7450
Wire Wire Line
	3400 7450 3900 7450
Wire Wire Line
	2900 7400 2900 7450
Connection ~ 2900 7450
Wire Wire Line
	2900 7450 3400 7450
Wire Wire Line
	2350 7400 2350 7450
Connection ~ 2350 7450
Wire Wire Line
	2350 7450 2900 7450
Wire Wire Line
	1850 7400 1850 7450
Connection ~ 1850 7450
Wire Wire Line
	1850 7450 2350 7450
Wire Wire Line
	1400 7400 1400 7450
Connection ~ 1400 7450
Wire Wire Line
	1400 7450 1850 7450
Wire Wire Line
	950  7100 950  7050
Wire Wire Line
	950  7050 1400 7050
Wire Wire Line
	3900 7050 3900 7100
Wire Wire Line
	3400 7100 3400 7050
Connection ~ 3400 7050
Wire Wire Line
	3400 7050 3900 7050
Wire Wire Line
	2900 7100 2900 7050
Connection ~ 2900 7050
Wire Wire Line
	2900 7050 3400 7050
Wire Wire Line
	2350 7100 2350 7050
Connection ~ 2350 7050
Wire Wire Line
	2350 7050 2900 7050
Wire Wire Line
	1850 7100 1850 7050
Connection ~ 1850 7050
Wire Wire Line
	1850 7050 2350 7050
Wire Wire Line
	1400 7100 1400 7050
Connection ~ 1400 7050
Wire Wire Line
	1400 7050 1850 7050
$Comp
L ETH1CDMM1:DGNDF #PWR0704
U 1 1 5EEA58CA
P 2350 7500
F 0 "#PWR0704" H 2350 7250 50  0001 C CNN
F 1 "DGNDF" H 2355 7327 50  0000 C CNN
F 2 "" H 2350 7500 50  0001 C CNN
F 3 "" H 2350 7500 50  0001 C CNN
	1    2350 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 7500 2350 7450
$Comp
L power:+1V2 #PWR0703
U 1 1 5EEA62BB
P 2350 7000
F 0 "#PWR0703" H 2350 6850 50  0001 C CNN
F 1 "+1V2" H 2365 7173 50  0000 C CNN
F 2 "" H 2350 7000 50  0001 C CNN
F 3 "" H 2350 7000 50  0001 C CNN
	1    2350 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 7000 2350 7050
$Comp
L Device:C C712
U 1 1 5EEA86F8
P 5700 7250
F 0 "C712" H 5815 7296 50  0000 L CNN
F 1 "100n" H 5815 7205 50  0000 L CNN
F 2 "" H 5738 7100 50  0001 C CNN
F 3 "~" H 5700 7250 50  0001 C CNN
	1    5700 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C713
U 1 1 5EEA86FE
P 6200 7250
F 0 "C713" H 6315 7296 50  0000 L CNN
F 1 "100n" H 6315 7205 50  0000 L CNN
F 2 "" H 6238 7100 50  0001 C CNN
F 3 "~" H 6200 7250 50  0001 C CNN
	1    6200 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 7050 6200 7100
Wire Wire Line
	5700 7100 5700 7050
$Comp
L Device:C C711
U 1 1 5EEA8AFF
P 5200 7250
F 0 "C711" H 5315 7296 50  0000 L CNN
F 1 "1u" H 5315 7205 50  0000 L CNN
F 2 "" H 5238 7100 50  0001 C CNN
F 3 "~" H 5200 7250 50  0001 C CNN
	1    5200 7250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C710
U 1 1 5EEAAF9D
P 4750 7250
F 0 "C710" H 4865 7296 50  0000 L CNN
F 1 "10u" H 4865 7205 50  0000 L CNN
F 2 "" H 4788 7100 50  0001 C CNN
F 3 "~" H 4750 7250 50  0001 C CNN
	1    4750 7250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 7400 4750 7450
Wire Wire Line
	4750 7450 5200 7450
Wire Wire Line
	6200 7450 6200 7400
Wire Wire Line
	6200 7050 5700 7050
Wire Wire Line
	4750 7050 4750 7100
Connection ~ 5700 7050
Wire Wire Line
	5700 7050 5500 7050
Wire Wire Line
	5200 7100 5200 7050
Connection ~ 5200 7050
Wire Wire Line
	5200 7050 4750 7050
Wire Wire Line
	5200 7400 5200 7450
Connection ~ 5200 7450
Wire Wire Line
	5200 7450 5500 7450
Wire Wire Line
	5700 7400 5700 7450
Connection ~ 5700 7450
Wire Wire Line
	5700 7450 6200 7450
$Comp
L ETH1CDMM1:DGNDF #PWR0706
U 1 1 5EEAE1AC
P 5500 7500
F 0 "#PWR0706" H 5500 7250 50  0001 C CNN
F 1 "DGNDF" H 5505 7327 50  0000 C CNN
F 2 "" H 5500 7500 50  0001 C CNN
F 3 "" H 5500 7500 50  0001 C CNN
	1    5500 7500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 7500 5500 7450
Connection ~ 5500 7450
Wire Wire Line
	5500 7450 5700 7450
$Comp
L power:+3.3VP #PWR0705
U 1 1 5EEAF1A9
P 5500 7000
F 0 "#PWR0705" H 5650 6950 50  0001 C CNN
F 1 "+3.3VP" H 5520 7143 50  0000 C CNN
F 2 "" H 5500 7000 50  0001 C CNN
F 3 "" H 5500 7000 50  0001 C CNN
	1    5500 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5500 7000 5500 7050
Connection ~ 5500 7050
Wire Wire Line
	5500 7050 5200 7050
$Comp
L ETH1CDMM1:iCE40HX4K-TQ144 U701
U 1 1 5EED63C8
P 2500 1900
F 0 "U701" H 2500 3215 50  0000 C CNN
F 1 "iCE40HX4K-TQ144" H 2500 3124 50  0000 C CNN
F 2 "" H 2000 3100 50  0001 C CNN
F 3 "" H 2000 3100 50  0001 C CNN
	1    2500 1900
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:iCE40HX4K-TQ144 U701
U 3 1 5EEDA6F4
P 2500 4450
F 0 "U701" H 2500 5765 50  0000 C CNN
F 1 "iCE40HX4K-TQ144" H 2500 5674 50  0000 C CNN
F 2 "" H 2000 5650 50  0001 C CNN
F 3 "" H 2000 5650 50  0001 C CNN
	3    2500 4450
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:iCE40HX4K-TQ144 U701
U 2 1 5EEDD1F5
P 6250 1900
F 0 "U701" H 6250 3215 50  0000 C CNN
F 1 "iCE40HX4K-TQ144" H 6250 3124 50  0000 C CNN
F 2 "" H 5750 3100 50  0001 C CNN
F 3 "" H 5750 3100 50  0001 C CNN
	2    6250 1900
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:iCE40HX4K-TQ144 U701
U 4 1 5EEDFB11
P 6250 4450
F 0 "U701" H 6250 5765 50  0000 C CNN
F 1 "iCE40HX4K-TQ144" H 6250 5674 50  0000 C CNN
F 2 "" H 5750 5650 50  0001 C CNN
F 3 "" H 5750 5650 50  0001 C CNN
	4    6250 4450
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:iCE40HX4K-TQ144 U701
U 5 1 5EEE3FDB
P 2500 6100
F 0 "U701" H 2500 6515 50  0000 C CNN
F 1 "iCE40HX4K-TQ144" H 2500 6424 50  0000 C CNN
F 2 "" H 2000 7300 50  0001 C CNN
F 3 "" H 2000 7300 50  0001 C CNN
	5    2500 6100
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:iCE40HX4K-TQ144 U701
U 6 1 5EEE5EE8
P 9750 1350
F 0 "U701" H 9750 2115 50  0000 C CNN
F 1 "iCE40HX4K-TQ144" H 9750 2024 50  0000 C CNN
F 2 "" H 9250 2550 50  0001 C CNN
F 3 "" H 9250 2550 50  0001 C CNN
	6    9750 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 1650 8900 1650
Wire Wire Line
	8900 1650 8900 1550
Wire Wire Line
	8900 850  8950 850 
Wire Wire Line
	8950 950  8900 950 
Connection ~ 8900 950 
Wire Wire Line
	8900 950  8900 850 
Wire Wire Line
	8950 1050 8900 1050
Connection ~ 8900 1050
Wire Wire Line
	8900 1050 8900 950 
Wire Wire Line
	8950 1150 8900 1150
Connection ~ 8900 1150
Wire Wire Line
	8900 1150 8900 1050
Wire Wire Line
	8950 1250 8900 1250
Connection ~ 8900 1250
Wire Wire Line
	8900 1250 8900 1150
Wire Wire Line
	8950 1350 8900 1350
Connection ~ 8900 1350
Wire Wire Line
	8900 1350 8900 1250
Wire Wire Line
	8950 1450 8900 1450
Connection ~ 8900 1450
Wire Wire Line
	8900 1450 8900 1350
Wire Wire Line
	8950 1550 8900 1550
Connection ~ 8900 1550
Wire Wire Line
	8900 1550 8900 1450
NoConn ~ 10550 850 
$Comp
L Device:D_Schottky D701
U 1 1 5EF73FAC
P 10800 950
F 0 "D701" H 10800 1166 50  0000 C CNN
F 1 "CDBU0520" H 10800 1075 50  0000 C CNN
F 2 "" H 10800 950 50  0001 C CNN
F 3 "~" H 10800 950 50  0001 C CNN
	1    10800 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 950  10550 950 
$Comp
L power:+1V2 #PWR0709
U 1 1 5EF886E2
P 10650 1750
F 0 "#PWR0709" H 10650 1600 50  0001 C CNN
F 1 "+1V2" V 10650 1900 50  0000 L CNN
F 2 "" H 10650 1750 50  0001 C CNN
F 3 "" H 10650 1750 50  0001 C CNN
	1    10650 1750
	0    1    1    0   
$EndComp
$Comp
L ETH1CDMM1:DGNDF #PWR0708
U 1 1 5EF99D99
P 8850 1250
F 0 "#PWR0708" H 8850 1000 50  0001 C CNN
F 1 "DGNDF" V 8855 1123 50  0000 R CNN
F 2 "" H 8850 1250 50  0001 C CNN
F 3 "" H 8850 1250 50  0001 C CNN
	1    8850 1250
	0    1    1    0   
$EndComp
Wire Wire Line
	8850 1250 8900 1250
Wire Wire Line
	10650 1750 10600 1750
Wire Wire Line
	10600 1750 10600 1850
Wire Wire Line
	10550 1750 10600 1750
Connection ~ 10600 1750
Wire Wire Line
	10550 1850 10600 1850
Connection ~ 10600 1850
Wire Wire Line
	10600 1850 10600 1950
Wire Wire Line
	10550 1950 10600 1950
Connection ~ 10600 1950
Wire Wire Line
	10600 1950 10600 2050
Wire Wire Line
	10550 2050 10600 2050
$Comp
L Device:C C715
U 1 1 5EFCEB03
P 8550 2000
F 0 "C715" H 8665 2046 50  0000 L CNN
F 1 "100n" H 8665 1955 50  0000 L CNN
F 2 "" H 8588 1850 50  0001 C CNN
F 3 "~" H 8550 2000 50  0001 C CNN
	1    8550 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C714
U 1 1 5EFD1FBF
P 8100 2000
F 0 "C714" H 8215 2046 50  0000 L CNN
F 1 "100n" H 8215 1955 50  0000 L CNN
F 2 "" H 8138 1850 50  0001 C CNN
F 3 "~" H 8100 2000 50  0001 C CNN
	1    8100 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 1850 8100 1850
Wire Wire Line
	8100 2150 8550 2150
Connection ~ 8550 2150
Wire Wire Line
	8550 2150 8950 2150
$Comp
L power:+1V2 #PWR0707
U 1 1 5EFD6EAB
P 8100 1450
F 0 "#PWR0707" H 8100 1300 50  0001 C CNN
F 1 "+1V2" H 8115 1623 50  0000 C CNN
F 2 "" H 8100 1450 50  0001 C CNN
F 3 "" H 8100 1450 50  0001 C CNN
	1    8100 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R701
U 1 1 5EFD7F47
P 8100 1650
F 0 "R701" H 8170 1696 50  0000 L CNN
F 1 "100" H 8170 1605 50  0000 L CNN
F 2 "" V 8030 1650 50  0001 C CNN
F 3 "~" H 8100 1650 50  0001 C CNN
	1    8100 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8100 1450 8100 1500
Wire Wire Line
	8100 1800 8100 1850
Connection ~ 8100 1850
Wire Wire Line
	1500 950  1450 950 
Wire Wire Line
	1450 950  1450 850 
Wire Wire Line
	1450 850  1500 850 
Wire Wire Line
	1500 3500 1450 3500
Wire Wire Line
	1450 3500 1450 3400
Wire Wire Line
	1450 3400 1500 3400
Wire Wire Line
	5250 3500 5200 3500
Wire Wire Line
	5200 3500 5200 3400
Wire Wire Line
	5200 3400 5250 3400
Wire Wire Line
	5250 950  5200 950 
Wire Wire Line
	5200 950  5200 850 
Wire Wire Line
	5200 850  5250 850 
$Comp
L Device:C C703
U 1 1 5F00082D
P 1100 1050
F 0 "C703" H 1215 1096 50  0000 L CNN
F 1 "100n" H 1215 1005 50  0000 L CNN
F 2 "" H 1138 900 50  0001 C CNN
F 3 "~" H 1100 1050 50  0001 C CNN
	1    1100 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C701
U 1 1 5F002FAE
P 650 1050
F 0 "C701" H 765 1096 50  0000 L CNN
F 1 "100n" H 765 1005 50  0000 L CNN
F 2 "" H 688 900 50  0001 C CNN
F 3 "~" H 650 1050 50  0001 C CNN
	1    650  1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 850  1100 850 
Wire Wire Line
	650  850  650  900 
Wire Wire Line
	1100 900  1100 850 
Connection ~ 1100 850 
Wire Wire Line
	1100 850  650  850 
Wire Wire Line
	1100 1200 1100 1250
Wire Wire Line
	1100 1250 650  1250
Wire Wire Line
	650  1250 650  1200
$Comp
L power:+3.3VP #PWR0701
U 1 1 5F047DBD
P 650 800
F 0 "#PWR0701" H 800 750 50  0001 C CNN
F 1 "+3.3VP" H 670 943 50  0000 C CNN
F 2 "" H 650 800 50  0001 C CNN
F 3 "" H 650 800 50  0001 C CNN
	1    650  800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  800  650  850 
Connection ~ 650  850 
$Comp
L ETH1CDMM1:AGNDF #PWR0702
U 1 1 5F04B06C
P 650 1300
F 0 "#PWR0702" H 650 1050 50  0001 C CNN
F 1 "AGNDF" H 655 1127 50  0000 C CNN
F 2 "" H 650 1300 50  0001 C CNN
F 3 "" H 650 1300 50  0001 C CNN
	1    650  1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  1300 650  1250
Connection ~ 650  1250
Connection ~ 1450 850 
$Comp
L Device:C C?
U 1 1 5F06DF7C
P 1100 3600
F 0 "C?" H 1215 3646 50  0000 L CNN
F 1 "100n" H 1215 3555 50  0000 L CNN
F 2 "" H 1138 3450 50  0001 C CNN
F 3 "~" H 1100 3600 50  0001 C CNN
	1    1100 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F06DF82
P 650 3600
F 0 "C?" H 765 3646 50  0000 L CNN
F 1 "100n" H 765 3555 50  0000 L CNN
F 2 "" H 688 3450 50  0001 C CNN
F 3 "~" H 650 3600 50  0001 C CNN
	1    650  3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 3400 1100 3400
Wire Wire Line
	650  3400 650  3450
Wire Wire Line
	1100 3450 1100 3400
Connection ~ 1100 3400
Wire Wire Line
	1100 3400 650  3400
Wire Wire Line
	1100 3750 1100 3800
Wire Wire Line
	1100 3800 650  3800
Wire Wire Line
	650  3800 650  3750
$Comp
L power:+3.3VP #PWR?
U 1 1 5F06DF90
P 650 3350
F 0 "#PWR?" H 800 3300 50  0001 C CNN
F 1 "+3.3VP" H 670 3493 50  0000 C CNN
F 2 "" H 650 3350 50  0001 C CNN
F 3 "" H 650 3350 50  0001 C CNN
	1    650  3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  3350 650  3400
Connection ~ 650  3400
$Comp
L ETH1CDMM1:AGNDF #PWR?
U 1 1 5F06DF98
P 650 3850
F 0 "#PWR?" H 650 3600 50  0001 C CNN
F 1 "AGNDF" H 655 3677 50  0000 C CNN
F 2 "" H 650 3850 50  0001 C CNN
F 3 "" H 650 3850 50  0001 C CNN
	1    650  3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	650  3850 650  3800
Connection ~ 650  3800
Connection ~ 1450 3400
$Comp
L Device:C C?
U 1 1 5F07B007
P 4850 1050
F 0 "C?" H 4965 1096 50  0000 L CNN
F 1 "100n" H 4965 1005 50  0000 L CNN
F 2 "" H 4888 900 50  0001 C CNN
F 3 "~" H 4850 1050 50  0001 C CNN
	1    4850 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F07B00D
P 4400 1050
F 0 "C?" H 4515 1096 50  0000 L CNN
F 1 "100n" H 4515 1005 50  0000 L CNN
F 2 "" H 4438 900 50  0001 C CNN
F 3 "~" H 4400 1050 50  0001 C CNN
	1    4400 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 850  4850 850 
Wire Wire Line
	4400 850  4400 900 
Wire Wire Line
	4850 900  4850 850 
Connection ~ 4850 850 
Wire Wire Line
	4850 850  4400 850 
Wire Wire Line
	4850 1200 4850 1250
Wire Wire Line
	4850 1250 4400 1250
Wire Wire Line
	4400 1250 4400 1200
$Comp
L power:+3.3VP #PWR?
U 1 1 5F07B01B
P 4400 800
F 0 "#PWR?" H 4550 750 50  0001 C CNN
F 1 "+3.3VP" H 4420 943 50  0000 C CNN
F 2 "" H 4400 800 50  0001 C CNN
F 3 "" H 4400 800 50  0001 C CNN
	1    4400 800 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 800  4400 850 
Connection ~ 4400 850 
$Comp
L ETH1CDMM1:AGNDF #PWR?
U 1 1 5F07B023
P 4400 1300
F 0 "#PWR?" H 4400 1050 50  0001 C CNN
F 1 "AGNDF" H 4405 1127 50  0000 C CNN
F 2 "" H 4400 1300 50  0001 C CNN
F 3 "" H 4400 1300 50  0001 C CNN
	1    4400 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1300 4400 1250
Connection ~ 4400 1250
Connection ~ 5200 850 
$Comp
L Device:C C?
U 1 1 5F083783
P 4850 3600
F 0 "C?" H 4965 3646 50  0000 L CNN
F 1 "100n" H 4965 3555 50  0000 L CNN
F 2 "" H 4888 3450 50  0001 C CNN
F 3 "~" H 4850 3600 50  0001 C CNN
	1    4850 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5F083789
P 4400 3600
F 0 "C?" H 4515 3646 50  0000 L CNN
F 1 "100n" H 4515 3555 50  0000 L CNN
F 2 "" H 4438 3450 50  0001 C CNN
F 3 "~" H 4400 3600 50  0001 C CNN
	1    4400 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	5200 3400 4850 3400
Wire Wire Line
	4400 3400 4400 3450
Wire Wire Line
	4850 3450 4850 3400
Connection ~ 4850 3400
Wire Wire Line
	4850 3400 4400 3400
Wire Wire Line
	4850 3750 4850 3800
Wire Wire Line
	4850 3800 4400 3800
Wire Wire Line
	4400 3800 4400 3750
$Comp
L power:+3.3VP #PWR?
U 1 1 5F083797
P 4400 3350
F 0 "#PWR?" H 4550 3300 50  0001 C CNN
F 1 "+3.3VP" H 4420 3493 50  0000 C CNN
F 2 "" H 4400 3350 50  0001 C CNN
F 3 "" H 4400 3350 50  0001 C CNN
	1    4400 3350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3350 4400 3400
Connection ~ 4400 3400
$Comp
L ETH1CDMM1:AGNDF #PWR?
U 1 1 5F08379F
P 4400 3850
F 0 "#PWR?" H 4400 3600 50  0001 C CNN
F 1 "AGNDF" H 4405 3677 50  0000 C CNN
F 2 "" H 4400 3850 50  0001 C CNN
F 3 "" H 4400 3850 50  0001 C CNN
	1    4400 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 3850 4400 3800
Connection ~ 4400 3800
Connection ~ 5200 3400
$Comp
L power:+3.3VP #PWR?
U 1 1 5F1ABFFC
P 11050 750
F 0 "#PWR?" H 11200 700 50  0001 C CNN
F 1 "+3.3VP" H 11070 893 50  0000 C CNN
F 2 "" H 11050 750 50  0001 C CNN
F 3 "" H 11050 750 50  0001 C CNN
	1    11050 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	11050 750  11050 950 
Wire Wire Line
	10950 950  11050 950 
Wire Wire Line
	8950 2050 8950 2150
Wire Wire Line
	8950 1850 8550 1850
Connection ~ 8550 1850
$Comp
L Device:C C?
U 1 1 5F2313D8
P 1350 6150
F 0 "C?" H 1465 6196 50  0000 L CNN
F 1 "100n" H 1465 6105 50  0000 L CNN
F 2 "" H 1388 6000 50  0001 C CNN
F 3 "~" H 1350 6150 50  0001 C CNN
	1    1350 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 6000 1350 5950
Wire Wire Line
	1350 5950 1550 5950
$Comp
L ETH1CDMM1:DGNDF #PWR?
U 1 1 5F24580E
P 1350 6300
F 0 "#PWR?" H 1350 6050 50  0001 C CNN
F 1 "DGNDF" H 1355 6127 50  0000 C CNN
F 2 "" H 1350 6300 50  0001 C CNN
F 3 "" H 1350 6300 50  0001 C CNN
	1    1350 6300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VP #PWR?
U 1 1 5F250D94
P 1350 5900
F 0 "#PWR?" H 1500 5850 50  0001 C CNN
F 1 "+3.3VP" H 1370 6043 50  0000 C CNN
F 2 "" H 1350 5900 50  0001 C CNN
F 3 "" H 1350 5900 50  0001 C CNN
	1    1350 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	1350 5900 1350 5950
Connection ~ 1350 5950
$EndSCHEMATC
