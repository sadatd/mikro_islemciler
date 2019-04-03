MVI A,05
MVI B,02
;SUB B
HLT
; if result of program stored in accu is 0 then 
; Z-bit is set to one("1"), if result in acc has even
; number of ones P-bit is set to one, otherwise to zero