EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
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
L up5k-synth:TPS63031 U17
U 1 1 60F90798
P 3700 6475
F 0 "U17" H 3700 6950 50  0000 C CNN
F 1 "TPS63031" H 3700 6859 50  0000 C CNN
F 2 "up5k-synth:VSON-10-1EP_3x3mm_P0.5mm_EP1.2x2mm_ThermalVias" H 3700 6275 50  0001 C CNN
F 3 "" H 3700 6275 50  0001 C CNN
	1    3700 6475
	1    0    0    -1  
$EndComp
$Comp
L up5k-synth:TPS62120DCNR U16
U 1 1 60F9079E
P 7975 5275
F 0 "U16" H 8000 6040 50  0000 C CNN
F 1 "TPS62120DCNR" H 8000 5949 50  0000 C CNN
F 2 "up5k-synth:SOT-23-8_Handsoldering" H 7975 5275 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/tps62120.pdf" H 7975 5275 50  0001 C CNN
	1    7975 5275
	1    0    0    -1  
$EndComp
$Comp
L up5k-synth:4.7uF_10V_0805 C58
U 1 1 60F907A4
P 3850 4000
F 0 "C58" V 3896 3922 50  0000 R CNN
F 1 "4.7uF_10V_0805" H 4100 4125 50  0000 R CNN
F 2 "up5k-synth:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 3850 4000 50  0001 C CNN
F 3 "" H 3850 4000 50  0001 C CNN
	1    3850 4000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3250 3600 3400 3600
Wire Wire Line
	3250 3700 3400 3700
Wire Wire Line
	3400 3700 3400 3600
Connection ~ 3400 3600
Wire Wire Line
	3400 3600 3600 3600
$Comp
L up5k-synth:1kR R86
U 1 1 60F907AF
P 3700 3225
F 0 "R86" H 3700 3450 50  0000 C CNN
F 1 "1kR" H 3700 3359 50  0000 C CNN
F 2 "up5k-synth:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 3700 3225 50  0001 C CNN
F 3 "" H 3700 3225 50  0001 C CNN
	1    3700 3225
	-1   0    0    1   
$EndComp
$Comp
L up5k-synth:1kR R85
U 1 1 60F907B5
P 3650 2900
F 0 "R85" H 3650 2685 50  0000 C CNN
F 1 "1kR" H 3650 2776 50  0000 C CNN
F 2 "up5k-synth:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 3650 2900 50  0001 C CNN
F 3 "" H 3650 2900 50  0001 C CNN
	1    3650 2900
	-1   0    0    1   
$EndComp
Connection ~ 3600 3600
$Comp
L up5k-synth:Inductance L2
U 1 1 60F907BC
P 3700 5925
F 0 "L2" H 3700 6150 50  0000 C CNN
F 1 "Inductance" H 3700 6059 50  0000 C CNN
F 2 "up5k-synth:LPS3015" H 3700 5925 50  0001 C CNN
F 3 "" H 3700 5925 50  0001 C CNN
	1    3700 5925
	1    0    0    -1  
$EndComp
$Comp
L up5k-synth:LED D20
U 1 1 60F907C2
P 3350 3225
F 0 "D20" H 3325 3010 50  0000 C CNN
F 1 "LED" H 3325 3101 50  0000 C CNN
F 2 "up5k-synth:LED_Cree-PLCC4_3.2x2.8mm_CCW" H 3350 3225 50  0001 C CNN
F 3 "" H 3350 3225 50  0001 C CNN
	1    3350 3225
	-1   0    0    1   
$EndComp
$Comp
L up5k-synth:LED D19
U 1 1 60F907C8
P 3300 2900
F 0 "D19" H 3275 2685 50  0000 C CNN
F 1 "LED" H 3275 2776 50  0000 C CNN
F 2 "up5k-synth:LED_Cree-PLCC4_3.2x2.8mm_CCW" H 3300 2900 50  0001 C CNN
F 3 "" H 3300 2900 50  0001 C CNN
	1    3300 2900
	-1   0    0    1   
$EndComp
Wire Wire Line
	3300 6225 3300 5925
Wire Wire Line
	3300 5925 3550 5925
Wire Wire Line
	3850 5925 4100 5925
