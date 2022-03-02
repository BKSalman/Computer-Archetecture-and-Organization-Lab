# WAP to DISPLAY A STRING AND PERFROM ADD, SUB, MULT, DIV OF TWO USER GENERATED NUMBERS.

.data
msg1: .asciiz "Please enter the 1st number : "
msg2: .asciiz "Please enter the 2nd number : "
msg3: .asciiz "The result of addition is : "
msg4: .asciiz "The result of subtraction is : "
msg5: .asciiz "The result of multiplication is : "
msg6: .asciiz "The result of division is : "

.text
main:

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

li $v0, 4		# print string in label-msg3
la $a0, msg3		
syscall	
add $t2, $t0, $t1	# Add; t2 = t0 + t1
	move $a0, $t2 	# Print result of ADDITION
	li $v0,1
	syscall

li $a0, 10		#New Line
li $v0, 11
syscall

li $v0, 4		# print string in label-msg4
la $a0, msg4		
syscall	
sub $t2, $t0, $t1	# SUB; t2 = t0 - t1
	move $a0, $t2		# Print result of SUB
	li $v0, 1
	syscall

li $a0, 10		#New Line
li $v0, 11
syscall
		
li $v0, 4		# print string in label-msg5
la $a0, msg5		
syscall
mult $t0, $t1	# MULT; t2 = t0 * t1
	mflo $a0		# Print result of MULT
	li $v0, 1	
	syscall

li $a0, 10		#New Line
li $v0, 11
syscall
		
li $v0, 4		# print string in label-msg6
la $a0, msg6		
syscall
div $t0, $t1	# DIV; t2 = t0 / t1
	mflo $a0		# Print result of DIV	
	li $v0, 1	
	syscall
		li $a0, 32
		li $v0, 11	#Space	
		syscall
	mfhi $a0		# Print result of DIV	
	li $v0, 1	
	syscall

li $v0,10		# Terminate
syscall
