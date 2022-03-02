# WAP to get an integer. Use BI "bgez". (0,1,2,3,4,...)
#  If FALSE, (t1*10) / 2.  If TRUE, ( (t1+10)*2 ) - 5. 
.text
li $v0,5	# Read 1st integer
syscall 
move $t1, $v0

bgez $t1, true

mul $t2, $t1, 10
div $t3, $t2, 2

mflo $a0		#Print result
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
addi $t1, $t1, 10
mul $t2, $t1, 2
addi $t3, $t2, -5

move $a0, $t3
li $v0, 1
syscall

end:
li $v0,10
syscall
