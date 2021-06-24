EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
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
L up5k-synth:AD8531 U?
U 2 1 61C23B4F
P 3175 6025
AR Path="/61C23B4F" Ref="U?"  Part="2" 
AR Path="/61BD42FB/61C23B4F" Ref="U?"  Part="2" 
F 0 "U?" H 3325 6375 50  0000 C CNN
F 1 "AD8531" H 3375 6275 50  0000 C CNN
F 2 "up5k-synth:SOIC-8_W3.9mm" H 3175 5745 50  0001 C CNN
F 3 "https://datasheet.octopart.com/AD8534ARZ-REEL-Analog-Devices-datasheet-5333818.pdf" H 3175 6025 50  0001 C CNN
	2    3175 6025
	-1   0    0    1   
$EndComp
$Comp
L up5k-synth:AD8531 U?
U 2 1 61C23B55
P 3275 4625
AR Path="/61C23B55" Ref="U?"  Part="2" 
AR Path="/61BD42FB/61C23B55" Ref="U?"  Part="2" 
F 0 "U?" H 3275 4992 50  0000 C CNN
F 1 "AD8531" H 3275 4901 50  0000 C CNN
F 2 "up5k-synth:SOIC-8_W3.9mm" H 3275 4345 50  0001 C CNN
F 3 "https://datasheet.octopart.com/AD8534ARZ-REEL-Analog-Devices-datasheet-5333818.pdf" H 3275 4625 50  0001 C CNN
	2    3275 4625
	-1   0    0    1   
$EndComp
$Comp
L up5k-synth:AD8531 U?
U 1 1 61C23B5B
P 6525 5875
AR Path="/61C23B5B" Ref="U?"  Part="1" 
AR Path="/61BD42FB/61C23B5B" Ref="U?"  Part="1" 
F 0 "U?" H 6675 5975 50  0000 C CNN
F 1 "AD8531" H 6725 6075 50  0000 C CNN
F 2 "up5k-synth:SOIC-8_W3.9mm" H 6525 5595 50  0001 C CNN
F 3 "https://datasheet.octopart.com/AD8534ARZ-REEL-Analog-Devices-datasheet-5333818.pdf" H 6525 5875 50  0001 C CNN
	1    6525 5875
	-1   0    0    1   
$EndComp
$Comp
L up5k-synth:AD8531 U?
U 1 1 61C23B61
P 6475 4600
AR Path="/61C23B61" Ref="U?"  Part="1" 
AR Path="/61BD42FB/61C23B61" Ref="U?"  Part="1" 
F 0 "U?" H 6550 4775 50  0000 C CNN
F 1 "AD8531" H 6125 4775 50  0000 C CNN
F 2 "up5k-synth:SOIC-8_W3.9mm" H 6475 4320 50  0001 C CNN
F 3 "https://datasheet.octopart.com/AD8534ARZ-REEL-Analog-Devices-datasheet-5333818.pdf" H 6475 4600 50  0001 C CNN
	1    6475 4600
	-1   0    0    1   
$EndComp
$Comp
L up5k-synth:0.1uF_10V_0603 C?
U 1 1 61C23B67
P 6775 6225
AR Path="/61C23B67" Ref="C?"  Part="1" 
AR Path="/61BD42FB/61C23B67" Ref="C?"  Part="1" 
F 0 "C?" H 6875 6150 50  0000 C CNN
F 1 "0.1uF_10V_0603" H 7050 6325 50  0000 C CNN
F 2 "up5k-synth:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 6775 6125 50  0001 C CNN
F 3 "" H 6775 6225 50  0001 C CNN
	1    6775 6225
	1    0    0    -1  
$EndComp
Wire Wire Line
	6625 6125 6625 6225
Wire Wire Line
	6625 6225 6525 6225
Connection ~ 6625 6225
$Comp
L power:GNDPWR #PWR?
U 1 1 61C23B70
P 7225 6225
AR Path="/61C23B70" Ref="#PWR?"  Part="1" 
AR Path="/61BD42FB/61C23B70" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7225 6025 50  0001 C CNN
F 1 "GNDPWR" H 7229 6071 50  0000 C CNN
F 2 "" H 7225 6175 50  0001 C CNN
F 3 "" H 7225 6175 50  0001 C CNN
	1    7225 6225
	1    0    0    -1  
$EndComp
Wire Wire Line
	6925 6225 7225 6225
$Comp
L power:+3V3 #PWR?
U 1 1 61C23B77
P 6525 6225
AR Path="/61C23B77" Ref="#PWR?"  Part="1" 
AR Path="/61BD42FB/61C23B77" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6525 6075 50  0001 C CNN
F 1 "+3V3" H 6400 6225 50  0000 C CNN
F 2 "" H 6525 6225 50  0001 C CNN
F 3 "" H 6525 6225 50  0001 C CNN
	1    6525 6225
	1    0    0    -1  
$EndComp
$Comp
L up5k-synth:0.1uF_10V_0603 C?
U 1 1 61C23B7D
P 6725 4950
AR Path="/61C23B7D" Ref="C?"  Part="1" 
AR Path="/61BD42FB/61C23B7D" Ref="C?"  Part="1" 
F 0 "C?" H 6825 4875 50  0000 C CNN
F 1 "0.1uF_10V_0603" H 7000 5050 50  0000 C CNN
F 2 "up5k-synth:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 6725 4850 50  0001 C CNN
F 3 "" H 6725 4950 50  0001 C CNN
	1    6725 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6575 4850 6575 4950
Wire Wire Line
	6575 4950 6475 4950
