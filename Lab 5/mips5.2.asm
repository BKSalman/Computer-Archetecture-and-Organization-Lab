# WAP to get 2 integers from the user. 
# Compare them using BI "bne". 

# If condition is TRUE, {(t1+t2)-5})  ADD both numbers 
	# and result of ADD to be subtracted from 5. 
	
# If False, ADD both the numbers. MULT result of ADD with 2

li $v0,5		# Read 1st integer
syscall 
move $t1, $v0

li $v0,5		# Read 2nd integer
syscall 
move $t2, $v0

bne $t1, $t2, true	#branch to label:true if condition is true. If false, go to next line

add $t3, $t1, $t2
li $t4, 2
mul $t5, $t3, $t4	
	mflo $a0		#Print result of False condition
	li $v0, 1
	syscall
j Exit			# jump to label 'Exit'

true:			#label true
add $t3, $t1, $t2
addi $t4, $t3, -5		#t3 = t3-5
	move $a0, $t4	#Print result of true condition
	li $v0,1
	syscall

Exit:
li $v0,10			# End program
syscall

