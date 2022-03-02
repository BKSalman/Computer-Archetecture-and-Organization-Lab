# WAP to print EVEN numbers from 1 to 10
.text
li $t0, 0               	
loop:
    addi $t0, $t0, 2          	# generating even numbers in register $t0
    	move $a0, $t0		# move value for printing
    	li $v0, 1			# print EVEN numbers
    	syscall 
    		li $a0, 32		# load code for space
    		li $v0, 11		
    		syscall 
bne $t0, 10, loop       	# if t0 reached 10 then exit the loop
li $v0, 10              # terminate program and Exit
syscall                      