Wire Wire Line
	4100 5925 4100 6225
$Comp
L up5k-synth:4.7uF_10V_0805 C62
U 1 1 60F907D2
P 2600 6475
F 0 "C62" V 2500 6475 50  0000 L CNN
F 1 "4.7uF_10V_0805" V 2600 6125 50  0000 L CNN
F 2 "up5k-synth:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2600 6475 50  0001 C CNN
F 3 "" H 2600 6475 50  0001 C CNN
	1    2600 6475
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 6325 4200 6325
Wire Wire Line
	4200 6325 4200 6525
Wire Wire Line
	4200 6525 4100 6525
Wire Wire Line
	6725 4775 6975 4775
Wire Wire Line
	3000 2900 3200 2900
Wire Wire Line
	3450 2900 3500 2900
Wire Wire Line
	3800 2900 3850 2900
Wire Wire Line
	3500 3225 3550 3225
Wire Wire Line
	3250 4050 3300 4050
Wire Wire Line
	3300 4050 3300 4300
Wire Wire Line
	3300 4600 3250 4600
Wire Wire Line
	3250 4400 3300 4400
Connection ~ 3300 4400
Wire Wire Line
	3300 4400 3300 4600
Wire Wire Line
	2950 4750 3100 4750
Wire Wire Line
	3300 4750 3300 4600
Connection ~ 3300 4600
Wire Wire Line
	3250 4300 3300 4300
Connection ~ 3300 4300
Wire Wire Line
	3300 4300 3300 4400
Wire Wire Line
	2450 4500 2450 4600
$Comp
L up5k-synth:4.7uF_10V_0805 C59
U 1 1 60F907ED
P 2100 4750
F 0 "C59" V 2054 4838 50  0000 L CNN
F 1 "4.7uF_10V_0805" H 1600 4650 50  0000 L CNN
F 2 "up5k-synth:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 2100 4750 50  0001 C CNN
F 3 "" H 2100 4750 50  0001 C CNN
	1    2100 4750
	0    1    1    0   
$EndComp
$Comp
L up5k-synth:10kR R89
U 1 1 60F907F3
P 1850 4350
F 0 "R89" V 1700 4375 50  0000 L CNN
F 1 "10kR" H 2000 4300 50  0000 L CNN
F 2 "up5k-synth:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 1850 4350 50  0001 C CNN
F 3 "" H 1850 4350 50  0001 C CNN
	1    1850 4350
	0    1    1    0   
$EndComp
$Comp
L up5k-synth:1.8kR R88
U 1 1 60F907F9
P 1950 4000
F 0 "R88" H 1950 4225 50  0000 C CNN
F 1 "1.8kR" H 1950 4134 50  0000 C CNN
F 2 "up5k-synth:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 1950 4000 50  0001 C CNN
F 3 "" H 1950 4000 50  0001 C CNN
	1    1950 4000
	1    0    0    -1  
$EndComp
$Comp
L up5k-synth:3kR R87
U 1 1 60F907FF
P 1950 3650
F 0 "R87" H 1950 3875 50  0000 C CNN
F 1 "3kR" H 1950 3784 50  0000 C CNN
F 2 "up5k-synth:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 1950 3650 50  0001 C CNN
F 3 "" H 1950 3650 50  0001 C CNN
	1    1950 3650
	1    0    0    -1  
$EndComp
$Comp
L up5k-synth:1.0uF_10V_0805 C57
U 1 1 60F90805
P 1350 3700
F 0 "C57" V 1225 3750 50  0000 L CNN
F 1 "1.0uF_10V_0805" H 1425 3800 50  0000 L CNN
F 2 "up5k-synth:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 1350 3700 50  0001 C CNN
F 3 "" H 1350 3700 50  0001 C CNN
	1    1350 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	2450 3500 1450 3500
Wire Wire Line
	1350 3500 1350 3550
Wire Wire Line
	2100 4900 2000 4900
Wire Wire Line
	1350 4900 1350 3850
Wire Wire Line
	1800 3650 1600 3650
Wire Wire Line
	1600 3650 1600 4900
Connection ~ 1600 4900
Wire Wire Line
	1600 4900 1350 4900
Wire Wire Line
	2100 3650 2450 3650
