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
L CPLD_Altera:EPM240T100 U?
U 1 1 5E3A61BA
P 3750 3850
F 0 "U?" H 4450 6250 50  0000 C CNN
F 1 "EPM240T100" H 4400 6150 50  0000 C CNN
F 2 "Package_QFP:LQFP-100_14x14mm_P0.5mm" H 4150 1500 50  0001 L CNN
F 3 "https://www.altera.com/content/dam/altera-www/global/en_US/pdfs/literature/hb/max2/max2_mii5v1.pdf" H 3750 3850 50  0001 C CNN
	1    3750 3850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J?
U 1 1 5E3AB4D5
P 1300 5700
F 0 "J?" H 1350 6117 50  0000 C CNN
F 1 "Conn_02x05_Odd_Even" H 1350 6026 50  0000 C CNN
F 2 "" H 1300 5700 50  0001 C CNN
F 3 "~" H 1300 5700 50  0001 C CNN
	1    1300 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2750 5550 2500 5550
Text Label 2500 5550 0    50   ~ 0
TMS
Wire Wire Line
	2750 5650 2500 5650
Text Label 2500 5650 0    50   ~ 0
TDI
Text Label 2500 5750 0    50   ~ 0
TCK
Text Label 2500 5850 0    50   ~ 0
TDO
Wire Wire Line
	2750 5850 2500 5850
Wire Wire Line
	2500 5750 2750 5750
$Comp
L power:+3.3VP #PWR?
U 1 1 5E3AE3AD
P 3700 1350
F 0 "#PWR?" H 3850 1300 50  0001 C CNN
F 1 "+3.3VP" H 3720 1493 50  0000 C CNN
F 2 "" H 3700 1350 50  0001 C CNN
F 3 "" H 3700 1350 50  0001 C CNN
	1    3700 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 1450 3350 1400
Wire Wire Line
	3350 1400 3450 1400
Wire Wire Line
	4050 1400 4050 1450
Connection ~ 3700 1400
Wire Wire Line
	3700 1400 3750 1400
Wire Wire Line
	3950 1450 3950 1400
Connection ~ 3950 1400
Wire Wire Line
	3950 1400 4050 1400
Wire Wire Line
	3850 1450 3850 1400
Connection ~ 3850 1400
Wire Wire Line
	3850 1400 3950 1400
Wire Wire Line
	3750 1450 3750 1400
Connection ~ 3750 1400
Wire Wire Line
	3750 1400 3850 1400
Wire Wire Line
	3650 1450 3650 1400
Connection ~ 3650 1400
Wire Wire Line
	3650 1400 3700 1400
Wire Wire Line
	3550 1450 3550 1400
Connection ~ 3550 1400
Wire Wire Line
	3550 1400 3650 1400
Wire Wire Line
	3450 1450 3450 1400
Connection ~ 3450 1400
Wire Wire Line
	3450 1400 3550 1400
Wire Wire Line
	3700 1350 3700 1400
Wire Wire Line
	3350 6250 3350 6300
Wire Wire Line
	3350 6300 3450 6300
Wire Wire Line
	4050 6300 4050 6250
Wire Wire Line
	3950 6250 3950 6300
Connection ~ 3950 6300
Wire Wire Line
	3950 6300 4050 6300
Wire Wire Line
	3850 6250 3850 6300
Connection ~ 3850 6300
Wire Wire Line
	3850 6300 3950 6300
Wire Wire Line
	3750 6250 3750 6300
Connection ~ 3750 6300
Wire Wire Line
	3750 6300 3850 6300
Wire Wire Line
	3650 6250 3650 6300
Connection ~ 3650 6300
Wire Wire Line
	3650 6300 3700 6300
Wire Wire Line
	3550 6250 3550 6300
Connection ~ 3550 6300
Wire Wire Line
	3550 6300 3650 6300
Wire Wire Line
	3450 6250 3450 6300
Connection ~ 3450 6300
Wire Wire Line
	3450 6300 3550 6300
$Comp
L ETH1CDMM1:DGNDF #PWR?
U 1 1 5E3B386F
P 3700 6350
F 0 "#PWR?" H 3700 6100 50  0001 C CNN
F 1 "DGNDF" H 3705 6177 50  0000 C CNN
F 2 "" H 3700 6350 50  0001 C CNN
F 3 "" H 3700 6350 50  0001 C CNN
	1    3700 6350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 6350 3700 6300
Connection ~ 3700 6300
Wire Wire Line
	3700 6300 3750 6300
$EndSCHEMATC
