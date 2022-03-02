# WAP to print squares of numbers from 1 to 5  using Loop
.text
li $t0,0			# initialize the counter $t0 to zero
loop:
	add $t0, $t0,1 		# Increment the counter $t0 to the next value
	mul $t2, $t0, $t0 	# calculate the square of the incremented counter value
		mflo $a0 	
		li $v0,1 	# Print square value
		syscall 
			li $a0, 32 	# load the code for space for printing
			li $v0,11 	#  Space
			syscall
bne $t0, 5, loop 	# if t1 =/ 5, go to loop
			# if t1 = 5, do not go to the loop and go to next line instead 
li $v0, 10	#terminate & exit
syscall
