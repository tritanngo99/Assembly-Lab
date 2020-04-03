;
; CS1021 2018/2019	Lab 1
; 

	AREA	RESET, CODE, READONLY
	ENTRY

;
; start of code
; Bai 1: Tinh 3x^2+5x tai x=5
   MOV R1,#5
   MUL R0,R1,R1
   MOV R3,#3
   MUL R0,R3,R0 
   MOV R2,#5
   MUL R2,R1,R2
   ADD R0,R0,R2
   
; add your code here
; Ket qua: 0x64 = 6.16+4 = 96+4 =100 (Thu lai: 3x^2+5x =3.5^2+5.5 = 75+25 =100)

L	B	L		; infinite loop to end programme

        END
