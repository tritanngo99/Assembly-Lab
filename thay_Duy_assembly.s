;******************** (C) Yifeng ZHU ********************
; @file    main.s
; @author  Yifeng Zhu
; @version V1.0.0
; @date    May-5-2012
; @note    
; @brief   Assembly code for STM32L1xx Discovery Kit
; @note
;          This code is for the book "Embedded Systems with ARM Cortex-M3 
;          Microcontrollers in Assembly Language and C, Yifeng Zhu, 
;          ISBN-10: 0982692625.
; @attension
;          This code is provided for education purpose. The author shall not be 
;          held liable for any direct, indirect or consequential damages, for any 
;          reason whatever. More information can be found from book website: 
;          http://www.eece.maine.edu/~zhu/book
;********************************************************

				
; STM32L1xx Discovery Kit:
;    - USER Pushbutton: connected to PA0 (GPIO Port A, PIN 0), CLK RCC_AHBENR_GPIOAEN
;    - RESET Pushbutton: connected RESET
;    - GREEN LED: connected to PB7 (GPIO Port B, PIN 7), CLK RCC_AHBENR_GPIOBEN 
;    - BLUE LED: connected to PB6 (GPIO Port B, PIN 6), CLK RCC_AHBENR_GPIOBEN
;    - Linear touch sensor/touchkeys: PA6, PA7 (group 2),  PC4, PC5 (group 9),  PB0, PB1 (group 3)

				INCLUDE stm32l1xx_constants.s		; Load Constant Definitions
				INCLUDE stm32l1xx_tim_constants.s   ; TIM Constants

				AREA    main, CODE, READONLY
				EXPORT	__main						; make __main visible to linker
				ENTRY
				
__main			PROC

				LDR  	r0, =array
								
stop 			B 		stop     					; dead loop & program hangs here

				ENDP
				ALIGN			

				AREA    myData, DATA, READWRITE
				ALIGN
array			DCD   1, 2, 3, 4
				END
