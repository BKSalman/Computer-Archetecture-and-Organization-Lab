# WAP to get an integer. Use branch instruction "blez". (0,-1,-2,-3,-4,..)
#If TRUE, ( (t1+50)*10 ) / 10.  If FALSE, load output with zero. 

li $v0,5	# Read 1st integer
syscall 
move $t1, $v0

blez $t1, true

li $t0, 0		# Load outpur with zero
move $a0, $t0
li $v0,1
syscall
j end

true:			#label true
addi $t1, $t1, 50
mul $t2, $t1, 10
div $t3, $t2, 10

mflo $a0		#Print result
li $v0,1
syscall
li $a0, 32
li $v0, 11	
syscall
mfhi $a0	
li $v0,1
syscall

end:
li $v0,10
syscall
