
# Nicole Serna
# adds+146 to -82, leaving the result in $10 
.text 
.globl  main 
main: 
li      $t1, 146        # put +146 into $7 
li      $t2, -82        # put 82 into $8 
add    $10, $t1,  $t2        # (+146) + (-82, place into $10
li $v0, 1				# command for printing integer
move     $a0, $10 		# storing result in $a0
syscall
 
#jump to return address
jr $ra 
