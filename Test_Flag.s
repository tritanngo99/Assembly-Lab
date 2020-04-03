;
; CS1021 2018/2019	Lab 1
; 

	AREA	RESET, CODE, READONLY
	ENTRY

; Test Flag condition
   LDR R0,=0x70000000
   LDR R1,=0xA0000000
   CMP R0,R1
STOP B STOP ;infinitive loop
   
  
