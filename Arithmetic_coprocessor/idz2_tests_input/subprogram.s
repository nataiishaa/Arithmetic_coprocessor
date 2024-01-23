 .include "macrolib.s"
.global macloran


.data
.align  2                          	 # Alignment by foreign words


.text
macloran:
	fmv.d ft1 fa0			# The address of the x is at t0 - we will move this pointer
	li t2 0 
	fcvt.d.w ft0 t2 		# Initialize the storage result in ft0
	li t2 1
	fcvt.d.w ft4 t2 		# Initialize the storage factorial in ft4
	fcvt.d.w ft5 t2 		# Initialize the storage numerator in f5
	
	li t2 50 			# Precision
	li t3 0 			# Counter
	
	
	loop:
		fdiv.d ft6, ft5, ft4    # Сalculation of the quotient for definition
		
		li t0, 2		# To check for parity for the sign-alternating row		
		rem  t0, t3, t0		# The remainder for parity
		
		beq t0, zero, continue    # If(t0=0) goto continue;
		
		fneg.d ft6, ft6		  # Change of sign
		
		continue:
		
		fadd.d ft0, ft0, ft6      # ft0=ft0+ft6
		addi t3 t3 1   		  # Increase the counter for the array by 1
		fcvt.d.w ft3 t3  	  # Casting t3 to double
		fmul.d ft4 ft4 ft3  	  # Factorial calculation
		fmul.d ft5 ft5 ft1  	  # Denominator calculation
		
		blt  t3 t2 loop  	  # if (t3<t2) go to loop
	fmv.d fa0 ft0  		 	  # move a0 t0
	ret
		
	
	


