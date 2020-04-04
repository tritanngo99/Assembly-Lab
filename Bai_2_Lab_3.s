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

; Tim n vaf fn lon nhat trong pham vi 64 bit co dau (Fibonacci)
;n=1;

;while(MAX-fb<fa){
;   tmp = fb;
;   fb=fb+fa;
;   tmp=fa;
;   n++;
;}
    LDR R10, =0x7FFFFFFF
   LDR R11, =0xFFFFFFFF
   LDR R0, =0
   LDR R1, =0
   LDR R2, =0
   LDR R3, =1
   LDR R6, =1
L0 SUBS R9, R11, R3
   SBC  R8, R10, R2
    CMP R8, R0
   BLT L1
   CMP R8, R0
   BEQ L2
   MOV R4, R2
   MOV R5, R3
   ADDS R3, R3, R1
   ADC R2, R2, R0
   MOV R0, R4
   MOV R1, R5
   ADD R6, R6, #1
   B L0
L2 CMP R9, R1
   BLT L1
   MOV R4, R2
   MOV R5, R3
   ADDS R3, R3, R1
   ADC R2, R2, R0
   MOV R0, R4
   MOV R1, R5
   ADD R6, R6, #1
   B L0
L1 B L1

; KET QUA: F(5C) = (R2:R3) VOI R2:0x68A3DD8E  VA  R3:0x61ECCFBD
