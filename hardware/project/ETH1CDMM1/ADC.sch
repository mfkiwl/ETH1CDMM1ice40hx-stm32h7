EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 8 13
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
L ETH1CDMM1:LT5400-100k-100k U801
U 1 1 5E3943C8
P 3750 1400
F 0 "U801" H 3750 1950 50  0000 C CNN
F 1 "LT5400-100k-100k" H 3750 1850 50  0000 C CNN
F 2 "" H 3750 1400 50  0001 C CNN
F 3 "" H 3750 1400 50  0001 C CNN
	1    3750 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 750  3250 750 
Wire Wire Line
	3400 1100 3050 1100
Text HLabel 3050 1100 0    50   Input ~ 0
ADIN
$Comp
L ETH1CDMM1:AGNDF #PWR0801
U 1 1 5E3957BE
P 3350 1750
F 0 "#PWR0801" H 3350 1500 50  0001 C CNN
F 1 "AGNDF" V 3355 1622 50  0000 R CNN
F 2 "" H 3350 1750 50  0001 C CNN
F 3 "" H 3350 1750 50  0001 C CNN
	1    3350 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 1100 4300 1100
Wire Wire Line
	4300 1100 4300 750 
Wire Wire Line
	3250 750  3250 1250
Wire Wire Line
	3250 1250 3400 1250
Wire Wire Line
	3400 1400 3050 1400
Text Label 3050 1400 0    50   ~ 0
VREF-
Wire Wire Line
	3400 1550 3050 1550
Text Label 3050 1550 0    50   ~ 0
VREF+
Wire Wire Line
	3350 1750 3400 1750
$Comp
L ETH1CDMM1:DG211CJD U802
U 2 1 5E39AB01
P 5400 2650
F 0 "U802" V 5354 2780 50  0000 L CNN
F 1 "DG211CJD" V 5445 2780 50  0000 L CNN
F 2 "" H 5400 2550 50  0001 C CNN
F 3 "http://pdf.datasheetcatalog.com/datasheets/70/494502_DS.pdf" H 5400 2650 50  0001 C CNN
	2    5400 2650
	0    1    1    0   
$EndComp
$Comp
L ETH1CDMM1:DG211CJD U802
U 3 1 5E39C04E
P 5400 1950
F 0 "U802" V 5354 2080 50  0000 L CNN
F 1 "DG211CJD" V 5445 2080 50  0000 L CNN
F 2 "" H 5400 1850 50  0001 C CNN
F 3 "http://pdf.datasheetcatalog.com/datasheets/70/494502_DS.pdf" H 5400 1950 50  0001 C CNN
	3    5400 1950
	0    1    1    0   
$EndComp
$Comp
L ETH1CDMM1:DG211CJD U802
U 4 1 5E39DB94
P 5400 3700
F 0 "U802" V 5354 3830 50  0000 L CNN
F 1 "DG211CJD" V 5445 3830 50  0000 L CNN
F 2 "" H 5400 3600 50  0001 C CNN
F 3 "http://pdf.datasheetcatalog.com/datasheets/70/494502_DS.pdf" H 5400 3700 50  0001 C CNN
	4    5400 3700
	0    1    1    0   
$EndComp
$Comp
L ETH1CDMM1:DG211CJD U802
U 5 1 5E3A0375
P 7350 5600
F 0 "U802" H 7630 5646 50  0000 L CNN
F 1 "DG211CJD" H 7630 5555 50  0000 L CNN
F 2 "" H 7350 5500 50  0001 C CNN
F 3 "http://pdf.datasheetcatalog.com/datasheets/70/494502_DS.pdf" H 7350 5600 50  0001 C CNN
	5    7350 5600
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:DG211CJD U802
U 1 1 5E3B05D5
P 5400 1100
F 0 "U802" V 5354 1230 50  0000 L CNN
F 1 "DG211CJD" V 5445 1230 50  0000 L CNN
F 2 "" H 5400 1000 50  0001 C CNN
F 3 "http://pdf.datasheetcatalog.com/datasheets/70/494502_DS.pdf" H 5400 1100 50  0001 C CNN
	1    5400 1100
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 1250 4500 1250
Wire Wire Line
	4500 1250 4500 750 
Wire Wire Line
	4500 750  5400 750 
Wire Wire Line
	5400 750  5400 800 
Wire Wire Line
	4100 1400 4500 1400
Wire Wire Line
	4500 1400 4500 1600
Wire Wire Line
	4500 1600 5400 1600
Wire Wire Line
	5400 1600 5400 1650
Wire Wire Line
	5400 1400 5400 1450
Wire Wire Line
	5400 1450 6050 1450
Wire Wire Line
	6050 1450 6050 2300
Wire Wire Line
	6050 2300 5400 2300
Wire Wire Line
	5400 2300 5400 2250
Text HLabel 5100 1100 0    50   Input ~ 0
FGPA_SW_IN
Text HLabel 5100 1950 0    50   Input ~ 0
FGPA_SW_IR-
Wire Wire Line
	5400 2350 5400 2300
Connection ~ 5400 2300
Text HLabel 5100 2650 0    50   Input ~ 0
FGPA_SW_ID
Wire Wire Line
	5400 2950 5400 3000
Wire Wire Line
	5400 3400 5400 3350
Wire Wire Line
	5400 3350 6050 3350
Wire Wire Line
	6050 3350 6050 2300
Connection ~ 6050 2300
Wire Wire Line
	5400 4000 5400 4050
Wire Wire Line
	5400 4050 4300 4050
Wire Wire Line
	4300 1550 4100 1550
