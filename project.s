.data
intro:
	.ascii "This is a world of sword and magic.\n"
	.ascii "You are a new explorer just start your adventure.\n"
	.ascii "What a fortune!You found a new dungeon, it seems\n"
	.ascii "you are the fisrt one ever been there.\n"
	.ascii "It is your chance. But there is also danger lurk in the dark.\n\n"
	.ascii "You have 100 gold coins with you. And your initial Sanity point is 100.\n"
	.ascii "When you broke, you advanture will be stopped. You have to find a boring job for rest of your life.\n"
	.ascii "When your SAN point goes 0, you will bent to madness and become a lunatic.\n" 
	.ascii "Everytime you enter the dungeon needs a week to prepare.\n"
	.ascii "During the preparation, there is a little cost on euqipment maintainance.\n"
	.ascii "And you can upgrade your weapon,or go to church to recover Sanity point, or simply rest.\n\n"
	.ascii "You have 30 weeks before the empire take over the dungeon, good luck!\n\0"

count:
	.ascii "Week: \0"
cost1:
	.ascii "\nYou spent \0"
cost2:
	.ascii "gold coins on equipment maintainance.\n\0"
prep:
	.ascii "\n1.Upgrade your weapon(65 gold coins)\n"
	.ascii "2.Go to the church, resotre SAN.(40 gold coins)\n"
	.ascii "3.Take rest.(heal you HP) \n"
	.ascii "4.Quit the adventure.\n\0"

upWeapon:
	.ascii "Weapon upgraded!\n\0"

	
statu0: .ascii  "\nWeek: \0"	
statu1: .ascii  "\nYour HP:    \0"
statu2: .ascii  "\nYour SAN:   \0"
statu3: .ascii  "\nWeapon lvl: \0"	
statu4: .ascii  "\nGold coins: \0"

rest:
	.ascii "\nYou take a rest, filling strngth comes back at you.\n"
	.ascii "You restore 25 HP(maximum HP is 100) \0"

explore:
	.ascii "\nYou do discover the dungeon, \n"
	.ascii "good for you, you find gold: \0"
SANlost:
	.ascii "\nThe dark atmosphere in the degueon doesn't make you feel good.\n"
	.ascii "You lost SAN point: \0"

scrollIntro:
	.ascii "\n     __________  \n"
	.ascii "()==(          )==()\n"
	.ascii "     ,________ ,|\n"
	.ascii "      |         |\n"
	.ascii "      |         |\n"
	.ascii "     _)_________|\n"
	.ascii "()==(, ________,(@==()\n"
	.ascii "You found a mysterious scroll.\n"
	.ascii "There must be ancient knowledge recorded on the scroll.\n"
	.ascii "But no one can tell it is good or evil.\n"
	.ascii "Make your desicion:\n"
	.ascii "1.Read it. Knowledge is my friend.\n"
	.ascii "2.Drop it. Evil could destory your mind.\n\0"

goodScroll:
	.ascii "\nLucky you. The scroll does no harm.\n"
	.ascii "You mind feels clean, you gain SAN point: \0"

badScroll:
	.ascii "\nThere is only filthy curse in the scroll.\n"
	.ascii "You mind is damaged, you lost SAN point: \0"

monsterIntro:
	.ascii "\n      --   -- \n"
	.ascii "      _'  " "  '_ \n"
	.ascii "    '   +     +   '\n"
	.ascii "  .|    __,__   |.|\n"
	.ascii "   ;__.-;  |  ;-.__;\n"
	.ascii "   | \  | | |  /  |\n"
	.ascii "    \  \ | | | /   /\n"
	.ascii "     \  \|\|/\/   /\n"
	.ascii "     (	        ) \n"
	.ascii "      (_/\/\/\/\_)\n"
	.ascii "         ,....... `    \n" 
	.ascii "You heard a strange noise. It definetely not human.\n"
	.ascii "The noise is getting close. Now you see it is a ghoul.\n"
	.ascii "You have a basic 50% chance win the fight.\n"
	.ascii "Each upgrade of you weapon gives you 5% more chance to win.\n"
	.ascii "Make you decision:\n"
	.ascii "1.Fight! There might be loot on the ghoul.\n"
	.ascii "2.Escape, don't put yourself in danger.\n\0"

win:
	.ascii "\nYou defeat the monster, you find loot worth: \0"
lost:
	.ascii "\nYou overestimated yourself, you lost the fight.\n"
	.ascii "You lost HP: \0"
escape:
	.ascii "\nYou choose to flee.\n"
	.ascii "Only fear left in your mind, \n"
	.ascii "You lost SAN point: \0"

