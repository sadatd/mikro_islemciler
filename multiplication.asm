MVI B, 11	; Carpan
MVI C, 8 	; Carpilan
MVI D, 8	; Sayac, 8 adim
LXI H, 0 	; Carpim sonucunun tutuldugu yazmac
basla: STC
CMC 		; Eldeyi sifirla
MOV A,B
RRC
MOV B,A
JNC kaydir
STC
CMC
MOV A,C
ADD H
JMP L2
kaydir: MOV A,H
L2: RAR
MOV H,A
MOV A,L
RAR
MOV L,A
DCR D
JNZ basla
hlt