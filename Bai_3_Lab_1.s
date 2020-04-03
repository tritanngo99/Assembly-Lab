;
; CS1021 2018/2019	Lab 1
; 

	AREA	RESET, CODE, READONLY
	ENTRY

;
; start of code
; Bai 3: Tinh x^3-4x^2+3x+8 tai x=5;  (RES=48)
      MOV R0,#8 ; R0=8
	  MOV R1,#5 ;R1=X;
	  MOV R2,#3; R2=3
	  MUL R2,R1,R2 ; R2=3X
	  ADD R0,R0,R2 ; R0=3X+8
	  MUL R3,R1,R1 ; R3=X^2
	  MOV R2,#4 ; R2=4
	  MUL R2,R3,R2; R2=4X^2
	  SUB R0,R0,R2 ; R0=-4X^2+3X+8
	  MUL R3,R1,R3 ; R3=X^3
	  ADD R0,R0,R3; R0=X^3-4X^2+3X+8
	  
	  ; Ket qua: 0x30 = 48 (Dung)  
L	B	L		; infinite loop to end programme

        END
