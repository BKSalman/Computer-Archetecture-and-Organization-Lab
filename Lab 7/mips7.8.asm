# WAP to print EVEN numbers from 1 to 10 and calculate the sum
.text
li $t0, 0               	# $t0 = loop counter
li $t1, 0               	# $t1 = sum of even numbers
loop:
    addi $t0, $t0, 2          	# generating even numbers in register $t0
    	move $a0, $t0		# move value for printing
    	li $v0, 1		# print EVEN numbers
    	syscall 
    		li $a0, 32	# load code for space
    		li $v0, 11		
    		syscall 
  add $t1, $t1, $t0        	#  compute the sum
bne $t0, 50, loop       	# if t0 reached 10 then exit the loop
		li $a0, 10		# newline
    		li $v0, 11		
	    	syscall
    	move $a0, $t1
    	li $v0, 1		# print SUM
    	syscall                      

li $v0, 10             	# terminate program and Exit
syscall                      
