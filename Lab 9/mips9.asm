# WAP to store 3 intergers (5,13,-7) in an array using load and store instructions.
.data
array1:	.space 12	#declare 12 bytes of storage to hold array of 3 integers
.text

la $t0, array1 		# load base address of array into register t0

li $t1, 5 		# t1 = 5 
sw $t1, ($t0) 		# 1st Array Element = t1 = 5;  store t1 contents(5) into memory address of t0;  Indirect addressing

li $t1, 13 		# t1 = 13 
sw $t1, 4($t0) 		# 2nd Array Element = t1 = 13

li $t1, -7 		# t1 = -7 
sw $t1, 8($t0) 		# 3rd Array Element = t1 = -7

li $t1, 20 		# t1 = -7 
sw $t1, 12($t0)

exit:
li $v0, 10
syscall
