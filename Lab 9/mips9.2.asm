# WAP to store 3 intergers (5,13,-7) in an array using load and store instructions. 
# Add these 3 integers and store them in the same array.
.data
array1:	.space 16	#declare 16 bytes of storage to hold array of 4 integers & Sum
.text

la $t0, array1 		# load base address of array into register t0

li $t1, 5 		# t1 = 5 
sw $t1, ($t0) 		# 1st Array Element = t1 = 5;  store t1 contents(5) into memory address of t0;  Indirect addressing

li $t2, 13 		# t1 = 13 
sw $t2, 4($t0) 		# 2nd Array Element = t1 = 13

li $t3, -7 		# t1 = -7 
sw $t3, 8($t0) 		# 3rd Array Element = t1 = -7

add $t4, $t1, $t2
add $t5, $t4, $t3
sw $t5, 12($t0)		# 4th Array Element = t1+t2+t3 = 11


li $v0, 10
syscall