Text HLabel 5100 3700 0    50   Input ~ 0
FGPA_SW_IR+
$Comp
L Amplifier_Operational:TL071 U804
U 1 1 5E3D55F5
P 3750 5200
F 0 "U804" H 3800 5450 50  0000 L CNN
F 1 "TL071" H 3800 5350 50  0000 L CNN
F 2 "" H 3800 5250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tl071.pdf" H 3900 5350 50  0001 C CNN
	1    3750 5200
	1    0    0    -1  
$EndComp
$Comp
L Comparator:LT1116 U807
U 1 1 5E3D6F02
P 8050 2300
F 0 "U807" H 8350 2650 50  0000 L CNN
F 1 "LT1116" H 8300 2550 50  0000 L CNN
F 2 "" H 8050 2300 50  0001 C CNN
F 3 "https://www.analog.com/media/en/technical-documentation/data-sheets/1116fc.pdf" H 8050 2300 50  0001 C CNN
	1    8050 2300
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:LM399H U803
U 1 1 5E3D78A3
P 1750 5700
F 0 "U803" H 1978 5746 50  0000 L CNN
F 1 "LM399H" H 1978 5655 50  0000 L CNN
F 2 "" H 850 6150 50  0001 C CNN
F 3 "" H 850 6150 50  0001 C CNN
	1    1750 5700
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:OPA140 U806
U 1 1 5E3DF6B7
P 6850 2200
F 0 "U806" H 7000 2450 50  0000 L CNN
F 1 "OPA140" H 6900 2350 50  0000 L CNN
F 2 "" H 6900 2250 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm741.pdf" H 7000 2350 50  0001 C CNN
	1    6850 2200
	1    0    0    -1  
$EndComp
NoConn ~ 6850 2500
NoConn ~ 6950 2500
$Comp
L ETH1CDMM1:AGNDF #PWR0807
U 1 1 5E3E67FC
P 6550 2100
F 0 "#PWR0807" H 6550 1850 50  0001 C CNN
F 1 "AGNDF" V 6555 1972 50  0000 R CNN
F 2 "" H 6550 2100 50  0001 C CNN
F 3 "" H 6550 2100 50  0001 C CNN
	1    6550 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	6050 2300 6550 2300
$Comp
L Device:C C802
U 1 1 5E3E8F7C
P 6800 3350
F 0 "C802" V 6548 3350 50  0000 C CNN
F 1 "2n2" V 6639 3350 50  0000 C CNN
F 2 "" H 6838 3200 50  0001 C CNN
F 3 "~" H 6800 3350 50  0001 C CNN
	1    6800 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 3000 7250 2200
Wire Wire Line
	7250 2200 7150 2200
Wire Wire Line
	5400 3000 7250 3000
Wire Wire Line
	6650 3350 6050 3350
Connection ~ 6050 3350
Wire Wire Line
	6950 3350 7250 3350
Wire Wire Line
	7250 3350 7250 3000
Connection ~ 7250 3000
$Comp
L ETH1CDMM1:AGNDF #PWR0810
U 1 1 5E3F3081
P 8050 2600
F 0 "#PWR0810" H 8050 2350 50  0001 C CNN
F 1 "AGNDF" H 8055 2427 50  0000 C CNN
F 2 "" H 8050 2600 50  0001 C CNN
F 3 "" H 8050 2600 50  0001 C CNN
	1    8050 2600
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:AGNDF #PWR0811
U 1 1 5E3F334E
P 8150 2000
F 0 "#PWR0811" H 8150 1750 50  0001 C CNN
F 1 "AGNDF" H 8155 1827 50  0000 C CNN
F 2 "" H 8150 2000 50  0001 C CNN
F 3 "" H 8150 2000 50  0001 C CNN
	1    8150 2000
	-1   0    0    1   
$EndComp
$Comp
L ETH1CDMM1:+5VF #PWR0809
U 1 1 5E3F5241
P 7950 1750
F 0 "#PWR0809" H 7950 1600 50  0001 C CNN
F 1 "+5VF" H 7965 1923 50  0000 C CNN
F 2 "" H 7950 1750 50  0001 C CNN
F 3 "" H 7950 1750 50  0001 C CNN
	1    7950 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7950 1750 7950 2000
$Comp
L ETH1CDMM1:AGNDF #PWR0808
U 1 1 5E3F6E05
P 7650 2600
F 0 "#PWR0808" H 7650 2350 50  0001 C CNN
F 1 "AGNDF" H 7655 2427 50  0000 C CNN
F 2 "" H 7650 2600 50  0001 C CNN
F 3 "" H 7650 2600 50  0001 C CNN
	1    7650 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 2600 7650 2400
Wire Wire Line
	7650 2400 7750 2400
Wire Wire Line
	7750 2200 7250 2200
Connection ~ 7250 2200
NoConn ~ 8350 2200
Wire Wire Line
	4300 1550 4300 4050
Wire Wire Line
	8350 2400 8400 2400
Text HLabel 8400 2400 2    50   Output ~ 0
ADC_COMP
$Comp
L ETH1CDMM1:AGNDF #PWR0803
U 1 1 5E42FC61
P 1750 5950
F 0 "#PWR0803" H 1750 5700 50  0001 C CNN
F 1 "AGNDF" H 1755 5777 50  0000 C CNN
F 2 "" H 1750 5950 50  0001 C CNN
F 3 "" H 1750 5950 50  0001 C CNN
	1    1750 5950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 5900 1850 5950
Wire Wire Line
	1850 5950 1750 5950
Wire Wire Line
	1650 5950 1650 5900
Connection ~ 1750 5950
Wire Wire Line
	1750 5950 1650 5950
