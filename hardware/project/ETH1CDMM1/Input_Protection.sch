EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 9 13
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
L Device:R R905
U 1 1 5E5FFB52
P 5350 900
F 0 "R905" V 5143 900 50  0000 C CNN
F 1 "24k" V 5234 900 50  0000 C CNN
F 2 "" V 5280 900 50  0001 C CNN
F 3 "~" H 5350 900 50  0001 C CNN
	1    5350 900 
	0    -1   1    0   
$EndComp
$Comp
L Device:R R907
U 1 1 5E5FFEDB
P 5000 900
F 0 "R907" V 4793 900 50  0000 C CNN
F 1 "24k" V 4884 900 50  0000 C CNN
F 2 "" V 4930 900 50  0001 C CNN
F 3 "~" H 5000 900 50  0001 C CNN
	1    5000 900 
	0    -1   1    0   
$EndComp
$Comp
L Device:R R909
U 1 1 5E6000F7
P 4650 900
F 0 "R909" V 4443 900 50  0000 C CNN
F 1 "24k" V 4534 900 50  0000 C CNN
F 2 "" V 4580 900 50  0001 C CNN
F 3 "~" H 4650 900 50  0001 C CNN
	1    4650 900 
	0    -1   1    0   
$EndComp
Wire Wire Line
	5200 900  5150 900 
Wire Wire Line
	4850 900  4800 900 
$Comp
L Device:C C902
U 1 1 5E6011E7
P 6450 1100
F 0 "C902" H 6565 1146 50  0000 L CNN
F 1 "220p" H 6565 1055 50  0000 L CNN
F 2 "" H 6488 950 50  0001 C CNN
F 3 "~" H 6450 1100 50  0001 C CNN
	1    6450 1100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6450 950  6450 900 
Wire Wire Line
	6450 900  5500 900 
Text HLabel 3900 900  0    50   Input ~ 0
HS
Wire Wire Line
	3900 900  4500 900 
$Comp
L ETH1CDMM1:AGNDF #PWR0905
U 1 1 5E602082
P 6450 1300
F 0 "#PWR0905" H 6450 1050 50  0001 C CNN
F 1 "AGNDF" H 6455 1127 50  0000 C CNN
F 2 "" H 6450 1300 50  0001 C CNN
F 3 "" H 6450 1300 50  0001 C CNN
	1    6450 1300
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6450 1300 6450 1250
Wire Wire Line
	6450 900  7450 900 
Connection ~ 6450 900 
Text HLabel 7450 900  2    50   Output ~ 0
HI_SENSE
$Comp
L Device:SPARK_GAP E901
U 1 1 5E608969
P 6050 1950
F 0 "E901" V 6004 2003 50  0000 L CNN
F 1 "SPARK_GAP" V 6095 2003 50  0000 L CNN
F 2 "" H 6050 1880 50  0001 C CNN
F 3 "~" V 6050 1950 50  0001 C CNN
	1    6050 1950
	0    -1   1    0   
$EndComp
$Comp
L Device:Varistor RV901
U 1 1 5E60908F
P 6050 2600
F 0 "RV901" H 6153 2646 50  0000 L CNN
F 1 "Varistor" H 6153 2555 50  0000 L CNN
F 2 "" V 5980 2600 50  0001 C CNN
F 3 "~" H 6050 2600 50  0001 C CNN
	1    6050 2600
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R903
U 1 1 5E60949A
P 5450 2400
F 0 "R903" H 5520 2446 50  0000 L CNN
F 1 "1M" H 5520 2355 50  0000 L CNN
F 2 "" V 5380 2400 50  0001 C CNN
F 3 "~" H 5450 2400 50  0001 C CNN
	1    5450 2400
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R904
U 1 1 5E60AA85
P 5450 2800
F 0 "R904" H 5520 2846 50  0000 L CNN
F 1 "1M" H 5520 2755 50  0000 L CNN
F 2 "" V 5380 2800 50  0001 C CNN
F 3 "~" H 5450 2800 50  0001 C CNN
	1    5450 2800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5450 2650 5450 2550
Wire Wire Line
	6050 2150 6050 2200
Wire Wire Line
	5450 2250 5450 2200
Wire Wire Line
	5450 2200 6050 2200
Connection ~ 6050 2200
Wire Wire Line
	6050 2200 6050 2450
