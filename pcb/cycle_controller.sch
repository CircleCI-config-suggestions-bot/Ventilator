EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 7 34
Title "Cycle Controller"
Date ""
Rev "2.0"
Comp "RespiraWorks"
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L RespiraWorks_Std:STM32L496RGTx U?
U 1 1 5FEB9E53
P 5800 3200
F 0 "U?" H 6100 4950 50  0000 C CNN
F 1 "STM32L496RGTx" H 6300 1350 50  0000 C CNN
F 2 "Package_QFP:LQFP-64_10x10mm_P0.5mm" H 5200 1500 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00284211.pdf" H 5800 3200 50  0001 C CNN
	1    5800 3200
	1    0    0    -1  
$EndComp
$Comp
L RespiraWorks:+3.3V_Ctrl #PWR?
U 1 1 5FEBC752
P 5700 1050
F 0 "#PWR?" H 5700 1050 50  0001 C CNN
F 1 "+3.3V_Ctrl" H 5685 1223 50  0000 C CNN
F 2 "" H 5700 1050 50  0001 C CNN
F 3 "" H 5700 1050 50  0001 C CNN
	1    5700 1050
	1    0    0    -1  
$EndComp
Connection ~ 5800 1050
Wire Wire Line
	5800 1050 5700 1050
Wire Wire Line
	5700 1050 5600 1050
$Comp
L RespiraWorks:+3.3V_Ctrl #PWR?
U 1 1 5FEBC80C
P 7350 850
F 0 "#PWR?" H 7350 850 50  0001 C CNN
F 1 "+3.3V_Ctrl" H 7335 1023 50  0000 C CNN
F 2 "" H 7350 850 50  0001 C CNN
F 3 "" H 7350 850 50  0001 C CNN
	1    7350 850 
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FEBC8E3
P 7500 1000
F 0 "C?" H 7450 1200 50  0000 L CNN
F 1 "0.1uF, 10V" H 7350 600 50  0000 L CNN
F 2 "RespiraWorks_std:C_0603_1608Metric" H 7538 850 50  0001 C CNN
F 3 "~" H 7500 1000 50  0001 C CNN
	1    7500 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FEBC9C4
P 7800 1000
F 0 "C?" H 7750 1200 50  0000 L CNN
F 1 "0.1uF, 10V" H 7650 700 50  0000 L CNN
F 2 "RespiraWorks_std:C_0603_1608Metric" H 7838 850 50  0001 C CNN
F 3 "~" H 7800 1000 50  0001 C CNN
	1    7800 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FEBC9E0
P 8150 1000
F 0 "C?" H 8100 1200 50  0000 L CNN
F 1 "0.1uF, 10V" H 7950 600 50  0000 L CNN
F 2 "RespiraWorks_std:C_0603_1608Metric" H 8188 850 50  0001 C CNN
F 3 "~" H 8150 1000 50  0001 C CNN
	1    8150 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FEBC9FE
P 8450 1000
F 0 "C?" H 8400 1200 50  0000 L CNN
F 1 "0.1uF, 10V" H 8250 700 50  0000 L CNN
F 2 "RespiraWorks_std:C_0603_1608Metric" H 8488 850 50  0001 C CNN
F 3 "~" H 8450 1000 50  0001 C CNN
	1    8450 1000
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FEBCA35
P 8750 1000
F 0 "C?" H 8700 1200 50  0000 L CNN
F 1 "4.7uF, 10V" H 8750 900 50  0000 L CNN
F 2 "RespiraWorks_std:C_0603_1608Metric" H 8788 850 50  0001 C CNN
F 3 "~" H 8750 1000 50  0001 C CNN
	1    8750 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8150 850  8450 850 
Connection ~ 8150 850 
Connection ~ 8450 850 
Wire Wire Line
	8450 850  8750 850 
Wire Wire Line
	8150 850  7800 850 
Connection ~ 7800 850 
Wire Wire Line
	7800 850  7500 850 
$Comp
L power:GND #PWR?
U 1 1 5FEBCB86
P 8900 1250
F 0 "#PWR?" H 8900 1000 50  0001 C CNN
F 1 "GND" H 8905 1077 50  0000 C CNN
F 2 "" H 8900 1250 50  0001 C CNN
F 3 "" H 8900 1250 50  0001 C CNN
	1    8900 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 1250 8450 1250
Wire Wire Line
	8750 1150 8750 1250
Wire Wire Line
	8450 1150 8450 1250
Connection ~ 8450 1250
Wire Wire Line
	8450 1250 8150 1250
Wire Wire Line
	8150 1150 8150 1250
Connection ~ 8150 1250
Wire Wire Line
	7800 1150 7800 1250
Wire Wire Line
	7800 1250 8150 1250
Wire Wire Line
	7800 1250 7500 1250
Wire Wire Line
	7500 1250 7500 1150
Connection ~ 7800 1250
Text Notes 8300 700  2    50   ~ 0
VDD pins
Text Notes 9950 600  2    50   ~ 0
VDDA pin
$Comp
L Device:C C?
U 1 1 5FEBD47E
P 9550 1050
F 0 "C?" H 9450 1300 50  0000 L CNN
F 1 "0.1uF, 10V" H 9300 850 50  0000 L CNN
F 2 "RespiraWorks_std:C_0603_1608Metric" H 9588 900 50  0001 C CNN
F 3 "~" H 9550 1050 50  0001 C CNN
	1    9550 1050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FEBD4CF
P 9900 1050
F 0 "C?" H 9850 1300 50  0000 L CNN
F 1 "1uF, 10V" H 9950 950 50  0000 L CNN
F 2 "RespiraWorks_std:C_0603_1608Metric" H 9938 900 50  0001 C CNN
F 3 "~" H 9900 1050 50  0001 C CNN
	1    9900 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9550 1200 9750 1200
Wire Wire Line
	9750 1200 9750 1250
Wire Wire Line
	9900 1200 9750 1200
Connection ~ 9750 1200
Wire Wire Line
	5700 5350 5600 5350
Wire Wire Line
	5800 5000 5800 5350
Wire Wire Line
	5800 5350 5700 5350
Connection ~ 5700 5350
$Comp
L power:GNDA #PWR?
U 1 1 5FED43B1
P 6750 5600
F 0 "#PWR?" H 6750 5350 50  0001 C CNN
F 1 "GNDA" H 6755 5427 50  0000 C CNN
F 2 "" H 6750 5600 50  0001 C CNN
F 3 "" H 6750 5600 50  0001 C CNN
	1    6750 5600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FED43F4