$Comp
L ETH1CDMM1:+15VF #PWR0802
U 1 1 5E431C1D
P 1650 5500
F 0 "#PWR0802" H 1650 5350 50  0001 C CNN
F 1 "+15VF" H 1665 5673 50  0000 C CNN
F 2 "" H 1650 5500 50  0001 C CNN
F 3 "" H 1650 5500 50  0001 C CNN
	1    1650 5500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R801
U 1 1 5E43326B
P 2200 5450
F 0 "R801" V 1993 5450 50  0000 C CNN
F 1 "R" V 2084 5450 50  0000 C CNN
F 2 "" V 2130 5450 50  0001 C CNN
F 3 "~" H 2200 5450 50  0001 C CNN
	1    2200 5450
	0    1    1    0   
$EndComp
Wire Wire Line
	2050 5450 1850 5450
Wire Wire Line
	1850 5450 1850 5500
$Comp
L Device:C C801
U 1 1 5E4356FE
P 2500 5700
F 0 "C801" H 2615 5746 50  0000 L CNN
F 1 "C" H 2615 5655 50  0000 L CNN
F 2 "" H 2538 5550 50  0001 C CNN
F 3 "~" H 2500 5700 50  0001 C CNN
	1    2500 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 5550 2500 5450
Wire Wire Line
	2500 5450 2350 5450
Wire Wire Line
	1850 5950 2500 5950
Wire Wire Line
	2500 5950 2500 5850
Connection ~ 1850 5950
Wire Wire Line
	1850 5100 1850 5450
Connection ~ 1850 5450
$Comp
L Device:R R802
U 1 1 5E43CAB7
P 3050 5500
F 0 "R802" H 3120 5546 50  0000 L CNN
F 1 "6k95" H 3120 5455 50  0000 L CNN
F 2 "" V 2980 5500 50  0001 C CNN
F 3 "~" H 3050 5500 50  0001 C CNN
	1    3050 5500
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:+15VF #PWR0805
U 1 1 5E44B139
P 3650 4900
F 0 "#PWR0805" H 3650 4750 50  0001 C CNN
F 1 "+15VF" H 3665 5073 50  0000 C CNN
F 2 "" H 3650 4900 50  0001 C CNN
F 3 "" H 3650 4900 50  0001 C CNN
	1    3650 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5300 3400 5300
Wire Wire Line
	3050 5300 3050 5350
$Comp
L Device:R R803
U 1 1 5E451054
P 3650 6050
F 0 "R803" V 3443 6050 50  0000 C CNN
F 1 "3k01" V 3534 6050 50  0000 C CNN
F 2 "" V 3580 6050 50  0001 C CNN
F 3 "~" H 3650 6050 50  0001 C CNN
	1    3650 6050
	0    1    1    0   
$EndComp
$Comp
L ETH1CDMM1:AGNDF #PWR0806
U 1 1 5E4520D8
P 3650 5500
F 0 "#PWR0806" H 3650 5250 50  0001 C CNN
F 1 "AGNDF" H 3655 5327 50  0000 C CNN
F 2 "" H 3650 5500 50  0001 C CNN
F 3 "" H 3650 5500 50  0001 C CNN
	1    3650 5500
	1    0    0    -1  
$EndComp
NoConn ~ 3750 5500
NoConn ~ 3850 5500
Wire Wire Line
	3500 6050 3400 6050
Wire Wire Line
	3400 6050 3400 5300
Connection ~ 3400 5300
Wire Wire Line
	3400 5300 3050 5300
Wire Wire Line
	3800 6050 4100 6050
Wire Wire Line
	4100 6050 4100 5200
Wire Wire Line
	4100 5200 4050 5200
$Comp
L Device:R R804
U 1 1 5E458119
P 3700 4550
F 0 "R804" V 3493 4550 50  0000 C CNN
F 1 "1k96" V 3584 4550 50  0000 C CNN
F 2 "" V 3630 4550 50  0001 C CNN
F 3 "~" H 3700 4550 50  0001 C CNN
	1    3700 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 4550 3400 4550
Connection ~ 3400 5100
Wire Wire Line
	3400 5100 3450 5100
Wire Wire Line
	3850 4550 4100 4550
Wire Wire Line
	4100 4550 4100 5200
Connection ~ 4100 5200
$Comp
L ETH1CDMM1:AGNDF #PWR0804
U 1 1 5E45C679
P 3050 5650
F 0 "#PWR0804" H 3050 5400 50  0001 C CNN
F 1 "AGNDF" H 3055 5477 50  0000 C CNN
F 2 "" H 3050 5650 50  0001 C CNN
F 3 "" H 3050 5650 50  0001 C CNN
	1    3050 5650
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:AD8676 U805
U 3 1 5E45E9E4
P 8200 5650
F 0 "U805" H 8328 5696 50  0000 L CNN
F 1 "AD8676" H 8328 5605 50  0000 L CNN
F 2 "" H 8200 5800 50  0001 C CNN
F 3 "" H 8200 5800 50  0001 C CNN
	3    8200 5650
	1    0    0    -1  
$EndComp
$Comp
L Analog_Switch:DG419xY U810
U 1 1 5E46086F
P 3300 6600
F 0 "U810" H 3200 6850 50  0000 L CNN
F 1 "DG419xY" H 3150 6750 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 3300 6300 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/DG417-DG419.pdf" H 3300 6600 50  0001 C CNN
	1    3300 6600
	-1   0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:LT5400-5k-1k U808
