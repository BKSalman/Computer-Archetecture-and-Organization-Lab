# WAP to get 2 integers from the user. Use branch instruction "bgt". 
#If condition is TRUE, ADD them. If False, SUB 
.data
.text

li $v0,5	# Read 1st integer
syscall 
move $t1, $v0

li $v0,5	# Read 2nd integer
syscall 
move $t2, $v0

bgt $t1, $t2, true

sub $t3, $t1, $t2
j print

true:			#label true
add $t3, $t1, $t2

print:
move $a0, $t3		#Print result
li $v0,1
syscall

li $v0,10
syscall
