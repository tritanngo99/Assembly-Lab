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
; Bai 1: Tim UCLN cua hai so nguyen duong a,b
;Thuat toan :
;while (a!=b){
;if(a>b){ a=a-b;}
;	else{b=b-a;}
;}

    MOV R1,#24; A=24
	MOV R2,#32; B=32
L0	CMP R1,R2 ; R1!=R2
	BEQ L1
	CMP R1,R2 ; R1>R2
	BLS L2
	SUB R1,R1,R2
	B L0
L1 B L1
L2 SUB R2,R2,R1