U 1 1 5E476E36
P 1750 6900
F 0 "U808" H 1750 7465 50  0000 C CNN
F 1 "LT5400-5k-1k" H 1750 7374 50  0000 C CNN
F 2 "" H 1750 7000 50  0001 C CNN
F 3 "" H 1750 7000 50  0001 C CNN
	1    1750 6900
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:AGNDF #PWR0812
U 1 1 5E478B64
P 1400 7250
F 0 "#PWR0812" H 1400 7000 50  0001 C CNN
F 1 "AGNDF" V 1405 7122 50  0000 R CNN
F 2 "" H 1400 7250 50  0001 C CNN
F 3 "" H 1400 7250 50  0001 C CNN
	1    1400 7250
	0    1    1    0   
$EndComp
Wire Wire Line
	1400 6600 1250 6600
Wire Wire Line
	1250 6600 1250 7050
Wire Wire Line
	1250 7050 1400 7050
Wire Wire Line
	1400 6900 1350 6900
Wire Wire Line
	1350 6900 1350 6750
Wire Wire Line
	1350 6750 1400 6750
Wire Wire Line
	2100 6750 2200 6750
Wire Wire Line
	2200 6750 2200 6600
Wire Wire Line
	2200 6600 2100 6600
$Comp
L ETH1CDMM1:AGNDF #PWR0815
U 1 1 5E480564
P 2100 6900
F 0 "#PWR0815" H 2100 6650 50  0001 C CNN
F 1 "AGNDF" V 2105 6772 50  0000 R CNN
F 2 "" H 2100 6900 50  0001 C CNN
F 3 "" H 2100 6900 50  0001 C CNN
	1    2100 6900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2500 5450 2850 5450
Wire Wire Line
	2850 5450 2850 6200
Wire Wire Line
	2850 7050 2100 7050
Connection ~ 2500 5450
Connection ~ 2200 6600
Wire Wire Line
	2200 6600 3000 6600
Wire Wire Line
	3000 6800 2850 6800
Connection ~ 2850 6800
Wire Wire Line
	2850 6800 2850 7050
Text HLabel 1400 7550 0    50   Input ~ 0
FPGA_SW_VRH
Wire Wire Line
	4800 6000 6450 6000
$Comp
L Power_Supervisor:TL7712A U809
U 1 1 5E3EA1E8
P 2050 3700
F 0 "U809" H 2350 4150 50  0000 C CNN
F 1 "TL7712A" H 2350 4050 50  0000 C CNN
F 2 "" H 2050 3700 50  0001 C CNN
F 3 "http://www.ti.com.cn/cn/lit/ds/symlink/tl7705a.pdf" H 2050 3700 50  0001 C CNN
	1    2050 3700
	1    0    0    -1  
$EndComp
NoConn ~ 2550 3500
$Comp
L ETH1CDMM1:+15VF #PWR0813
U 1 1 5E3EF87C
P 2050 3200
F 0 "#PWR0813" H 2050 3050 50  0001 C CNN
F 1 "+15VF" H 2065 3373 50  0000 C CNN
F 2 "" H 2050 3200 50  0001 C CNN
F 3 "" H 2050 3200 50  0001 C CNN
	1    2050 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 3300 2050 3250
Wire Wire Line
	2050 3250 1500 3250
Wire Wire Line
	1500 3250 1500 3500
Wire Wire Line
	1500 3500 1550 3500
Connection ~ 2050 3250
Wire Wire Line
	2050 3250 2050 3200
$Comp
L Device:R R805
U 1 1 5E402385
P 1200 3500
F 0 "R805" H 1270 3546 50  0000 L CNN
F 1 "10k" H 1270 3455 50  0000 L CNN
F 2 "" V 1130 3500 50  0001 C CNN
F 3 "~" H 1200 3500 50  0001 C CNN
	1    1200 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 3700 1200 3700
Wire Wire Line
	1200 3700 1200 3650
Wire Wire Line
	1200 3350 1200 3250
Wire Wire Line
	1200 3250 1500 3250
Connection ~ 1500 3250
$Comp
L Device:C C803
U 1 1 5E412AF8
P 1200 4100
F 0 "C803" H 1315 4146 50  0000 L CNN
F 1 "1u" H 1315 4055 50  0000 L CNN
F 2 "" H 1238 3950 50  0001 C CNN
F 3 "~" H 1200 4100 50  0001 C CNN
	1    1200 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 3950 1200 3900
Wire Wire Line
	1200 3900 1550 3900
$Comp
L ETH1CDMM1:AGNDF #PWR0814
U 1 1 5E41A6D9
P 2050 4350
F 0 "#PWR0814" H 2050 4100 50  0001 C CNN
F 1 "AGNDF" H 2055 4177 50  0000 C CNN
F 2 "" H 2050 4350 50  0001 C CNN
F 3 "" H 2050 4350 50  0001 C CNN
	1    2050 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 4250 1200 4300
Wire Wire Line
	1200 4300 2050 4300
Wire Wire Line
	2050 4300 2050 4100
Connection ~ 2050 4300
Wire Wire Line
	2050 4350 2050 4300
$Comp
L Device:C C804
U 1 1 5E42BB96
P 2600 4100
F 0 "C804" H 2715 4146 50  0000 L CNN
F 1 "1u" H 2715 4055 50  0000 L CNN
F 2 "" H 2638 3950 50  0001 C CNN
F 3 "~" H 2600 4100 50  0001 C CNN
	1    2600 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 4300 2600 4300
Wire Wire Line
	2600 4300 2600 4250
Wire Wire Line
	2600 3900 2550 3900
Wire Wire Line
	2600 3950 2600 3900
