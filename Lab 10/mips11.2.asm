# WAP to DISPLAY A STRING AND PERFROM ADDITION OF TWO USER GENERATED NUMBERS.

.data
msg1: .asciiz "Please enter the 1st number : "
msg2: .asciiz "Please enter the 2nd number : "
msg3: .asciiz "The result of addition is : "

.text
li $v0, 4		# print string, in label-msg1
la $a0, msg1		
syscall
li $v0, 5		# Get 1st Integer from user
syscall
move $t0, $v0

li $v0, 4		# print string, in label-msg2
la $a0, msg2		
syscall
li $v0, 5		# Get 2nd Integer from user
syscall
move $t1, $v0

la $a0, msg3
li $v0, 4		# print string in label-msg3
syscall	
add $t2, $t0, $t1	# Add; t2 = t0 + t1
	move $a0, $t2 	# Print result of ADDITION
	li $v0,1
	syscall

li $v0,10		# Terminate
syscall