P 6150 5600
F 0 "#PWR?" H 6150 5350 50  0001 C CNN
F 1 "GND" H 6155 5427 50  0000 C CNN
F 2 "" H 6150 5600 50  0001 C CNN
F 3 "" H 6150 5600 50  0001 C CNN
	1    6150 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:Jumper JP?
U 1 1 5FED4432
P 6450 5600
F 0 "JP?" H 6450 5800 50  0000 C CNN
F 1 "Jumper" H 6450 5773 50  0001 C CNN
F 2 "RespiraWorks_Std:SolderJumper-2_P1.3mm_Bridged_RoundedPad1.0x1.5mm" H 6450 5600 50  0001 C CNN
F 3 "~" H 6450 5600 50  0001 C CNN
	1    6450 5600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FED4C8E
P 4700 1750
F 0 "C?" H 4815 1776 50  0000 L CNN
F 1 "0.1uF, 10V" H 4750 1650 50  0000 L CNN
F 2 "RespiraWorks_std:C_0603_1608Metric" H 4738 1600 50  0001 C CNN
F 3 "~" H 4700 1750 50  0001 C CNN
	1    4700 1750
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_Push SW?
U 1 1 5FED4D7F
P 4100 1800
F 0 "SW?" V 4054 1948 50  0000 L CNN
F 1 "Reset CC" V 4145 1948 50  0000 L CNN
F 2 "RespiraWorks_Std:SW_Push_6x6_TD-0341" H 4100 2000 50  0001 C CNN
F 3 "" H 4100 2000 50  0001 C CNN
	1    4100 1800
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FED4E7D
P 4100 2050
F 0 "#PWR?" H 4100 1800 50  0001 C CNN
F 1 "GND" H 4105 1877 50  0000 C CNN
F 2 "" H 4100 2050 50  0001 C CNN
F 3 "" H 4100 2050 50  0001 C CNN
	1    4100 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1600 4700 1600
Connection ~ 4700 1600
Wire Wire Line
	4700 1600 4100 1600
Wire Wire Line
	4100 2050 4100 2000
Wire Wire Line
	4700 1900 4700 2050
Wire Wire Line
	4700 2050 4100 2050
Connection ~ 4100 2050
$Comp
L Device:R R?
U 1 1 5FED7A37
P 3700 3050
F 0 "R?" H 3550 3150 50  0000 C CNN
F 1 "10K" H 3550 3050 50  0000 C CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 3630 3050 50  0001 C CNN
F 3 "~" H 3700 3050 50  0001 C CNN
	1    3700 3050
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FED7B93
P 3700 3200
F 0 "#PWR?" H 3700 2950 50  0001 C CNN
F 1 "GND" H 3705 3027 50  0000 C CNN
F 2 "" H 3700 3200 50  0001 C CNN
F 3 "" H 3700 3200 50  0001 C CNN
	1    3700 3200
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 2900 3700 2900
Text Label 4400 2900 2    50   ~ 0
BOOT0
Text Notes 3950 3150 0    50   ~ 0
Boots from main\nFlash memory\nby default
Text HLabel 6700 2900 2    50   Input ~ 0
TMS
Wire Wire Line
	6400 2900 6700 2900
Text HLabel 6700 3000 2    50   Input ~ 0
TCK
Wire Wire Line
	6400 3000 6700 3000
Text HLabel 6700 3100 2    50   Input ~ 0
TDI
Wire Wire Line
	6400 3100 6700 3100
Text HLabel 6700 3600 2    50   Input ~ 0
TDO
Wire Wire Line
	6700 3600 6400 3600
Wire Wire Line
	5100 3900 4850 3900
Wire Wire Line
	5100 4100 4850 4100
Wire Wire Line
	5100 4200 4850 4200
$Comp
L Device:Crystal Y?
U 1 1 5FEE2B95
P 2850 2950
F 0 "Y?" V 2804 3081 50  0000 L CNN
F 1 "8MHz" V 2895 3081 50  0000 L CNN
F 2 "RespiraWorks_Std:Crystal_SMD_HC49-SD" H 2850 2950 50  0001 C CNN
F 3 "~" H 2850 2950 50  0001 C CNN
F 4 "DNP" V 2850 2950 50  0000 C CNN "DNP"
	1    2850 2950
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5FEE2BA5
P 2550 2700
F 0 "C?" V 2600 2750 50  0000 L CNN
F 1 "20pF" V 2500 2750 50  0000 L CNN
F 2 "RespiraWorks_std:C_0603_1608Metric" H 2588 2550 50  0001 C CNN
F 3 "~" H 2550 2700 50  0001 C CNN
F 4 "DNP" V 2600 2500 50  0000 L CNN "DNP"
	1    2550 2700
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C?
U 1 1 5FEE2BAD
P 2550 3250
F 0 "C?" V 2600 3300 50  0000 L CNN
F 1 "20pF" V 2500 3300 50  0000 L CNN
F 2 "RespiraWorks_std:C_0603_1608Metric" H 2588 3100 50  0001 C CNN
F 3 "~" H 2550 3250 50  0001 C CNN
F 4 "DNP" V 2600 3050 50  0000 L CNN "DNP"
	1    2550 3250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FEE2BB4
P 3100 2700
F 0 "R?" V 3000 2650 50  0000 C CNN
F 1 "0" V 3000 2800 50  0000 C CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 3030 2700 50  0001 C CNN
F 3 "~" H 3100 2700 50  0001 C CNN
F 4 "DNP" V 3100 2700 50  0000 C CNN "DNP"
	1    3100 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FEE2BBB
P 3150 3250
F 0 "R?" V 3050 3150 50  0000 C CNN
F 1 "0" V 3050 3350 50  0000 C CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 3080 3250 50  0001 C CNN
F 3 "~" H 3150 3250 50  0001 C CNN
F 4 "DNP" V 3150 3250 50  0000 C CNN "DNP"
	1    3150 3250
	0    1    1    0   
$EndComp
Wire Wire Line
	3550 2800 3550 3250
Wire Wire Line
	3550 3250 3300 3250
Wire Wire Line
	2850 2800 2850 2700
Wire Wire Line
	2850 2700 2950 2700
Wire Wire Line
	2850 3100 2850 3250
Wire Wire Line
	2850 3250 3000 3250
Wire Wire Line
	2700 3250 2850 3250
Connection ~ 2850 3250
Wire Wire Line
	2700 2700 2850 2700
Connection ~ 2850 2700
$Comp
L power:GND #PWR?
U 1 1 5FEE2BCF
P 2300 3400
F 0 "#PWR?" H 2300 3150 50  0001 C CNN
F 1 "GND" H 2305 3227 50  0000 C CNN
F 2 "" H 2300 3400 50  0001 C CNN
F 3 "" H 2300 3400 50  0001 C CNN
	1    2300 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2300 3400 2300 3250