$Comp
L Device:R R806
U 1 1 5E4F934F
P 3000 4100
F 0 "R806" H 3070 4146 50  0000 L CNN
F 1 "10k" H 3070 4055 50  0000 L CNN
F 2 "" V 2930 4100 50  0001 C CNN
F 3 "~" H 3000 4100 50  0001 C CNN
	1    3000 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4300 3000 4300
Wire Wire Line
	3000 4300 3000 4250
Connection ~ 2600 4300
$Comp
L Device:R R807
U 1 1 5E507753
P 3400 4100
F 0 "R807" H 3470 4146 50  0000 L CNN
F 1 "10k" H 3470 4055 50  0000 L CNN
F 2 "" V 3330 4100 50  0001 C CNN
F 3 "~" H 3400 4100 50  0001 C CNN
	1    3400 4100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 3950 3400 3700
Wire Wire Line
	3400 4250 3400 4550
Connection ~ 3000 3700
Wire Wire Line
	3000 3700 2550 3700
Wire Wire Line
	3000 3950 3000 3700
Wire Wire Line
	3400 3700 3350 3700
$Comp
L Device:D D801
U 1 1 5E44E4FD
P 3200 3700
F 0 "D801" H 3200 3484 50  0000 C CNN
F 1 "1N4148" H 3200 3575 50  0000 C CNN
F 2 "" H 3200 3700 50  0001 C CNN
F 3 "~" H 3200 3700 50  0001 C CNN
	1    3200 3700
	-1   0    0    1   
$EndComp
Wire Wire Line
	3050 3700 3000 3700
Wire Wire Line
	1850 5100 3400 5100
Wire Wire Line
	3400 4550 3400 5100
Text HLabel 1150 3700 0    50   Input ~ 0
MCU_ADC_~RST
Connection ~ 3400 4550
Wire Wire Line
	3550 6900 3550 7150
Text Label 4300 6450 3    50   ~ 0
VREF+
Text Label 6850 6900 2    50   ~ 0
VREF-
Connection ~ 6450 6900
Wire Wire Line
	6450 6900 6850 6900
Wire Wire Line
	4300 6800 4300 6450
Connection ~ 4800 6350
Wire Wire Line
	6450 6900 6400 6900
Wire Wire Line
	6450 6000 6450 6900
Wire Wire Line
	4800 6350 4800 6000
Wire Wire Line
	5750 7000 5800 7000
Wire Wire Line
	5750 7050 5750 7000
$Comp
L ETH1CDMM1:AGNDF #PWR0817
U 1 1 5E3CD606
P 5750 7050
F 0 "#PWR0817" H 5750 6800 50  0001 C CNN
F 1 "AGNDF" H 5755 6877 50  0000 C CNN
F 2 "" H 5750 7050 50  0001 C CNN
F 3 "" H 5750 7050 50  0001 C CNN
	1    5750 7050
	1    0    0    -1  
$EndComp
Connection ~ 5600 6800
Wire Wire Line
	5800 6800 5600 6800
Wire Wire Line
	5600 6500 5600 6650
Connection ~ 5600 6500
Wire Wire Line
	5550 6500 5600 6500
Wire Wire Line
	5600 6650 5600 6800
Connection ~ 5600 6650
Wire Wire Line
	5550 6650 5600 6650
Wire Wire Line
	5600 6800 5550 6800
Wire Wire Line
	5600 6350 5600 6500
Wire Wire Line
	5600 6350 5550 6350
Wire Wire Line
	4800 6350 4850 6350
Wire Wire Line
	4800 6500 4800 6350
Wire Wire Line
	4850 6500 4800 6500
Wire Wire Line
	4800 7000 4850 7000
Wire Wire Line
	4800 7100 4800 7000
$Comp
L ETH1CDMM1:AGNDF #PWR0816
U 1 1 5E3B4577
P 4800 7100
F 0 "#PWR0816" H 4800 6850 50  0001 C CNN
F 1 "AGNDF" H 4805 6927 50  0000 C CNN
F 2 "" H 4800 7100 50  0001 C CNN
F 3 "" H 4800 7100 50  0001 C CNN
	1    4800 7100
	1    0    0    -1  
$EndComp
Connection ~ 4800 6800
Wire Wire Line
	4800 6650 4800 6800
Wire Wire Line
	4850 6650 4800 6650
Connection ~ 4300 6800
Wire Wire Line
	4850 6800 4800 6800
$Comp
L ETH1CDMM1:LT5400-10k-10k U811
U 1 1 5E3AB8F0
P 5200 6650
F 0 "U811" H 5200 7215 50  0000 C CNN
F 1 "LT5400-10k-10k" H 5200 7124 50  0000 C CNN
F 2 "" H 5200 6750 50  0001 C CNN
F 3 "" H 5200 6750 50  0001 C CNN
	1    5200 6650
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 6800 4250 6800
Wire Wire Line
	4300 7150 4300 6800
Wire Wire Line
	3550 7150 4300 7150
Wire Wire Line
	3650 6900 3550 6900
$Comp
L ETH1CDMM1:AD8676 U805
U 2 1 5E45E5A5
P 6050 6900
F 0 "U805" H 6100 6550 50  0000 C CNN
F 1 "AD8676" H 6100 6650 50  0000 C CNN
F 2 "" H 6050 7050 50  0001 C CNN
F 3 "" H 6050 7050 50  0001 C CNN
	2    6050 6900
	1    0    0    1   
$EndComp
$Comp
L ETH1CDMM1:AD8676 U805
U 1 1 5E45E095
P 3900 6800
F 0 "U805" H 3950 7167 50  0000 C CNN
F 1 "AD8676" H 3950 7076 50  0000 C CNN
F 2 "" H 3900 6950 50  0001 C CNN
F 3 "" H 3900 6950 50  0001 C CNN
	1    3900 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 6700 3600 6700
