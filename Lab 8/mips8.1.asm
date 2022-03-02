# WAP to perform operatons like  mult & div  on user generated numbers and print results

.text
li $v0,5	# Read 1st integer
syscall 
move $t1, $v0

li $v0,5	# Read 2nd integer
syscall 
move $t2, $v0

mul $t6, $t1, $t2	# Multiply the two numbers

mflo $a0	# PRINT the result of MULTIPLICATION
li $v0,1
syscall

li $a0, 10	# Print in a new line
li $v0, 11
syscall

div $t1, $t2	# Divide the two numbers

mflo $a0	# PRINT the QUOTIENT
li $v0,1
syscall

li $a0,32
li $v0, 11	# Print space
syscall

mfhi $a0	# PRINT the REMAINDER
li $v0,1
syscall