Connection ~ 6575 4950
$Comp
L power:GNDPWR #PWR?
U 1 1 61C23B86
P 7175 4950
AR Path="/61C23B86" Ref="#PWR?"  Part="1" 
AR Path="/61BD42FB/61C23B86" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7175 4750 50  0001 C CNN
F 1 "GNDPWR" H 7179 4796 50  0000 C CNN
F 2 "" H 7175 4900 50  0001 C CNN
F 3 "" H 7175 4900 50  0001 C CNN
	1    7175 4950
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 61C23B8C
P 6475 4950
AR Path="/61C23B8C" Ref="#PWR?"  Part="1" 
AR Path="/61BD42FB/61C23B8C" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6475 4800 50  0001 C CNN
F 1 "+3V3" H 6350 4950 50  0000 C CNN
F 2 "" H 6475 4950 50  0001 C CNN
F 3 "" H 6475 4950 50  0001 C CNN
	1    6475 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6875 4950 7175 4950
Wire Wire Line
	6775 4700 7150 4700
Wire Wire Line
	6175 4600 6175 4225
Wire Wire Line
	6825 4225 6825 4500
Wire Wire Line
	6825 4500 6775 4500
$Comp
L power:GNDPWR #PWR?
U 1 1 61C23B97
P 6325 4300
AR Path="/61C23B97" Ref="#PWR?"  Part="1" 
AR Path="/61BD42FB/61C23B97" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6325 4100 50  0001 C CNN
F 1 "GNDPWR" H 6329 4146 50  0000 C CNN
F 2 "" H 6325 4250 50  0001 C CNN
F 3 "" H 6325 4250 50  0001 C CNN
	1    6325 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6525 4300 6525 4375
$Comp
L up5k-synth:R_16R_0603 R?
U 1 1 61C23B9E
P 6025 4600
AR Path="/61C23B9E" Ref="R?"  Part="1" 
AR Path="/61BD42FB/61C23B9E" Ref="R?"  Part="1" 
F 0 "R?" V 5950 4600 50  0000 C CNN
F 1 "R_16R_0603" V 6100 4600 50  0000 C CNN
F 2 "up5k-synth:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 6065 4590 50  0001 C CNN
F 3 "~" H 6025 4600 50  0001 C CNN
	1    6025 4600
	0    1    1    0   
$EndComp
Connection ~ 6175 4600
$Comp
L up5k-synth:CP_270uF_10v_PXF C?
U 1 1 61C23BA5
P 5725 4600
AR Path="/61C23BA5" Ref="C?"  Part="1" 
AR Path="/61BD42FB/61C23BA5" Ref="C?"  Part="1" 
F 0 "C?" V 5473 4600 50  0000 C CNN
F 1 "CP_270uF_10v_PXF" V 5564 4600 50  0000 C CNN
F 2 "up5k-synth:CP_Elec_6.3x5.8" H 5725 4600 50  0001 C CNN
F 3 "~" H 5725 4600 50  0001 C CNN
	1    5725 4600
	0    1    1    0   
$EndComp
$Comp
L up5k-synth:R_50kR_0603 R?
U 1 1 61C23BAB
P 5575 4750
AR Path="/61C23BAB" Ref="R?"  Part="1" 
AR Path="/61BD42FB/61C23BAB" Ref="R?"  Part="1" 
F 0 "R?" H 5375 4850 50  0000 L CNN
F 1 "R_50kR_0603" H 5025 4775 50  0000 L CNN
F 2 "up5k-synth:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5615 4740 50  0001 C CNN
F 3 "~" H 5575 4750 50  0001 C CNN
	1    5575 4750
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR?
U 1 1 61C23BB1
P 5575 4900
AR Path="/61C23BB1" Ref="#PWR?"  Part="1" 
AR Path="/61BD42FB/61C23BB1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5575 4700 50  0001 C CNN
F 1 "GNDPWR" H 5579 4746 50  0000 C CNN
F 2 "" H 5575 4850 50  0001 C CNN
F 3 "" H 5575 4850 50  0001 C CNN
	1    5575 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6825 5975 7200 5975
Wire Wire Line
	3475 6125 3850 6125
Wire Wire Line
	6325 4300 6525 4300
Wire Wire Line
	6175 4225 6825 4225
$Comp
L power:GNDPWR #PWR?
U 1 1 61C23BBB
P 6400 5625
AR Path="/61C23BBB" Ref="#PWR?"  Part="1" 
AR Path="/61BD42FB/61C23BBB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6400 5425 50  0001 C CNN
F 1 "GNDPWR" H 6404 5471 50  0000 C CNN
F 2 "" H 6400 5575 50  0001 C CNN
F 3 "" H 6400 5575 50  0001 C CNN
	1    6400 5625
	1    0    0    -1  
$EndComp
Wire Wire Line
	6225 5875 6225 5550
Wire Wire Line
	6225 5550 6825 5550
Wire Wire Line
	6825 5550 6825 5775
Wire Wire Line
	6400 5625 6575 5625
Wire Wire Line
	6575 5625 6575 5650
Wire Wire Line
	2875 6025 2875 5675
Wire Wire Line
	2875 5675 3475 5675
Wire Wire Line
	3475 5675 3475 5925
$Comp
L up5k-synth:R_16R_0603 R?
U 1 1 61C23BC9
P 2825 4625
AR Path="/61C23BC9" Ref="R?"  Part="1" 
AR Path="/61BD42FB/61C23BC9" Ref="R?"  Part="1" 
F 0 "R?" V 2750 4650 50  0000 C CNN
F 1 "R_16R_0603" V 2900 4675 50  0000 C CNN
F 2 "up5k-synth:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 2865 4615 50  0001 C CNN
F 3 "~" H 2825 4625 50  0001 C CNN
	1    2825 4625
	0    1    1    0   
