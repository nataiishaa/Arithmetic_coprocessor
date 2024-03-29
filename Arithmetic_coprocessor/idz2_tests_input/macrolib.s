#
# Example library of macros.
#

# Printing the value in specified register as double
.macro print_double (%x)
  li a7, 3
  fmv.d fa0, %x
  ecall
  newline
.end_macro

# Inputing integer in specified register from console except a0 register
.macro read_int(%x)
   push  (a0)
   li a7, 5
   ecall
   mv %x, a0
   pop  (a0)
.end_macro

# Inputing double in specified register from console except a0 register
.macro read_double(%x)
   li a7, 7
   ecall
.end_macro

# Output a line to the console.
.macro print_str (%x)
   .data
str:
   .asciz %x
   .text
   push (a0)
   li a7, 4
   la a0, str
   ecall
   pop  (a0)
.end_macro

# Print char to the console
.macro print_char(%x)
   li a7, 11
   li a0, %x
   ecall
.end_macro

# Go to new line.
 .macro newline
   print_char('\n')
 .end_macro

# Exit program
.macro exit
    li a7, 10
    ecall
.end_macro

# Saving specified register on stack
.macro push(%x)
  addi  sp, sp, -4
  sw  %x, (sp)
.end_macro

# Pushing a value from top of stack into a register
.macro pop(%x)
  lw  %x, (sp)
  addi  sp, sp, 4
.end_macro
