LXI H, 0002H	; HL = 0002h    ; start addres of original data 
LXI D, 0010H	; DE = 0010h	; start addres of copy
MVI C, 06H	; C = 06h	; our counter(we want to copy 6 data)

UP: MOV A, M	; A = M[HL] 	; getting original data
STAX D		; M[DE] = A 	; copy from A to m[de]
INX H		; HL = HL + 1	; increase HL(move to next addr. of original)
INX D		; DE = DE + 1	; increase DE(move to next addr. of copy)
DCR C		; C = C - 1	; decrease counter
JNZ UP		; if C not 0 go to UP
HLT