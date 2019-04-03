
;<Program title>

jmp start

;data


;code
start: nop
mvi a,255
;mvi d,10h
mov c,a
mvi a,19
mov b,a

;swap value of BC

;mov a,c
mov b,c
mov c,a

;load value from memory

lda 0005

hlt
