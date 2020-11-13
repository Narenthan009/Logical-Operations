
	#include<p18f4550.inc>
	
		org 0x00
		goto start
		org 0x08
		retfie
		org 0x18
		retfie
		
;Write a subroutine to perform the following instruction in a sequence.
;1.Clear PORTD
;2.Toggle bit 1,3,5 of PORTD
;3.Increase the content of PORTD by 1


start 	clrf 	PORTD,A
		movlw B'00101010'
		xorwf 	PORTD
		incf 	PORTD,F,A

		end