Wire Wire Line
	2300 3250 2400 3250
Wire Wire Line
	2400 2700 2300 2700
Wire Wire Line
	2300 2700 2300 3250
Connection ~ 2300 3250
Wire Wire Line
	3250 2700 5100 2700
Wire Wire Line
	3550 2800 5100 2800
$Comp
L Device:Crystal_GND23 Y?
U 1 1 5FEE6F6E
P 3950 4800
F 0 "Y?" V 3800 4650 50  0000 L CNN
F 1 "32.768 kHz" V 3650 4650 50  0000 L CNN
F 2 "RespiraWorks:Crystal_SMD_Abracon_ABS25" H 3950 4800 50  0001 C CNN
F 3 "~" H 3950 4800 50  0001 C CNN
F 4 "" V 4100 4900 50  0001 C CNN "DNP"
F 5 "Abracon" V 3950 4800 50  0001 C CNN "Manufacturer"
F 6 "ABS25-32.768KHZ-6-T" V 3950 4800 50  0001 C CNN "Manufacturer PN"
	1    3950 4800
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FEE8703
P 4450 5050
F 0 "R?" V 4350 4950 50  0000 C CNN
F 1 "0" V 4350 5150 50  0000 C CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 4380 5050 50  0001 C CNN
F 3 "~" H 4450 5050 50  0001 C CNN
	1    4450 5050
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 5FEE8763
P 4450 4700
F 0 "R?" V 4350 4650 50  0000 C CNN
F 1 "0" V 4350 4800 50  0000 C CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 4380 4700 50  0001 C CNN
F 3 "~" H 4450 4700 50  0001 C CNN
	1    4450 4700
	0    1    1    0   
$EndComp
$Comp
L Device:C C?
U 1 1 5FEE87FF
P 3600 5050
F 0 "C?" V 3750 5000 50  0000 L CNN
F 1 "6.8pF" V 3850 4950 50  0000 L CNN
F 2 "RespiraWorks_std:C_0603_1608Metric" H 3638 4900 50  0001 C CNN
F 3 "~" H 3600 5050 50  0001 C CNN
F 4 "" V 3950 5050 50  0001 C CNN "DNP"
	1    3600 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	5100 4800 4600 4800
Wire Wire Line
	4600 4800 4600 5050
Wire Wire Line
	5100 4700 4600 4700
Wire Wire Line
	3950 4600 3950 4650
Wire Wire Line
	3950 4950 3950 5050
Wire Wire Line
	3950 4600 3750 4600
Wire Wire Line
	3950 5050 3750 5050
$Comp
L power:GND #PWR?
U 1 1 5FEF2575
P 3300 5150
F 0 "#PWR?" H 3300 4900 50  0001 C CNN
F 1 "GND" H 3305 4977 50  0000 C CNN
F 2 "" H 3300 5150 50  0001 C CNN
F 3 "" H 3300 5150 50  0001 C CNN
	1    3300 5150
	1    0    0    -1  
$EndComp
Wire Wire Line
	3300 4600 3300 5050
Connection ~ 3300 5050
Wire Wire Line
	3300 5050 3300 5150
NoConn ~ 4150 4800
NoConn ~ 3750 4800
Wire Wire Line
	6700 2700 6400 2700
Wire Wire Line
	6700 2800 6400 2800
Wire Wire Line
	6400 1900 6700 1900
Wire Wire Line
	6400 2400 6700 2400
Wire Wire Line
	6400 3300 6700 3300
Wire Wire Line
	5100 3400 4850 3400
Wire Wire Line
	5100 3500 4850 3500
Wire Wire Line
	5100 3600 4850 3600
Wire Wire Line
	4850 3700 5100 3700
Wire Wire Line
	4850 3800 5100 3800
Wire Wire Line
	6400 3700 6700 3700
Text HLabel 4850 4300 0    50   Input ~ 0
SWO
Wire Wire Line
	5100 4300 4850 4300
$Comp
L Switch:SW_Push SW?
U 1 1 5FF60966
P 2200 4550
F 0 "SW?" V 2154 4698 50  0000 L CNN
F 1 "User TBD" V 2245 4698 50  0000 L CNN
F 2 "RespiraWorks_Std:SW_Push_6x6_TD-0341" H 2200 4750 50  0001 C CNN
F 3 "" H 2200 4750 50  0001 C CNN
	1    2200 4550
	0    1    1    0   
$EndComp
Wire Wire Line
	4700 4550 4700 4600
Wire Wire Line
	4700 4600 5100 4600
Wire Wire Line
	3700 4550 3700 4350
$Comp
L power:GND #PWR?
U 1 1 5FF73D09
P 2200 4850
F 0 "#PWR?" H 2200 4600 50  0001 C CNN
F 1 "GND" H 2205 4677 50  0000 C CNN
F 2 "" H 2200 4850 50  0001 C CNN
F 3 "" H 2200 4850 50  0001 C CNN
	1    2200 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 4850 2200 4750
$Comp
L Device:R R?
U 1 1 5FF77D45
P 2200 4200
F 0 "R?" H 2050 4300 50  0000 C CNN
F 1 "4.7K" H 2050 4200 50  0000 C CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 2130 4200 50  0001 C CNN
F 3 "~" H 2200 4200 50  0001 C CNN
	1    2200 4200
	-1   0    0    1   
$EndComp
Connection ~ 2200 4350
$Comp
L RespiraWorks:+3.3V_Ctrl #PWR?
U 1 1 5FF77EF3
P 2200 4050
F 0 "#PWR?" H 2200 4050 50  0001 C CNN
F 1 "+3.3V_Ctrl" H 2185 4223 50  0000 C CNN
F 2 "" H 2200 4050 50  0001 C CNN
F 3 "" H 2200 4050 50  0001 C CNN
	1    2200 4050
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 5FF77F9A
P 1600 4500
F 0 "C?" H 1715 4526 50  0000 L CNN
F 1 "0.1uF, 10V" H 1650 4400 50  0000 L CNN
F 2 "RespiraWorks_std:C_0603_1608Metric" H 1638 4350 50  0001 C CNN
F 3 "~" H 1600 4500 50  0001 C CNN
	1    1600 4500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 5FF77FFC
P 1800 4750
F 0 "R?" V 1650 4850 50  0000 C CNN
F 1 "100" V 1650 4650 50  0000 C CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 1730 4750 50  0001 C CNN
F 3 "~" H 1800 4750 50  0001 C CNN
	1    1800 4750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2200 4350 1600 4350
Wire Wire Line
	1650 4750 1600 4750
Wire Wire Line
	1600 4750 1600 4650
Wire Wire Line
	2200 4750 1950 4750
