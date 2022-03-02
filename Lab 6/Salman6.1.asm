# WAP to get 2 integers from the user. 
# Compare two numbers using BI "beq". 
#  If condition is TRUE, ADD them. If False, SUB 

li $v0,5	# Read 1st integer
syscall  # read an integer from user
move $t1, $v0 # getting the input

li $v0,5	# Read 2nd integer
syscall  # read an integer from user
move $t2, $v0 # getting the input

beq $t1, $t2, TRUE

sub $t3, $t1, $t2

move $a0, $t3 # print
li $v0,1
syscall
j end

TRUE:

add $t3, $t1, $t2
move $a0, $t3 # print
li $v0,1
syscall

end:

li $v0,10
syscall
