LXI H, 0002H
LXI D, 0010H
MVI B, 06H

UP: MOV A, M
STAX	D
INX	H
INX	D
DCR 	B
JNZ 	UP

HLT
