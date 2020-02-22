EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 6 14
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
L Connector_Generic:Conn_02x05_Odd_Even J601
U 1 1 5E4C454C
P 1600 7300
F 0 "J601" H 1650 7717 50  0000 C CNN
F 1 "Conn_02x05" H 1650 7626 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 1600 7300 50  0001 C CNN
F 3 "~" H 1600 7300 50  0001 C CNN
	1    1600 7300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VP #PWR0611
U 1 1 5F0234DF
P 4550 750
F 0 "#PWR0611" H 4700 700 50  0001 C CNN
F 1 "+3.3VP" H 4570 893 50  0000 C CNN
F 2 "" H 4550 750 50  0001 C CNN
F 3 "" H 4550 750 50  0001 C CNN
	1    4550 750 
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VP #PWR0616
U 1 1 5F0319DA
P 6450 750
F 0 "#PWR0616" H 6600 700 50  0001 C CNN
F 1 "+3.3VP" H 6470 893 50  0000 C CNN
F 2 "" H 6450 750 50  0001 C CNN
F 3 "" H 6450 750 50  0001 C CNN
	1    6450 750 
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VP #PWR0604
U 1 1 5F0388D4
P 2350 4350
F 0 "#PWR0604" H 2500 4300 50  0001 C CNN
F 1 "+3.3VP" H 2370 4493 50  0000 C CNN
F 2 "" H 2350 4350 50  0001 C CNN
F 3 "" H 2350 4350 50  0001 C CNN
	1    2350 4350
	1    0    0    -1  
$EndComp
$Comp
L Device:D D603
U 1 1 5F04252B
P 9150 2450
F 0 "D603" V 9250 2750 50  0000 C CNN
F 1 "CDBU0520" V 9150 2750 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-523" H 9150 2450 50  0001 C CNN
F 3 "~" H 9150 2450 50  0001 C CNN
	1    9150 2450
	0    1    -1   0   
$EndComp
$Comp
L Device:C C619
U 1 1 5F04AC1B
P 10300 5850
F 0 "C619" H 10415 5896 50  0000 L CNN
F 1 "100n" H 10415 5805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 10338 5700 50  0001 C CNN
F 3 "~" H 10300 5850 50  0001 C CNN
	1    10300 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 6000 10300 6050
Wire Wire Line
	10300 6050 10950 6050
Wire Wire Line
	10950 5650 10300 5650
Wire Wire Line
	10300 5650 10300 5700
$Comp
L Device:C C618
U 1 1 5F055FA9
P 9850 5850
F 0 "C618" H 9965 5896 50  0000 L CNN
F 1 "10u" H 9965 5805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9888 5700 50  0001 C CNN
F 3 "~" H 9850 5850 50  0001 C CNN
	1    9850 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 5700 9850 5650
Wire Wire Line
	9850 5650 10300 5650
Connection ~ 10300 5650
Wire Wire Line
	9850 6000 9850 6050
Wire Wire Line
	9850 6050 10300 6050
Connection ~ 10300 6050
$Comp
L Device:R R617
U 1 1 5F05E133
P 9650 5650
F 0 "R617" V 9443 5650 50  0000 C CNN
F 1 "100" V 9534 5650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 9580 5650 50  0001 C CNN
F 3 "~" H 9650 5650 50  0001 C CNN
	1    9650 5650
	0    1    1    0   
$EndComp
$Comp
L power:+1V2 #PWR0631
U 1 1 5F05F578
P 9450 5650
F 0 "#PWR0631" H 9450 5500 50  0001 C CNN
F 1 "+1V2" V 9450 5900 50  0000 C CNN
F 2 "" H 9450 5650 50  0001 C CNN
F 3 "" H 9450 5650 50  0001 C CNN
	1    9450 5650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9450 5650 9500 5650
Wire Wire Line
	9800 5650 9850 5650
Connection ~ 9850 5650
$Comp
L Device:C C602
U 1 1 5F08DC5F
P 3450 6450
F 0 "C602" H 3565 6496 50  0000 L CNN
F 1 "100n" H 3565 6405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3488 6300 50  0001 C CNN
F 3 "~" H 3450 6450 50  0001 C CNN
	1    3450 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C605
U 1 1 5F09968B
P 3900 6450
F 0 "C605" H 4015 6496 50  0000 L CNN
F 1 "100n" H 4015 6405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3938 6300 50  0001 C CNN
F 3 "~" H 3900 6450 50  0001 C CNN
	1    3900 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C607
U 1 1 5F09995F
P 4350 6450
F 0 "C607" H 4465 6496 50  0000 L CNN
F 1 "100n" H 4465 6405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4388 6300 50  0001 C CNN
F 3 "~" H 4350 6450 50  0001 C CNN
	1    4350 6450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C609
U 1 1 5F099C95
P 4800 6450
F 0 "C609" H 4915 6496 50  0000 L CNN
F 1 "100n" H 4915 6405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4838 6300 50  0001 C CNN
F 3 "~" H 4800 6450 50  0001 C CNN
	1    4800 6450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 6600 3450 6650
Wire Wire Line
	3450 6650 3900 6650
Wire Wire Line
	4800 6600 4800 6650
Wire Wire Line
	4350 6600 4350 6650
Connection ~ 4350 6650
Wire Wire Line
	4350 6650 4800 6650
Wire Wire Line
	3900 6600 3900 6650
Connection ~ 3900 6650
Wire Wire Line
	3450 6300 3450 6250
Wire Wire Line
	3450 6250 3900 6250
Wire Wire Line
	4800 6300 4800 6250
Wire Wire Line
	4350 6300 4350 6250
Connection ~ 4350 6250
Wire Wire Line
	4350 6250 4800 6250
Wire Wire Line
	3900 6300 3900 6250
Connection ~ 3900 6250
Wire Wire Line
	3900 6250 4150 6250
$Comp
L ETH1CDMM1:DGNDF #PWR0608
U 1 1 5F0BCC17
P 4150 6700
F 0 "#PWR0608" H 4150 6450 50  0001 C CNN
F 1 "DGNDF" H 4155 6527 50  0000 C CNN
F 2 "" H 4150 6700 50  0001 C CNN
F 3 "" H 4150 6700 50  0001 C CNN
	1    4150 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 6700 4150 6650