Connection ~ 2200 4750
Text HLabel 6700 4100 2    50   BiDi ~ 0
PB8
Text HLabel 6700 4200 2    50   BiDi ~ 0
PB9
Wire Wire Line
	9550 850  9550 900 
Wire Wire Line
	9900 850  9900 900 
$Comp
L power:GND #PWR?
U 1 1 5FED05CB
P 5700 5350
F 0 "#PWR?" H 5700 5100 50  0001 C CNN
F 1 "GND" H 5705 5177 50  0000 C CNN
F 2 "" H 5700 5350 50  0001 C CNN
F 3 "" H 5700 5350 50  0001 C CNN
	1    5700 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	3450 5050 3300 5050
Wire Wire Line
	3450 4600 3300 4600
Connection ~ 3950 5050
Connection ~ 3950 4600
Wire Wire Line
	4300 4600 4300 4700
Wire Wire Line
	3700 4550 4700 4550
Wire Wire Line
	4850 3100 5100 3100
Wire Wire Line
	6400 3900 6700 3900
Wire Wire Line
	6700 3800 6400 3800
Text HLabel 6700 4000 2    50   BiDi ~ 0
PB7
Wire Wire Line
	6400 4000 6700 4000
Connection ~ 5700 1050
Wire Wire Line
	5700 1050 5700 1400
Connection ~ 5600 1050
Wire Wire Line
	5500 5000 5500 5350
$Comp
L power:GNDA #PWR?
U 1 1 602C1A6B
P 5900 5350
F 0 "#PWR?" H 5900 5100 50  0001 C CNN
F 1 "GNDA" H 5905 5177 50  0000 C CNN
F 2 "" H 5900 5350 50  0001 C CNN
F 3 "" H 5900 5350 50  0001 C CNN
	1    5900 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 5000 5900 5350
$Comp
L RespiraWorks:503182-1852 J?
U 1 1 6016937E
P 2500 6650
AR Path="/5FCD4D4C/6016937E" Ref="J?"  Part="1" 
AR Path="/5FCD4D18/6016937E" Ref="J?"  Part="1" 
AR Path="/6016937E" Ref="J?"  Part="1" 
F 0 "J?" H 2300 7000 50  0000 L CNN
F 1 "503182-1852" H 2850 6300 50  0000 L CNN
F 2 "RespiraWorks:SD_Molex_5031821852" H 3300 6250 50  0001 C CNN
F 3 "https://www.molex.com/pdm_docs/sd/5031821852_sd.pdf" H 3900 6150 50  0001 C CNN
	1    2500 6650
	1    0    0    -1  
$EndComp
Text Notes 2950 5950 2    50   ~ 0
MicroSD Card Connector
$Comp
L RespiraWorks:+3.3V_Ctrl #PWR?
U 1 1 60169386
P 2700 6250
AR Path="/5FCD4D4C/60169386" Ref="#PWR?"  Part="1" 
AR Path="/5FCD4D18/60169386" Ref="#PWR?"  Part="1" 
AR Path="/60169386" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2700 6250 50  0001 C CNN
F 1 "+3.3V_Ctrl" H 2685 6423 50  0000 C CNN
F 2 "" H 2700 6250 50  0001 C CNN
F 3 "" H 2700 6250 50  0001 C CNN
	1    2700 6250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 6016938C
P 3150 6300
AR Path="/5FCD4D4C/6016938C" Ref="C?"  Part="1" 
AR Path="/5FCD4D18/6016938C" Ref="C?"  Part="1" 
F 0 "C?" H 3200 6400 50  0000 L CNN
F 1 "1uF, 10V" H 2950 6200 50  0000 L CNN
F 2 "" H 3188 6150 50  0001 C CNN
F 3 "~" H 3150 6300 50  0001 C CNN
	1    3150 6300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C?
U 1 1 60169393
P 3550 6300
AR Path="/5FCD4D4C/60169393" Ref="C?"  Part="1" 
AR Path="/5FCD4D18/60169393" Ref="C?"  Part="1" 
F 0 "C?" H 3600 6400 50  0000 L CNN
F 1 "0.1uF, 10V" H 3600 6200 50  0000 L CNN
F 2 "" H 3588 6150 50  0001 C CNN
F 3 "~" H 3550 6300 50  0001 C CNN
	1    3550 6300
	1    0    0    -1  
$EndComp
$Comp
L RespiraWorks:+3.3V_Ctrl #PWR?
U 1 1 6016939A
P 3350 6100
AR Path="/5FCD4D4C/6016939A" Ref="#PWR?"  Part="1" 
AR Path="/5FCD4D18/6016939A" Ref="#PWR?"  Part="1" 
AR Path="/6016939A" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3350 6100 50  0001 C CNN
F 1 "+3.3V_Ctrl" H 3335 6273 50  0000 C CNN
F 2 "" H 3350 6100 50  0001 C CNN
F 3 "" H 3350 6100 50  0001 C CNN
	1    3350 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 6150 3150 6100
Wire Wire Line
	3550 6100 3550 6150
$Comp
L power:GND #PWR?
U 1 1 601693A5
P 3350 6500
AR Path="/5FCD4D4C/601693A5" Ref="#PWR?"  Part="1" 
AR Path="/5FCD4D18/601693A5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3350 6250 50  0001 C CNN
F 1 "GND" H 3355 6327 50  0000 C CNN
F 2 "" H 3350 6500 50  0001 C CNN
F 3 "" H 3350 6500 50  0001 C CNN
	1    3350 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 6450 3350 6450
Wire Wire Line
	3350 6450 3350 6500
Wire Wire Line
	3550 6450 3350 6450
Connection ~ 3350 6450
$Comp
L power:GND #PWR?
U 1 1 601693AF
P 2650 7350
AR Path="/5FCD4D4C/601693AF" Ref="#PWR?"  Part="1" 
AR Path="/5FCD4D18/601693AF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2650 7100 50  0001 C CNN
F 1 "GND" H 2655 7177 50  0000 C CNN
F 2 "" H 2650 7350 50  0001 C CNN
F 3 "" H 2650 7350 50  0001 C CNN
	1    2650 7350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2650 7350 2700 7350
Wire Wire Line
	2700 7350 2700 7300
Wire Wire Line
	2600 7300 2600 7350
Wire Wire Line
	2600 7350 2650 7350
Connection ~ 2650 7350
NoConn ~ 2050 6500
NoConn ~ 2050 6600
NoConn ~ 2050 7000
Text Label 1750 7100 2    50   ~ 0
USD-Detect
Wire Wire Line
	1050 7100 2050 7100
Wire Wire Line
	1050 7100 1050 6950