$EndComp
$Comp
L up5k-synth:CP_270uF_10v_PXF C?
U 1 1 61C23BCF
P 2525 4625
AR Path="/61C23BCF" Ref="C?"  Part="1" 
AR Path="/61BD42FB/61C23BCF" Ref="C?"  Part="1" 
F 0 "C?" V 2273 4625 50  0000 C CNN
F 1 "CP_270uF_10v_PXF" V 2364 4625 50  0000 C CNN
F 2 "up5k-synth:CP_Elec_6.3x5.8" H 2525 4625 50  0001 C CNN
F 3 "~" H 2525 4625 50  0001 C CNN
	1    2525 4625
	0    1    1    0   
$EndComp
$Comp
L up5k-synth:R_50kR_0603 R?
U 1 1 61C23BD5
P 2375 4775
AR Path="/61C23BD5" Ref="R?"  Part="1" 
AR Path="/61BD42FB/61C23BD5" Ref="R?"  Part="1" 
F 0 "R?" H 2200 4875 50  0000 L CNN
F 1 "R_50kR_0603" H 1825 4800 50  0000 L CNN
F 2 "up5k-synth:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 2415 4765 50  0001 C CNN
F 3 "~" H 2375 4775 50  0001 C CNN
	1    2375 4775
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR?
U 1 1 61C23BDB
P 2375 4925
AR Path="/61C23BDB" Ref="#PWR?"  Part="1" 
AR Path="/61BD42FB/61C23BDB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2375 4725 50  0001 C CNN
F 1 "GNDPWR" H 2379 4771 50  0000 C CNN
F 2 "" H 2375 4875 50  0001 C CNN
F 3 "" H 2375 4875 50  0001 C CNN
	1    2375 4925
	1    0    0    -1  
$EndComp
$Comp
L up5k-synth:R_16R_0603 R?
U 1 1 61C23BE1
P 2725 6025
AR Path="/61C23BE1" Ref="R?"  Part="1" 
AR Path="/61BD42FB/61C23BE1" Ref="R?"  Part="1" 
F 0 "R?" V 2650 6025 50  0000 C CNN
F 1 "R_16R_0603" V 2800 6075 50  0000 C CNN
F 2 "up5k-synth:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 2765 6015 50  0001 C CNN
F 3 "~" H 2725 6025 50  0001 C CNN
	1    2725 6025
	0    1    1    0   
$EndComp
$Comp
L up5k-synth:CP_270uF_10v_PXF C?
U 1 1 61C23BE7
P 2425 6025
AR Path="/61C23BE7" Ref="C?"  Part="1" 
AR Path="/61BD42FB/61C23BE7" Ref="C?"  Part="1" 
F 0 "C?" V 2173 6025 50  0000 C CNN
F 1 "CP_270uF_10v_PXF" V 2264 6025 50  0000 C CNN
F 2 "up5k-synth:CP_Elec_6.3x5.8" H 2425 6025 50  0001 C CNN
F 3 "~" H 2425 6025 50  0001 C CNN
	1    2425 6025
	0    1    1    0   
$EndComp
$Comp
L up5k-synth:R_50kR_0603 R?
U 1 1 61C23BED
P 2275 6175
AR Path="/61C23BED" Ref="R?"  Part="1" 
AR Path="/61BD42FB/61C23BED" Ref="R?"  Part="1" 
F 0 "R?" H 2075 6250 50  0000 L CNN
F 1 "R_50kR_0603" H 1700 6175 50  0000 L CNN
F 2 "up5k-synth:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 2315 6165 50  0001 C CNN
F 3 "~" H 2275 6175 50  0001 C CNN
	1    2275 6175
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR?
U 1 1 61C23BF3
P 2275 6325
AR Path="/61C23BF3" Ref="#PWR?"  Part="1" 
AR Path="/61BD42FB/61C23BF3" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 2275 6125 50  0001 C CNN
F 1 "GNDPWR" H 2279 6171 50  0000 C CNN
F 2 "" H 2275 6275 50  0001 C CNN
F 3 "" H 2275 6275 50  0001 C CNN
	1    2275 6325
	1    0    0    -1  
$EndComp
$Comp
L up5k-synth:R_16R_0603 R?
U 1 1 61C23BF9
P 6075 5875
AR Path="/61C23BF9" Ref="R?"  Part="1" 
AR Path="/61BD42FB/61C23BF9" Ref="R?"  Part="1" 
F 0 "R?" V 6000 5875 50  0000 C CNN
F 1 "R_16R_0603" V 6150 5850 50  0000 C CNN
F 2 "up5k-synth:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 6115 5865 50  0001 C CNN
F 3 "~" H 6075 5875 50  0001 C CNN
	1    6075 5875
	0    1    1    0   
$EndComp
$Comp
L up5k-synth:CP_270uF_10v_PXF C?
U 1 1 61C23BFF
P 5775 5875
AR Path="/61C23BFF" Ref="C?"  Part="1" 
AR Path="/61BD42FB/61C23BFF" Ref="C?"  Part="1" 
F 0 "C?" V 5523 5875 50  0000 C CNN
F 1 "CP_270uF_10v_PXF" V 5614 5875 50  0000 C CNN
F 2 "up5k-synth:CP_Elec_6.3x5.8" H 5775 5875 50  0001 C CNN
F 3 "~" H 5775 5875 50  0001 C CNN
	1    5775 5875
	0    1    1    0   
