# PROGRAM: Hello, World!
 .data # Data declaration section
 out_string: .asciiz "\nHello, World!\n"
 .text # Assembly language instructions
main: # Start of code section
 li $v0, 4 # system call code for printing string = 4
 la $a0, out_string # load address of string
                      # to be printed into $a0
 syscall # call operating system to perform operation in $v0
              # syscall takes its arguments from $a0, $a1, ...
 lb $t1, 2($a0) # Read 'e' (the ASCII code) from memory
 addi $t1, $t1, -32 # Change its ASCII code to 'E'
 sb $t1, 2($a0) # Write the new ASCII code to memory
 syscall # Print the string again
 li $v0, 10
 syscall # Exit program
