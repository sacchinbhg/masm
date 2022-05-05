;       Example - 1
;       File Name :DAC1.ASM
;-----------------------------------------------------
;       Routine to output data to dac1
;-----------------------------------------------------
	code    segment
		assume  cs:code,        ds:code
;
;        assume I/O base address 1000h
;
	dac1    equ     1000h
;
;-----------------------------------------------------
;       Main program starts from address 100h
;-----------------------------------------------------
		org     1000h
	begin:          
		mov     dx,dac1
		mov     al,7fh          ;output data 7f to DAC1
		out     dx,al           
		mov     ah,4ch          ;exit to DOS
		int     21h
	code    ends    
		end     begin
		