$Comp
L power:+1V2 #PWR0607
U 1 1 5F0BF9BE
P 4150 6200
F 0 "#PWR0607" H 4150 6050 50  0001 C CNN
F 1 "+1V2" H 4165 6373 50  0000 C CNN
F 2 "" H 4150 6200 50  0001 C CNN
F 3 "" H 4150 6200 50  0001 C CNN
	1    4150 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 6200 4150 6250
$Comp
L Device:C C603
U 1 1 5F0CF2FD
P 3450 7300
F 0 "C603" H 3565 7346 50  0000 L CNN
F 1 "100n" H 3565 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3488 7150 50  0001 C CNN
F 3 "~" H 3450 7300 50  0001 C CNN
	1    3450 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C606
U 1 1 5F0CF303
P 3900 7300
F 0 "C606" H 4015 7346 50  0000 L CNN
F 1 "100n" H 4015 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3938 7150 50  0001 C CNN
F 3 "~" H 3900 7300 50  0001 C CNN
	1    3900 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C608
U 1 1 5F0CF309
P 4350 7300
F 0 "C608" H 4465 7346 50  0000 L CNN
F 1 "100n" H 4465 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4388 7150 50  0001 C CNN
F 3 "~" H 4350 7300 50  0001 C CNN
	1    4350 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C610
U 1 1 5F0CF30F
P 4800 7300
F 0 "C610" H 4915 7346 50  0000 L CNN
F 1 "100n" H 4915 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4838 7150 50  0001 C CNN
F 3 "~" H 4800 7300 50  0001 C CNN
	1    4800 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C611
U 1 1 5F0D23CD
P 5250 7300
F 0 "C611" H 5365 7346 50  0000 L CNN
F 1 "100n" H 5365 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5288 7150 50  0001 C CNN
F 3 "~" H 5250 7300 50  0001 C CNN
	1    5250 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C612
U 1 1 5F0D23D3
P 5700 7300
F 0 "C612" H 5815 7346 50  0000 L CNN
F 1 "100n" H 5815 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 5738 7150 50  0001 C CNN
F 3 "~" H 5700 7300 50  0001 C CNN
	1    5700 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C613
U 1 1 5F0EF603
P 6150 7300
F 0 "C613" H 6265 7346 50  0000 L CNN
F 1 "100n" H 6265 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6188 7150 50  0001 C CNN
F 3 "~" H 6150 7300 50  0001 C CNN
	1    6150 7300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C614
U 1 1 5F0EF609
P 6600 7300
F 0 "C614" H 6715 7346 50  0000 L CNN
F 1 "100n" H 6715 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 6638 7150 50  0001 C CNN
F 3 "~" H 6600 7300 50  0001 C CNN
	1    6600 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 7450 3450 7500
Wire Wire Line
	3450 7500 3900 7500
Wire Wire Line
	6600 7500 6600 7450
Wire Wire Line
	6150 7450 6150 7500
Connection ~ 6150 7500
Wire Wire Line
	6150 7500 6600 7500
Wire Wire Line
	5700 7450 5700 7500
Connection ~ 5700 7500
Wire Wire Line
	5700 7500 6150 7500
Wire Wire Line
	5250 7450 5250 7500
Connection ~ 5250 7500
Wire Wire Line
	5250 7500 5700 7500
Wire Wire Line
	4800 7450 4800 7500
Connection ~ 4800 7500
Wire Wire Line
	4350 7450 4350 7500
Connection ~ 4350 7500
Wire Wire Line
	3900 7450 3900 7500
Connection ~ 3900 7500
Wire Wire Line
	3900 7500 4350 7500
Wire Wire Line
	3450 7150 3450 7100
Wire Wire Line
	3450 7100 3900 7100
Wire Wire Line
	6600 7100 6600 7150
Wire Wire Line
	6150 7150 6150 7100
Connection ~ 6150 7100
Wire Wire Line
	6150 7100 6600 7100
Wire Wire Line
	5700 7150 5700 7100
Connection ~ 5700 7100
Wire Wire Line
	5700 7100 6150 7100
Wire Wire Line
	5250 7150 5250 7100
Connection ~ 5250 7100
Wire Wire Line
	5250 7100 5700 7100
Wire Wire Line
	4800 7150 4800 7100
Connection ~ 4800 7100
Wire Wire Line
	4350 7150 4350 7100
Connection ~ 4350 7100
Wire Wire Line
	4350 7100 4800 7100
Wire Wire Line
	3900 7150 3900 7100
Connection ~ 3900 7100
Wire Wire Line
	3900 7100 4350 7100
$Comp
L ETH1CDMM1:DGNDF #PWR0613
U 1 1 5F187A1B
P 4800 7550
F 0 "#PWR0613" H 4800 7300 50  0001 C CNN
F 1 "DGNDF" H 4805 7377 50  0000 C CNN
F 2 "" H 4800 7550 50  0001 C CNN
F 3 "" H 4800 7550 50  0001 C CNN
	1    4800 7550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 7550 4800 7500
$Comp
L power:+3.3VP #PWR0612
U 1 1 5F18D71A
P 4800 7050
F 0 "#PWR0612" H 4950 7000 50  0001 C CNN
F 1 "+3.3VP" H 4820 7193 50  0000 C CNN
F 2 "" H 4800 7050 50  0001 C CNN
F 3 "" H 4800 7050 50  0001 C CNN
	1    4800 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 7050 4800 7100
$Comp
L ETH1CDMM1:MT25QL128ABA1ESE U604
U 1 1 5F2BF697
P 9150 1400
F 0 "U604" H 9650 1800 50  0000 C CNN
F 1 "MT25QL128ABA1ESE" H 9650 1700 50  0000 C CNN
F 2 "Package_SO:SOIC-8_5.23x5.23mm_P1.27mm" H 8900 1500 50  0001 C CNN
F 3 "" H 8900 1500 50  0001 C CNN
	1    9150 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 7200 900  7200
Text Label 900  7200 0    50   ~ 0
iCE_Rx_TTL
Wire Wire Line
	1400 7300 900  7300
Text Label 900  7300 0    50   ~ 0
iCE_CDONE
Wire Wire Line
	1400 7400 900  7400
Text Label 2400 7400 2    50   ~ 0
iCE_MISO
Wire Wire Line
	1400 7500 900  7500
