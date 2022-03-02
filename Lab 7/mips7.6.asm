# WAP to print the numbers from 1 to 5 in descending order 
# using a LOOP. Use only one register ($a0)
.text
li $a0,6
loopstart:
	addi $a0,$a0,-1		# decrement a0 with 1
	li $v0,1			#print numbers 
	syscall
	li $v0,11		#space
	syscall
bne $a0,1, loopstart		# if a0 =/ 1, branch to loop and print the number,  else exit
li $v0,10
syscall