Wire Wire Line
	2450 4000 2100 4000
Wire Wire Line
	1800 4000 1700 4000
Wire Wire Line
	1700 4000 1700 4900
Connection ~ 1700 4900
Wire Wire Line
	1700 4900 1600 4900
Wire Wire Line
	2450 4150 1850 4150
Wire Wire Line
	1850 4150 1850 4200
Wire Wire Line
	1850 4500 1850 4900
Connection ~ 1850 4900
Wire Wire Line
	1850 4900 1700 4900
Wire Wire Line
	2450 4600 2400 4600
$Comp
L up5k-synth:1043P B1
U 1 1 60F9081F
P 2400 4750
F 0 "B1" V 2379 4878 50  0000 L CNN
F 1 "186501_1043P" V 2470 4878 50  0001 L CNN
F 2 "up5k-synth:BatteryHolder_Keystone_1043_1x18650" H 2500 4750 50  0001 C CNN
F 3 "" H 2500 4750 50  0001 C CNN
	1    2400 4750
	0    1    1    0   
$EndComp
Connection ~ 2400 4600
Wire Wire Line
	2400 4600 2250 4600
Wire Wire Line
	2000 4950 2000 4900
Connection ~ 2000 4900
Wire Wire Line
	2000 4900 1850 4900
Wire Wire Line
	2600 6325 3300 6325
Wire Wire Line
	2600 6625 2600 6725
$Comp
L up5k-synth:10uF_10V_0805 C63
U 1 1 60F9082C
P 4500 6475
F 0 "C63" V 4454 6563 50  0000 L CNN
F 1 "10uF_10V_0805" V 4545 6563 50  0000 L CNN
F 2 "up5k-synth:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 4500 6475 50  0001 C CNN
F 3 "" H 4500 6475 50  0001 C CNN
	1    4500 6475
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 6725 4250 6725
Wire Wire Line
	4500 6725 4500 6625
Wire Wire Line
	4200 6325 4500 6325
Connection ~ 4200 6325
$Comp
L power:+3.3V #PWR0127
U 1 1 60F90836
P 4500 6325
F 0 "#PWR0127" H 4500 6175 50  0001 C CNN
F 1 "+3.3V" H 4515 6498 50  0000 C CNN
F 2 "" H 4500 6325 50  0001 C CNN
F 3 "" H 4500 6325 50  0001 C CNN
	1    4500 6325
	1    0    0    -1  
$EndComp
Connection ~ 4500 6325
$Comp
L power:+3.3V #PWR0121
U 1 1 60F9083D
P 6725 4775
F 0 "#PWR0121" H 6725 4625 50  0001 C CNN
F 1 "+3.3V" H 6740 4948 50  0000 C CNN
F 2 "" H 6725 4775 50  0001 C CNN
F 3 "" H 6725 4775 50  0001 C CNN
	1    6725 4775
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0123
U 1 1 60F90843
P 2000 4950
F 0 "#PWR0123" H 2000 4700 50  0001 C CNN
F 1 "GND" H 2005 4777 50  0000 C CNN
F 2 "" H 2000 4950 50  0001 C CNN
F 3 "" H 2000 4950 50  0001 C CNN
	1    2000 4950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0119
U 1 1 60F90849
P 3100 4750
F 0 "#PWR0119" H 3100 4500 50  0001 C CNN
F 1 "GND" H 3105 4577 50  0000 C CNN
F 2 "" H 3100 4750 50  0001 C CNN
F 3 "" H 3100 4750 50  0001 C CNN
	1    3100 4750
	1    0    0    -1  
$EndComp
Connection ~ 3100 4750
Wire Wire Line
	3100 4750 3300 4750
$Comp
L power:GNDPWR #PWR0129
U 1 1 60F90851
P 3200 6725
F 0 "#PWR0129" H 3200 6525 50  0001 C CNN
F 1 "GNDPWR" H 3204 6571 50  0000 C CNN
F 2 "" H 3200 6675 50  0001 C CNN
F 3 "" H 3200 6675 50  0001 C CNN
	1    3200 6725
	1    0    0    -1  
$EndComp
Connection ~ 3200 6725
Wire Wire Line
	3200 6725 3300 6725