Text Label 900  7500 0    50   ~ 0
iCE_SCK
Wire Wire Line
	1900 7200 2400 7200
Text Label 2400 7200 2    50   ~ 0
iCE_Tx_TTL
Wire Wire Line
	1900 7300 2400 7300
Text Label 2400 7300 2    50   ~ 0
iCE_CRESET
Wire Wire Line
	1900 7400 2400 7400
Text Label 900  7400 0    50   ~ 0
iCE_MOSI
Wire Wire Line
	1900 7500 2400 7500
Text Label 2400 7500 2    50   ~ 0
iCE_SS_B
$Comp
L ETH1CDMM1:DGNDF #PWR0603
U 1 1 5F2F6D06
P 1900 7100
F 0 "#PWR0603" H 1900 6850 50  0001 C CNN
F 1 "DGNDF" V 1905 6972 50  0000 R CNN
F 2 "" H 1900 7100 50  0001 C CNN
F 3 "" H 1900 7100 50  0001 C CNN
	1    1900 7100
	0    -1   -1   0   
$EndComp
NoConn ~ 1400 7100
$Comp
L power:+3.3VP #PWR0628
U 1 1 5F322CB6
P 9150 1050
F 0 "#PWR0628" H 9300 1000 50  0001 C CNN
F 1 "+3.3VP" H 9170 1193 50  0000 C CNN
F 2 "" H 9150 1050 50  0001 C CNN
F 3 "" H 9150 1050 50  0001 C CNN
	1    9150 1050
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:DGNDF #PWR0629
U 1 1 5F3249E7
P 9150 1750
F 0 "#PWR0629" H 9150 1500 50  0001 C CNN
F 1 "DGNDF" H 9155 1577 50  0000 C CNN
F 2 "" H 9150 1750 50  0001 C CNN
F 3 "" H 9150 1750 50  0001 C CNN
	1    9150 1750
	1    0    0    -1  
$EndComp
Text Label 8100 3800 0    50   ~ 0
iCE_SCK
Wire Wire Line
	9750 3700 10200 3700
Text Label 10200 3700 2    50   ~ 0
iCE_CDONE
Wire Wire Line
	8450 4100 8300 4100
Text Label 7700 4100 0    50   ~ 0
iCE_CRESET
$Comp
L Device:R R613
U 1 1 5F3FD787
P 8100 4400
F 0 "R613" V 7893 4400 50  0000 C CNN
F 1 "4k7" V 7984 4400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8030 4400 50  0001 C CNN
F 3 "~" H 8100 4400 50  0001 C CNN
	1    8100 4400
	0    1    -1   0   
$EndComp
$Comp
L Device:R R616
U 1 1 5F400727
P 8300 4650
F 0 "R616" H 8370 4696 50  0000 L CNN
F 1 "OPT" H 8370 4605 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8230 4650 50  0001 C CNN
F 3 "~" H 8300 4650 50  0001 C CNN
	1    8300 4650
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VP #PWR0623
U 1 1 5F403DE6
P 7950 4400
F 0 "#PWR0623" H 8100 4350 50  0001 C CNN
F 1 "+3.3VP" V 7950 4500 50  0000 L CNN
F 2 "" H 7950 4400 50  0001 C CNN
F 3 "" H 7950 4400 50  0001 C CNN
	1    7950 4400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8300 4500 8300 4400
Wire Wire Line
	8300 4400 8250 4400
Wire Wire Line
	8300 4400 8300 4100
Connection ~ 8300 4400
Connection ~ 8300 4100
Wire Wire Line
	8300 4100 7700 4100
$Comp
L ETH1CDMM1:DGNDF #PWR0624
U 1 1 5F44B8CC
P 8300 4850
F 0 "#PWR0624" H 8300 4600 50  0001 C CNN
F 1 "DGNDF" H 8305 4677 50  0000 C CNN
F 2 "" H 8300 4850 50  0001 C CNN
F 3 "" H 8300 4850 50  0001 C CNN
	1    8300 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 4850 8300 4800
Wire Wire Line
	8450 3600 8100 3600
Text Label 8100 3600 0    50   ~ 0
iCE_MISO
Wire Wire Line
	8450 3700 8100 3700
Text Label 8100 3700 0    50   ~ 0
iCE_MOSI
Wire Wire Line
	8450 3900 8100 3900
Text Label 8100 3900 0    50   ~ 0
iCE_SS_B
Wire Wire Line
	8450 3800 8100 3800
Wire Wire Line
	8450 1250 7950 1250
Text Label 7950 1350 0    50   ~ 0
iCE_MOSI
Wire Wire Line
	8450 1350 7950 1350
Text Label 7950 1250 0    50   ~ 0
iCE_MISO
$Comp
L Device:R R614
U 1 1 5F5713D8
P 8250 1450
F 0 "R614" V 8200 1200 50  0000 C CNN
F 1 "4k7" V 8250 1450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8180 1450 50  0001 C CNN
F 3 "~" H 8250 1450 50  0001 C CNN
	1    8250 1450
	0    1    1    0   
$EndComp
$Comp
L Device:R R615
U 1 1 5F57563B
P 8250 1550
F 0 "R615" V 8200 1300 50  0000 C CNN
F 1 "4k7" V 8250 1550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 8180 1550 50  0001 C CNN
F 3 "~" H 8250 1550 50  0001 C CNN
	1    8250 1550
	0    1    1    0   
$EndComp
Text Label 10350 1350 2    50   ~ 0
iCE_SS_B
Text Label 10350 1250 2    50   ~ 0
iCE_SCK
$Comp
L power:+3.3VP #PWR0622
U 1 1 5F5BCDA9
P 7750 1500
F 0 "#PWR0622" H 7900 1450 50  0001 C CNN
F 1 "+3.3VP" V 7750 1600 50  0000 L CNN
F 2 "" H 7750 1500 50  0001 C CNN
F 3 "" H 7750 1500 50  0001 C CNN
	1    7750 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5950 1350 5450 1350
Text Label 5450 1350 0    50   ~ 0
iCE_Tx_TTL
Wire Wire Line
	5950 1450 5450 1450
