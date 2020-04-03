;
; CS1021 2018/2019	Lab 1
; 

	AREA	RESET, CODE, READONLY
	ENTRY

;A=7;B=11;C=8
; start of code
    MOV R1,#7
	MOV R2,#11
	MOV R3,#8
	MOV R0,R1 ; max = a
	CMP R2,R0 ; B>MAX? ; tINH r2-r0 -> gan KQ N,Z	
	BLE L1 ;ble kiem n,z
	MOV R0,R2
L1  CMP R3,R0
    BLE L2
	MOV R0,R3

L2 B L2
