# WAP to get 2 integers from the user. 
# Compare them using BI "bne". 

# If condition is TRUE, {(t1+t2)-5})  ADD both numbers 
	# and result of ADD to be subtracted from 5. 
	
# If False, ADD both the numbers. MULT result of ADD with 2

li		$a0,5 		# $a0 = 1
syscall # read an integer from user
move 	$t0, $a0		# $t0 = $a0

li		$a0,5 		# $a0 = 1
syscall # read an integer from user
move 	$t1, $a0		# $t0 = $a0

bne		$t0, $t1, TRUE	# if $t0 != $t1 then TRUE

add		$t2, $t0, $t1		# $t2 = $t0 + $t1
mult	$t0, $t2			# $t0 * $t2 = Hi and Lo registers
mflo	$t3					# copy Lo to $t3
li $v0, 1 # print result 
syscall
j		end				# jump to end


TRUE:

add		$t2, $t0, $t1		# $t2 = $t0 + $t1
addi		$t2, $t2, -5		# $t0 = $t1 + (-5)

move 	$a0, $t1		# $a0 = $t1
li		$v0, 1		# $v0 = 1
syscall

end:
li		$a0, 10		# $a0 = 10
syscall