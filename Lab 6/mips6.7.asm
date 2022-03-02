# WAP to get 2 integers from the user. Use branch instruction "blt". 
# If condition is TRUE, SUB them. If False, ( (t1-t2)*4 ) / 2 

li $v0,5	# Read 1st integer
syscall 
move $t1, $v0

li $v0,5	# Read 2nd integer
syscall 
move $t2, $v0

blt $t1, $t2, true

sub $t3, $t1, $t2
mul $t4, $t3, 4
div $t5, $t4, 2

mflo $a0		#Print result
li $v0,1
syscall
	li $a0, 32
	li $v0, 11
	syscall
mfhi $a0		#Print result
li $v0,1
syscall

j end

true:
sub $t3, $t1, $t2
move $a0, $t3		#Print result
li $v0,1
syscall

end:
li $v0,10
syscall
