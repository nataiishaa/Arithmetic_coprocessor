
#
# Library of macros.
#

.include "macrolib.s"


.macro calculate(%x) 	# Macro for working with a function
  fmv.d fa0 %x 		# Save value in a0 to stack in order not to lose in a0 x
  jal macloran 
.end_macro

