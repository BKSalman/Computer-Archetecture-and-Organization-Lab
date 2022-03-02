# WAP to print the numbers from 1 to 5 using a LOOP. 
# Use registers a0, a1
.text
li $a0,0
li $a1,5
loopstart:
	addi $a0,$a0,1	# increment a0 with 1			
		li $v0,1		#print numbers 
		syscall
		li $v0,11	#space
		syscall
bne $a0,$a1, loopstart		# if a0 =/ a1, branch to loop and print the number,  else exit
li $v0,10
syscall



