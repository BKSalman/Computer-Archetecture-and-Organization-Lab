# WAP to get 2 integers from the user. 
# Compare them using BI "bne". 
# If condition is TRUE, ADD them. If False, SUB 

li		$v0, 	5	# $v0 = 5
syscall	# read an integer from user
move 	$t0, $v0	# $t1 = v0

li		$v0, 	5	# $v0 = 5
syscall # read an integer from user
move 	$t1, $v0	# $t1 = v0

bne		$t0, $t1, TRUE	# if $t0 != $t1 then TRUE

sub		$t3, $t0, $t1		# $t3 = $t1 - $t2
move 	$a0, $t3	# $a0 = $t3
li		$v0,1 		# $v0 = 1
syscall
j end

TRUE:
add		$t3, $t0, $t1		# $t3 = $t0 + $t1


end:
li		$a0, 10		# $a0 = 10
syscall