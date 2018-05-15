;Author: Andrew Poitras

Briefly describe the concept of "Stack Frame" (1 through 5 points depending on quality of the answer)
	A stack frame is where passed arguments, subroutine return addresses, local variables, and saved registers are set aside
	in the stack for when a procedure is called. It is used to save arguments on the stack for use after a process is run or
	to hold space for the parameters of procedures.

Briefly describe the concept of a "Calling Convention" (1 through 5 points depending on quality of the answer)
	Calling conventions are like schematics for how procedures receive parameters and return results. Different conventions
	will change how arguments are added and removed from the stack and are usefull to combine assembly code with other
	higher-level languages like C by using those language's calling conventions.
 
Why do the book examples always start functions with "push ebp" and "mov ebp,esp" (2 points)
	 It follows the way C and C++ initialize and access parameters in function calls. The "push ebp" saves the register on
	 the stack and the "mov ebp,esp" sets ebp to esp do that it is the base pointer for the functions stack frame.
 
What is the x64 equivalent to "push epb" and "mov ebp,esp)" (2 points)
	 push rbp
	 mov rbp,rsp
 
What are the differences between "Microsoft x64 calling convention" and "System V AMD64 ABI calling convention" (2 points)
	Microsoft X64: - stores first four integer/pointer arguments on registers
	- stores 32 bytes of space("shadow space")  for extra parameters on the stack
	
	System V AMD64 ABI: - stores first 6 integer/pointer arguments on registers
	- no shadow space
	- stores 128 bytes of space("red-zone") for local variables below the stack


void myFunction(int a, int b, int c, int d, int e, int f)  {
  //some code here
}
Upon entry to myFunction (above), what does the stack look like when using Microsoft x64 calling convention? (3 points)
	a,b,c, and d will be assigned to rcx, rdx, r8, and r9 respectively and then e and f will be put on the stack in right
	to left order.

Upon entry to myFunction (above), what does the stack look like when using stdcall convention (3 points)
	a through f are pushed on the stack in right to left order.
