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
; ARM Logic Instructions 
;+ AND dst = src1 AND src2  ---  src1&src2
;+ EOR dst = src1 EOR src2  ---  src1^src2
;+ ORR dst = src1 ORR src2  ---  src1|src2
;+ MVN dst = NOT src2  --- ~src2
;+ ORN dst = src1 NOR src2 --- ~(src1|src2)
;+ BIC dst = src1 AND NOT src2 --- (src1&~src2) 
;----------------------------------
; ARM Shift and Rotate
; + Logical Shift Left (LSL)  --- a<<n
;+Logical Shift Right (LSR) --- a>>n
;+ Arithmetic Shift Right (ASR)
;+ Rotate Right (ROR)
;+ Rotate Right with eXtend(RRX)
;+ NB : these are NOT instruction in the same sense as ADD, SUB, or ORR
;-------------------------------------
;Cong hai so 64 bit khong dau (R0:R1 + R2:R3)
;ADDS R1,R1,R3 ; add least significant bits and set CARRY
;ADC R0,R0,R2 ; add most significant bits with CARRY
;-------------------------------------
;Tru hai so 64 bit khong dau (R0:R1 + R2:R3)
;SUBS R1,R1,R3 ; subtract least significant bits and set CARRY
;SBC R0,R0,R2 ; subtract most significant bits with CARRY

; Tinh fibonacci cho so 64-bit co dau
;f(0)=0;f(1)=1;f(2)=1;f(3)=2;f(4)=3;f(5)=5;f(6)=8
;while(n>1){
;   tmp = fb;
;   fb=fa+fb;
;   fa=tmp;
;   n=n-1;
;}  
    ; R4=TMP(L);R5=TMP(R);
    LDR R6,=48 ; N=48
    LDR R0,=0 ; FA(L)=0;
	LDR R1,=0 ; FA(R)=0;
	LDR R2,=0 ; FB(L)=0;
	LDR R3,=1 ; FB(R)=1;
L0  CMP R6,#1 ; N>1?
    BLS L1
	MOV R4,R2
	MOV R5,R3
	ADDS R3,R3,R1
	ADC R2,R2,R0
	MOV R0,R4
	MOV R1,R5
	SUB R6,R6,#1
	B L0
L1 B L1
