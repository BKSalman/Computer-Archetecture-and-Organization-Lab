# WAP to add two arrays and print the result.
.data
A: .word 3,4,5,6  
B: .word 1,2,3,4  
C: .word 0:4	  
.text
la $t0, A	# load address: Set $S0 to address of label-A
la $t1, B	# load address: Set $S1 to address of label-B
la $t2, C	# load address: Set $S2 to address of label-C
li $t3,0	# counter
loop:
lw $t4, ($t0)		# Set $t4 to contents of memory address of $t0
lw $t5, ($t1)		# Set $t2 to contents of memory address of $t1

add $t6, $t4, $t5	# t3 = t1 + t2
sw $t6, ($t2)		# Store $t3 contents of memory address of $S2

	move $a0, $t6
	li $v0, 1
	syscall
		li $a0, 32
		li $v0, 11
		syscall

add $t0, $t0, 4		# Load the 2nd array element of A into $S0
add $t1, $t1, 4		# Load the 2nd array element of B into $S1
add $t2, $t2, 4		# Load the 2nd array element of C into $S3

add $t3, $t3, 1		# Increment the counter $t3 
bne $t3, 4, loop		 

li $v0, 10		#terminate the program
syscall
