;
; CS1021 2018/2019	Lab 1
; 

	AREA	RESET, CODE, READONLY
	ENTRY

;
; start of code
; Bai 2: Tinh 2x^2+6xy+3y^2 TAI x=5; y=6
   MOV R1,#5 ; X=5
   MOV R2,#6 ; Y=6
   MUL R0,R1,R1 
   MOV R3,#2
   MUL R0,R3,R0 ; R0=2X^2
   MOV R4,#6
   MUL R4,R1,R4 
   MUL R4,R2,R4 ; R4 = 6XY
   ADD R0,R0,R4 ; R0=2X^2+6XY
   MOV R4,#3
   MUL R4,R2,R4
   MUL R4,R2,R4 ; R4=3Y^2
   ADD R0,R0,R4 ; R0=2X^2+6XY+3Y^2
    
	; Ket qua: 0x152 = 1.16^2+5.16+2 = 338 ; thu lai (2x^2+6xy+3y^2 = 2.25+6.30+3.36 = 338)
L	B	L		; infinite loop to end programme

        END
