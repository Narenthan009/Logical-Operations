
	#include<p18f4550.inc>

n 		equ D'3'
lp_cnt  set 0x10
	
		org 0x00
		goto start
		org 0x08
		retfie
		org 0x18
		retfie

start 	movlw n
		movwf lp_cnt,A

loop	rlncf 0x15,F,A

sum_lp 	decfsz lp_cnt,F,A
		goto loop
		nop

		end



