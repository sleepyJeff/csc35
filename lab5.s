.data
intro:
	.ascii "I'm your delicious Hogwarts Alphabet suop.\n"
	.ascii "Before you can eat me, you must guess my letter.\n\0"

guess:
	.ascii "Guess: \0"
low:
	.ascii "Too low!\n\0"
high:
	.ascii "Too high!\n\0"
correct:
	.ascii "Correct! You can now eat me!\n\0"


.text
.global _start

_start:
	mov $intro, %rcx
	call PrintCString

	mov $26, %rcx
	call Random
	add $97, %rcx
	mov %cl, %al

begin:
	mov $guess, %rcx
	call PrintCString
	call ScanChar
	cmp %cl, %al
	jg LOW
	jl HIGH
	jmp end

HIGH:
	mov $high, %rcx
	call PrintCString
	jmp begin
LOW:
	mov $low, %rcx
	call PrintCString
	jmp begin

end:
	mov $correct, %rcx
	call PrintCString
	call EndProgram