Text Label 5450 1450 0    50   ~ 0
iCE_Rx_TTL
Text HLabel 1200 1950 0    50   Output ~ 0
FGPA_SW_IR+
Text HLabel 1200 1650 0    50   Output ~ 0
FGPA_SW_ID
Text HLabel 1200 1350 0    50   Output ~ 0
FGPA_SW_IR-
Text HLabel 1200 2250 0    50   Output ~ 0
FGPA_SW_IN
Text HLabel 1200 2550 0    50   Output ~ 0
FPGA_SW_VRH
$Comp
L Logic_LevelTranslator:SN74LVC1T45DBV U603
U 1 1 5F6AF2E0
P 6350 4800
F 0 "U603" H 6800 5250 50  0000 L CNN
F 1 "SN74LVC1T45DBV" H 6550 5150 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 6350 4350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74lvc1t45.pdf" H 5450 4150 50  0001 C CNN
	1    6350 4800
	-1   0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:DGNDF #PWR0615
U 1 1 5F6BA31E
P 6350 5200
F 0 "#PWR0615" H 6350 4950 50  0001 C CNN
F 1 "DGNDF" H 6355 5027 50  0000 C CNN
F 2 "" H 6350 5200 50  0001 C CNN
F 3 "" H 6350 5200 50  0001 C CNN
	1    6350 5200
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:+5VF #PWR0617
U 1 1 5F6BBD2C
P 6600 4350
F 0 "#PWR0617" H 6600 4200 50  0001 C CNN
F 1 "+5VF" H 6615 4523 50  0000 C CNN
F 2 "" H 6600 4350 50  0001 C CNN
F 3 "" H 6600 4350 50  0001 C CNN
	1    6600 4350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VP #PWR0614
U 1 1 5F6BCC8B
P 6100 4350
F 0 "#PWR0614" H 6250 4300 50  0001 C CNN
F 1 "+3.3VP" H 6120 4493 50  0000 C CNN
F 2 "" H 6100 4350 50  0001 C CNN
F 3 "" H 6100 4350 50  0001 C CNN
	1    6100 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6450 4400 6450 4350
Wire Wire Line
	6450 4350 6600 4350
Wire Wire Line
	6250 4400 6250 4350
Wire Wire Line
	6250 4350 6100 4350
Wire Wire Line
	6750 4800 6800 4800
$Comp
L Device:R R611
U 1 1 5F7C605D
P 7100 5000
F 0 "R611" V 7000 5000 50  0000 C CNN
F 1 "1k" V 7100 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7030 5000 50  0001 C CNN
F 3 "~" H 7100 5000 50  0001 C CNN
	1    7100 5000
	0    1    1    0   
$EndComp
$Comp
L ETH1CDMM1:+5VF #PWR0620
U 1 1 5F7C75FE
P 7300 5000
F 0 "#PWR0620" H 7300 4850 50  0001 C CNN
F 1 "+5VF" V 7300 5150 50  0000 L CNN
F 2 "" H 7300 5000 50  0001 C CNN
F 3 "" H 7300 5000 50  0001 C CNN
	1    7300 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	7250 5000 7300 5000
Text HLabel 6900 4800 2    50   Input ~ 0
ADC_COMP
Wire Wire Line
	5600 4800 5900 4800
Text Label 5600 4800 0    50   ~ 0
COMP
Wire Wire Line
	8450 1550 8400 1550
Wire Wire Line
	8400 1450 8450 1450
Wire Wire Line
	7800 1450 7800 1500
Wire Wire Line
	7800 1450 8100 1450
Wire Wire Line
	7800 1550 8100 1550
Wire Wire Line
	7750 1500 7800 1500
Connection ~ 7800 1500
Wire Wire Line
	7800 1500 7800 1550
Wire Wire Line
	6750 5000 6950 5000
$Comp
L Device:R R610
U 1 1 5FB088F7
P 6350 5700
F 0 "R610" V 6143 5700 50  0000 C CNN
F 1 "150" V 6234 5700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 6280 5700 50  0001 C CNN
F 3 "~" H 6350 5700 50  0001 C CNN
	1    6350 5700
	0    1    1    0   
$EndComp
Wire Wire Line
	6200 5700 5900 5700
Wire Wire Line
	5900 5700 5900 4800
Connection ~ 5900 4800
Wire Wire Line
	5900 4800 5950 4800
Wire Wire Line
	6500 5700 6800 5700
Wire Wire Line
	6800 5700 6800 4800
Connection ~ 6800 4800
Wire Wire Line
	6800 4800 6900 4800
Text HLabel 1200 2850 0    50   Output ~ 0
FPGA_ADC_~RST
$Comp
L Device:R R606
U 1 1 5E43218B
P 1350 2550
F 0 "R606" V 1143 2550 50  0000 C CNN
F 1 "150" V 1234 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1280 2550 50  0001 C CNN
F 3 "~" H 1350 2550 50  0001 C CNN
	1    1350 2550
	0    1    1    0   
$EndComp
$Comp
L Device:R R605
U 1 1 5E455C47
P 1350 2250
F 0 "R605" V 1143 2250 50  0000 C CNN
F 1 "150" V 1234 2250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1280 2250 50  0001 C CNN
F 3 "~" H 1350 2250 50  0001 C CNN
	1    1350 2250
	0    1    1    0   
$EndComp
$Comp
L Device:R R604
U 1 1 5E468865
P 1350 1950
F 0 "R604" V 1143 1950 50  0000 C CNN
F 1 "150" V 1234 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1280 1950 50  0001 C CNN
F 3 "~" H 1350 1950 50  0001 C CNN
	1    1350 1950
	0    1    1    0   
$EndComp
$Comp
L Device:R R603
U 1 1 5E47CA8D
P 1350 1650
F 0 "R603" V 1143 1650 50  0000 C CNN
F 1 "150" V 1234 1650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1280 1650 50  0001 C CNN
F 3 "~" H 1350 1650 50  0001 C CNN
	1    1350 1650
	0    1    1    0   
$EndComp
$Comp
L Device:R R602
U 1 1 5E49505E
P 1350 1350
F 0 "R602" V 1143 1350 50  0000 C CNN
F 1 "150" V 1234 1350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1280 1350 50  0001 C CNN
F 3 "~" H 1350 1350 50  0001 C CNN
	1    1350 1350
	0    1    1    0   
$EndComp
$Comp
L Device:R R608
U 1 1 5E5531D3
P 1450 5250
F 0 "R608" H 1520 5296 50  0000 L CNN
F 1 "1k" H 1520 5205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1380 5250 50  0001 C CNN
F 3 "~" H 1450 5250 50  0001 C CNN
	1    1450 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 5050 1450 5100
