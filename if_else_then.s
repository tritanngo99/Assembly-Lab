;
; CS1021 2018/2019	Lab 1
; 

	AREA	RESET, CODE, READONLY
	ENTRY

; Cau lenh _ IF THEN  ELSE
; if(x<9){
;  x=x+1;
;} else{ x=0;}
   MOV R1,#10
   CMP R1,#9 ;X<9 ?
   BGE L1
   ADD R1,R1,#1
   B L2
L1  MOV R1,#0
L2  B L2
