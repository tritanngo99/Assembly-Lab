;
; CS1021 2018/2019	Lab 1
; 

	AREA	RESET, CODE, READONLY
	ENTRY

;
; start of code
; Bai 4: Tinh 3x^4-5x-16y^4z^4 TAI X=5,Y=6,Z=2 (Kq -329926)
 ;Tinh x^4 -> Copy tinh y^4 va z^4
      MOV R1,#5
	  MOV R2,#6
	  MOV R3,#2
	  MUL R4,R1,R1
	  MUL R4,R1,R4
	  MUL R4,R1,R4 ; R4=X^4
	  MOV R5,#3
	  MUL R5,R4,R5
	  ADD R0,R0,R5 ; R0=3X^4
	  MOV R5,#5
	  MUL R5,R1,R5; R5=5X
	  SUB R0,R0,R5 ; R0=3X^4-5X
	  MUL R4,R2,R2
	  MUL R4,R2,R4
	  MUL R4,R2,R4 ; R4=Y^4
	  MUL R5,R3,R3
	  MUL R5,R3,R5
	  MUL R5,R3,R5 ; R5=X^4
	  MOV R6,#16
	  MUL R6,R4,R6
	  MUL R6,R5,R6
	  SUB R0,R0,R6
	  
	  ; Ket qua:  0xFFFAF73A-> 1111 1111 1111 1010 1111 0111 0011 1010
;-> 0000 0000 0000 0101 0000 1000 1100 0110 (so duong sau khi dao bit va cong 1)
; = 2+4 +64 +128 + 2048 + (2^16) + (2^18) = 329926
; -> -329926
L	B	L		; infinite loop to end programme

        END