$Comp
L Device:R R601
U 1 1 5E55FDDF
P 1000 5250
F 0 "R601" H 1070 5296 50  0000 L CNN
F 1 "1k" H 1070 5205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 930 5250 50  0001 C CNN
F 3 "~" H 1000 5250 50  0001 C CNN
	1    1000 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1000 5100 1000 4950
$Comp
L Device:LED D602
U 1 1 5E56AAD2
P 1450 5550
F 0 "D602" V 1489 5432 50  0000 R CNN
F 1 "RED" V 1398 5432 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1450 5550 50  0001 C CNN
F 3 "~" H 1450 5550 50  0001 C CNN
	1    1450 5550
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D601
U 1 1 5E56B199
P 1000 5550
F 0 "D601" V 1039 5432 50  0000 R CNN
F 1 "GREEN" V 948 5432 50  0000 R CNN
F 2 "LED_SMD:LED_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 1000 5550 50  0001 C CNN
F 3 "~" H 1000 5550 50  0001 C CNN
	1    1000 5550
	0    -1   -1   0   
$EndComp
$Comp
L ETH1CDMM1:DGNDF #PWR0602
U 1 1 5E587377
P 1450 5750
F 0 "#PWR0602" H 1450 5500 50  0001 C CNN
F 1 "DGNDF" H 1455 5577 50  0000 C CNN
F 2 "" H 1450 5750 50  0001 C CNN
F 3 "" H 1450 5750 50  0001 C CNN
	1    1450 5750
	-1   0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:DGNDF #PWR0601
U 1 1 5E588B07
P 1000 5750
F 0 "#PWR0601" H 1000 5500 50  0001 C CNN
F 1 "DGNDF" H 1005 5577 50  0000 C CNN
F 2 "" H 1000 5750 50  0001 C CNN
F 3 "" H 1000 5750 50  0001 C CNN
	1    1000 5750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1000 5750 1000 5700
Wire Wire Line
	1450 5750 1450 5700
Wire Wire Line
	1900 1350 1500 1350
Wire Wire Line
	1500 1650 1550 1650
Wire Wire Line
	1550 1650 1550 1450
Wire Wire Line
	1550 1450 1900 1450
Wire Wire Line
	1500 1950 1600 1950
Wire Wire Line
	1600 1950 1600 1550
Wire Wire Line
	1600 1550 1900 1550
Wire Wire Line
	1500 2250 1650 2250
Wire Wire Line
	1650 2250 1650 1650
Wire Wire Line
	1650 1650 1900 1650
Wire Wire Line
	1500 2550 1700 2550
Wire Wire Line
	1700 2550 1700 1750
Wire Wire Line
	1700 1750 1900 1750
Connection ~ 4150 6250
Wire Wire Line
	4150 6250 4350 6250
Connection ~ 4150 6650
Wire Wire Line
	4150 6650 4350 6650
Wire Wire Line
	3900 6650 4150 6650
Text HLabel 4000 1650 0    50   Input ~ 0
FPGA_SPI1_MOSI
Text HLabel 4000 1950 0    50   BiDi ~ 0
FPGA_IO1
Text HLabel 4000 2050 0    50   BiDi ~ 0
FPGA_IO2
Text HLabel 4000 1450 0    50   BiDi ~ 0
FPGA_UART2_RX_TTL
Text HLabel 4000 1350 0    50   BiDi ~ 0
FPGA_UART2_TX_TTL
Text HLabel 4000 1850 0    50   Input ~ 0
FPGA_SPI1_NSS
Text HLabel 4000 1750 0    50   Output ~ 0
FPGA_SPI1_MISO
Wire Wire Line
	4000 1950 4050 1950
Wire Wire Line
	4050 2050 4000 2050
Wire Wire Line
	4000 1350 4050 1350
Wire Wire Line
	4050 1450 4000 1450
Wire Wire Line
	4000 1650 4050 1650
Wire Wire Line
	4050 1750 4000 1750
Wire Wire Line
	4000 1850 4050 1850
Text HLabel 4000 1550 0    50   Input ~ 0
FPGA_SPI1_SCK
Wire Wire Line
	4000 1550 4050 1550
$Comp
L FPGA_Lattice:ICE40HX4K-TQ144 U601
U 1 1 5E5E292C
P 6450 2550
F 0 "U601" H 6799 2778 50  0000 L CNN
F 1 "ICE40HX4K-TQ144" H 6799 2687 50  0000 L CNN
F 2 "ETH1CDMM1:TQFP-144_20x20mm_P0.5mm" H 7450 650 50  0001 R CNN
F 3 "http://www.latticesemi.com/Products/FPGAandCPLD/iCE40" H 5450 5050 50  0001 C CNN
	1    6450 2550
	1    0    0    -1  
$EndComp
$Comp
L FPGA_Lattice:ICE40HX4K-TQ144 U601
U 2 1 5E5EF7FA
P 4550 2650
F 0 "U601" H 4899 2878 50  0000 L CNN
F 1 "ICE40HX4K-TQ144" H 4899 2787 50  0000 L CNN
F 2 "ETH1CDMM1:TQFP-144_20x20mm_P0.5mm" H 5550 750 50  0001 R CNN
F 3 "http://www.latticesemi.com/Products/FPGAandCPLD/iCE40" H 3550 5150 50  0001 C CNN
	2    4550 2650
	1    0    0    -1  
$EndComp
$Comp
L FPGA_Lattice:ICE40HX4K-TQ144 U601
U 3 1 5E5F27C2
P 2350 5750
F 0 "U601" H 2749 5978 50  0000 L CNN
F 1 "ICE40HX4K-TQ144" H 2749 5887 50  0000 L CNN
F 2 "ETH1CDMM1:TQFP-144_20x20mm_P0.5mm" H 3350 3850 50  0001 R CNN
F 3 "http://www.latticesemi.com/Products/FPGAandCPLD/iCE40" H 1350 8250 50  0001 C CNN
	3    2350 5750
	1    0    0    -1  
