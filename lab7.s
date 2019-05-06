.data
intro:
	.ascii "I'M MR. MEESEEKS. LOOS AT ME!\n\0"

outtro:
	.ascii " CAN DO!\n\0"

task:
	.space 30

.text
.global _start

_start:
	mov $intro, %rcx
	call PrintCString
	mov $task, %rdx
	call ScanCString
	mov %rcx, %rbp   #rbp store the input string
	call LengthCString
	mov %rcx, %rdx     #store length of string in rdx
	mov $0, %rdi	   #store where we are in rdi

loop:
	cmp %rdi, %rdx
	je end   #go to the end after all switch
	movb (%rbp, %rdi), %al
	cmp $96, %al    #only switch when it's lowercase
	jg bigger
	add $1, %rdi
	jmp loop
bigger:
	sub $32, %al
	movb %al,(%rbp, %rdi)
	add $1, %rdi
	jmp loop
end:
	mov %rbp, %rcx
	call PrintCString
	mov $outtro, %rcx
	call PrintCString
	call EndProgram
	
	
