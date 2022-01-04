#!python3

import math

for idx in range(4096):
    tmp = '%X' % round(127 * math.sin(idx * math.pi / 2048))
    if tmp[0] == '-':
        print('%X' % round( 256.0 - math.fabs(round(127 * math.sin(idx * math.pi / 2048)))))
    else:
        print(tmp)