giveUp:
	.ascii "\nDue to some reason, you give up this advanture.\n"
	.ascii "It could be a really great start. Pity.\n\0"


church:
	.ascii "\nIn the church, you feel peace.\n"
	.ascii "SAN point restores to 100.\n\0"
mad:
	.ascii "\n^(;,;)^\n"
	.ascii "The world in your eyes becomes all chaos.\m"
	.ascii "You forgot who you are.\n"
	.ascii "All you know is wandering around and killing people who enter the dungeon.\n"
	.ascii "When the empire arrived, they killed you like the rest of monsters.\n\0"

broke:
	.ascii "\nYou lost your last gold coin.\n"
	.ascii "It is impossible continue exploring without reliable equipment.\n"
	.ascii "You go back to the town and find a minimum wage job.\n"
	.ascii "And your dream of being a great explorer stops at a dream.\n\0"

goodEnding:
	.ascii "\nYour first explore is a great sucess.\n"
	.ascii "As the first man found the dungeon, you collect most of waelth from it.\n"
	.ascii "You start getting used to be an explorer.\n"
	.ascii "Sharp weapon, strong will. You next adventure is await\n\0"

die:
	.ascii "   -------------\n"
	.ascii "  /              \\n"
	.ascii " /                \\n"
	.ascii "/                  \\n"
	.ascii "|   XXXX   XXXX    |\n"
	.ascii "|   XXXX   XXXX    |\n"
	.ascii "|   XXX     XXX    |\n"
	.ascii "|        X         |\n"
	.ascii "\__     XXX      __/\n"
	.ascii "  | \   XXX    /|    \n"
	.ascii "  | |          ||\n"
	.ascii "  |  I I I I I  |\n"
	.ascii "  |   I I I I   |\n"	
 	.ascii "  \_____________/\n"
	.ascii "YOU　　　　　DIED!\n\0"



# HP:     rbx
# SAN:    r8
# weapon: r9
# gold:   r10
# week:   r11
# check:  r12 
# winRate:r13
.text
.global _start

_start:
	#rest would heal 25 HP
	#gear maintainnance cost 10-20 gold
	mov $100, %rbx
	mov $100, %r8
	mov $0, %r9
	mov $100, %r10
	mov $0, %r11
	mov $30, %r13

	mov $intro, %rcx
	call PrintCString

begin:	
	add $1, %r11
	cmp $0, %rbx 
	jle dieEnding
	cmp $0, %r8
	jle madEnding
	cmp $0, %r10
	jl brokeEnding
	call maintainance
	call printSt		
	
	mov $prep, %rcx
	call PrintCString
	call ScanInt
	cmp $1, %rcx 
	je upup
	cmp $2, %rcx
	je gogo
	cmp $3, %rcx
	je resres
	call gaveUp
upup:	call Wp
	jmp movingOn
gogo:   call goChurch
	jmp movingOn
resres: call rest_
movingOn:	
	call exploring
	call randomEvent
	cmp $10, %rcx
	jle monmon
	cmp $30, %rcx
	jle scosco
	jmp keepGoing
monmon:
	call meetMonster
	jmp keepGoing
scosco:
	call meetScroll
	jmp keepGoing
keepGoing:
	cmp $30, %r11
	jl begin
	mov $goodEnding, %rcx
	call PrintCString	

	call EndProgram	
Wp:
	mov $upWeapon, %rcx
	call PrintCString
	add $1, %r9
	add $5, %r13
	sub $65, %r10
	cmp $0, %r10
	jl brokeEnding
	ret
	
goChurch:
	mov $100, %r8
	mov $church, %rcx
	call PrintCString
	sub $40, %r10
	cmp $0, %r10
	jl brokeEnding
	ret 
	

gaveUp:
	mov $giveUp, %rcx
	call PrintCString
	call EndProgram

maintainance:
	cmp $1, %r11
	je back
	mov $10, %rcx
	call Random
	add $10, %rcx
	sub %rcx, %r10
	mov %rcx, %r15
	mov $cost1, %rcx
	call PrintCString
	mov $3, %rcx
	call SetForeColor
	mov %r15, %rcx
	call PrintInt
	mov $7, %rcx
	call SetForeColor
	mov $cost2, %rcx
	call PrintCString
back:	ret
	