$Comp
L Device:R R?
U 1 1 601693C1
P 1050 6800
AR Path="/5FCD4D4C/601693C1" Ref="R?"  Part="1" 
AR Path="/5FCD4D18/601693C1" Ref="R?"  Part="1" 
F 0 "R?" H 900 6850 50  0000 L CNN
F 1 "10K" H 850 6750 50  0000 L CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 980 6800 50  0001 C CNN
F 3 "~" H 1050 6800 50  0001 C CNN
	1    1050 6800
	1    0    0    -1  
$EndComp
$Comp
L RespiraWorks:+3.3V_Ctrl #PWR?
U 1 1 601693C8
P 1050 6650
AR Path="/5FCD4D4C/601693C8" Ref="#PWR?"  Part="1" 
AR Path="/5FCD4D18/601693C8" Ref="#PWR?"  Part="1" 
AR Path="/601693C8" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1050 6650 50  0001 C CNN
F 1 "+3.3V_Ctrl" H 1035 6823 50  0000 C CNN
F 2 "" H 1050 6650 50  0001 C CNN
F 3 "" H 1050 6650 50  0001 C CNN
	1    1050 6650
	1    0    0    -1  
$EndComp
Wire Notes Line
	500  5850 4050 5850
Wire Notes Line
	4050 5850 4050 7800
Wire Wire Line
	5300 1400 5500 1400
Wire Wire Line
	5600 1050 5300 1050
$Comp
L Device:Jumper_NO_Small JP?
U 1 1 601E0703
P 5300 1200
F 0 "JP?" V 5300 1400 50  0000 C CNN
F 1 "Jumper" H 5300 1373 50  0001 C CNN
F 2 "RespiraWorks_Std:SolderJumper-2_P1.3mm_Open_RoundedPad1.0x1.5mm" H 5300 1200 50  0001 C CNN
F 3 "~" H 5300 1200 50  0001 C CNN
	1    5300 1200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5300 1400 4850 1400
Connection ~ 5300 1400
Wire Wire Line
	4600 950  4850 950 
Wire Wire Line
	4850 950  4850 1400
$Comp
L power:GND #PWR?
U 1 1 601E377B
P 4600 1250
F 0 "#PWR?" H 4600 1000 50  0001 C CNN
F 1 "GND" H 4605 1077 50  0000 C CNN
F 2 "" H 4600 1250 50  0001 C CNN
F 3 "" H 4600 1250 50  0001 C CNN
	1    4600 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 1050 5600 1400
Wire Wire Line
	5600 5350 5500 5350
Connection ~ 5600 5350
Text Label 4350 4000 0    50   ~ 0
USD-Detect
Wire Notes Line
	9350 2000 9350 6500
NoConn ~ 10500 3200
Wire Wire Line
	10500 3500 9900 3500
Wire Wire Line
	10500 3600 9900 3600
Wire Wire Line
	10500 3700 9900 3700
Wire Wire Line
	10500 3300 9900 3300
Wire Wire Line
	10500 4300 10050 4300
Wire Wire Line
	10500 4400 10050 4400
Wire Wire Line
	10500 4500 10050 4500
Wire Wire Line
	10500 4600 10050 4600
Wire Wire Line
	10500 4700 10050 4700
Wire Wire Line
	10500 4800 10050 4800
Wire Wire Line
	10500 5100 10050 5100
$Comp
L RespiraWorks:+3.3V_Ctrl_A #PWR?
U 1 1 60390EE2
P 9650 4350
AR Path="/60390EE2" Ref="#PWR?"  Part="1" 
AR Path="/5FCD4D18/60390EE2" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 9650 4350 50  0001 C CNN
F 1 "+3.3V_Ctrl_A" H 9635 4523 50  0000 C CNN
F 2 "" H 9650 4350 50  0001 C CNN
F 3 "" H 9650 4350 50  0001 C CNN
	1    9650 4350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60390FBB
P 9750 5250
F 0 "#PWR?" H 9750 5000 50  0001 C CNN
F 1 "GND" H 9755 5077 50  0000 C CNN
F 2 "" H 9750 5250 50  0001 C CNN
F 3 "" H 9750 5250 50  0001 C CNN
	1    9750 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 4900 9750 4900
Wire Wire Line
	9750 4900 9750 5250
Wire Wire Line
	10500 5000 9650 5000
Wire Wire Line
	9650 5000 9650 4350
Wire Wire Line
	10500 5550 10050 5550
Wire Wire Line
	10500 5650 10050 5650
Wire Wire Line
	10500 5750 10050 5750
Wire Wire Line
	10500 5850 10050 5850
Wire Wire Line
	10500 5950 10050 5950
Wire Wire Line
	10500 6050 10050 6050
Wire Wire Line
	10500 6150 10050 6150
Wire Wire Line
	10500 6250 10050 6250
Wire Wire Line
	1550 6900 2050 6900
Text Label 1550 6900 0    50   ~ 0
USD-SCLK
Wire Wire Line
	1550 6800 2050 6800
Text Label 1550 6800 0    50   ~ 0
USD-MOSI
Wire Wire Line
	1550 6700 2050 6700
Text Label 1550 6700 0    50   ~ 0
USD-CS
Wire Wire Line
	1550 6400 2050 6400
Text Label 1550 6400 0    50   ~ 0
USD-MISO
Wire Wire Line
	6400 2000 6850 2000
Text Label 6850 2000 2    50   ~ 0
USD-CS
Wire Wire Line
	6400 2100 6850 2100
Text Label 6850 2100 2    50   ~ 0
USD-SCLK
Text Label 6850 2200 2    50   ~ 0
USD-MISO
Text Label 6850 2300 2    50   ~ 0
USD-MOSI
Wire Wire Line
	6400 2200 6850 2200
Text Label 10050 4800 0    50   ~ 0
USD-SCLK
Wire Wire Line
	6400 2500 6700 2500
Wire Wire Line
	6400 3400 7150 3400
Wire Wire Line
	6400 3500 6700 3500
Wire Wire Line
	6400 4100 6700 4100
Wire Wire Line
	6400 4200 6700 4200
Wire Wire Line
	6400 4700 6700 4700
$Comp
L power:GND #PWR?
U 1 1 60648211
P 4150 5450
F 0 "#PWR?" H 4150 5200 50  0001 C CNN
F 1 "GND" H 4155 5277 50  0000 C CNN
F 2 "" H 4150 5450 50  0001 C CNN
F 3 "" H 4150 5450 50  0001 C CNN
	1    4150 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:R R?
U 1 1 60648554
P 4250 5250
F 0 "R?" H 4150 5250 50  0000 C CNN
F 1 "0" H 4150 5350 50  0000 C CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 4180 5250 50  0001 C CNN
F 3 "~" H 4250 5250 50  0001 C CNN
F 4 "DNP" H 4100 5450 50  0000 C CNN "DNP"
	1    4250 5250
	-1   0    0    1   