$Comp
L power:GNDPWR #PWR0130
U 1 1 60F90859
P 4250 6725
F 0 "#PWR0130" H 4250 6525 50  0001 C CNN
F 1 "GNDPWR" H 4254 6571 50  0000 C CNN
F 2 "" H 4250 6675 50  0001 C CNN
F 3 "" H 4250 6675 50  0001 C CNN
	1    4250 6725
	1    0    0    -1  
$EndComp
Connection ~ 4250 6725
Wire Wire Line
	4250 6725 4500 6725
$Comp
L power:+BATT #PWR0118
U 1 1 60F90861
P 2250 4600
F 0 "#PWR0118" H 2250 4450 50  0001 C CNN
F 1 "+BATT" H 2265 4773 50  0000 C CNN
F 2 "" H 2250 4600 50  0001 C CNN
F 3 "" H 2250 4600 50  0001 C CNN
	1    2250 4600
	1    0    0    -1  
$EndComp
Connection ~ 2250 4600
Wire Wire Line
	2250 4600 2100 4600
Text Label 3650 3600 0    50   ~ 0
Vout
Text Label 2800 6325 0    50   ~ 0
Vout
Wire Wire Line
	3250 3500 3450 3500
Wire Wire Line
	3250 3800 3450 3800
Text Label 3300 3500 0    50   ~ 0
!CHG
Text Label 3300 3800 0    50   ~ 0
!PGOOD
Wire Wire Line
	3600 3950 3600 3600
Wire Wire Line
	3600 3600 3850 3600
Wire Wire Line
	3250 3950 3600 3950
Wire Wire Line
	3850 3850 3850 3600
Connection ~ 3850 3600
Wire Wire Line
	3850 3600 3950 3600
Wire Wire Line
	3850 4150 3850 4400
Wire Wire Line
	3850 4400 3300 4400
Wire Wire Line
	3250 3225 3000 3225
Text Label 3000 2900 0    50   ~ 0
!CHG
Text Label 3000 3225 0    50   ~ 0
!PGOOD
$Comp
L up5k-synth:180kR R91
U 1 1 60F9087A
P 9075 4925
F 0 "R91" V 9025 4725 50  0000 L CNN
F 1 "180kR" V 9125 4575 50  0000 L CNN
F 2 "up5k-synth:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 9075 4925 50  0001 C CNN
F 3 "" H 9075 4925 50  0001 C CNN
	1    9075 4925
	0    1    1    0   
$EndComp
$Comp
L up5k-synth:360kR R93
U 1 1 60F90880
P 8775 5275
F 0 "R93" H 8875 5175 50  0000 C CNN
F 1 "360kR" H 8675 5175 50  0000 C CNN
F 2 "up5k-synth:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 8775 5275 50  0001 C CNN
F 3 "" H 8775 5275 50  0001 C CNN
	1    8775 5275
	-1   0    0    1   
$EndComp
Wire Wire Line
	8525 5675 8825 5675
Wire Wire Line
	8525 5375 8625 5375
Wire Wire Line
	8525 4775 8625 4775
Wire Wire Line
	8925 4775 9075 4775
Connection ~ 9075 4775
Wire Wire Line
	8525 5075 8575 5075
Connection ~ 9075 5075
Wire Wire Line
	8525 5525 8625 5525
Wire Wire Line
	8625 5525 8625 5375
Connection ~ 8625 5375
Wire Wire Line
	8925 5275 9075 5275
$Comp
L power:GNDPWR #PWR0126
U 1 1 60F90891
P 6725 5325
F 0 "#PWR0126" H 6725 5125 50  0001 C CNN
F 1 "GNDPWR" H 6729 5171 50  0000 C CNN
F 2 "" H 6725 5275 50  0001 C CNN
F 3 "" H 6725 5275 50  0001 C CNN
	1    6725 5325
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR0125
U 1 1 60F90897
P 9075 5275
F 0 "#PWR0125" H 9075 5075 50  0001 C CNN
F 1 "GNDPWR" H 9125 5325 50  0000 C CNN
F 2 "" H 9075 5225 50  0001 C CNN
F 3 "" H 9075 5225 50  0001 C CNN
	1    9075 5275
	1    0    0    -1  
