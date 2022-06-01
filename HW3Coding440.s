#Nicole Serna
#Print statements describing the happenings of the program
.data
.text
.globl main
main:
#Loading the immediate value of 0x1A into the temporary register $t0   
li $t1, 0x1A
#Shift Logical left operation that shifts the value in t1 left two positions and stores the result in t2
sll $t2, $t1, 2

#command for printing an integer
li $v0, 1
#loads the result of the previous shift logical left operation into $a0 for printing
la $a0, ($t2)
#executes command
syscall

#jump to return address
jr $ra

	
