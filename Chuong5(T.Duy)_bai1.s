; Link:https://web.sonoma.edu/users/f/farahman/sonoma/courses/es310/310_arm/lectures/Chapter_4_Arithmetic_and_Logic_ARM.pdf
;Link 2:https://web.sonoma.edu/users/f/farahman/sonoma/courses/es310/310_arm/
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
;----------------------------------------
;RBIT Rd,Rn 
;Reverse bit order in a word.
;for (i = 0; i < 32; i++) Rd[i] ¬ RN[31– i]
;REV Rd,Rn
;Reverse byte order in a word.
;Rd[31:24] ¬ Rn[7:0], Rd[23:16] ¬ Rn[15:8],
;Rd[15:8] ¬ Rn[23:16], Rd[7:0] ¬ Rn[31:24]
;REV16 Rd,Rn
;Reverse byte order in each half-word.
;Rd[15:8] ¬ Rn[7:0], Rd[7:0] ¬ Rn[15:8],
;Rd[31:24] ¬ Rn[23:16], Rd[23:16] ¬ Rn[31:24]
;REVSH Rd,Rn
;Reverse byte order in bottom half-word and sign
;extend.
;Rd[15:8] ¬ Rn[7:0], Rd[7:0] ¬ Rn[15:8],
;Rd[31:16] ¬ Rn[7] & 0xFFFF
;--------------------------------------------
;SDIV {Rd,} Rn, Rm ; Signed divide. Rd ¬ Rn / Rm
;UDIV {Rd,} Rn, Rm ;Unsigned divide. Rd ¬ Rn / Rm


				AREA    main, CODE, READONLY
				EXPORT	__main						; make __main visible to linker
				ENTRY
				
__main			PROC
                LDR R0,=array
;---------------------code tai day--------------------------
    ; Bai 1 - Chuong 5
	; a) r1 = 0x0DEB2C1A (little endian) and r1 = 0x1A2CEB0D (big endian)
	; b) 
	; TH1: ldr r1,[r0,#4] -> r1= value of (R0+offset) = 0x79CDA3FD; R0 giu nguyen
	; TH2: ldr r1,[r0],#4 -> r1 = value of (R0) = 0x0DEB2C1A; R0=R0+offset 
	; TH3: ldr r1,[r0,#4]!-> r1=value of (R0+offset)= 0x79CDA3FD; R0=R0+offset
    			   
;--------------------code tai dau -------------------------								
stop 			B 		stop     					; dead loop & program hangs here

				ENDP
				ALIGN			

				AREA    myData, DATA, READWRITE
				ALIGN
array			DCD   1, 2, 3, 4
				END
