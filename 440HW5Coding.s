#Nicole Serna

.data
string: .asciiz "ABCDEFG"
	.text
	.globl main
main:

#$t0 will be used to keep track of position in the string.
#initilize with 0
li $t0, 0

#start of loop used to convert letters to lowercase
start:
	#loads the byte of the letter corresponding to the $t0 	#position in string
	lb $t1, string($t0)

	#if the string has been iterated through completely, branch 	#to finish
	beq $t1, 0, finish

	#if not finished, add 0x20 to convert current letter to 	#lowercase
	addi $t1, $t1, 0x20

	#store the converted letter into the string
	sb $t1, string($t0)

	#add 1 to $t0 to increment position
	addi $t0, $t0, 1

j start

#print the string
finish:
	li $v0, 4        
	la $a0, string    
	syscall            
	jr $ra            

	
