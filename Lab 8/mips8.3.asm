# WAP to perform  DIV if the user generated numbers are euqal, else  MULT  for different user generated numbers. Print results.
.data
.text
li $v0,5	# Read 1st integer
syscall 
move $t1, $v0

li $v0,5	# Read 2nd integer
syscall 
move $t2, $v0

bne $t1, $t2, mult

div:
div $t1, $t2	# Divide the two numbers
mflo $a0	# PRINT the QUOTIENT
li $v0,1
syscall
li $v0, 11	# Print space
syscall
mfhi $a0	# PRINT the REMAINDER
li $v0,1
syscall

exit:
li $v0, 10	# Terminate
syscall

mult:
mult $t1, $t2	# Multiply the two numbers
mflo $a0	# PRINT the result of MULTIPLICATION
li $v0,1
syscall