$EndComp
$Comp
L FPGA_Lattice:ICE40HX4K-TQ144 U601
U 4 1 5E5F6FF2
P 2400 2550
F 0 "U601" H 2749 2728 50  0000 L CNN
F 1 "ICE40HX4K-TQ144" H 2749 2637 50  0000 L CNN
F 2 "ETH1CDMM1:TQFP-144_20x20mm_P0.5mm" H 3400 650 50  0001 R CNN
F 3 "http://www.latticesemi.com/Products/FPGAandCPLD/iCE40" H 1400 5050 50  0001 C CNN
	4    2400 2550
	1    0    0    -1  
$EndComp
$Comp
L FPGA_Lattice:ICE40HX4K-TQ144 U601
U 5 1 5E5F89B9
P 9050 3700
F 0 "U601" H 9750 4250 50  0000 L CNN
F 1 "ICE40HX4K-TQ144" H 9700 4150 50  0000 L CNN
F 2 "ETH1CDMM1:TQFP-144_20x20mm_P0.5mm" H 10050 1800 50  0001 R CNN
F 3 "http://www.latticesemi.com/Products/FPGAandCPLD/iCE40" H 8050 6200 50  0001 C CNN
	5    9050 3700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VP #PWR0605
U 1 1 5E68F127
P 2400 750
F 0 "#PWR0605" H 2550 700 50  0001 C CNN
F 1 "+3.3VP" H 2420 893 50  0000 C CNN
F 2 "" H 2400 750 50  0001 C CNN
F 3 "" H 2400 750 50  0001 C CNN
	1    2400 750 
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:DGNDF #PWR0627
U 1 1 5E797461
P 9050 4400
F 0 "#PWR0627" H 9050 4150 50  0001 C CNN
F 1 "DGNDF" H 9055 4227 50  0000 C CNN
F 2 "" H 9050 4400 50  0001 C CNN
F 3 "" H 9050 4400 50  0001 C CNN
	1    9050 4400
	1    0    0    -1  
$EndComp
NoConn ~ 8950 3000
$Comp
L power:+1V2 #PWR0626
U 1 1 5E9218D5
P 9050 3000
F 0 "#PWR0626" H 9050 2850 50  0001 C CNN
F 1 "+1V2" H 9000 3150 50  0000 C CNN
F 2 "" H 9050 3000 50  0001 C CNN
F 3 "" H 9050 3000 50  0001 C CNN
	1    9050 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	9150 3000 9150 2650
$Comp
L power:+3.3VP #PWR0625
U 1 1 5F00CC2F
P 8750 3000
F 0 "#PWR0625" H 8900 2950 50  0001 C CNN
F 1 "+3.3VP" H 8700 3150 50  0000 C CNN
F 2 "" H 8750 3000 50  0001 C CNN
F 3 "" H 8750 3000 50  0001 C CNN
	1    8750 3000
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VP #PWR0630
U 1 1 5E9B87EC
P 9150 2300
F 0 "#PWR0630" H 9300 2250 50  0001 C CNN
F 1 "+3.3VP" H 9170 2443 50  0000 C CNN
F 2 "" H 9150 2300 50  0001 C CNN
F 3 "" H 9150 2300 50  0001 C CNN
	1    9150 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 5050 1850 5050
Wire Wire Line
	1000 4950 1850 4950
$Comp
L Device:R R618
U 1 1 5EB1D535
P 10350 3700
F 0 "R618" V 10143 3700 50  0000 C CNN
F 1 "4k7" V 10234 3700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 10280 3700 50  0001 C CNN
F 3 "~" H 10350 3700 50  0001 C CNN
	1    10350 3700
	0    1    1    0   
$EndComp
$Comp
L power:+3.3VP #PWR0632
U 1 1 5EB21884
P 10500 3700
F 0 "#PWR0632" H 10650 3650 50  0001 C CNN
F 1 "+3.3VP" V 10500 3800 50  0000 L CNN
F 2 "" H 10500 3700 50  0001 C CNN
F 3 "" H 10500 3700 50  0001 C CNN
	1    10500 3700
	0    1    1    0   
$EndComp
$Comp
L Device:R R607
U 1 1 5EC05A20
P 1350 2850
F 0 "R607" V 1143 2850 50  0000 C CNN
F 1 "150" V 1234 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 1280 2850 50  0001 C CNN
F 3 "~" H 1350 2850 50  0001 C CNN
	1    1350 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	1500 2850 1750 2850
Wire Wire Line
	1750 2850 1750 1850
Wire Wire Line
	1750 1850 1900 1850
$Comp
L Device:R R619
U 1 1 5EC6CB38
P 10450 1000
F 0 "R619" H 10520 1046 50  0000 L CNN
F 1 "4k7" H 10520 955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 10380 1000 50  0001 C CNN
F 3 "~" H 10450 1000 50  0001 C CNN
	1    10450 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:R R620
U 1 1 5EC6D195
P 10850 1000
F 0 "R620" H 10920 1046 50  0000 L CNN
F 1 "4k7" H 10920 955 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 10780 1000 50  0001 C CNN
F 3 "~" H 10850 1000 50  0001 C CNN
	1    10850 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 1250 10450 1150
Wire Wire Line
	9850 1250 10450 1250
Wire Wire Line
	10850 1350 10850 1150
Wire Wire Line
	9850 1350 10850 1350
Wire Wire Line
	10450 850  10450 800 
Wire Wire Line
	10450 800  10650 800 
Wire Wire Line
	10850 800  10850 850 
$Comp
L power:+3.3VP #PWR0633
U 1 1 5EC9C4FC
P 10650 750
F 0 "#PWR0633" H 10800 700 50  0001 C CNN
F 1 "+3.3VP" H 10670 893 50  0000 C CNN
F 2 "" H 10650 750 50  0001 C CNN
F 3 "" H 10650 750 50  0001 C CNN
	1    10650 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 750  10650 800 
Connection ~ 10650 800 
Wire Wire Line
	10650 800  10850 800 
Wire Wire Line
	9350 3000 9350 2650
Wire Wire Line
	9450 3000 9450 2650
Text Label 9350 2650 3    50   ~ 0
VCCPLL0
Text Label 9450 2650 3    50   ~ 0
VCCPLL1
Wire Wire Line
	9450 4400 9450 4750
Text Label 9450 4750 1    50   ~ 0
GNDPLL1
Wire Wire Line
	9350 4400 9350 4750
