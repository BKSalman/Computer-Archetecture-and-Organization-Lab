# WAP to get 2 integers from the user. 
# Compare them using BI "bne". 
# If condition is TRUE, ADD them. If False, SUB 

li $v0,5		# Read 1st integer
syscall 
move $t1, $v0

li $v0,5		# Read 2nd integer
syscall 
move $t2, $v0

bne $t1, $t2,True		# (TRUE) t1 =/ t2, goto Hussam

sub $t3, $t1, $t2		# (FALSE) t1 =/ t2,  perfrom SUB
	move $a0, $t3	# Print result of SUB
	li $v0,1
	syscall
j end			# Jump to end

True:			# TRUE condition
add $t3, $t1, $t2		# t3 = t1 + t1
	move $a0, $t3	# Print result of ADD
	li $v0,1
	syscall
end:
li $v0,10			# End program
syscall
