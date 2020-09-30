/*
*	Contains the function that creates a 2D array of char, sends it to a function to fill and displays the 
*	first three letters of my name and my last initial. 
*	
*
*
* @author:		Carlos Hernandez
* Course:		COMP B13
* Submitted on:	April 24, 2020
* Source File:	myName.s
*/	





.globl myName
myName:

        movq    $0, %rax
        jmp        CONDITION
LOOP_BODY:
        movl    %eax, %ecx
        imull    %edx, %ecx
        movb    $'*', 1(%rdi, %rcx)
        movb    $'*', 7(%rdi, %rcx)
        movb    $'*', 11(%rdi, %rcx)
        movb    $'*', 13(%rdi, %rcx)
		movb    $'*', 19(%rdi, %rcx)
		movb    $'*', 23(%rdi, %rcx)
        incl    %eax
CONDITION:
        cmpl    $7, %eax
        jl        LOOP_BODY
		
		movq    $0, %rax
        movq    $0, %r10
        jmp        CONDITION2
LOOP_BODY2:
        movl    %eax, %ecx
        imull     %edx, %ecx
        addl    %r10d, %ecx
        movb    $'*',1(%rdi, %rcx)
		movb    $'*',7(%rdi, %rcx)
        movb    $'*',13(%rdi, %rcx)
        incl    %r10d
CONDITION2:
        cmpl    $5, %r10d
        jl        LOOP_BODY2

		movq    $6, %rax
        movq    $0, %r10
        jmp        CONDITION3
LOOP_BODY3:
        movl    %eax, %ecx
        imull   %edx, %ecx
        addl    %r10d, %ecx
        movb    $'*',1(%rdi, %rcx)
        incl    %r10d
CONDITION3:
        cmpl    $5, %r10d
        jl        LOOP_BODY3
		
		movq    $3, %rax
        movq    $0, %r10
        jmp        CONDITION4
LOOP_BODY4:
        movl    %eax, %ecx
        imull   %edx, %ecx
        addl    %r10d, %ecx
        movb    $'*',7(%rdi, %rcx)
		movb    $'*',13(%rdi, %rcx)
		movb    $'*',19(%rdi, %rcx)
        incl    %r10d
CONDITION4:
        cmpl    $5, %r10d
        jl        LOOP_BODY4
		
		movq    $4, %rcx
        imull    %edx, %ecx
        movb    $'*', 15(%rdi, %rcx)
		
		movq    $5, %rcx
        imull    %edx, %ecx
        movb    $'*', 16(%rdi, %rcx)
		
		movq    $6, %rcx
        imull    %edx, %ecx
        movb    $'*', 17(%rdi, %rcx)
        
		movq    $2, %rcx
        imull    %edx, %ecx
        movb    $'*', 17(%rdi, %rcx)
        movq    $1, %rcx
        imull    %edx, %ecx
        movb    $'*', 17(%rdi, %rcx)
		
		ret
        
        
