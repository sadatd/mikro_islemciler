MVI D,05H
MVI E,08H
PUSH D		;Push DE pair to stack, stack takes 16 bits
		;and starts from FFFF (it is decresing stack architecture)
MVI H,03H
MVI L,02H
PUSH H

POP B
HLT