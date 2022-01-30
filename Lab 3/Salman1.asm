li $t0,9
li $t1,4

add $t2,$t0,$t1 # t2 = t0 + t1

sub $t3,$t0,$t1 # t3 = t0 - t1

move $t4,$t3 # t4 = t3

addi $t5, $t0, 10 # t5 = t0 + 10

addi $t6, $t1, -2 # t6 = t1 + (-2) = t1 - 2

addi $t7, $t0, -5 # t7 = t0 - 5

li $v0,10 # end / exit
syscall