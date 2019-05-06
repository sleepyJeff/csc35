#lab2.s
#Jiayuan Zhao

.data
Message1:
	.ascii "How much do you make each month?\n\0"

Message2:
	.ascii "Monthly car payment?\n\0"

Message3:
	.ascii "Monthly credie card payment?\n\0"

Message4:
	.ascii "Monthly house/apartment cost?\n\0"

Message5:
	.ascii "Well, your actual income is $\0"

 

.text
.global _start

_start:
	mov $Message1, %rcx
	call PrintCString

	call ScanInt
	mov %rcx, %rax

	mov $Message2, %rcx
	call PrintCString

	call ScanInt
	sub %rcx, %rax

	mov $Message3, %rcx
	call PrintCString

	call ScanInt
	sub %rcx, %rax

	mov $Message4, %rcx
	call PrintCString
	
	call ScanInt
	sub %rcx, %rax

	mov $Message5, %rcx
	call PrintCString

	mov %rax, %rcx
	call PrintInt

call EndProgram 
