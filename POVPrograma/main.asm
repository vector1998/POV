;
; POVPrograma.asm
;
; Created: 02/05/2019 10:03:11 a. m.
; Author : jacob
;


; Replace with your application code
.CSEG
.ORG 0
jmp main

main:
	; Asignamos el registro que mantendra el indice actual de la palabra
	LDI R16,0xff
	LDI R17,1
	out DDRD,R16

loop:
    //letra H
    LDI ZH,HIGH(LETRA_H<<1)    
    LDI ZL,LOW(LETRA_H<<1)     
	call recorrer_letra
	//letra U
	LDI ZH,HIGH(LETRA_U<<1)
	LDI ZL,LOW(LETRA_U<<1)
	call recorrer_letra
	//letra R
	LDI ZH,HIGH(LETRA_R<<1)
	LDI ZL,LOW(LETRA_R<<1)
	call recorrer_letra
	//letra R
	LDI ZH,HIGH(LETRA_R<<1)
	LDI ZL,LOW(LETRA_R<<1)
	call recorrer_letra
	//letra A
	LDI ZH,HIGH(LETRA_A<<1)
	LDI ZL,LOW(LETRA_A<<1)
	call recorrer_letra
	//espera 6 milisegundos
	call tresMS
	call tresMS
	rjmp loop

recorrer_letra:
    //obtener el valor del apuntador y recorrer en 1 el mismo
	LPM R20,Z+
	out portD,R20
	call tresMS
	//obtener el valor del apuntador y recorrer en 1 el mismo
	LPM R20,Z+
	out portD,R20
	call tresMS
	//obtener el valor del apuntador y recorrer en 1 el mismo
    LPM R20,Z+
	out portD,R20
	call tresMS
	//obtener el valor del apuntador y recorrer en 1 el mismo
	LPM R20,Z+
	out portD,R20
	call tresMS
	//obtener el valor del apuntador y recorrer en 1 el mismo
	LPM R20,Z+
	out portD,R20
	call tresMS
	ret

.org 0x500
LETRA_A:  .DB 0x7F, 0x48, 0x48, 0x48, 0x7F
LETRA_B:  .DB 0xFF, 0x49, 0x49,0x49, 0x36
LETRA_C:  .DB 0,1,1,1,1,1,0, 1,0,0,0,0,0,1, 1,0,0,0,0,0,1, 1,0,0,0,0,0,1, 1,0,0,0,0,0,1
LETRA_D:  .DB 1,1,1,1,1,1,1, 1,0,0,0,0,0,1, 1,0,0,0,0,0,1, 1,0,0,0,1, 0,1,1,1,1,1,0
LETRA_E:  .DB 1,1,1,1,1,1,1, 1,0,0,1,0,0,1, 1,0,0,1,0,0,1, 1,0,0,1,0,0,1, 1,0,0,1,0,0,1
LETRA_F:  .DB 1,1,1,1,1,1,1, 1,0,0,1,0,0,0, 1,0,0,1,0,0,0, 1,0,0,1,0,0,0, 1,0,0,1,0,0,0
LETRA_G:  .DB 1,1,1,1,1,1,1, 1,0,0,0,0,0,1, 1,0,0,1,0,0,1, 1,0,0,1,0,0,1, 1,0,0,1,1,1,1
LETRA_H:  .DB 0xFF, 0x10, 0x12, 0x10, 0xFF
LETRA_I:  .DB 1,0,0,0,0,0,1, 1,0,0,0,0,0,1, 1,1,1,1,1,1,1, 1,0,0,0,0,0,1, 1,0,0,0,0,0,1
LETRA_J:  .DB 0,0,0,0,1,1,0, 0,0,0,0,0,0,1, 0,0,0,0,0,0,1, 0,0,0,0,0,0,1, 1,1,1,1,1,1,0
LETRA_K:  .DB 1,1,1,1,1,1,1, 0,0,0,1,0,0,0, 0,0,1,0,1,0,0, 0,1,0,0,0,1,0, 1,0,0,0,0,0,1
LETRA_L:  .DB 1,1,1,1,1,1,1, 0,0,0,0,0,0,1, 0,0,0,0,0,0,1, 0,0,0,0,0,0,1, 0,0,0,0,0,0,1
LETRA_M:  .DB 1,1,1,1,1,1,1, 0,1,0,0,0,0,0, 0,0,1,1,0,0,0, 0,1,0,0,0,0,0, 1,1,1,1,1,1,1
LETRA_N:  .DB 1,1,1,1,1,1,1, 0,1,0,0,0,0,0, 0,0,1,0,0,0,0, 0,0,0,1,0,0,0, 1,1,1,1,1,1,1
LETRA_O:  .DB 0,1,1,1,1,1,0, 1,0,0,0,0,0,1, 1,0,0,0,0,0,1, 1,0,0,0,0,0,1, 0,1,1,1,1,1,0
LETRA_P:  .DB 1,1,1,1,1,1,1, 1,0,0,1,0,0,0, 1,0,0,1,0,0,0, 1,0,0,1,0,0,0, 0,1,1,0,0,0,0
LETRA_Q:  .DB 0,1,1,1,1,0,0, 1,0,0,0,0,1,0, 1,0,0,0,0,1,0, 1,0,0,0,0,1,0, 0,1,1,1,1,0,1
LETRA_R:  .DB 0xFF, 0x48, 0x48, 0x49, 0x37
LETRA_S:  .DB 0,1,1,0,0,0,0, 1,0,0,1,0,0,1, 1,0,0,1,0,0,1, 1,0,0,1,0,0,1, 0,0,0,0,1,1,0
LETRA_T:  .DB 1,0,0,0,0,0,0, 1,0,0,0,0,0,0, 1,1,1,1,1,1,1, 1,0,0,0,0,0,0, 1,0,0,0,0,0,0
LETRA_U:  .DB 0xFE, 0x01, 0x01, 0x01, 0xFE
LETRA_V:  .DB 1,1,1,1,1,0,0, 0,0,0,0,0,1,0, 0,0,0,0,0,0,1, 0,0,0,0,0,1,0, 1,1,1,1,1,0,0
LETRA_W:  .DB 1,1,1,1,1,1,1, 0,0,0,0,0,1,0, 0,0,0,0,1,0,0, 0,0,0,0,0,1,0, 1,1,1,1,1,1,1
LETRA_X:  .DB 1,0,0,0,0,0,1, 0,1,0,0,0,1,0, 0,0,1,1,1,0,0, 0,1,0,0,0,1,0, 1,0,0,0,0,0,1
LETRA_Y:  .DB 1,1,1,0,0,0,0, 0,0,0,1,0,0,0, 0,0,0,0,1,1,1, 0,0,0,1,0,0,0, 1,1,1,0,0,0,0
LETRA_Z:  .DB 1,0,0,0,0,1,1, 1,0,0,0,1,0,1, 1,0,0,1,0,0,1, 1,0,1,0,0,0,1, 1,1,0,0,0,0,1

tresMS:
    ldi  r18, 78
    ldi  r19, 235
L1: dec  r19
    brne L1
    dec  r18
    brne L1
    nop
	ret



