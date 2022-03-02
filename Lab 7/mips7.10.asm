# WAP to print the sum of the squares of numbers from 1 to 5. 
# Print the square and sum in separate lines
.text
li $t0,0		# initialize the counter $t0 to zero
li $t1,0		# $t1 = sum of squares
loop:
add $t0, $t0,1 		# Increment the counter $t0 to the next value
mul $t2, $t0, $t0 	# calculate the square of the incremented counter value
	mflo $a0 	
	li $v0,1 	# Print square value
	syscall 
		li $a0, 32	# newline
    		li $v0, 11		
		syscall
add $t1, $t1, $t2 	#  compute the sum of squares  =  t1
bne $t0, 5, loop 	# if t1 =/ 5, go to loop
			# if t1 = 10, do not go to the loop and go to next line instead 
		li $a0, 10	# newline
    		li $v0, 11		
		syscall
    	move $a0, $t1
    	li $v0, 1	# print SUM (55)
    	syscall           
li $v0, 10		#terminate & exit
syscall
