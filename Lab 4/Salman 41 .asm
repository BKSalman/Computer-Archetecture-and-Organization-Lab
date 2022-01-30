# 4.1 WAP to perform addition & subtraction and print the result

li $t0,9
li $t1,4

add $t2,$t0,$t1 # t2 = t0 + t1

move $a0,$t2
li $v0,1
syscall 

li $a0,10
li $v0,11
syscall

# li $a0,32 for space
# li $v0,11
# syscall

sub $t3,$t0,$t1 # t3 = t0 - t1

move $a0,$t3
li $v0,1
syscall 

li $v0,10
syscall