// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/4/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
// The algorithm is based on repetitive addition.

@R2
M=0            

@R0
D=M            
@END           // If R0 is 0, skip multiplication
D;JEQ

@i
M=D            

(LOOP)
@i
D=M            
@END           // If counter is 0, end
D;JEQ

@R1
D=M            
@R2
M=D+M          

@i
M=M-1          
@LOOP
0;JMP          

(END)
@END
0;JMP          // Infinite loop to halt


//// Replace this comment with your code.