$EndComp
Wire Wire Line
	3950 4600 4250 4600
Wire Wire Line
	3950 5050 4100 5050
$Comp
L Device:R R?
U 1 1 60653848
P 4100 5250
F 0 "R?" H 4200 5250 50  0000 C CNN
F 1 "0" H 4200 5350 50  0000 C CNN
F 2 "RespiraWorks_std:R_0603_1608Metric" V 4030 5250 50  0001 C CNN
F 3 "~" H 4100 5250 50  0001 C CNN
F 4 "DNP" H 4200 5450 50  0000 C CNN "DNP"
	1    4100 5250
	-1   0    0    1   
$EndComp
Wire Wire Line
	4250 4600 4250 5100
Connection ~ 4250 4600
Wire Wire Line
	4250 4600 4300 4600
Wire Wire Line
	4100 5050 4100 5100
Connection ~ 4100 5050
Wire Wire Line
	4100 5050 4300 5050
Wire Wire Line
	4100 5400 4100 5450
Wire Wire Line
	4100 5450 4150 5450
Wire Wire Line
	4250 5450 4250 5400
Wire Wire Line
	4150 5450 4250 5450
Connection ~ 4150 5450
Wire Wire Line
	4800 4450 4950 4450
Wire Wire Line
	4950 4450 4950 4500
Wire Wire Line
	4950 4500 5100 4500
Wire Wire Line
	4350 4000 5100 4000
NoConn ~ 5100 4400
$Comp
L power:GNDA #PWR?
U 1 1 606ED0BF
P 9750 1250
F 0 "#PWR?" H 9750 1000 50  0001 C CNN
F 1 "GNDA" H 9755 1077 50  0000 C CNN
F 2 "" H 9750 1250 50  0001 C CNN
F 3 "" H 9750 1250 50  0001 C CNN
	1    9750 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3850 1600 4100 1600
Connection ~ 4100 1600
Wire Wire Line
	5700 5000 5700 5350
Wire Wire Line
	5600 5000 5600 5350
Wire Wire Line
	6400 2600 6700 2600
$Comp
L Connector_Generic:Conn_01x06 J?
U 1 1 600E75AE
P 10700 3400
F 0 "J?" H 10550 2900 50  0000 L CNN
F 1 "Arduino Connector" H 10350 3000 50  0000 L CNN
F 2 "RespiraWorks_Std:PinSocket_1x06_P2.54mm_Vertical" H 10700 3400 50  0001 C CNN
F 3 "~" H 10700 3400 50  0001 C CNN
	1    10700 3400
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J?
U 1 1 600E7637
P 10700 5850
F 0 "J?" H 10600 5250 50  0000 L CNN
F 1 "Arduino Connector" H 10300 5350 50  0000 L CNN
F 2 "RespiraWorks_Std:PinSocket_1x08_P2.54mm_Vertical" H 10700 5850 50  0001 C CNN
F 3 "~" H 10700 5850 50  0001 C CNN
	1    10700 5850
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x10 J?
U 1 1 600E76C6
P 10700 4700
F 0 "J?" H 10550 5250 50  0000 L CNN
F 1 "Arduino Connector" H 10350 4100 50  0000 L CNN
F 2 "RespiraWorks_Std:PinSocket_1x10_P2.54mm_Vertical" H 10700 4700 50  0001 C CNN
F 3 "~" H 10700 4700 50  0001 C CNN
	1    10700 4700
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x08 J?
U 1 1 600F2AA2
P 10700 2550
F 0 "J?" H 10650 2950 50  0000 L CNN
F 1 "Arduino Connector" H 10300 2050 50  0000 L CNN
F 2 "RespiraWorks_Std:PinSocket_1x08_P2.54mm_Vertical" H 10700 2550 50  0001 C CNN
F 3 "~" H 10700 2550 50  0001 C CNN
	1    10700 2550
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 600F2B33
P 8850 2900
F 0 "J?" H 8800 3200 50  0000 L CNN
F 1 "Optical end stop 1" H 8500 3100 50  0000 L CNN
F 2 "RespiraWorks_Std:Molex_Micro-Fit_3.0_43650-0315_1x03_P3.00mm_Vertical" H 8850 2900 50  0001 C CNN
F 3 "~" H 8850 2900 50  0001 C CNN
	1    8850 2900
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 600F2BC2
P 8850 3300
F 0 "J?" H 8800 3000 50  0000 L CNN
F 1 "Optical end stop 2" H 8450 2900 50  0000 L CNN
F 2 "RespiraWorks_Std:Molex_Micro-Fit_3.0_43650-0315_1x03_P3.00mm_Vertical" H 8850 3300 50  0001 C CNN
F 3 "~" H 8850 3300 50  0001 C CNN
	1    8850 3300
	1    0    0    -1  
$EndComp
NoConn ~ 10500 2250
Text Label 3850 1600 0    50   ~ 0
nRST
Text Label 10200 2450 0    50   ~ 0
nRST
Wire Wire Line
	10500 2450 10200 2450
Wire Wire Line
	10500 2750 9600 2750
Wire Wire Line
	9600 2750 9600 2850
Wire Wire Line
	10500 2850 9600 2850
Connection ~ 9600 2850
Wire Wire Line
	9600 2850 9600 3150
$Comp
L power:GND #PWR?
U 1 1 601571EF
P 9600 3150
F 0 "#PWR?" H 9600 2900 50  0001 C CNN
F 1 "GND" H 9605 2977 50  0000 C CNN
F 2 "" H 9600 3150 50  0001 C CNN
F 3 "" H 9600 3150 50  0001 C CNN
	1    9600 3150
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 2950 9700 2950
Wire Wire Line
	9700 2950 9700 2650
$Comp
L power:+5V #PWR?
U 1 1 60165EBB
P 9700 2250
F 0 "#PWR?" H 9700 2100 50  0001 C CNN
F 1 "+5V" H 9715 2423 50  0000 C CNN
F 2 "" H 9700 2250 50  0001 C CNN
F 3 "" H 9700 2250 50  0001 C CNN
	1    9700 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 2650 9700 2650
Connection ~ 9700 2650
Wire Wire Line
	9700 2650 9700 2250
Wire Wire Line
	10500 2550 10050 2550
Wire Wire Line
	10050 2550 10050 2350
$Comp
L RespiraWorks:+3.3V_Ctrl #PWR?
U 1 1 6017D8F4
P 10050 2250
F 0 "#PWR?" H 10050 2250 50  0001 C CNN
F 1 "+3.3V_Ctrl" H 10035 2423 50  0000 C CNN
F 2 "" H 10050 2250 50  0001 C CNN
F 3 "" H 10050 2250 50  0001 C CNN
	1    10050 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	10500 2350 10050 2350