Wire Wire Line
	1400 7550 3300 7550
Wire Wire Line
	3300 7550 3300 7000
$Comp
L ETH1CDMM1:+15VF #PWR0818
U 1 1 5E5E25DF
P 9100 5050
F 0 "#PWR0818" H 9100 4900 50  0001 C CNN
F 1 "+15VF" H 9115 5223 50  0000 C CNN
F 2 "" H 9100 5050 50  0001 C CNN
F 3 "" H 9100 5050 50  0001 C CNN
	1    9100 5050
	1    0    0    -1  
$EndComp
$Comp
L Analog_Switch:DG419xY U810
U 2 1 5E5E2DE0
P 8950 5600
F 0 "U810" H 8500 5650 50  0000 L CNN
F 1 "DG419xY" H 8450 5550 50  0000 L CNN
F 2 "Package_SO:SOIC-8_3.9x4.9mm_P1.27mm" H 8950 5300 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/DG417-DG419.pdf" H 8950 5600 50  0001 C CNN
	2    8950 5600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9100 5050 9100 5100
Wire Wire Line
	9100 5100 8950 5100
$Comp
L ETH1CDMM1:+5VF #PWR0826
U 1 1 5E604217
P 8700 5050
F 0 "#PWR0826" H 8700 4900 50  0001 C CNN
F 1 "+5VF" H 8715 5223 50  0000 C CNN
F 2 "" H 8700 5050 50  0001 C CNN
F 3 "" H 8700 5050 50  0001 C CNN
	1    8700 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 5050 8700 5100
Wire Wire Line
	8700 5100 8850 5100
$Comp
L ETH1CDMM1:-15VF #PWR0827
U 1 1 5E60BAC4
P 8700 6150
F 0 "#PWR0827" H 8700 6000 50  0001 C CNN
F 1 "-15VF" H 8715 6323 50  0000 C CNN
F 2 "" H 8700 6150 50  0001 C CNN
F 3 "" H 8700 6150 50  0001 C CNN
	1    8700 6150
	-1   0    0    1   
$EndComp
Wire Wire Line
	8700 6150 8700 6100
Wire Wire Line
	8700 6100 8850 6100
$Comp
L ETH1CDMM1:AGNDF #PWR0828
U 1 1 5E6136A6
P 9100 6150
F 0 "#PWR0828" H 9100 5900 50  0001 C CNN
F 1 "AGNDF" H 9105 5977 50  0000 C CNN
F 2 "" H 9100 6150 50  0001 C CNN
F 3 "" H 9100 6150 50  0001 C CNN
	1    9100 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 6100 8950 6100
Wire Wire Line
	9100 6150 9100 6100
$Comp
L ETH1CDMM1:+15VF #PWR0824
U 1 1 5E6239AE
P 8200 5350
F 0 "#PWR0824" H 8200 5200 50  0001 C CNN
F 1 "+15VF" H 8215 5523 50  0000 C CNN
F 2 "" H 8200 5350 50  0001 C CNN
F 3 "" H 8200 5350 50  0001 C CNN
	1    8200 5350
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:-15VF #PWR0825
U 1 1 5E624063
P 8200 5950
F 0 "#PWR0825" H 8200 5800 50  0001 C CNN
F 1 "-15VF" H 8215 6123 50  0000 C CNN
F 2 "" H 8200 5950 50  0001 C CNN
F 3 "" H 8200 5950 50  0001 C CNN
	1    8200 5950
	-1   0    0    1   
$EndComp
$Comp
L ETH1CDMM1:-15VF #PWR0823
U 1 1 5E62447B
P 7600 6150
F 0 "#PWR0823" H 7600 6000 50  0001 C CNN
F 1 "-15VF" H 7615 6323 50  0000 C CNN
F 2 "" H 7600 6150 50  0001 C CNN
F 3 "" H 7600 6150 50  0001 C CNN
	1    7600 6150
	-1   0    0    1   
$EndComp
Wire Wire Line
	7600 6150 7600 6100
Wire Wire Line
	7600 6100 7450 6100
$Comp
L ETH1CDMM1:AGNDF #PWR0821
U 1 1 5E62B88E
P 7200 6150
F 0 "#PWR0821" H 7200 5900 50  0001 C CNN
F 1 "AGNDF" H 7205 5977 50  0000 C CNN
F 2 "" H 7200 6150 50  0001 C CNN
F 3 "" H 7200 6150 50  0001 C CNN
	1    7200 6150
	1    0    0    -1  
$EndComp
Wire Wire Line
	7200 6150 7200 6100
Wire Wire Line
	7200 6100 7350 6100
$Comp
L ETH1CDMM1:+15VF #PWR0822
U 1 1 5E63363D
P 7350 5100
F 0 "#PWR0822" H 7350 4950 50  0001 C CNN
F 1 "+15VF" H 7365 5273 50  0000 C CNN
F 2 "" H 7350 5100 50  0001 C CNN
F 3 "" H 7350 5100 50  0001 C CNN
	1    7350 5100
	1    0    0    -1  
$EndComp
Wire Wire Line
	1150 3700 1200 3700
