#Nicole Serna

.data
promptA: .asciiz "Enter Value A: "
promptX: .asciiz "Enter Value X: "
promptY: .asciiz "Enter Value Y: "
promptResultAXY: .asciiz "\nResult of A * X * Y: "
promptFormula: .asciiz "where u = A * X * Y and v = 25"
promptEquation: .asciiz "5u^2 - 12uv + 6v^2 = "

	.text
	.globl main
main:

start:
#Start point that prints "A" prompt.
li $v0, 4
la $a0, promptA
syscall  

#Loads user input in
li $v0, 5
syscall
move $s0, $v0

#Prints "X" prompt.
li $v0, 4
la $a0, promptX
syscall  

#Loads user input in
li $v0, 5
syscall
move $s1, $v0

#Prints "Y" prompt.
li $v0, 4
la $a0, promptY
syscall

#Loads user input in
li $v0, 5
syscall

#multiply A * X * Y
move $s2, $v0
mul $t0, $s0, $s1
mul $s3, $t0, $s2

#prints prompt to inform user of A * X * Y
la $a0, promptResultAXY
li $v0, 4
syscall

#prints A * X * Y
li $v0, 1
move $a0, $s3
syscall

#newline
li $a0, 10
li $v0, 11
syscall

#calculates above equation
li $t1, 25
li $t2, 625
li $t3, 5
li $t4, 12
li $t5, 6
mul $t0, $s3, $s3
mul $t6, $t0, $t3
mul $t0, $t4, $s3
mul $t0, $t0, $t1
mul $t7, $t5, $t2
sub $s4, $t6, $t0
add $s4, $s4, $t7
syscall

#Prints Formula prompt.
li $v0, 4
la $a0, promptFormula
syscall 
 
#newline
li $a0, 10
li $v0, 11
syscall

#Prints Equation prompt.
li $v0, 4
la $a0, promptEquation
syscall  

#prints result from equation
li $v0, 1
move $a0, $s4
syscall

#newline
li $a0, 10
li $v0, 11
syscall

#newline
li $a0, 10
li $v0, 11
syscall


j start