# WAP to print the numbers from 1 to 5 using a LOOP
.text
li $t0,0
li $t1,5
loop:
	addi $t0,$t0,1	# increment t0 with 1
	move $a0,$t0
	li $v0,1		#print numbers 
	syscall
		li $a0, 32
		li $v0,11	#space
		syscall
bne $t0,$t1, loop	# if t0 =/ t1, branch to loop and print the number,  else exit
li $v0,10
syscall



