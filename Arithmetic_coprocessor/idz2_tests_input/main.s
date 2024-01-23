.include "macros.s"

.global main
.text
.data
first_test:  .double  0         # x value for first test
second_test: .double  3.0	# x value for second test
third_test: .double  -2.0	#x value for third test
fourth_test: .double  5.0	# x value for fourth test
fifth_test: .double  1.2	# x value for fifth test
sixth_test: .double  -2.1 	# x value for sixth test
seventh_test: .double  -3.8	# x value for seventh test

# Main entry point to the program.
main:
    print_str("Test1")
    newline
    fld fa0 first_test t0
    print_str("x = 0")
    newline
    calculate(fa1)
    print_str("Resul: ")
    print_double(fa0)
    print_str("Expected result: 1.0")
    
    newline
    print_str("Test 2")
    newline
    fld fa0 second_test t0
    print_str("x = 3.0")
    newline
    calculate(fa0)
    print_str("Resul: ")
    print_double(fa0)
    print_str("Expected result: 0.0497871")
    
    newline
    print_str("Test 3")
    newline
    fld fa0 third_test t0
    print_str("x = -2.0")
    newline
    calculate(fa0)
    print_str("Resul: ")
    print_double(fa0)
    print_str("Expected result: 7.38906")
    
    newline
    print_str("Test 4")
    newline
    fld fa0 fourth_test t0
    print_str("x = 5.0")
    newline
    calculate(fa0)
    print_str("Resul: ")
    print_double(fa0)
    print_str("Expected result:  0.006737946999")
   
   
    newline
    print_str("Test 5")
    newline
   fld fa0 fifth_test t0
    print_str("x = 1.2")
    newline
    calculate(fa0)
    print_str("Resul: ")
    print_double(fa0)
    print_str("Expected result:  0.301207")
    
    newline
    print_str("Test 6")
    newline
   fld fa0 sixth_test t0
    print_str("x = -2.1")
    newline
    calculate(fa0)
    print_str("Resul: ")
    print_double(fa0)
    print_str("Expected result:  8.16606")
   
    newline
    print_str("Test 7")
    newline
    fld fa0 seventh_test t0
    print_str("x = -3.8")
    newline
    calculate(fa0)
    print_str("Resul: ")
    print_double(fa0)
    print_str("Expected result:   44.7011")
   
   
    
  
exit:
	li a7 10			# Completion of the program
	ecall

