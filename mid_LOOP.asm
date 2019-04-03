MVI H,00H	;Our starting point M[HL]
MVI L,0FEH
MVI B,06H	;It'll be our counter

label1: MOV A,M ;geting new number from M[] to A
ADD E         	;add E(sum) to A 
MOV E,A		;save new value of sum to E(sum)
INR M		;increase L(which is part of M)
MOV A,B		;move B(counter) to A so it can be decremented
SUI 01H		;decrement the counter
MOV B,A		;save new-decremented value of counter
JNZ label1	;jump if no zero(Z) 

MOV A,E 	;move final value of sum(E) to A
STA 0106H	;store from A to given memory location
HLT