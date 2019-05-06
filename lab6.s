.data
s1: .ascii "Player A, enter a noun: \0"
s2: .ascii "Player B, enter a verb: \0"
s3: .ascii "Player A, enter a preposition: \0"
s4: .ascii "player B, enter a noun: \0"

w1: .space 30
w2: .space 30
w3: .space 30
w4: .space 30

sp: .ascii " \0"

outtro: .ascii"Your sentence is: \n\0"

.text
.global _start

_start:
	mov $30, %rdx     #set size for the input
	
	#Print intro and scan input	

	mov $s1, %rcx
	call PrintCString
	call ScanCString
	mov %rcx, w1
	call ClearScreen

	mov $s2, %rcx
	call PrintCString
	call ScanCString
	mov %rcx, w2
	call ClearScreen	
	
	mov $s3, %rcx
	call PrintCString
	call ScanCString
	mov %rcx, w3
	call ClearScreen

	mov $s4, %rcx
	call PrintCString
	call ScanCString
	mov %rcx, w4
	call ClearScreen	
	
	#Print the sentence
	
	mov w1, %rcx
	call PrintCString
	mov $sp, %rcx
	call PrintCString
	mov w2, %rcx
	call PrintCString
	mov $sp, %rcx
	call PrintCString
	mov w3, %rcx
	call PrintCString
	mov $sp, %rcx
	call PrintCString
	mov w4, %rcx
	call PrintCString


	call EndProgram


	