$EndComp
Wire Wire Line
	9275 5075 9075 5075
Wire Wire Line
	8625 5275 8575 5275
Wire Wire Line
	8575 5275 8575 5075
Connection ~ 8575 5075
Wire Wire Line
	8575 5075 9075 5075
Wire Wire Line
	9375 5375 9375 4775
Connection ~ 9375 4775
Wire Wire Line
	9375 4775 9525 4775
$Comp
L power:+1V2 #PWR0122
U 1 1 60F908A5
P 9525 4775
F 0 "#PWR0122" H 9525 4625 50  0001 C CNN
F 1 "+1V2" H 9540 4948 50  0000 C CNN
F 2 "" H 9525 4775 50  0001 C CNN
F 3 "" H 9525 4775 50  0001 C CNN
	1    9525 4775
	1    0    0    -1  
$EndComp
$Comp
L up5k-synth:4.7uF_10V_0805 C61
U 1 1 60F908AB
P 6975 5075
F 0 "C61" V 6929 5163 50  0000 L CNN
F 1 "4.7uF_10V_0805" V 7125 5075 50  0000 L CNN
F 2 "up5k-synth:C_0805_2012Metric_Pad1.18x1.45mm_HandSolder" H 6975 5075 50  0001 C CNN
F 3 "" H 6975 5075 50  0001 C CNN
	1    6975 5075
	0    1    1    0   
$EndComp
Wire Wire Line
	6975 5225 6975 5325
Connection ~ 6975 5325
Wire Wire Line
	6975 5325 6725 5325
Wire Wire Line
	6975 4775 6975 4925
Connection ~ 6975 4775
Wire Wire Line
	6975 5325 7475 5325
$Comp
L power:VBUS #PWR0117
U 1 1 60F908B7
P 1450 3500
F 0 "#PWR0117" H 1450 3350 50  0001 C CNN
F 1 "VBUS" H 1465 3673 50  0000 C CNN
F 2 "" H 1450 3500 50  0001 C CNN
F 3 "" H 1450 3500 50  0001 C CNN
	1    1450 3500
	1    0    0    -1  
$EndComp
Connection ~ 1450 3500
Wire Wire Line
	1450 3500 1350 3500
Text Notes 6725 4475 0    50   ~ 0
The 3v3 can be switched \nto the Vout power instead
$Comp
L up5k-synth:LMS33460 U14
U 1 1 60F908C0
P 7300 2475
F 0 "U14" H 7275 2800 50  0000 C CNN
F 1 "LMS33460" H 7275 2709 50  0000 C CNN
F 2 "up5k-synth:SC-70-5" H 7250 2375 50  0001 C CNN
F 3 "" H 7250 2375 50  0001 C CNN
	1    7300 2475
	1    0    0    -1  
$EndComp
Wire Wire Line
	6950 2475 6900 2475
Wire Wire Line
	6900 2475 6900 2575
Wire Wire Line
	6950 2575 6900 2575
Connection ~ 6900 2575
Wire Wire Line
	6900 2575 6900 2675
Wire Wire Line
	7600 2375 7900 2375
Wire Wire Line
	7600 2575 7900 2575
$Comp
L up5k-synth:360kR R90
U 1 1 60F908CD
P 7425 4925
F 0 "R90" V 7525 4825 50  0000 C CNN
F 1 "360kR" H 7425 5025 50  0000 C CNN
F 2 "up5k-synth:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 7425 4925 50  0001 C CNN
F 3 "" H 7425 4925 50  0001 C CNN
	1    7425 4925
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7475 5075 7425 5075
Connection ~ 7425 4775
Wire Wire Line
	7425 4775 7475 4775
Wire Wire Line
	8625 5375 8825 5375
$Comp
L up5k-synth:360kR R94
U 1 1 60F908D7
P 8825 5525
F 0 "R94" V 8925 5425 50  0000 C CNN
F 1 "360kR" H 8825 5625 50  0000 C CNN
F 2 "up5k-synth:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 8825 5525 50  0001 C CNN
F 3 "" H 8825 5525 50  0001 C CNN
	1    8825 5525
	0    -1   -1   0   
