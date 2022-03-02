# WAP to get an integer. Use branch instruction "bltz". (-1,-2,-3,-4,-5,..)
# If TRUE, ( (t1-50)*10 ) / 2.  If FALSE, ( (t1+10)*2 ) / 5. 
.data
.text

li $v0,5	# Read 1st integer
syscall 
move $t1, $v0

bltz $t1, true

addi $t1, $t1, 10
mul $t2, $t1, 2
div $t3, $t2, 5

j print

true:			#label true
addi $t1, $t1, -50
mul $t2, $t1, 10
div $t3, $t2, 2

print:
mflo $a0		#Print result
li $v0,1
syscall
	li $a0, 32
	li $v0, 11	
	syscall
mfhi $a0	
li $v0,1
syscall

li $v0,10
syscall
