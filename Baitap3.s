;
; CS1021 2018/2019	Lab 1
; 

	AREA	RESET, CODE, READONLY
	ENTRY

; Test Flag condition
; Template
;-------------------------------
;     Branch equal 
;equal  --- BEQ
;not equal --- BNE
;     unsigned braches
;less than ---  BLO(or BCC)
;less than or equal --- BLS
;greater than or equal --- BHS (or BCS)
;greater than ---BHI
;	 signed branches
;less than --- BLT
;less than or equal --- BLE
;greater than or equal --- BGE
;greater than --- BGT
;      branch on flags
;Negative set --- BMI --- Minus
;Negative clear --- BPL --- Plus
;Carry set --- BCS (or BHS) --- Carry set
;Carry clear --- BCC (or BLO) --- Carry Clear
;Overflow set --- BVS --- Overflow Set
;Overflow Clear --- BVC --- Overflow Clear
;Zero Set --- BEQ --- Equal
;Zero Clear --- BNE --- Not equal
;-------------------------------
;(i) if(x==0) x=x+5
; SOLVE: 
;  MOV R1,#0
;  CMP R1,#0 ; R1==0
;  BNE L1
;  ADD R1,R1,5
;L1 B L1
;-------------
;(ii) if(x>=5) x=0
;SOLVE:
;   MOV R1,#6
;   CMP R1,#5 ;R1>=5?
;   BLT L1
;   MOV R1,#0
;L1 B L1
;---------------
;(iii) 
;x=10;
;y=5;
;while(x>0){
;  y=y*x;
;  x=x-1;
;}
;   MOV R1,#10 
;   MOV R2,#5
;L0   CMP R1,0 ; R1>0
;   BLE L1
;   MUL R2,R1,R2
;   SUB R1,R1,#1
;   B L0
;L1 B L1
;(iv) if(x<9){
;	 x=x+1;
;	 } else {
;		 x=0;
;		 }
;	MOV R1,#10
;	CMP R1,#9 ; R1<9 ?
;	BGE L1
;	ADD R1,R1,#1
;    B L2
;L1  MOV R1,#0
;    B L2 
;L2 B L2
; (v) 
;if (x>9){
;   x=0;
;   if(y>9){y=0} else{ y=y+1}
;} 
;else{x=x+1}
;	MOV R1,#10 ;X->R1
;	MOV R2,#5  ; Y->R2
;	CMP R1,#9
;	BLE L1
;	MOV R1,#0
;	CMP R2,#9
;	BLE L2
;	MOV R2,#0
;	B STOP
;L1 ADD R1,R1,#1
;   B STOP
;L2 ADD R2,R2,#1
;   B STOP
;STOP B STOP
; bAI 2:
; Tinh x^y
; Vi du tinh 10^5
    MOV R1,#10;
	MOV R2,#2
	MOV R0,#1
LO	CMP R2,#0 ; R2>0 ?
	BLE L1
	MUL R0,R1,R0
	SUB R2,R2,#1
	B LO
L1 B L1	

  