Connection ~ 10050 2350
Wire Wire Line
	10050 2350 10050 2250
$Comp
L power:+5V #PWR?
U 1 1 6020E488
P 8350 2750
F 0 "#PWR?" H 8350 2600 50  0001 C CNN
F 1 "+5V" H 8365 2923 50  0000 C CNN
F 2 "" H 8350 2750 50  0001 C CNN
F 3 "" H 8350 2750 50  0001 C CNN
	1    8350 2750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 3200 8350 3200
Wire Wire Line
	8650 2800 8350 2800
$Comp
L power:GND #PWR?
U 1 1 60226FFE
P 8500 3400
F 0 "#PWR?" H 8500 3150 50  0001 C CNN
F 1 "GND" H 8505 3227 50  0000 C CNN
F 2 "" H 8500 3400 50  0001 C CNN
F 3 "" H 8500 3400 50  0001 C CNN
	1    8500 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8650 3000 8500 3000
Wire Wire Line
	8500 3000 8500 3400
Wire Wire Line
	8650 3400 8500 3400
Connection ~ 8500 3400
Wire Wire Line
	7350 850  7500 850 
Connection ~ 7500 850 
Wire Wire Line
	8900 1250 8750 1250
Connection ~ 8750 1250
$Comp
L Device:C C?
U 1 1 601CB6EF
P 4600 1100
F 0 "C?" H 4300 1200 50  0000 L CNN
F 1 "1uF, 10V" H 4150 1100 50  0000 L CNN
F 2 "RespiraWorks_std:C_0603_1608Metric" H 4638 950 50  0001 C CNN
F 3 "~" H 4600 1100 50  0001 C CNN
	1    4600 1100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9900 3400 10500 3400
Wire Wire Line
	6400 2300 6850 2300
Wire Wire Line
	10050 5200 10500 5200
Text Label 10050 4700 0    50   ~ 0
USD-MISO
Text Label 10050 4600 0    50   ~ 0
USD-MOSI
Wire Wire Line
	2200 4350 3700 4350
$Comp
L RespiraWorks:+3.3V_Sns #PWR?
U 1 1 600F7198
P 6200 1050
F 0 "#PWR?" H 6200 1050 50  0001 C CNN
F 1 "+3.3V_Sns" H 6185 1223 50  0000 C CNN
F 2 "" H 6200 1050 50  0001 C CNN
F 3 "" H 6200 1050 50  0001 C CNN
	1    6200 1050
	1    0    0    -1  
$EndComp
$Comp
L RespiraWorks:+3.3V_Sns #PWR?
U 1 1 600F7606
P 9750 850
F 0 "#PWR?" H 9750 850 50  0001 C CNN
F 1 "+3.3V_Sns" H 9735 1023 50  0000 C CNN
F 2 "" H 9750 850 50  0001 C CNN
F 3 "" H 9750 850 50  0001 C CNN
	1    9750 850 
	1    0    0    -1  
$EndComp
Wire Notes Line
	9350 2000 11200 2000
Wire Wire Line
	9550 850  9750 850 
Wire Wire Line
	3150 6100 3550 6100
Wire Wire Line
	8350 2750 8350 2800
Connection ~ 8350 2800
Wire Wire Line
	8350 2800 8350 3200
Text Notes 9300 1950 0    79   ~ 0
Arduino headers for expansion
Text HLabel 4850 3300 0    50   BiDi ~ 0
PC0
Text HLabel 4850 3400 0    50   BiDi ~ 0
PC1
Text HLabel 4850 3500 0    50   BiDi ~ 0
PC2
Text HLabel 4850 3600 0    50   BiDi ~ 0
PC3
Text HLabel 4850 3700 0    50   BiDi ~ 0
PC4
Text HLabel 4850 3800 0    50   BiDi ~ 0
PC5
Text HLabel 4850 3900 0    50   BiDi ~ 0
PC6
Text HLabel 4850 4100 0    50   BiDi ~ 0
PC8
Text HLabel 4850 4200 0    50   BiDi ~ 0
PC9
Text HLabel 4800 4450 0    50   BiDi ~ 0
PC12
Text HLabel 6700 4700 2    50   BiDi ~ 0
PB14
Text HLabel 6700 3900 2    50   BiDi ~ 0
PB6
Text HLabel 6700 3800 2    50   BiDi ~ 0
PB5
Text HLabel 6700 3700 2    50   BiDi ~ 0
PB4
Text HLabel 6700 3500 2    50   BiDi ~ 0
PB2
Text HLabel 7200 3400 2    50   BiDi ~ 0
PB1
Text HLabel 6700 3300 2    50   BiDi ~ 0
PB0
Text HLabel 6700 2800 2    50   BiDi ~ 0
PA12
Text HLabel 6700 2700 2    50   BiDi ~ 0
PA11
Text HLabel 6700 2600 2    50   BiDi ~ 0
PA10
Text HLabel 6700 2500 2    50   BiDi ~ 0
PA9
Text HLabel 6700 2400 2    50   BiDi ~ 0
PA8
Text HLabel 6700 1900 2    50   BiDi ~ 0
PA3
Text HLabel 7200 1800 2    50   BiDi ~ 0
PA2
Text HLabel 6700 1700 2    50   BiDi ~ 0
PA1
Text HLabel 4850 3100 0    50   BiDi ~ 0
PD2
Wire Notes Line
	9350 4000 11200 4000
Text Notes 10800 4350 0    50   ~ 0
D8
Text Notes 10800 4450 0    50   ~ 0
D9
Text Notes 10800 4550 0    50   ~ 0
D10
Text Notes 10800 4650 0    50   ~ 0
D11
Text Notes 10800 4750 0    50   ~ 0
D12
Text Notes 10800 4850 0    50   ~ 0
D13
Text Notes 10800 5150 0    50   ~ 0
D18/SDA
Text Notes 10800 5250 0    50   ~ 0
D19/SCL
Text Notes 10800 5600 0    50   ~ 0
D0
Text Notes 10800 5700 0    50   ~ 0
D1
Text Notes 10800 5800 0    50   ~ 0
D2
Text Notes 10800 5900 0    50   ~ 0
D3
Text Notes 10800 6000 0    50   ~ 0
D4
Text Notes 10800 6100 0    50   ~ 0
D5
Text Notes 10800 6200 0    50   ~ 0
D6
Text Notes 10800 6300 0    50   ~ 0
D7
Text Notes 10800 5050 0    50   ~ 0
AREF
Text HLabel 3850 1600 0    50   Input ~ 0
nRST
Text Notes 10800 3000 0    50   ~ 0
VIN
Text Notes 10800 2400 0    50   ~ 0
IOREF
Text Notes 10800 2500 0    50   ~ 0
RESET
Text Notes 10800 3250 0    50   ~ 0
A0
Text Notes 10800 2300 0    50   ~ 0
NC
Text HLabel 6700 4300 2    50   BiDi ~ 0
PB10
Text HLabel 6700 4400 2    50   BiDi ~ 0
PB11
Text HLabel 6700 4500 2    50   BiDi ~ 0
PB12
Text HLabel 6700 4600 2    50   BiDi ~ 0
PB13
Text HLabel 6700 4800 2    50   BiDi ~ 0
PB15
Wire Wire Line
	6400 1800 7150 1800