Text Label 9350 4750 1    50   ~ 0
GNDPLL0
Text Label 10950 5650 2    50   ~ 0
VCCPLL0
Text Label 10950 6050 2    50   ~ 0
GNDPLL0
$Comp
L Device:C C617
U 1 1 5ED6399B
P 8300 5850
F 0 "C617" H 8415 5896 50  0000 L CNN
F 1 "100n" H 8415 5805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8338 5700 50  0001 C CNN
F 3 "~" H 8300 5850 50  0001 C CNN
	1    8300 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 6000 8300 6050
Wire Wire Line
	8300 6050 8950 6050
Wire Wire Line
	8950 5650 8300 5650
Wire Wire Line
	8300 5650 8300 5700
$Comp
L Device:C C616
U 1 1 5ED639A5
P 7850 5850
F 0 "C616" H 7965 5896 50  0000 L CNN
F 1 "10u" H 7965 5805 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 7888 5700 50  0001 C CNN
F 3 "~" H 7850 5850 50  0001 C CNN
	1    7850 5850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 5700 7850 5650
Wire Wire Line
	7850 5650 8300 5650
Connection ~ 8300 5650
Wire Wire Line
	7850 6000 7850 6050
Wire Wire Line
	7850 6050 8300 6050
Connection ~ 8300 6050
$Comp
L Device:R R612
U 1 1 5ED639B1
P 7650 5650
F 0 "R612" V 7443 5650 50  0000 C CNN
F 1 "100" V 7534 5650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 7580 5650 50  0001 C CNN
F 3 "~" H 7650 5650 50  0001 C CNN
	1    7650 5650
	0    1    1    0   
$EndComp
$Comp
L power:+1V2 #PWR0621
U 1 1 5ED639B7
P 7450 5650
F 0 "#PWR0621" H 7450 5500 50  0001 C CNN
F 1 "+1V2" V 7450 5900 50  0000 C CNN
F 2 "" H 7450 5650 50  0001 C CNN
F 3 "" H 7450 5650 50  0001 C CNN
	1    7450 5650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7450 5650 7500 5650
Wire Wire Line
	7800 5650 7850 5650
Connection ~ 7850 5650
Text Label 8950 5650 2    50   ~ 0
VCCPLL1
Text Label 8950 6050 2    50   ~ 0
GNDPLL1
Wire Wire Line
	5950 2850 5600 2850
Text Label 5600 2850 0    50   ~ 0
100MHZ
$Comp
L Device:C C615
U 1 1 5F0531ED
P 7100 1250
F 0 "C615" H 7215 1296 50  0000 L CNN
F 1 "100n" H 7215 1205 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7138 1100 50  0001 C CNN
F 3 "~" H 7100 1250 50  0001 C CNN
	1    7100 1250
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3VP #PWR0618
U 1 1 5F05A6D0
P 7100 1100
F 0 "#PWR0618" H 7250 1050 50  0001 C CNN
F 1 "+3.3VP" H 7120 1243 50  0000 C CNN
F 2 "" H 7100 1100 50  0001 C CNN
F 3 "" H 7100 1100 50  0001 C CNN
	1    7100 1100
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:DGNDF #PWR0619
U 1 1 5F05AAD7
P 7100 1400
F 0 "#PWR0619" H 7100 1150 50  0001 C CNN
F 1 "DGNDF" H 7105 1227 50  0000 C CNN
F 2 "" H 7100 1400 50  0001 C CNN
F 3 "" H 7100 1400 50  0001 C CNN
	1    7100 1400
	1    0    0    -1  
$EndComp
$Comp
L Oscillator:ASDMB-xxxMHz U602
U 1 1 5F08DC96
P 4250 5000
F 0 "U602" H 4850 5450 50  0000 L CNN
F 1 "ASDMB-100.000MHZ" H 4500 5350 50  0000 L CNN
F 2 "Oscillator:Oscillator_SMD_Abracon_ASDMB-4Pin_2.5x2.0mm" H 4250 5000 50  0001 C CNN
F 3 "https://abracon.com/Oscillators/ASDMB.pdf" H 4550 5450 50  0001 C CNN
	1    4250 5000
	1    0    0    -1  
$EndComp
$Comp
L ETH1CDMM1:DGNDF #PWR0610
U 1 1 5F0CDB58
P 4350 5300
F 0 "#PWR0610" H 4350 5050 50  0001 C CNN
F 1 "DGNDF" H 4355 5127 50  0000 C CNN
F 2 "" H 4350 5300 50  0001 C CNN
F 3 "" H 4350 5300 50  0001 C CNN
	1    4350 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 5050 3550 5000
Wire Wire Line
	3550 4650 4350 4650
Wire Wire Line
	4350 4650 4350 4700
Wire Wire Line
	3850 5000 3550 5000
Connection ~ 3550 5000
Wire Wire Line
	3550 5000 3550 4650
$Comp
L power:+3.3VP #PWR0609
U 1 1 5F15AE98
P 4350 4600
F 0 "#PWR0609" H 4500 4550 50  0001 C CNN
F 1 "+3.3VP" H 4370 4743 50  0000 C CNN
F 2 "" H 4350 4600 50  0001 C CNN
F 3 "" H 4350 4600 50  0001 C CNN
	1    4350 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 4600 4350 4650
Connection ~ 4350 4650
$Comp
L ETH1CDMM1:DGNDF #PWR0606
U 1 1 5F166402
P 3550 5350
F 0 "#PWR0606" H 3550 5100 50  0001 C CNN
F 1 "DGNDF" H 3555 5177 50  0000 C CNN
F 2 "" H 3550 5350 50  0001 C CNN
F 3 "" H 3550 5350 50  0001 C CNN
	1    3550 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C604
U 1 1 5F186BAD
P 3550 5200
F 0 "C604" H 3665 5246 50  0000 L CNN
F 1 "100n" H 3665 5155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3588 5050 50  0001 C CNN
F 3 "~" H 3550 5200 50  0001 C CNN
	1    3550 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R609
U 1 1 5F18A067
P 4800 5000
F 0 "R609" V 4593 5000 50  0000 C CNN
F 1 "200" V 4684 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad1.05x0.95mm_HandSolder" V 4730 5000 50  0001 C CNN
F 3 "~" H 4800 5000 50  0001 C CNN
	1    4800 5000
	0    1    1    0   
