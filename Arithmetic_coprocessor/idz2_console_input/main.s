.include "macros.s"

.global main
.text

# Main entry point to the program.
main:

    print_str ("Input X in double type:  ")		# Print input prompt x
    read_double (ft1) 					# Reading the number from the console in ft1 			
    calculate(fa0)					# Сalculating the value of an expression
    print_str ("Result (1/e^x): ")			# Printing hints to display the result		
    print_double(fa0)					# Print result in fa0	
exit:
	li a7 10					# Completion of the program
	ecall

