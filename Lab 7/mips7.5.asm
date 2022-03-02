# WAP to print the numbers from 1 to 5 using a LOOP in descending order. 
# Use only one register ($t0)
.text
li $t0,6
loop:
	addi $t0,$t0,-1		# decrement t0 by 1
	move $a0,$t0
	li $v0,1		#print numbers 
	syscall
		li $a0,32
		li $v0,11	#space
		syscall
bne $t0, 1, loop		# if t0 =/ 1, branch to loop and print the number,  else exit
li $v0,10
syscall