$EndComp
$Comp
L up5k-synth:R_50kR_0603 R?
U 1 1 61C23C05
P 5625 6025
AR Path="/61C23C05" Ref="R?"  Part="1" 
AR Path="/61BD42FB/61C23C05" Ref="R?"  Part="1" 
F 0 "R?" H 5425 6100 50  0000 L CNN
F 1 "R_50kR_0603" H 5050 6025 50  0000 L CNN
F 2 "up5k-synth:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5665 6015 50  0001 C CNN
F 3 "~" H 5625 6025 50  0001 C CNN
	1    5625 6025
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR?
U 1 1 61C23C0B
P 5625 6175
AR Path="/61C23C0B" Ref="#PWR?"  Part="1" 
AR Path="/61BD42FB/61C23C0B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 5625 5975 50  0001 C CNN
F 1 "GNDPWR" H 5629 6021 50  0000 C CNN
F 2 "" H 5625 6125 50  0001 C CNN
F 3 "" H 5625 6125 50  0001 C CNN
	1    5625 6175
	1    0    0    -1  
$EndComp
Connection ~ 6225 5875
Connection ~ 2875 6025
Wire Wire Line
	2975 4625 2975 4325
Wire Wire Line
	2975 4325 3575 4325
Wire Wire Line
	3575 4325 3575 4525
Connection ~ 2975 4625
Text Label 6825 4700 0    50   ~ 0
BUF0_L
Text Label 6850 5975 0    50   ~ 0
BUF1_L
Text Label 3600 4725 0    50   ~ 0
BUF0_R
Text Label 3500 6125 0    50   ~ 0
BUF1_R
Wire Wire Line
	3575 4725 3800 4725
Text Label 5300 4600 0    50   ~ 0
OUT0_L
Text Label 2075 4625 0    50   ~ 0
OUT0_R
Text Label 2075 6025 0    50   ~ 0
OUT1_R
Text Label 5400 5875 0    50   ~ 0
OUT1_L
Wire Wire Line
	5400 5875 5625 5875
Connection ~ 5625 5875
Wire Wire Line
	5300 4600 5575 4600
Connection ~ 5575 4600
Wire Wire Line
	2075 4625 2375 4625
Connection ~ 2375 4625
Wire Wire Line
	2075 6025 2275 6025
Connection ~ 2275 6025
$Comp
L up5k-synth:R_36kR_0603 R?
U 1 1 61C23C28
P 3900 1925
AR Path="/61C23C28" Ref="R?"  Part="1" 
AR Path="/61BD42FB/61C23C28" Ref="R?"  Part="1" 
F 0 "R?" V 3825 1950 50  0000 C CNN
F 1 "R_36kR_0603" V 3975 2100 50  0000 C CNN
F 2 "up5k-synth:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3940 1915 50  0001 C CNN
F 3 "~" H 3900 1925 50  0001 C CNN
	1    3900 1925
	0    1    1    0   
$EndComp
$Comp
L up5k-synth:C_150pF_10V_0603 C?
U 1 1 61C23C2E
P 3750 2075
AR Path="/61C23C2E" Ref="C?"  Part="1" 
AR Path="/61BD42FB/61C23C2E" Ref="C?"  Part="1" 
F 0 "C?" V 3650 1825 50  0000 L CNN
F 1 "C_150pF_10V_0603" V 3875 2100 50  0000 L CNN
F 2 "up5k-synth:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 3750 1975 50  0001 C CNN
F 3 "" H 3750 2075 50  0001 C CNN
	1    3750 2075
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 1925 4375 1925
Text Label 4100 1925 0    50   ~ 0
PDM1_R
Text Label 3750 1925 2    50   ~ 0
F_PDM1_R
Wire Wire Line
	3400 1925 3750 1925
Connection ~ 3750 1925
$Comp
L power:GNDPWR #PWR?
U 1 1 61C23C39
P 3750 2225
AR Path="/61C23C39" Ref="#PWR?"  Part="1" 
AR Path="/61BD42FB/61C23C39" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3750 2025 50  0001 C CNN
F 1 "GNDPWR" H 3754 2071 50  0000 C CNN
F 2 "" H 3750 2175 50  0001 C CNN
F 3 "" H 3750 2175 50  0001 C CNN
	1    3750 2225
	1    0    0    -1  
$EndComp
$Comp
L up5k-synth:R_36kR_0603 R?
U 1 1 61C23C3F
P 3950 2600
AR Path="/61C23C3F" Ref="R?"  Part="1" 
AR Path="/61BD42FB/61C23C3F" Ref="R?"  Part="1" 
F 0 "R?" V 3875 2625 50  0000 C CNN
F 1 "R_36kR_0603" V 4025 2800 50  0000 C CNN
F 2 "up5k-synth:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3990 2590 50  0001 C CNN
F 3 "~" H 3950 2600 50  0001 C CNN
	1    3950 2600
	0    1    1    0   
$EndComp
$Comp
L up5k-synth:C_150pF_10V_0603 C?
U 1 1 61C23C45
P 3800 2750
AR Path="/61C23C45" Ref="C?"  Part="1" 
AR Path="/61BD42FB/61C23C45" Ref="C?"  Part="1" 
F 0 "C?" V 3700 2575 50  0000 L CNN
F 1 "C_150pF_10V_0603" V 3925 2775 50  0000 L CNN
F 2 "up5k-synth:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 3800 2650 50  0001 C CNN
F 3 "" H 3800 2750 50  0001 C CNN
	1    3800 2750
	0    1    1    0   
$EndComp
Wire Wire Line
	4100 2600 4425 2600
Text Label 4150 2600 0    50   ~ 0
PDM1_L
Text Label 3800 2600 2    50   ~ 0
F_PDM1_L
Wire Wire Line
	3450 2600 3800 2600