$EndComp
Connection ~ 8825 5375
Wire Wire Line
	8825 5375 9375 5375
Wire Wire Line
	2950 6425 3200 6425
Wire Wire Line
	3300 6525 3200 6525
Wire Wire Line
	3200 6525 3200 6425
Wire Wire Line
	6975 4775 7425 4775
Connection ~ 3200 6425
Wire Wire Line
	3200 6425 3300 6425
Wire Wire Line
	3300 6625 3050 6625
Text Label 3050 6625 0    50   ~ 0
BGD
Text Label 7650 2575 0    50   ~ 0
BGD
$Comp
L up5k-synth:360kR R84
U 1 1 60F908E8
P 8050 2475
F 0 "R84" V 7950 2375 50  0000 C CNN
F 1 "360kR" H 8050 2575 50  0000 C CNN
F 2 "up5k-synth:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 8050 2475 50  0001 C CNN
F 3 "" H 8050 2475 50  0001 C CNN
	1    8050 2475
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8150 2325 8050 2325
Wire Wire Line
	7900 2325 7900 2375
Wire Wire Line
	7900 2575 7900 2625
Wire Wire Line
	7900 2625 8050 2625
$Comp
L power:GND #PWR0116
U 1 1 60F908F2
P 6900 2675
F 0 "#PWR0116" H 6900 2425 50  0001 C CNN
F 1 "GND" H 6905 2502 50  0000 C CNN
F 2 "" H 6900 2675 50  0001 C CNN
F 3 "" H 6900 2675 50  0001 C CNN
	1    6900 2675
	1    0    0    -1  
$EndComp
$Comp
L up5k-synth:BQ24074 U15
U 1 1 60F908F8
P 2800 3750
F 0 "U15" H 2850 4225 50  0000 C CNN
F 1 "BQ24074" H 2850 4134 50  0000 C CNN
F 2 "up5k-synth:QFN-16-1EP_3x3mm_P0.5mm_EP1.9x1.9mm_ThermalVias" H 2350 2700 50  0001 C CNN
F 3 "https://www.ti.com/lit/ds/symlink/bq24074.pdf" H 2800 3750 50  0001 C CNN
	1    2800 3750
	1    0    0    -1  
$EndComp
Connection ~ 2450 4600
Wire Wire Line
	2600 6725 2950 6725
$Comp
L up5k-synth:0.1uF_10V_0603 C64
U 1 1 60F90900
P 2950 6575
F 0 "C64" V 2904 6663 50  0000 L CNN
F 1 "0.1uF_10V_0603" V 3050 6250 50  0000 L CNN
F 2 "up5k-synth:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2950 6475 50  0001 C CNN
F 3 "" H 2950 6575 50  0001 C CNN
	1    2950 6575
	0    1    1    0   
$EndComp
Connection ~ 2950 6725
Wire Wire Line
	2950 6725 3200 6725
Wire Wire Line
	9075 4775 9275 4775
$Comp
L up5k-synth:27pF_10V_0603 C60
U 1 1 60F90909
P 9275 4925
F 0 "C60" V 9229 5013 50  0000 L CNN
F 1 "27pF_10V_0603" V 9320 5013 50  0000 L CNN
F 2 "up5k-synth:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 9275 4725 50  0001 C CNN
F 3 "" H 9275 4925 50  0001 C CNN
	1    9275 4925
	0    1    1    0   
$EndComp
Connection ~ 9275 4775
Wire Wire Line
	9275 4775 9375 4775
$Comp
L up5k-synth:22uH L1
U 1 1 60F90911
P 8775 4775
F 0 "L1" H 8775 5000 50  0000 C CNN
F 1 "22uH" H 8775 4909 50  0000 C CNN
F 2 "up5k-synth:LPS3015" H 8775 4775 50  0001 C CNN
F 3 "https://www.mouser.com/datasheet/2/597/lps3015-270734.pdf" H 8775 4775 50  0001 C CNN
	1    8775 4775
	1    0    0    -1  
$EndComp
$Comp
L up5k-synth:DS2745 U12
U 1 1 60F90917
P 2675 1675
F 0 "U12" H 2675 2050 50  0000 C CNN
F 1 "DS2745" H 2675 1959 50  0000 C CNN
F 2 "up5k-synth:TSSOP-8_3x3mm_P0.65mm" H 2675 1325 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/DS2745.pdf" H 2675 1725 50  0001 C CNN
	1    2675 1675
	1    0    0    -1  
