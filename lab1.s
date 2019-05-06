# lab1.s
# Jiayuan Zhao

.data
 Message:
	.ascii "Hello, world!\n\0"

 Name:
	.ascii "My name is Jiayuan Zhao.\n\0"

 Quote:
	.ascii "Be yourself; everyone else is taken. --Oscar Wilde\n\0"

 FirstHalf:
	.ascii "I will graduate in \0"
 
 SecondHalf:
	.ascii " from Sacramento State!\n\0"

 Year = 2022

.text
 .global _start

_start:

	mov $Message, %rcx
	call PrintCString

	mov $Name, %rcx
	call PrintCString

	mov $Quote, %rcx
	call PrintCString

	mov $FirstHalf, %rcx
	call PrintCString

	mov $Year, %rcx
	call PrintInt

	mov $SecondHalf, %rcx
	call PrintCString

call EndProgram