Connection ~ 1200 3700
$Comp
L Device:C C807
U 1 1 5E3FAB35
P 9700 5950
F 0 "C807" H 9815 5996 50  0000 L CNN
F 1 "100n" H 9815 5905 50  0000 L CNN
F 2 "" H 9738 5800 50  0001 C CNN
F 3 "~" H 9700 5950 50  0001 C CNN
	1    9700 5950
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:+15VF #PWR0833
U 1 1 5E3FB56F
P 9700 5800
F 0 "#PWR0833" H 9700 5650 50  0001 C CNN
F 1 "+15VF" H 9715 5973 50  0000 C CNN
F 2 "" H 9700 5800 50  0001 C CNN
F 3 "" H 9700 5800 50  0001 C CNN
	1    9700 5800
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:AGNDF #PWR0834
U 1 1 5E3FBF08
P 9700 6100
F 0 "#PWR0834" H 9700 5850 50  0001 C CNN
F 1 "AGNDF" H 9705 5927 50  0000 C CNN
F 2 "" H 9700 6100 50  0001 C CNN
F 3 "" H 9700 6100 50  0001 C CNN
	1    9700 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C810
U 1 1 5E3FE362
P 10250 5950
F 0 "C810" H 10365 5996 50  0000 L CNN
F 1 "100n" H 10365 5905 50  0000 L CNN
F 2 "" H 10288 5800 50  0001 C CNN
F 3 "~" H 10250 5950 50  0001 C CNN
	1    10250 5950
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:+15VF #PWR0839
U 1 1 5E3FE368
P 10250 5800
F 0 "#PWR0839" H 10250 5650 50  0001 C CNN
F 1 "+15VF" H 10265 5973 50  0000 C CNN
F 2 "" H 10250 5800 50  0001 C CNN
F 3 "" H 10250 5800 50  0001 C CNN
	1    10250 5800
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:AGNDF #PWR0840
U 1 1 5E3FE36E
P 10250 6100
F 0 "#PWR0840" H 10250 5850 50  0001 C CNN
F 1 "AGNDF" H 10255 5927 50  0000 C CNN
F 2 "" H 10250 6100 50  0001 C CNN
F 3 "" H 10250 6100 50  0001 C CNN
	1    10250 6100
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:+15VF #PWR0819
U 1 1 5E41182E
P 6750 1900
F 0 "#PWR0819" H 6750 1750 50  0001 C CNN
F 1 "+15VF" H 6765 2073 50  0000 C CNN
F 2 "" H 6750 1900 50  0001 C CNN
F 3 "" H 6750 1900 50  0001 C CNN
	1    6750 1900
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:-15VF #PWR0820
U 1 1 5E4164BE
P 6750 2500
F 0 "#PWR0820" H 6750 2350 50  0001 C CNN
F 1 "-15VF" H 6765 2673 50  0000 C CNN
F 2 "" H 6750 2500 50  0001 C CNN
F 3 "" H 6750 2500 50  0001 C CNN
	1    6750 2500
	-1   0    0    1   
$EndComp
$Comp
L Device:C C813
U 1 1 5E43953C
P 10800 5950
F 0 "C813" H 10915 5996 50  0000 L CNN
F 1 "100n" H 10915 5905 50  0000 L CNN
F 2 "" H 10838 5800 50  0001 C CNN
F 3 "~" H 10800 5950 50  0001 C CNN
	1    10800 5950
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:+15VF #PWR0845
U 1 1 5E439542
P 10800 5800
F 0 "#PWR0845" H 10800 5650 50  0001 C CNN
F 1 "+15VF" H 10815 5973 50  0000 C CNN
F 2 "" H 10800 5800 50  0001 C CNN
F 3 "" H 10800 5800 50  0001 C CNN
	1    10800 5800
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:AGNDF #PWR0846
U 1 1 5E439548
P 10800 6100
F 0 "#PWR0846" H 10800 5850 50  0001 C CNN
F 1 "AGNDF" H 10805 5927 50  0000 C CNN
F 2 "" H 10800 6100 50  0001 C CNN
F 3 "" H 10800 6100 50  0001 C CNN
	1    10800 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C806
U 1 1 5E44AF04
P 9700 5150
F 0 "C806" H 9815 5196 50  0000 L CNN
F 1 "100n" H 9815 5105 50  0000 L CNN
F 2 "" H 9738 5000 50  0001 C CNN
F 3 "~" H 9700 5150 50  0001 C CNN
	1    9700 5150
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:+15VF #PWR0831
U 1 1 5E44AF0A
P 9700 5000
F 0 "#PWR0831" H 9700 4850 50  0001 C CNN
F 1 "+15VF" H 9715 5173 50  0000 C CNN
F 2 "" H 9700 5000 50  0001 C CNN
F 3 "" H 9700 5000 50  0001 C CNN
	1    9700 5000
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:AGNDF #PWR0832
U 1 1 5E44AF10
P 9700 5300
F 0 "#PWR0832" H 9700 5050 50  0001 C CNN
F 1 "AGNDF" H 9705 5127 50  0000 C CNN
F 2 "" H 9700 5300 50  0001 C CNN
F 3 "" H 9700 5300 50  0001 C CNN
	1    9700 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C809
U 1 1 5E44AF16
P 10250 5150
F 0 "C809" H 10365 5196 50  0000 L CNN
F 1 "100n" H 10365 5105 50  0000 L CNN
F 2 "" H 10288 5000 50  0001 C CNN
F 3 "~" H 10250 5150 50  0001 C CNN
	1    10250 5150
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:+15VF #PWR0837
U 1 1 5E44AF1C
P 10250 5000
F 0 "#PWR0837" H 10250 4850 50  0001 C CNN
F 1 "+15VF" H 10265 5173 50  0000 C CNN
F 2 "" H 10250 5000 50  0001 C CNN
F 3 "" H 10250 5000 50  0001 C CNN
	1    10250 5000
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:AGNDF #PWR0838
U 1 1 5E44AF22
P 10250 5300
F 0 "#PWR0838" H 10250 5050 50  0001 C CNN
F 1 "AGNDF" H 10255 5127 50  0000 C CNN
F 2 "" H 10250 5300 50  0001 C CNN
F 3 "" H 10250 5300 50  0001 C CNN
	1    10250 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C812
