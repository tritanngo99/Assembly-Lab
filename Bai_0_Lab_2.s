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

; In ra so fibonacci thu n
; R2->n va F(n)->R0
;Thuat toan :
; n=6
;fa=0
;fb=1
;while(n>1){
;   tmp=fb;
;   fb=fa+fb;
;   fa=tmp;
;   n=n-1
;}
  MOV R2,#32; n=32;
  MOV R1,#0; Fa = 0;
  MOV R0,#1; Fb=1;
L0  CMP R2,#1; n>1
  BLE L1
  MOV R3,R0
  ADD R0,R0,R1
  MOV R1,R3
  SUB R2,R2,#1
  B L0
L1 B L1  
; Ket qua: n=6 ->f(6)=8
; ket qua: n=16 ->f(16)=0x3DB = 3.16^2+13*16+11 = 987 (Dung)
; Ket qua: n=32 ->f(32) = 0x213D05 = 2178309

  
