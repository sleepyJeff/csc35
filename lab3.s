#lab3
#Jiayuan Zhao

.data
newLine:
	.ascii "\n\0"

s1:
	.ascii "What is the size of sugar cube?\n\0"

s2:
	.ascii "How many sugar cubes does the dessert take?\n\0"

s3:
	.ascii "Total sugar for is each is \0"

s4:
	.ascii "How much sugar can Winnie have?\n\0"

s5:
	.ascii "Winnie can only have \0"

s6:
	.ascii " of these.\n\0"

.text
 .global _start

_start: 
	mov $s1, %rcx
	call PrintCString

	call ScanInt
	mov %rcx, %rax

	imul %rcx, %rax
	imul %rcx, %rax

	mov $s2, %rcx
	call PrintCString

	call ScanInt
	imul %rcx, %rax

	mov $s3, %rcx
	call PrintCString
	mov %rax, %rcx
	call PrintInt
	
	mov $newLine, %rcx
	call PrintCString
	mov $s4, %rcx
	call PrintCString
	call ScanInt
	
	#now rax is unit sugar
	
	mov %rax, %rbx
	mov %rcx, %rax  
	CQO
        idiv %rbx
	mov $s5, %rcx
	call PrintCString
	mov %rax, %rcx
	call PrintInt
	mov $s6, %rcx
	call PrintCString

#	The next 4 lines are debug used
#	mov %rbx, %rcx
#	call PrintInt
#	mov %rax, %rcx
#	call PrintInt

	call EndProgram