U 1 1 5E44AF28
P 10800 5150
F 0 "C812" H 10915 5196 50  0000 L CNN
F 1 "100n" H 10915 5105 50  0000 L CNN
F 2 "" H 10838 5000 50  0001 C CNN
F 3 "~" H 10800 5150 50  0001 C CNN
	1    10800 5150
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:+15VF #PWR0843
U 1 1 5E44AF2E
P 10800 5000
F 0 "#PWR0843" H 10800 4850 50  0001 C CNN
F 1 "+15VF" H 10815 5173 50  0000 C CNN
F 2 "" H 10800 5000 50  0001 C CNN
F 3 "" H 10800 5000 50  0001 C CNN
	1    10800 5000
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:AGNDF #PWR0844
U 1 1 5E44AF34
P 10800 5300
F 0 "#PWR0844" H 10800 5050 50  0001 C CNN
F 1 "AGNDF" H 10805 5127 50  0000 C CNN
F 2 "" H 10800 5300 50  0001 C CNN
F 3 "" H 10800 5300 50  0001 C CNN
	1    10800 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C805
U 1 1 5E464024
P 9700 4350
F 0 "C805" H 9815 4396 50  0000 L CNN
F 1 "100n" H 9815 4305 50  0000 L CNN
F 2 "" H 9738 4200 50  0001 C CNN
F 3 "~" H 9700 4350 50  0001 C CNN
	1    9700 4350
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:AGNDF #PWR0830
U 1 1 5E464030
P 9700 4500
F 0 "#PWR0830" H 9700 4250 50  0001 C CNN
F 1 "AGNDF" H 9705 4327 50  0000 C CNN
F 2 "" H 9700 4500 50  0001 C CNN
F 3 "" H 9700 4500 50  0001 C CNN
	1    9700 4500
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:-15VF #PWR0829
U 1 1 5E46BCF5
P 9700 4200
F 0 "#PWR0829" H 9700 4050 50  0001 C CNN
F 1 "-15VF" H 9715 4373 50  0000 C CNN
F 2 "" H 9700 4200 50  0001 C CNN
F 3 "" H 9700 4200 50  0001 C CNN
	1    9700 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C808
U 1 1 5E4727F7
P 10250 4350
F 0 "C808" H 10365 4396 50  0000 L CNN
F 1 "100n" H 10365 4305 50  0000 L CNN
F 2 "" H 10288 4200 50  0001 C CNN
F 3 "~" H 10250 4350 50  0001 C CNN
	1    10250 4350
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:AGNDF #PWR0836
U 1 1 5E4727FD
P 10250 4500
F 0 "#PWR0836" H 10250 4250 50  0001 C CNN
F 1 "AGNDF" H 10255 4327 50  0000 C CNN
F 2 "" H 10250 4500 50  0001 C CNN
F 3 "" H 10250 4500 50  0001 C CNN
	1    10250 4500
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:-15VF #PWR0835
U 1 1 5E472803
P 10250 4200
F 0 "#PWR0835" H 10250 4050 50  0001 C CNN
F 1 "-15VF" H 10265 4373 50  0000 C CNN
F 2 "" H 10250 4200 50  0001 C CNN
F 3 "" H 10250 4200 50  0001 C CNN
	1    10250 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C811
U 1 1 5E480E0C
P 10800 4350
F 0 "C811" H 10915 4396 50  0000 L CNN
F 1 "100n" H 10915 4305 50  0000 L CNN
F 2 "" H 10838 4200 50  0001 C CNN
F 3 "~" H 10800 4350 50  0001 C CNN
	1    10800 4350
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:AGNDF #PWR0842
U 1 1 5E480E12
P 10800 4500
F 0 "#PWR0842" H 10800 4250 50  0001 C CNN
F 1 "AGNDF" H 10805 4327 50  0000 C CNN
F 2 "" H 10800 4500 50  0001 C CNN
F 3 "" H 10800 4500 50  0001 C CNN
	1    10800 4500
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:+5VF #PWR0841
U 1 1 5E4885CE
P 10800 4200
F 0 "#PWR0841" H 10800 4050 50  0001 C CNN
F 1 "+5VF" H 10815 4373 50  0000 C CNN
F 2 "" H 10800 4200 50  0001 C CNN
F 3 "" H 10800 4200 50  0001 C CNN
	1    10800 4200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R808
U 1 1 5E763344
P 4450 5200
F 0 "R808" V 4243 5200 50  0000 C CNN
F 1 "R" V 4334 5200 50  0000 C CNN
F 2 "" V 4380 5200 50  0001 C CNN
F 3 "~" H 4450 5200 50  0001 C CNN
	1    4450 5200
	0    1    1    0   
$EndComp
Connection ~ 2850 6200
Wire Wire Line
	2850 6200 2850 6800
Wire Wire Line
	4300 5200 4200 5200
Text HLabel 4650 4550 2    50   Output ~ 0
+10VREF
Wire Wire Line
	4300 6800 4800 6800
Wire Wire Line
	4600 5200 4650 5200
Wire Wire Line
	4650 5200 4650 6200
Wire Wire Line
	2850 6200 4650 6200
Wire Wire Line
	4200 4550 4650 4550
Connection ~ 4200 5200
Wire Wire Line
	4200 5200 4100 5200
Wire Wire Line
	4200 4550 4200 5200
$EndSCHEMATC