$EndComp
Wire Wire Line
	2975 1525 2975 1625
$Comp
L power:+BATT #PWR0113
U 1 1 60F9091E
P 3025 1525
F 0 "#PWR0113" H 3025 1375 50  0001 C CNN
F 1 "+BATT" H 3040 1698 50  0000 C CNN
F 2 "" H 3025 1525 50  0001 C CNN
F 3 "" H 3025 1525 50  0001 C CNN
	1    3025 1525
	1    0    0    -1  
$EndComp
Connection ~ 2975 1525
Wire Wire Line
	3025 1525 2975 1525
$Comp
L up5k-synth:R_20mR_0603 R92
U 1 1 60F90926
P 2250 4950
F 0 "R92" V 2350 4975 50  0000 C CNN
F 1 "R_20mR_0603" V 2450 5100 50  0000 C CNN
F 2 "up5k-synth:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 2290 4940 50  0001 C CNN
F 3 "~" H 2250 4950 50  0001 C CNN
	1    2250 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	2975 1725 2975 1825
Connection ~ 2975 1825
$Comp
L power:GND #PWR0128
U 1 1 60F9092E
P 2600 6725
F 0 "#PWR0128" H 2600 6475 50  0001 C CNN
F 1 "GND" H 2605 6552 50  0000 C CNN
F 2 "" H 2600 6725 50  0001 C CNN
F 3 "" H 2600 6725 50  0001 C CNN
	1    2600 6725
	1    0    0    -1  
$EndComp
Text Label 1775 1525 0    50   ~ 0
SC0_SCL_PAD[1]
Text Label 1775 1625 0    50   ~ 0
SC0_SDA_PAD[0]
Wire Wire Line
	1775 1525 2375 1525
Wire Wire Line
	1775 1625 2375 1625
Wire Wire Line
	1775 1725 2375 1725
$Comp
L power:GNDPWR #PWR0114
U 1 1 60F90939
P 2375 1825
F 0 "#PWR0114" H 2375 1625 50  0001 C CNN
F 1 "GNDPWR" H 2379 1671 50  0000 C CNN
F 2 "" H 2375 1775 50  0001 C CNN
F 3 "" H 2375 1775 50  0001 C CNN
	1    2375 1825
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 4900 2100 4950
Connection ~ 2100 4900
Connection ~ 2600 6725
$Comp
L power:-BATT #PWR0124
U 1 1 60F90942
P 2400 4950
F 0 "#PWR0124" H 2400 4800 50  0001 C CNN
F 1 "-BATT" V 2415 5078 50  0000 L CNN
F 2 "" H 2400 4950 50  0001 C CNN
F 3 "" H 2400 4950 50  0001 C CNN
	1    2400 4950
	0    1    1    0   
$EndComp
Connection ~ 2400 4950
$Comp
L power:-BATT #PWR0115
U 1 1 60F90949
P 2975 1825
F 0 "#PWR0115" H 2975 1675 50  0001 C CNN
F 1 "-BATT" V 2990 1953 50  0000 L CNN
F 2 "" H 2975 1825 50  0001 C CNN
F 3 "" H 2975 1825 50  0001 C CNN
	1    2975 1825
	0    1    1    0   
$EndComp
Text Label 7625 2375 0    50   ~ 0
PSU_EN
Connection ~ 3850 3225
Wire Wire Line
	3850 3225 3850 3600
Wire Wire Line
	3850 2900 3850 3225
Text HLabel 1775 1525 0    50   Input ~ 0
SCO_SCL_PAD[1]
Text HLabel 1775 1625 0    50   Input ~ 0
SCO_SDA_PAD[0]
Text HLabel 8150 2325 2    50   Input ~ 0
PSU_EN
Connection ~ 8050 2625
Wire Wire Line
	8050 2625 8150 2625
Connection ~ 8050 2325
Wire Wire Line
	8050 2325 7900 2325
Text HLabel 3950 3600 2    50   Input ~ 0
Vout
$EndSCHEMATC
