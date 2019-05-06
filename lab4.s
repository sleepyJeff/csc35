.data
newLine:
	.ascii "\n\0"
s1:
	.ascii "Not doing chroes:        3  points\n\0"
s2:
 	.ascii "Stealing someone's toys: 7  points\n\0"
s3:
	.ascii "Blowing but the kitchen: 24 points\n\0"
p1: 
	.ascii "No punishment\n\0"                                    #no punishment when points<=15
p2:
	.ascii "Bloo does not have pocket money this week\n\0"        #when 15<points<=30
p3:
	.ascii "Bloo has to washing plates for a month\n\0"             #when  points>30
q1:
	.ascii "How many times didn't he clean?\n\0"
q2:
	.ascii "How many times did he steal?\n\0"
q3:
	.ascii "How many times did kitchen explode?\n\0"
o1:
	.ascii "That's \0 "
o2:
	.ascii " naughty points!\n\0"

.text
.global _start

_start:
	mov $s1, %rcx
	call PrintCString
	mov $s2, %rcx
	call PrintCString
	mov $s3, %rcx
	call PrintCString
	mov $newLine, %rcx
	call PrintCString

	mov $q1, %rcx
	call PrintCString
	call ScanInt
	imul $3, %rcx
	mov %rcx, %rax
	
	mov $q2, %rcx
	call PrintCString
	call ScanInt
	imul $7, %rcx
	add %rcx, %rax

	mov $q3,%rcx
	call PrintCString
	call ScanInt
	imul $24, %rcx
	add %rcx, %rax

	mov $o1, %rcx
	call PrintCString
	mov %rax, %rcx
	call PrintInt
	mov %rcx, %rax
	mov $o2, %rcx
	call PrintCString

	cmp $30, %rax
	jg Punish3
	cmp $15, %rax
	jg Punish2
	jmp Punish1

Punish3: 
	mov $p3, %rcx
	call PrintCString
	jmp End
Punish2:
	mov $p2, %rcx
	call PrintCString
	jmp End

Punish1:
	mov $p1, %rcx
	call PrintCString
End:
	call EndProgram
	
	









