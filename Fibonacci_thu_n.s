;
; CS1021 2018/2019	Lab 1
; 

	AREA	RESET, CODE, READONLY
	ENTRY

;Tinh so hang thu n Fibonacci
; F(n)=F(n-1)+F(n-2) voi F(0)=0;F(1)=1;
; tinh nham: 0,1,1,2,3,5,8  =>F(6)=8.
;Tinh F(6)
; Nhan luc nao cung phai dat sat dau dong
     MOV R2,#6 ; N=6
	 MOV R1,#0 ; F(A)=0;
	 MOV R0,#1  ;F(B)=1 -> TINH F(N)
START CMP R2,#1   ; N>1?
	 BLE L ;<=
	 MOV R3,R0 ; TMP=F(B)
	 ADD R0,R0,R1 ; F(B)=F(B)+F(A)
	 MOV R1,R3; F(A)=TMP;
	 SUB R2,R2,#1;N=N-1
	 B START ; REPEAT

L B L
END
