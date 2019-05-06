.data
intro:
	.ascii "Welcome human!\n\nTell the great bender your name:\n"

s1:
	.ascii "Hello "

s2:
	.ascii "! I'm fun on a bum.\n"

name:
	.space 50



.text
.global _start

_start:
	#print intro
	mov $1, %rax
	mov $1, %rdi
	mov $intro, %rsi
	mov $49, %rdx
	syscall

	#get user's input	
	mov $0, %rax
	mov $0, %rdi
	mov $name, %rsi
	mov $50, %rdx
	syscall
	mov %rax, %r15
	#r15 now store number of bytes read

	#print 1st part of outtro
	mov $1, %rax
	mov $1, %rdi
	mov $s1, %rsi
	mov $6, %rdx
	syscall

	#print user's input
	mov $1, %rax
	mov $1, %rdi
	mov $name, %rsi
	mov %r15, %rdx
	dec %rdx
	syscall 

	#print 2nd part of outtro
	mov $1, %rax
	mov $1, %rdi
	mov $s2, %rsi
	mov $20, %rdx
	syscall

	#end of this program, and this wonderful lab section
	mov $60, %rax
	mov $0, %rdi
	syscall
	
	
