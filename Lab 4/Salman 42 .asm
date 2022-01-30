# 4.2 WAP to perform addition & subtraction on user generated values and print the result

li $v0,5 # read an integer from user
syscall
move $t0,$v0 # t0 = v0 getting the input

li $v0,5 # read an integer from user
syscall
move $t1,$v0 # t1 = v0 getting the input

add $t2,$t0,$t1 # t2 = t0 + t1

move $a0,$t2 # a0 = t2
li $v0,1 # v0 = 1, prints an integer
syscall 

li $a0,10 # a0 = 10, prints a new line
li $v0,11 # v0 = 11, prints a new line
syscall

# li $a0,32 for space
# li $v0,11
# syscall

sub $t3,$t0,$t1 # t3 = t0 - t1

move $a0,$t3 # a0 = t3
li $v0,1 # v0 = 1, prints and integer
syscall 

li $v0,10 # end / exit
syscall