Connection ~ 3800 2600
$Comp
L power:GNDPWR #PWR?
U 1 1 61C23C50
P 3800 2900
AR Path="/61C23C50" Ref="#PWR?"  Part="1" 
AR Path="/61BD42FB/61C23C50" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 3800 2700 50  0001 C CNN
F 1 "GNDPWR" H 3804 2746 50  0000 C CNN
F 2 "" H 3800 2850 50  0001 C CNN
F 3 "" H 3800 2850 50  0001 C CNN
	1    3800 2900
	1    0    0    -1  
$EndComp
$Comp
L up5k-synth:DS1881 U?
U 1 1 61E50722
P 7200 1575
AR Path="/61E50722" Ref="U?"  Part="1" 
AR Path="/61BD42FB/61E50722" Ref="U?"  Part="1" 
F 0 "U?" H 7200 2000 50  0000 C CNN
F 1 "DS1881" H 7200 1909 50  0000 C CNN
F 2 "up5k-synth:TSSOP-16_4.4x5mm_P0.65mm" H 7200 1275 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/DS1881.pdf#page=7" H 7110 1585 50  0001 C CNN
	1    7200 1575
	1    0    0    -1  
$EndComp
$Comp
L up5k-synth:DS1881 U?
U 2 1 61E50728
P 9075 5375
AR Path="/61E50728" Ref="U?"  Part="2" 
AR Path="/61BD42FB/61E50728" Ref="U?"  Part="2" 
F 0 "U?" H 9153 5426 50  0000 L CNN
F 1 "DS1881" H 9153 5335 50  0000 L CNN
F 2 "up5k-synth:TSSOP-16_4.4x5mm_P0.65mm" H 9075 5075 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/DS1881.pdf#page=7" H 8985 5385 50  0001 C CNN
	2    9075 5375
	1    0    0    -1  
$EndComp
$Comp
L up5k-synth:DS1881 U?
U 3 1 61E5072E
P 9025 5725
AR Path="/61E5072E" Ref="U?"  Part="3" 
AR Path="/61BD42FB/61E5072E" Ref="U?"  Part="3" 
F 0 "U?" H 9153 5776 50  0000 L CNN
F 1 "DS1881" H 9153 5685 50  0000 L CNN
F 2 "up5k-synth:TSSOP-16_4.4x5mm_P0.65mm" H 9025 5425 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/DS1881.pdf#page=7" H 8935 5735 50  0001 C CNN
	3    9025 5725
	1    0    0    -1  
$EndComp
$Comp
L up5k-synth:DS1881 U?
U 1 1 61E50734
P 7200 2725
AR Path="/61E50734" Ref="U?"  Part="1" 
AR Path="/61BD42FB/61E50734" Ref="U?"  Part="1" 
F 0 "U?" H 7200 3150 50  0000 C CNN
F 1 "DS1881" H 7200 3059 50  0000 C CNN
F 2 "up5k-synth:TSSOP-16_4.4x5mm_P0.65mm" H 7200 2425 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/DS1881.pdf#page=7" H 7110 2735 50  0001 C CNN
	1    7200 2725
	1    0    0    -1  
$EndComp
$Comp
L up5k-synth:DS1881 U?
U 2 1 61E5073A
P 9075 4600
AR Path="/61E5073A" Ref="U?"  Part="2" 
AR Path="/61BD42FB/61E5073A" Ref="U?"  Part="2" 
F 0 "U?" H 9153 4651 50  0000 L CNN
F 1 "DS1881" H 9153 4560 50  0000 L CNN
F 2 "up5k-synth:TSSOP-16_4.4x5mm_P0.65mm" H 9075 4300 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/DS1881.pdf#page=7" H 8985 4610 50  0001 C CNN
	2    9075 4600
	1    0    0    -1  
$EndComp
$Comp
L up5k-synth:DS1881 U?
U 3 1 61E50740
P 9025 4950
AR Path="/61E50740" Ref="U?"  Part="3" 
AR Path="/61BD42FB/61E50740" Ref="U?"  Part="3" 
F 0 "U?" H 9153 5001 50  0000 L CNN
F 1 "DS1881" H 9153 4910 50  0000 L CNN
F 2 "up5k-synth:TSSOP-16_4.4x5mm_P0.65mm" H 9025 4650 50  0001 C CNN
F 3 "https://datasheets.maximintegrated.com/en/ds/DS1881.pdf#page=7" H 8935 4960 50  0001 C CNN
	3    9025 4950
	1    0    0    -1  
$EndComp
Text Label 7500 1475 0    50   ~ 0
SC0_SCL_PAD[1]
Wire Wire Line
	7500 1475 8150 1475
Text Label 7500 1375 0    50   ~ 0
SC0_SDA_PAD[0]
Wire Wire Line
	7500 1375 8150 1375
Text Label 7500 2625 0    50   ~ 0
SC0_SCL_PAD[1]
Wire Wire Line
	7500 2625 8150 2625
Text Label 7500 2525 0    50   ~ 0
SC0_SDA_PAD[0]
Wire Wire Line
	7500 2525 8150 2525
$Comp
L power:GNDPWR #PWR?
U 1 1 61E5074E
P 6750 2625
AR Path="/61E5074E" Ref="#PWR?"  Part="1" 
AR Path="/61BD42FB/61E5074E" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6750 2425 50  0001 C CNN
F 1 "GNDPWR" H 6755 2470 50  0000 C CNN
F 2 "" H 6750 2575 50  0001 C CNN
F 3 "" H 6750 2575 50  0001 C CNN
	1    6750 2625
	-1   0    0    1   
$EndComp
$Comp
L power:GNDPWR #PWR?
U 1 1 61E50754
P 6750 1475
AR Path="/61E50754" Ref="#PWR?"  Part="1" 
AR Path="/61BD42FB/61E50754" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6750 1275 50  0001 C CNN
F 1 "GNDPWR" H 6755 1320 50  0000 C CNN
F 2 "" H 6750 1425 50  0001 C CNN
F 3 "" H 6750 1425 50  0001 C CNN
	1    6750 1475
	-1   0    0    1   