$Comp
L ETH1CDMM1:AGNDF #PWR0908
U 1 1 5E60CC4F
P 5450 3000
F 0 "#PWR0908" H 5450 2750 50  0001 C CNN
F 1 "AGNDF" H 5455 2827 50  0000 C CNN
F 2 "" H 5450 3000 50  0001 C CNN
F 3 "" H 5450 3000 50  0001 C CNN
	1    5450 3000
	-1   0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:AGNDF #PWR0907
U 1 1 5E60CF0E
P 6050 3000
F 0 "#PWR0907" H 6050 2750 50  0001 C CNN
F 1 "AGNDF" H 6055 2827 50  0000 C CNN
F 2 "" H 6050 3000 50  0001 C CNN
F 3 "" H 6050 3000 50  0001 C CNN
	1    6050 3000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6050 3000 6050 2750
Wire Wire Line
	5450 3000 5450 2950
$Comp
L Device:C C901
U 1 1 5E60E711
P 6550 2600
F 0 "C901" H 6665 2646 50  0000 L CNN
F 1 "10n" H 6665 2555 50  0000 L CNN
F 2 "" H 6588 2450 50  0001 C CNN
F 3 "~" H 6550 2600 50  0001 C CNN
	1    6550 2600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6050 2200 6550 2200
Wire Wire Line
	6550 2200 6550 2450
$Comp
L ETH1CDMM1:AGNDF #PWR0904
U 1 1 5E60FEA4
P 6550 3000
F 0 "#PWR0904" H 6550 2750 50  0001 C CNN
F 1 "AGNDF" H 6555 2827 50  0000 C CNN
F 2 "" H 6550 3000 50  0001 C CNN
F 3 "" H 6550 3000 50  0001 C CNN
	1    6550 3000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6550 3000 6550 2750
Wire Wire Line
	6050 1750 6050 1700
Wire Wire Line
	6050 1700 3900 1700
Text HLabel 7450 1700 2    50   Output ~ 0
HI
Wire Wire Line
	6050 1700 7450 1700
Connection ~ 6050 1700
Text HLabel 3900 1700 0    50   Input ~ 0
H
$Comp
L Device:R R906
U 1 1 5E61C99C
P 5350 5850
F 0 "R906" V 5143 5850 50  0000 C CNN
F 1 "24k" V 5234 5850 50  0000 C CNN
F 2 "" V 5280 5850 50  0001 C CNN
F 3 "~" H 5350 5850 50  0001 C CNN
	1    5350 5850
	0    -1   1    0   
$EndComp
$Comp
L Device:R R908
U 1 1 5E61C9A2
P 5000 5850
F 0 "R908" V 4793 5850 50  0000 C CNN
F 1 "24k" V 4884 5850 50  0000 C CNN
F 2 "" V 4930 5850 50  0001 C CNN
F 3 "~" H 5000 5850 50  0001 C CNN
	1    5000 5850
	0    -1   1    0   
$EndComp
$Comp
L Device:R R910
U 1 1 5E61C9A8
P 4650 5850
F 0 "R910" V 4443 5850 50  0000 C CNN
F 1 "24k" V 4534 5850 50  0000 C CNN
F 2 "" V 4580 5850 50  0001 C CNN
F 3 "~" H 4650 5850 50  0001 C CNN
	1    4650 5850
	0    -1   1    0   
$EndComp
Wire Wire Line
	5200 5850 5150 5850
Wire Wire Line
	4850 5850 4800 5850
$Comp
L Device:C C903
U 1 1 5E61C9B0
P 6450 6050
F 0 "C903" H 6565 6096 50  0000 L CNN
F 1 "220p" H 6565 6005 50  0000 L CNN
F 2 "" H 6488 5900 50  0001 C CNN
F 3 "~" H 6450 6050 50  0001 C CNN
	1    6450 6050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6450 5900 6450 5850
Wire Wire Line
	6450 5850 5500 5850
Text HLabel 3900 5850 0    50   Input ~ 0
LS
Wire Wire Line
	3900 5850 4500 5850
