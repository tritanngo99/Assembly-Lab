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

; In ra so fibonacci lon nhat trong pham vi cua so nguyen co dau 32-bit va so nguyen khong dau 32 bit
; MAX1 (co dau) =   0x7FFFFFFF
; MAX2(khong dau) = 0xFFFFFFFF
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
;if(MAX-F(n-1)<F_(n-2)) break;
  MOV R4,#0x7FFFFFFF ; MAX1 = 0x7FFFFFFF
  ;MOV R5,#0xFFFFFFFF; MAX2 = 0xFFFFFFFF
  MOV R2,#1; n=1;
  MOV R1,#0; Fa = 0;
  MOV R0,#1; Fb=1;
L0  
  ;SUB R6,R5,R0; KHONG DAU
  SUB R6,R4,R0; CO DAU
  CMP R6,R1 ; R6>=R1 ?
  BLT L1 ; CO DAU
  ;BLO L1 ; KHONG DAU
  MOV R3,R0
  ADD R0,R0,R1
  MOV R1,R3
  ADD R2,R2,#1; DEM N
  B L0
L1 B L1  
;kQ (CO DAU): f(0x2E)=0x6D73E55F <-> f(46) = 1836311903
;KQ (KHONG DAU): f(0x2F) = 0xB11924E1 <-> f(47) = -1323752223+16^8 = 2971215073



  
