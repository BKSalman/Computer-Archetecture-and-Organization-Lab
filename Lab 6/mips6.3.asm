# WAP to get an integer. Use BI "bgtz". (TRUE: 1,2,3,4,5,..)
#  If TRUE, ( (t1-3)*4 ) / 2.  If FALSE, (t1*2)/3. 

li $v0,5	# Read 1st integer
syscall 
move $t1, $v0

bgtz $t1, true

mul $t2, $t1, 2
div $t3, $t2, 3

mflo $a0		#Print result of division if false
li $v0,1
syscall
	li $a0, 32 # SPACE
	li $v0, 11	
	syscall
mfhi $a0	
li $v0,1
syscall

j end

true:			#label true
addi $t1, $t1, -3
mul $t2, $t1, 4
div $t3, $t2, 2

mflo $a0		#Print result of div if true
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
