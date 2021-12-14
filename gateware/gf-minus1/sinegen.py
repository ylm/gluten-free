#!python3

import math

for idx in range(2048):
    tmp = '%X' % math.trunc(127 * math.sin(idx * math.pi / 1024))
    if tmp[0] == '-':
        print('%X' % math.trunc( 256.0 - math.fabs(math.trunc(127 * math.sin(idx * math.pi / 1024)))))
    else:
        print(tmp)
