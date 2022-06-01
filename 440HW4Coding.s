#Nicole Serna
#Print statements describing the happenings of the program
.data
 .byte 12
 .byte 97
 .byte 133
 .byte 82
 .byte 236
.text
.globl main
main:

#Loading the desired byte value into registers ($t1,$t2, $t3, 
#$t4, $t5). Loads the a base register ($10, $11, $12, $13, $14) 
#with the location of desired byte value from the .data segment

lui $10, 4097
lb $t1, 0($10)
lui $11, 4097
lb $t2, 1($11)
lui $12, 4097
lbu $t3, 2($12)
lui $13, 4097
lb $t4, 3($13)
lui $14, 4097
lbu $t5, 4($14)

#adds 
# $t6 = $t1 + $t2 
# $t7 = $t3 + $t4 
# $t0 = $t6 + $t7
# $t0 += $t5
add $t6, $t1, $t2
add $t7, $t3, $t4
add $t0, $t6, $t7
add $t0, $t0, $t5
# Loads 5 into $s1 to use for division in order to take average
li $s1, 5
# divides $t0 / $s1 and loads result into $t0
div $t0, $t0, $s1

#command for printing an integer
li $v0, 1
#loads the result of the previous addition into $a0 for printing
la $a0, ($t0)
#executes command
syscall

#jump to return address
jr $ra

	
