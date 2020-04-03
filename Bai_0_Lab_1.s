;
; CS1021 2018/2019	Lab 1
; 

	AREA	RESET, CODE, READONLY
	ENTRY

;
; start of code
; Bai 0: Tinh x^2+10x-3 tai x=50
	; compute x*x+10x-3 (x=50)
	MOV R1,#50 ; R1=X=50
	MUL R0,R1,R1 ; R0=X^2
	MOV R2,#10 ;R2=10
	MUL R2,R1,R2 ; R2=10X (MUL R2,R2,R1 NOT WORKING)
	ADD R0,R0,R2 ;R0=X^2+10X
	SUB R0,R0,#3 ; R=X^2+10X-3
	
	; KQ: 0xBB5 -> 11.16^2+11.16+5 = 2997 (Thu lai: X^2+10x-3 = 50^2+10*50-3 = 2997)
; add your code here
;

L	B	L		; infinite loop to end programme

        END
