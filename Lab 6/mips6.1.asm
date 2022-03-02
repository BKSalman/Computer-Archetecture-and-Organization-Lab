# WAP to get 2 integers from the user. 
# Compare two numbers using BI "beq". 
#  If condition is TRUE, ADD them. If False, SUB 

li $v0,5	# Read 1st integer
syscall 
move $t1, $v0

li $v0,5	# Read 2nd integer
syscall 
move $t2, $v0

beq $t1, $t2, true

sub $t3, $t1, $t2

move $a0, $t3		#Print result
li $v0,1
syscall
j end

true:			#label true
add $t3, $t1, $t2

move $a0, $t3		#Print result
li $v0,1
syscall

end:
li $v0,10
syscall
