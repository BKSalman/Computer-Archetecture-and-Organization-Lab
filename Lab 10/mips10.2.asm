#  WAP to perform below operation on two arrays and print the result.
#  ((A-B)*B)+A

.data
A: .word 3,4,5,6	
B: .word 1,2,3,4
C: .word 0:4
.text
la $t0, A	# load address: Set $t0 to address of label-A
la $t1, B	# load address: Set $t1 to address of label-B
la $t2, C	# load address: Set $t2 to address of label-C
li $t3,0	# $t3 = 0

loop:
	lw $t4, ($t0) 		# Set $t4 to contents of memory address of $t0
	lw $t5, ($t1)		# Set $t5 to contents of memory address of $t1
		#((A-B)*B)+A   
	sub $t6, $t4, $t5 		# t6 = t4 - t5
	mul $t7, $t6, $t5		# t7 = t4 * t5
	add $t7, $t7, $t4		# t7 = t7 + t4
	
	sw $t7, ($t2)		# Store $t3 contents of memory address of $t2
		move $a0, $t7		# move value of t3 to a0 for printing
		li $v0, 1		# print the results
		syscall
			li $a0, 32
			li $v0, 11		# space
			syscall

	add $t0, $t0, 4		# Load the 2nd array element of A into $t0
	add $t1, $t1, 4		# Load the 2nd array element of B into $t1
	add $t2, $t2, 4		# Load the 2nd array element of C into $t3

add $t3, $t3, 1		# Increment the counter $t3
bne $t3, 4, loop
		 
li $v0, 10		#terminate the program
syscall