$Comp
L ETH1CDMM1:AGNDF #PWR0906
U 1 1 5E61C9BA
P 6450 6250
F 0 "#PWR0906" H 6450 6000 50  0001 C CNN
F 1 "AGNDF" H 6455 6077 50  0000 C CNN
F 2 "" H 6450 6250 50  0001 C CNN
F 3 "" H 6450 6250 50  0001 C CNN
	1    6450 6250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6450 6250 6450 6200
Wire Wire Line
	6450 5850 7450 5850
Connection ~ 6450 5850
Text HLabel 7450 5850 2    50   Output ~ 0
LO_SENSE
$Comp
L ETH1CDMM1:OPA132 U901
U 1 1 5E62655D
P 6850 4750
F 0 "U901" H 7100 5000 50  0000 L CNN
F 1 "OPA132" H 7000 4900 50  0000 L CNN
F 2 "" H 6900 4800 50  0001 C CNN
F 3 "" H 6900 4900 50  0001 C CNN
	1    6850 4750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R902
U 1 1 5E6270AE
P 6300 5350
F 0 "R902" V 6093 5350 50  0000 C CNN
F 1 "316" V 6184 5350 50  0000 C CNN
F 2 "" V 6230 5350 50  0001 C CNN
F 3 "~" H 6300 5350 50  0001 C CNN
	1    6300 5350
	0    1    1    0   
$EndComp
Wire Wire Line
	6550 4650 6500 4650
Wire Wire Line
	7450 5350 7450 4750
Wire Wire Line
	7450 4750 7150 4750
$Comp
L power:+15V #PWR0902
U 1 1 5E6286A2
P 6750 4450
F 0 "#PWR0902" H 6750 4300 50  0001 C CNN
F 1 "+15V" H 6765 4623 50  0000 C CNN
F 2 "" H 6750 4450 50  0001 C CNN
F 3 "" H 6750 4450 50  0001 C CNN
	1    6750 4450
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:-15VF #PWR0903
U 1 1 5E628C04
P 6750 5050
F 0 "#PWR0903" H 6750 4900 50  0001 C CNN
F 1 "-15VF" H 6765 5223 50  0000 C CNN
F 2 "" H 6750 5050 50  0001 C CNN
F 3 "" H 6750 5050 50  0001 C CNN
	1    6750 5050
	-1   0    0    1   
$EndComp
NoConn ~ 6850 5050
NoConn ~ 6850 4450
$Comp
L Device:R R901
U 1 1 5E62EB9B
P 6300 4850
F 0 "R901" V 6093 4850 50  0000 C CNN
F 1 "10k" V 6184 4850 50  0000 C CNN
F 2 "" V 6230 4850 50  0001 C CNN
F 3 "~" H 6300 4850 50  0001 C CNN
	1    6300 4850
	0    1    1    0   
$EndComp
Text HLabel 3900 4100 0    50   Input ~ 0
I
$Comp
L Device:Varistor RV902
U 1 1 5E63D572
P 4250 4350
F 0 "RV902" H 4353 4396 50  0000 L CNN
F 1 "Varistor" H 4353 4305 50  0000 L CNN
F 2 "" V 4180 4350 50  0001 C CNN
F 3 "~" H 4250 4350 50  0001 C CNN
	1    4250 4350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3900 4100 4250 4100
Wire Wire Line
	4250 4100 4250 4200
$Comp
L Device:Fuse F901
U 1 1 5E63F2BB
P 4650 4100
F 0 "F901" V 4453 4100 50  0000 C CNN
F 1 "Fuse" V 4544 4100 50  0000 C CNN
F 2 "" V 4580 4100 50  0001 C CNN
F 3 "~" H 4650 4100 50  0001 C CNN
	1    4650 4100
	0    -1   1    0   
$EndComp
Wire Wire Line
	4250 4100 4500 4100
Connection ~ 4250 4100
$Comp
L Device:D D903
U 1 1 5E6436AF
P 5100 4400
F 0 "D903" V 5054 4479 50  0000 L CNN
F 1 "D" V 5145 4479 50  0000 L CNN
F 2 "" H 5100 4400 50  0001 C CNN
F 3 "~" H 5100 4400 50  0001 C CNN
	1    5100 4400
	0    -1   1    0   
$EndComp
$Comp
L Device:D D901
U 1 1 5E64499B
P 5600 4400
F 0 "D901" V 5646 4321 50  0000 R CNN
F 1 "D" V 5555 4321 50  0000 R CNN
F 2 "" H 5600 4400 50  0001 C CNN
F 3 "~" H 5600 4400 50  0001 C CNN
	1    5600 4400
	0    1    -1   0   