$EndComp
Wire Wire Line
	6750 1475 6900 1475
Wire Wire Line
	6750 2625 6900 2625
$Comp
L up5k-synth:360kR R?
U 1 1 61E5075C
P 7750 2725
AR Path="/61E5075C" Ref="R?"  Part="1" 
AR Path="/61BD42FB/61E5075C" Ref="R?"  Part="1" 
F 0 "R?" H 8100 2625 50  0000 C CNN
F 1 "360kR" H 8150 2725 50  0000 C CNN
F 2 "up5k-synth:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 7750 2475 50  0001 C CNN
F 3 "" H 7750 2725 50  0001 C CNN
	1    7750 2725
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 2725 7600 2725
$Comp
L power:GNDPWR #PWR?
U 1 1 61E50763
P 7900 2825
AR Path="/61E50763" Ref="#PWR?"  Part="1" 
AR Path="/61BD42FB/61E50763" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7900 2625 50  0001 C CNN
F 1 "GNDPWR" H 7904 2671 50  0000 C CNN
F 2 "" H 7900 2775 50  0001 C CNN
F 3 "" H 7900 2775 50  0001 C CNN
	1    7900 2825
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 2825 7500 2825
Wire Wire Line
	7900 2725 7900 2825
Connection ~ 7900 2825
$Comp
L up5k-synth:360kR R?
U 1 1 61E5076C
P 7750 1575
AR Path="/61E5076C" Ref="R?"  Part="1" 
AR Path="/61BD42FB/61E5076C" Ref="R?"  Part="1" 
F 0 "R?" H 8100 1475 50  0000 C CNN
F 1 "360kR" H 8150 1575 50  0000 C CNN
F 2 "up5k-synth:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 7750 1325 50  0001 C CNN
F 3 "" H 7750 1575 50  0001 C CNN
	1    7750 1575
	1    0    0    -1  
$EndComp
Wire Wire Line
	7500 1575 7600 1575
$Comp
L power:GNDPWR #PWR?
U 1 1 61E50773
P 7900 1675
AR Path="/61E50773" Ref="#PWR?"  Part="1" 
AR Path="/61BD42FB/61E50773" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7900 1475 50  0001 C CNN
F 1 "GNDPWR" H 7904 1521 50  0000 C CNN
F 2 "" H 7900 1625 50  0001 C CNN
F 3 "" H 7900 1625 50  0001 C CNN
	1    7900 1675
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 1675 7500 1675
Wire Wire Line
	7900 1575 7900 1675
Connection ~ 7900 1675
$Comp
L up5k-synth:360kR R?
U 1 1 61E5077C
P 6750 1775
AR Path="/61E5077C" Ref="R?"  Part="1" 
AR Path="/61BD42FB/61E5077C" Ref="R?"  Part="1" 
F 0 "R?" H 7050 1775 50  0000 C CNN
F 1 "360kR" H 7250 1775 50  0000 C CNN
F 2 "up5k-synth:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 6750 1525 50  0001 C CNN
F 3 "" H 6750 1775 50  0001 C CNN
	1    6750 1775
	-1   0    0    1   
$EndComp
$Comp
L up5k-synth:360kR R?
U 1 1 61E50782
P 6750 1675
AR Path="/61E50782" Ref="R?"  Part="1" 
AR Path="/61BD42FB/61E50782" Ref="R?"  Part="1" 
F 0 "R?" H 7050 1675 50  0000 C CNN
F 1 "360kR" H 7250 1675 50  0000 C CNN
F 2 "up5k-synth:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 6750 1425 50  0001 C CNN
F 3 "" H 6750 1675 50  0001 C CNN
	1    6750 1675
	-1   0    0    1   
$EndComp
$Comp
L up5k-synth:360kR R?
U 1 1 61E50788
P 6750 1575
AR Path="/61E50788" Ref="R?"  Part="1" 
AR Path="/61BD42FB/61E50788" Ref="R?"  Part="1" 
F 0 "R?" H 7050 1575 50  0000 C CNN
F 1 "360kR" H 7250 1875 50  0000 C CNN
F 2 "up5k-synth:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 6750 1325 50  0001 C CNN
F 3 "" H 6750 1575 50  0001 C CNN
	1    6750 1575
	-1   0    0    1   
$EndComp
Wire Wire Line
	6600 1775 6550 1775
Wire Wire Line
	6550 1775 6550 1675
Wire Wire Line
	6550 1475 6750 1475
Connection ~ 6750 1475
Wire Wire Line
	6600 1575 6550 1575
Connection ~ 6550 1575
Wire Wire Line
	6550 1575 6550 1475
Wire Wire Line
	6600 1675 6550 1675
Connection ~ 6550 1675
Wire Wire Line
	6550 1675 6550 1575
$Comp
L up5k-synth:360kR R?
U 1 1 61E50798
P 6750 2925
AR Path="/61E50798" Ref="R?"  Part="1" 
AR Path="/61BD42FB/61E50798" Ref="R?"  Part="1" 
F 0 "R?" H 7050 2925 50  0000 C CNN
F 1 "360kR" H 7100 2525 50  0000 C CNN
F 2 "up5k-synth:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 6750 2675 50  0001 C CNN
F 3 "" H 6750 2925 50  0001 C CNN
	1    6750 2925
	-1   0    0    1   