$EndComp
Wire Wire Line
	4950 5000 5300 5000
Text Label 5300 5000 2    50   ~ 0
100MHZ
NoConn ~ 1900 1950
NoConn ~ 1900 2050
NoConn ~ 1900 2150
NoConn ~ 1900 2250
NoConn ~ 1900 2350
NoConn ~ 1900 2450
NoConn ~ 1900 2550
NoConn ~ 1900 2650
NoConn ~ 1900 2750
NoConn ~ 1900 2850
NoConn ~ 1900 2950
NoConn ~ 1900 3050
NoConn ~ 1900 3150
NoConn ~ 1900 3250
NoConn ~ 1900 3350
NoConn ~ 1900 3450
NoConn ~ 1900 3550
NoConn ~ 1900 3650
NoConn ~ 1900 3750
NoConn ~ 1900 3850
NoConn ~ 1900 3950
NoConn ~ 1900 4050
NoConn ~ 1850 5150
NoConn ~ 1850 5250
NoConn ~ 1850 5350
NoConn ~ 1850 5450
NoConn ~ 1850 5550
NoConn ~ 1850 5650
NoConn ~ 1850 5750
NoConn ~ 1850 5850
NoConn ~ 1850 5950
NoConn ~ 1850 6050
NoConn ~ 1850 6150
NoConn ~ 1850 6250
NoConn ~ 1850 6350
NoConn ~ 1850 6450
NoConn ~ 1850 6550
NoConn ~ 1850 6650
NoConn ~ 1850 6750
NoConn ~ 4050 2150
NoConn ~ 4050 2250
NoConn ~ 4050 2350
NoConn ~ 4050 2450
NoConn ~ 4050 2550
NoConn ~ 4050 2650
NoConn ~ 4050 2750
NoConn ~ 4050 2850
NoConn ~ 4050 2950
NoConn ~ 4050 3050
NoConn ~ 4050 3150
NoConn ~ 4050 3250
NoConn ~ 4050 3350
NoConn ~ 4050 3450
NoConn ~ 4050 3550
NoConn ~ 4050 3650
NoConn ~ 4050 3750
NoConn ~ 4050 3850
NoConn ~ 4050 3950
NoConn ~ 4050 4050
NoConn ~ 4050 4150
NoConn ~ 5950 1550
NoConn ~ 5950 1650
NoConn ~ 5950 1750
NoConn ~ 5950 1850
NoConn ~ 5950 1950
NoConn ~ 5950 2050
NoConn ~ 5950 2150
NoConn ~ 5950 2250
NoConn ~ 5950 2350
NoConn ~ 5950 2450
NoConn ~ 5950 2550
NoConn ~ 5950 2650
NoConn ~ 5950 2750
NoConn ~ 5950 2950
NoConn ~ 5950 3050
NoConn ~ 5950 3150
NoConn ~ 5950 3250
NoConn ~ 5950 3350
NoConn ~ 5950 3450
NoConn ~ 5950 3550
NoConn ~ 5950 3650
NoConn ~ 5950 3750
NoConn ~ 5950 3850
NoConn ~ 5950 3950
$Comp
L power:PWR_FLAG #FLG0601
U 1 1 5F4D8556
P 8300 5600
F 0 "#FLG0601" H 8300 5675 50  0001 C CNN
F 1 "PWR_FLAG" H 8300 5773 50  0000 C CNN
F 2 "" H 8300 5600 50  0001 C CNN
F 3 "~" H 8300 5600 50  0001 C CNN
	1    8300 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 5600 8300 5650
$Comp
L power:PWR_FLAG #FLG0604
U 1 1 5F4E177F
P 10300 5600
F 0 "#FLG0604" H 10300 5675 50  0001 C CNN
F 1 "PWR_FLAG" H 10300 5773 50  0000 C CNN
F 2 "" H 10300 5600 50  0001 C CNN
F 3 "~" H 10300 5600 50  0001 C CNN
	1    10300 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 5600 10300 5650
$Comp
L power:PWR_FLAG #FLG0603
U 1 1 5F4EF1BD
P 9050 2650
F 0 "#FLG0603" H 9050 2725 50  0001 C CNN
F 1 "PWR_FLAG" V 9050 2777 50  0000 L CNN
F 2 "" H 9050 2650 50  0001 C CNN
F 3 "~" H 9050 2650 50  0001 C CNN
	1    9050 2650
	0    -1   -1   0   
$EndComp
Wire Wire Line
	9050 2650 9150 2650
Connection ~ 9150 2650
Wire Wire Line
	9150 2650 9150 2600
$Comp
L power:PWR_FLAG #FLG0605
U 1 1 5F535A98
P 10300 6100
F 0 "#FLG0605" H 10300 6175 50  0001 C CNN
F 1 "PWR_FLAG" H 10300 6273 50  0000 C CNN
F 2 "" H 10300 6100 50  0001 C CNN
F 3 "~" H 10300 6100 50  0001 C CNN
	1    10300 6100
	-1   0    0    1   
$EndComp
Wire Wire Line
	10300 6100 10300 6050
$Comp
L power:PWR_FLAG #FLG0602
U 1 1 5F5532FD
P 8300 6100
F 0 "#FLG0602" H 8300 6175 50  0001 C CNN
F 1 "PWR_FLAG" H 8300 6273 50  0000 C CNN
F 2 "" H 8300 6100 50  0001 C CNN
F 3 "~" H 8300 6100 50  0001 C CNN
	1    8300 6100
	-1   0    0    1   
$EndComp
Wire Wire Line
	8300 6100 8300 6050
$Comp
L Device:C C601
U 1 1 5E52EC1C
P 3000 7300
F 0 "C601" H 3115 7346 50  0000 L CNN
F 1 "100n" H 3115 7255 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3038 7150 50  0001 C CNN
F 3 "~" H 3000 7300 50  0001 C CNN
	1    3000 7300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 7150 3000 7100
Wire Wire Line
	3000 7100 3450 7100
Connection ~ 3450 7100
Wire Wire Line
	3000 7450 3000 7500
Wire Wire Line
	3000 7500 3450 7500
Connection ~ 3450 7500
Wire Wire Line
	4800 7100 5250 7100
Wire Wire Line
	4800 7500 5250 7500
Wire Wire Line
	4350 7500 4800 7500
$EndSCHEMATC
