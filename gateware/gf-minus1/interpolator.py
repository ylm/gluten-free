#!python3

import math

# REF: https://ccrma.stanford.edu/~jos/mdft/Sinc_Function.html
def sinc(phase):
    if (phase == 0):
        return 1.0
    else:
        return math.sin(phase*math.pi)/(math.pi*phase)

#REF: https://ccrma.stanford.edu/~jos/sasp/Kaiser_Window.html
def I_zero(phase):
    retval = 0
    for idx in range(8):
        retval += math.pow((math.pow(phase/2,idx))/math.factorial(idx),2)
    return retval

def kaiser(phase, beta=math.pi, M=2488):
    return I_zero(beta*math.sqrt(1-math.pow(phase/(M/2),2)))/I_zero(beta)

#for idx in range(-1244,1244):
    #tmp = '%X' % round(127 * kaiser(idx))
    #if tmp[0] == '-':
        #print('%X' % round( 256.0 - math.fabs(round(127 * kaiser(idx)))))
    #else:
        #print(tmp)
for idx in range(-10,10):
    tmp = '%X' % round(127 * kaiser(idx) * sinc(idx/10))
    if tmp[0] == '-':
        print('%X' % round( 256.0 - math.fabs(round(127 * kaiser(idx) * sinc(idx/10)))))
    else:
        print(tmp)