$EndComp
$Comp
L up5k-synth:360kR R?
U 1 1 61E5079E
P 6750 2825
AR Path="/61E5079E" Ref="R?"  Part="1" 
AR Path="/61BD42FB/61E5079E" Ref="R?"  Part="1" 
F 0 "R?" H 7050 2825 50  0000 C CNN
F 1 "360kR" H 7100 2625 50  0000 C CNN
F 2 "up5k-synth:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 6750 2575 50  0001 C CNN
F 3 "" H 6750 2825 50  0001 C CNN
	1    6750 2825
	-1   0    0    1   
$EndComp
$Comp
L up5k-synth:360kR R?
U 1 1 61E507A4
P 6750 2725
AR Path="/61E507A4" Ref="R?"  Part="1" 
AR Path="/61BD42FB/61E507A4" Ref="R?"  Part="1" 
F 0 "R?" H 7050 2725 50  0000 C CNN
F 1 "360kR" H 7100 2425 50  0000 C CNN
F 2 "up5k-synth:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 6750 2475 50  0001 C CNN
F 3 "" H 6750 2725 50  0001 C CNN
	1    6750 2725
	-1   0    0    1   
$EndComp
Wire Wire Line
	6600 2925 6550 2925
Wire Wire Line
	6550 2925 6550 2825
Wire Wire Line
	6600 2725 6550 2725
Wire Wire Line
	6550 2725 6550 2625
Wire Wire Line
	6600 2825 6550 2825
$Comp
L power:+3V3 #PWR?
U 1 1 61E507AF
P 6550 2625
AR Path="/61E507AF" Ref="#PWR?"  Part="1" 
AR Path="/61BD42FB/61E507AF" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6550 2475 50  0001 C CNN
F 1 "+3V3" V 6565 2753 50  0000 L CNN
F 2 "" H 6550 2625 50  0001 C CNN
F 3 "" H 6550 2625 50  0001 C CNN
	1    6550 2625
	1    0    0    -1  
$EndComp
$Comp
L power:GNDPWR #PWR?
U 1 1 61E507B5
P 6550 2925
AR Path="/61E507B5" Ref="#PWR?"  Part="1" 
AR Path="/61BD42FB/61E507B5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 6550 2725 50  0001 C CNN
F 1 "GNDPWR" H 6555 2770 50  0000 C CNN
F 2 "" H 6550 2875 50  0001 C CNN
F 3 "" H 6550 2875 50  0001 C CNN
	1    6550 2925
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 61E507BB
P 7500 2925
AR Path="/61E507BB" Ref="#PWR?"  Part="1" 
AR Path="/61BD42FB/61E507BB" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7500 2775 50  0001 C CNN
F 1 "+3V3" V 7515 3053 50  0000 L CNN
F 2 "" H 7500 2925 50  0001 C CNN
F 3 "" H 7500 2925 50  0001 C CNN
	1    7500 2925
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 61E507C1
P 7500 1775
AR Path="/61E507C1" Ref="#PWR?"  Part="1" 
AR Path="/61BD42FB/61E507C1" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 7500 1625 50  0001 C CNN
F 1 "+3V3" V 7515 1903 50  0000 L CNN
F 2 "" H 7500 1775 50  0001 C CNN
F 3 "" H 7500 1775 50  0001 C CNN
	1    7500 1775
	0    1    1    0   
$EndComp
$Comp
L power:GNDPWR #PWR?
U 1 1 61E507C7
P 8575 5475
AR Path="/61E507C7" Ref="#PWR?"  Part="1" 
AR Path="/61BD42FB/61E507C7" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8575 5275 50  0001 C CNN
F 1 "GNDPWR" V 8525 5775 50  0000 R CNN
F 2 "" H 8575 5425 50  0001 C CNN
F 3 "" H 8575 5425 50  0001 C CNN
	1    8575 5475
	0    1    1    0   
$EndComp
Wire Wire Line
	8575 5475 8875 5475
$Comp
L power:GNDPWR #PWR?
U 1 1 61E507CE
P 8575 5825
AR Path="/61E507CE" Ref="#PWR?"  Part="1" 
AR Path="/61BD42FB/61E507CE" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8575 5625 50  0001 C CNN
F 1 "GNDPWR" V 8525 6125 50  0000 R CNN
F 2 "" H 8575 5775 50  0001 C CNN
F 3 "" H 8575 5775 50  0001 C CNN
	1    8575 5825
	0    1    1    0   
$EndComp
Wire Wire Line
	8575 5825 8875 5825
$Comp
L power:GNDPWR #PWR?
U 1 1 61E507D5
P 8575 5050
AR Path="/61E507D5" Ref="#PWR?"  Part="1" 
AR Path="/61BD42FB/61E507D5" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8575 4850 50  0001 C CNN
F 1 "GNDPWR" V 8525 5350 50  0000 R CNN
F 2 "" H 8575 5000 50  0001 C CNN
F 3 "" H 8575 5000 50  0001 C CNN
	1    8575 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	8575 5050 8875 5050
$Comp
L power:GNDPWR #PWR?
U 1 1 61E507DC
P 8575 4700
AR Path="/61E507DC" Ref="#PWR?"  Part="1" 
AR Path="/61BD42FB/61E507DC" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 8575 4500 50  0001 C CNN
F 1 "GNDPWR" V 8525 5000 50  0000 R CNN
F 2 "" H 8575 4650 50  0001 C CNN
F 3 "" H 8575 4650 50  0001 C CNN
	1    8575 4700
	0    1    1    0   
$EndComp
Wire Wire Line
	8575 4700 8875 4700
Text Label 8525 5275 0    50   ~ 0
F_PDM0_L
Text Label 8525 5625 0    50   ~ 0
F_PDM0_R
Text Label 8525 4500 0    50   ~ 0
F_PDM1_L
Text Label 8525 4850 0    50   ~ 0
F_PDM1_R
Wire Wire Line
	8525 4500 8875 4500
