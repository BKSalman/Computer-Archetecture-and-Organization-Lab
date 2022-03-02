# WAP to DISPLAY A STRING.
.data
msg1: .asciiz "hello world"

.text
main:
la $a0, msg1		# load address of label-string into $a0
li $v0, 4		# print string
syscall

li $v0,10		# Terminate
syscall
