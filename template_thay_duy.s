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
;(1) RBIT R1,R0 ;Reverse byte order in a word.
;(2) REV R1,R0 ; Reverse byte order in each halfword independently. ; 
;converts 32-bit big-endian data into little-endian data or 32-bit little-endian data into big-endian data.
;(3) REV16 R1,R0 ; Reverse byte order in the bottom halfword, and sign extend to 32 bits.
;converts 16-bit big-endian data into little-endian data or 16-bit little-endian data into big-endian data.
;(4) REVSH R1,R0 ;Reverse the bit order in a 32-bit word.
;converts either:

;16-bit signed big-endian data into 32-bit signed little-endian data

;16-bit signed little-endian data into 32-bit signed big-endian data.
;--------------------------------------------


				AREA    main, CODE, READONLY
				EXPORT	__main						; make __main visible to linker
				ENTRY
				
__main			PROC
                LDR R0,=array
;---------------------code tai day--------------------------
				LDR R1,=0x00000011
				RBIT R2,R1
				REV R3,R1
				REV16 R4,R1
				REVSH R5,R1
;--------------------code tai dau -------------------------								
stop 			B 		stop     					; dead loop & program hangs here

				ENDP
				ALIGN			

				AREA    myData, DATA, READWRITE
				ALIGN
array			DCD   1, 2, 3, 4
				END