Wire Wire Line
	8525 4850 8875 4850
Wire Wire Line
	8525 4600 8875 4600
Wire Wire Line
	8525 4950 8875 4950
Text Label 8525 5725 0    50   ~ 0
BUF0_R
Text Label 8525 5375 0    50   ~ 0
BUF0_L
Text Label 8525 4600 0    50   ~ 0
BUF1_L
Text Label 8525 4950 0    50   ~ 0
BUF1_R
$Comp
L up5k-synth:R_36kR_0603 R?
U 1 1 61E507EF
P 1875 1850
AR Path="/61E507EF" Ref="R?"  Part="1" 
AR Path="/61BD42FB/61E507EF" Ref="R?"  Part="1" 
F 0 "R?" V 1800 1875 50  0000 C CNN
F 1 "R_36kR_0603" V 1950 2025 50  0000 C CNN
F 2 "up5k-synth:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 1915 1840 50  0001 C CNN
F 3 "~" H 1875 1850 50  0001 C CNN
	1    1875 1850
	0    1    1    0   
$EndComp
$Comp
L up5k-synth:C_150pF_10V_0603 C?
U 1 1 61E507F5
P 1725 2000
AR Path="/61E507F5" Ref="C?"  Part="1" 
AR Path="/61BD42FB/61E507F5" Ref="C?"  Part="1" 
F 0 "C?" V 1625 1825 50  0000 L CNN
F 1 "C_150pF_10V_0603" V 1850 2025 50  0000 L CNN
F 2 "up5k-synth:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 1725 1900 50  0001 C CNN
F 3 "" H 1725 2000 50  0001 C CNN
	1    1725 2000
	0    1    1    0   
$EndComp
Wire Wire Line
	2025 1850 2350 1850
Text Label 2075 1850 0    50   ~ 0
PDM0_R
Wire Wire Line
	8525 5275 8875 5275
Wire Wire Line
	8525 5375 8875 5375
Wire Wire Line
	8525 5625 8875 5625
Wire Wire Line
	8525 5725 8875 5725
Text Label 1725 1850 2    50   ~ 0
F_PDM0_R
Wire Wire Line
	1375 1850 1725 1850
Connection ~ 1725 1850
$Comp
L power:GNDPWR #PWR?
U 1 1 61E50804
P 1725 2150
AR Path="/61E50804" Ref="#PWR?"  Part="1" 
AR Path="/61BD42FB/61E50804" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1725 1950 50  0001 C CNN
F 1 "GNDPWR" H 1729 1996 50  0000 C CNN
F 2 "" H 1725 2100 50  0001 C CNN
F 3 "" H 1725 2100 50  0001 C CNN
	1    1725 2150
	1    0    0    -1  
$EndComp
$Comp
L up5k-synth:R_36kR_0603 R?
U 1 1 61E5080A
P 1850 2550
AR Path="/61E5080A" Ref="R?"  Part="1" 
AR Path="/61BD42FB/61E5080A" Ref="R?"  Part="1" 
F 0 "R?" V 1775 2575 50  0000 C CNN
F 1 "R_36kR_0603" V 1925 2750 50  0000 C CNN
F 2 "up5k-synth:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 1890 2540 50  0001 C CNN
F 3 "~" H 1850 2550 50  0001 C CNN
	1    1850 2550
	0    1    1    0   
$EndComp
$Comp
L up5k-synth:C_150pF_10V_0603 C?
U 1 1 61E50810
P 1700 2700
AR Path="/61E50810" Ref="C?"  Part="1" 
AR Path="/61BD42FB/61E50810" Ref="C?"  Part="1" 
F 0 "C?" V 1600 2525 50  0000 L CNN
F 1 "C_150pF_10V_0603" V 1825 2725 50  0000 L CNN
F 2 "up5k-synth:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 1700 2600 50  0001 C CNN
F 3 "" H 1700 2700 50  0001 C CNN
	1    1700 2700
	0    1    1    0   
$EndComp
Wire Wire Line
	2000 2550 2325 2550
Text Label 2050 2550 0    50   ~ 0
PDM0_L
Text Label 1700 2550 2    50   ~ 0
F_PDM0_L
Wire Wire Line
	1350 2550 1700 2550
Connection ~ 1700 2550
$Comp
L power:GNDPWR #PWR?
U 1 1 61E5081B
P 1700 2850
AR Path="/61E5081B" Ref="#PWR?"  Part="1" 
AR Path="/61BD42FB/61E5081B" Ref="#PWR?"  Part="1" 
F 0 "#PWR?" H 1700 2650 50  0001 C CNN
F 1 "GNDPWR" H 1704 2696 50  0000 C CNN
F 2 "" H 1700 2800 50  0001 C CNN
F 3 "" H 1700 2800 50  0001 C CNN
	1    1700 2850
	1    0    0    -1  
$EndComp
Connection ~ 6550 2925
Text HLabel 8150 1375 2    50   Input ~ 0
SC0_SDA_PAD[0]
Text HLabel 8150 1475 2    50   Input ~ 0
SC0_SCL_PAD[1]
Text HLabel 2350 1850 2    50   Input ~ 0
PDM0_R
Text HLabel 2325 2550 2    50   Input ~ 0
PDM0_L
Text HLabel 4375 1925 2    50   Input ~ 0
PDM1_R
Text HLabel 4425 2600 2    50   Input ~ 0
PDM1_L
Text HLabel 2075 4625 0    50   Input ~ 0
OUT0_R
Text HLabel 2075 6025 0    50   Input ~ 0
OUT1_R
Text HLabel 5300 4600 0    50   Input ~ 0
OUT0_L
Text HLabel 5400 5875 0    50   Input ~ 0
OUT1_L
$EndSCHEMATC