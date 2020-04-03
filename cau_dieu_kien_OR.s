;
; CS1021 2018/2019	Lab 1
; 

	AREA	RESET, CODE, READONLY
	ENTRY

; Cau dieu kien OR
;if((x==40)||(x==50)){
;	  y=y+1;
;	  }else { z=z+1;}
;x->R1, y->R2,z-> R3
   MOV R1,#15
   MOV R2,#20
   MOV R3,#23
   CMP R1,#40 ; x==40 ?
   BEQ L1
   CMP R1,#50
   BEQ L1 ;
   ADD R3,R3,#1
   B L3
L1 ADD R2,R2,#1
L3 B L3
   
  