Wire Wire Line
	6400 1700 6700 1700
Wire Wire Line
	7150 1800 7150 2900
Connection ~ 7150 1800
Wire Wire Line
	7150 1800 7200 1800
Wire Wire Line
	7150 3300 7150 3400
Connection ~ 7150 3400
Wire Wire Line
	7150 3400 7200 3400
Wire Wire Line
	7150 2900 8650 2900
Wire Wire Line
	7150 3300 8650 3300
Wire Wire Line
	6400 4300 6700 4300
Wire Wire Line
	6400 4400 6700 4400
Wire Wire Line
	6400 4500 6700 4500
Wire Wire Line
	6400 4600 6700 4600
Wire Wire Line
	6400 4800 6700 4800
Connection ~ 9750 850 
Wire Wire Line
	9750 850  9900 850 
Wire Wire Line
	5300 1300 5300 1400
Wire Wire Line
	5300 1050 5300 1100
$Comp
L Device:Battery_Cell BT?
U 1 1 6017902B
P 3950 1150
F 0 "BT?" H 4068 1246 50  0000 L CNN
F 1 "CR2016" H 4068 1155 50  0000 L CNN
F 2 "RespiraWorks:BatteryHolder_CR2016_MPD_BLP2016SM-G" V 3950 1210 50  0001 C CNN
F 3 "~" V 3950 1210 50  0001 C CNN
F 4 "MPD" H 3950 1150 50  0001 C CNN "Manufacturer"
F 5 "BLP2016SM-GTR" H 3950 1150 50  0001 C CNN "Manufacturer PN"
	1    3950 1150
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 60179031
P 3950 1250
AR Path="/5FCD4B8E/5FCD4BC5/60179031" Ref="#PWR?"  Part="1" 
AR Path="/5FCD4B8E/5FE27F70/60179031" Ref="#PWR?"  Part="1" 
AR Path="/5FCD4D85/60179031" Ref="#PWR?"  Part="1" 
AR Path="/5FCD4E9D/60179031" Ref="#PWR?"  Part="1" 
AR Path="/5FCD4E9D/600630A6/60179031" Ref="#PWR?"  Part="1" 
AR Path="/5FCD4E9D/60073FCF/60179031" Ref="#PWR?"  Part="1" 
AR Path="/5FCD4E9D/6007AC3B/60179031" Ref="#PWR?"  Part="1" 
AR Path="/5FCD4E9D/6007BD34/60179031" Ref="#PWR?"  Part="1" 
AR Path="/5FCD4E9D/6007DA64/60179031" Ref="#PWR?"  Part="1" 
AR Path="/5FCD4E9D/6007E2BB/60179031" Ref="#PWR?"  Part="1" 
AR Path="/5FCD4E9D/600CF516/60179031" Ref="#PWR?"  Part="1" 
AR Path="/6017BD7E/60179031" Ref="#PWR?"  Part="1" 
AR Path="/5FCD4D18/60179031" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3950 1000 50  0001 C CNN
F 1 "GND" H 3955 1077 50  0000 C CNN
F 2 "" H 3950 1250 50  0001 C CNN
F 3 "" H 3950 1250 50  0001 C CNN
	1    3950 1250
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3950 950  4600 950 
Connection ~ 4600 950 
Text Label 4000 950  0    50   ~ 0
RTC-Batt
$Comp
L Device:C C?
U 1 1 5FEE8ADE
P 3600 4600
F 0 "C?" V 3450 4550 50  0000 L CNN
F 1 "6.8pF" V 3550 4300 50  0000 L CNN
F 2 "RespiraWorks_std:C_0603_1608Metric" H 3638 4450 50  0001 C CNN
F 3 "~" H 3600 4600 50  0001 C CNN
F 4 "" V 3450 4400 50  0001 C CNN "DNP"
	1    3600 4600
	0    1    1    0   
$EndComp
Wire Wire Line
	5900 1050 5800 1050
Wire Wire Line
	6000 1400 6000 1050
Wire Wire Line
	6000 1050 6200 1050
Wire Wire Line
	5800 1400 5800 1050
Wire Wire Line
	5900 1400 5900 1050
Text Notes 2400 2450 0    50   ~ 0
Uses MSI internal 4 Mhz clock\nby default
Wire Wire Line
	6400 1600 6700 1600
Text HLabel 6700 1600 2    50   BiDi ~ 0
PA0
Text Notes 10800 3350 0    50   ~ 0
A1
Text Notes 10800 3450 0    50   ~ 0
A2
Text Notes 10800 3550 0    50   ~ 0
A3
Text Notes 10800 3650 0    50   ~ 0
A4
Text Notes 10800 3750 0    50   ~ 0
A5
Text Label 9900 3700 0    50   ~ 0
PC0
Text Label 9900 3600 0    50   ~ 0
PC1
Text Label 9900 3500 0    50   ~ 0
PB6
Text Label 9900 3400 0    50   ~ 0
PA8
Text Label 9900 3300 0    50   ~ 0
PA1
Wire Wire Line
	5100 3300 4850 3300
Text Label 10050 4300 0    50   ~ 0
PB10
Text Label 10050 4400 0    50   ~ 0
PB13
Text Label 10050 4500 0    50   ~ 0
PB12
Text Label 10050 5100 0    50   ~ 0
PB9
Text Label 10050 5200 0    50   ~ 0
PB8
Text Label 10050 5550 0    50   ~ 0
PA10
Text Label 10050 5650 0    50   ~ 0
PA9
Text Label 10050 5750 0    50   ~ 0
PB11
Text Label 10050 5850 0    50   ~ 0
PB2
Text Label 10050 5950 0    50   ~ 0
PB15
Text Label 10050 6050 0    50   ~ 0
PB14
Text Label 10050 6150 0    50   ~ 0
PA2
Text Label 10050 6250 0    50   ~ 0
PB1
$EndSCHEMATC