$EndComp
$Comp
L Device:D D902
U 1 1 5E644E42
P 5600 4800
F 0 "D902" V 5554 4879 50  0000 L CNN
F 1 "D" V 5645 4879 50  0000 L CNN
F 2 "" H 5600 4800 50  0001 C CNN
F 3 "~" H 5600 4800 50  0001 C CNN
	1    5600 4800
	0    -1   1    0   
$EndComp
$Comp
L Device:D D904
U 1 1 5E64536C
P 5100 4800
F 0 "D904" V 5146 4721 50  0000 R CNN
F 1 "D" V 5055 4721 50  0000 R CNN
F 2 "" H 5100 4800 50  0001 C CNN
F 3 "~" H 5100 4800 50  0001 C CNN
	1    5100 4800
	0    1    -1   0   
$EndComp
Wire Wire Line
	6450 4850 6550 4850
Wire Wire Line
	6450 5350 6500 5350
Wire Wire Line
	6500 5350 6500 4650
Connection ~ 6500 5350
Wire Wire Line
	6500 5350 7450 5350
Wire Wire Line
	6150 4850 6050 4850
Wire Wire Line
	6050 4850 6050 4100
Wire Wire Line
	6050 4100 7450 4100
Text HLabel 7450 4100 2    50   Output ~ 0
AMPS
Wire Wire Line
	5600 4950 5600 5000
Wire Wire Line
	5600 5000 5350 5000
Wire Wire Line
	5100 5000 5100 4950
Wire Wire Line
	5100 4650 5100 4600
Wire Wire Line
	5100 4250 5100 4200
Wire Wire Line
	5100 4200 5350 4200
Wire Wire Line
	5600 4200 5600 4250
Wire Wire Line
	5600 4550 5600 4600
Connection ~ 5350 5000
Wire Wire Line
	5350 5000 5100 5000
Wire Wire Line
	5350 5050 5350 5000
$Comp
L ETH1CDMM1:AGNDF #PWR0909
U 1 1 5E666421
P 5350 5050
F 0 "#PWR0909" H 5350 4800 50  0001 C CNN
F 1 "AGNDF" H 5355 4877 50  0000 C CNN
F 2 "" H 5350 5050 50  0001 C CNN
F 3 "" H 5350 5050 50  0001 C CNN
	1    5350 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 4100 5350 4100
Wire Wire Line
	5350 4100 5350 4200
Connection ~ 6050 4100
Connection ~ 5350 4200
Wire Wire Line
	5350 4200 5600 4200
Wire Wire Line
	5100 4600 4650 4600
Wire Wire Line
	4650 4600 4650 5350
Wire Wire Line
	4650 5350 5950 5350
Connection ~ 5100 4600
Wire Wire Line
	5100 4600 5100 4550
Wire Wire Line
	5600 4600 5950 4600
Wire Wire Line
	5950 4600 5950 5350
Connection ~ 5600 4600
Wire Wire Line
	5600 4600 5600 4650
Connection ~ 5950 5350
Wire Wire Line
	5950 5350 6150 5350
Wire Wire Line
	4800 4100 5350 4100
Connection ~ 5350 4100
$Comp
L ETH1CDMM1:AGNDF #PWR0910
U 1 1 5E691A56
P 4250 4650
F 0 "#PWR0910" H 4250 4400 50  0001 C CNN
F 1 "AGNDF" H 4255 4477 50  0000 C CNN
F 2 "" H 4250 4650 50  0001 C CNN
F 3 "" H 4250 4650 50  0001 C CNN
	1    4250 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4250 4650 4250 4500
$Comp
L ETH1CDMM1:AGNDF #PWR0901
U 1 1 5E6FC211
P 7450 3450
F 0 "#PWR0901" H 7450 3200 50  0001 C CNN
F 1 "AGNDF" V 7455 3322 50  0000 R CNN
F 2 "" H 7450 3450 50  0001 C CNN
F 3 "" H 7450 3450 50  0001 C CNN
	1    7450 3450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7450 3450 3900 3450
Text HLabel 3900 3450 0    50   Input ~ 0
L
$EndSCHEMATC