printSt:
	mov $statu0, %rcx
	call PrintCString
	mov %r11, %rcx
	call PrintInt

	mov $statu1, %rcx
	call PrintCString
	mov $1, %rcx
	call SetForeColor
	mov %rbx, %rcx
	call PrintInt
	mov $7, %rcx
	call SetForeColor
	
	mov $statu2, %rcx
	call PrintCString
	mov $4, %rcx
	call SetForeColor
	mov %r8, %rcx
	call PrintInt
	mov $7, %rcx
	call SetForeColor
	
	mov $statu3, %rcx
	call PrintCString
	mov %r9, %rcx
	call PrintInt
	mov $statu4, %rcx
	
	call PrintCString
	mov $3, %rcx
	call SetForeColor
	mov %r10, %rcx
	call PrintInt
	
	mov $7, %rcx
	call SetForeColor
	ret

randomEvent:
	mov $100, %rcx
	call Random
	#10% chance meet monster
	#20% chance meet a scroll
	#at most one event each exploring
	#rest of possibility does nothing
	#this function just give rcx a number 
	ret

meetScroll:
	#scroll is 50% to be good or evil
	#it changes SAN 10-25
	mov $scrollIntro, %rcx
	call PrintCString
	call ScanInt
	cmp $2, %rcx
	je Return
	mov $100, %rcx
	call Random
	cmp $50, %rcx
	jle Escroll
	jmp Gscroll
Escroll:
	mov $badScroll, %rcx
	call PrintCString
	mov $4, %rcx
	call SetForeColor
	mov $15, %rcx
	call Random
	add $10, %rcx
	call PrintInt
	sub %rcx, %r8
	mov $7, %rcx
	call SetForeColor
	ret
Gscroll:
	mov $goodScroll, %rcx
	call PrintCString
	mov $4, %rcx
	call SetForeColor
	mov $15, %rcx
	call Random
	add $10, %rcx
	call PrintInt
	add %rcx, %r8
	mov $7, %rcx
	call SetForeColor
	ret
		

meetMonster:
	#basic win rate 30%
	#each upgrade on weapon increases 5%
	mov $monsterIntro, %rcx
	call PrintCString
	call ScanInt
	cmp $1, %rcx
	je winCheck
	mov $escape, %rcx
	call PrintCString
	mov $4, %rcx
	call SetForeColor
	mov $10, %rcx
	add $10, %rcx
	call PrintInt
	sub %rcx, %r8
	mov $7, %rcx
	call SetForeColor
	ret
winCheck:
	#r13 is win rate, if random number less or equal to r13, win
	mov $100, %rcx
	call Random
	cmp %rcx, %r13
	jge victory
	jmp lose_
victory:
	#loot would be 20-40 golds
	mov $20, %rcx
	call Random
	add $20, %rcx
	add %rcx, %r10 
	mov %rcx, %r15
	mov $win, %rcx
	call PrintCString
	mov $3, %rcx
	call SetForeColor 
	mov %r15, %rcx
	call PrintInt
	mov $7, %rcx
	call SetForeColor
	jmp Return
lose_:
	#lost HP is 10-50
	mov $40, %rcx
	call Random
	add $10, %rcx
	sub %rcx, %rbx
	mov %rcx, %r15
	mov $lost, %rcx
	call PrintCString
	mov $1, %rcx
	call SetForeColor
	mov %r15, %rcx
	call PrintInt
	mov $7, %rcx
	call SetForeColor
Return:
	ret	

rest_:
	mov $rest, %rcx
	call PrintCString
	cmp $75, %rbx
	jge emm
	add $25, %rbx
	ret
emm:	mov $100, %rbx
	ret

exploring:
	#exploring wins gold 10-50
	#lost SAN 5-15
	mov $40, %rcx
	call Random
	add $10, %rcx
	add %rcx, %r10
	mov %rcx, %r15
	mov $explore, %rcx
	call PrintCString
	mov $3, %rcx
	call SetForeColor
	mov %r15, %rcx
	call PrintInt
	mov $7, %rcx
	call SetForeColor
	mov $SANlost, %rcx
	call PrintCString
	mov $4, %rcx
	call SetForeColor
	mov $10, %rcx
	call Random
	add $5, %rcx
	call PrintInt
	sub %rcx, %r8
	mov $7, %rcx
	call SetForeColor 
	ret

dieEnding:
	mov $1, %rcx
	call SetForeColor
	mov $die, %rcx
	call PrintCString
	mov $7, %rcx
	call SetForeColor
	call EndProgram

brokeEnding:
	mov $broke, %rcx
	call PrintCString
	call EndProgram

madEnding:
	mov $2, %rcx
	call SetForeColor
	mov $mad, %rcx
	call PrintCString
	mov $7 ,%rcx
	call SetForeColor
	call EndProgram
	
