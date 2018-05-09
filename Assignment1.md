- [ ] 1.1.3 Section Review, Questions 1,3, 8, 12
  1. How do assemblers and linkers work together?
  Assemblers change code from assembly to machine languaguage while linkers create executables from the files made by assemblers.
  
  3. What is meant by a one-to-many relationship when comparing a high-level language to
machine language?
  Simple pieces of code in high level languages translate to multiple instructions in machine language.
  
  8. Do you suppose type checking on pointer variables is stronger (stricter) in assembly language,
or in C and C++?
  Type checking is stonger in C and C++ because assembly doesn't have pointer type restrictions.
  
  12. Challenge: Translate the following C++ expression to assembly language, using the example
presented earlier in this chapter as a guide: X = (Y * 4) + 3.
  mov rax,y
  mov rbx,4
  imul rbx
  add rax,3
  mov x,rax

- [ ] 1.2.1 Section Review, Questions 2, 3, 10
  2. Why do you suppose translated programs often execute more quickly than interpreted ones?
  Translated programs don't need to be translated at runtime while interpreted programs do.
  
  3. (True/False): When an interpreted program written in language L1 runs, each of its instructions
is decoded and executed by a program written in language L0.
  True
  
  10. Statements at the assembly language level of a virtual machine are translated into statements
at which other level?
  Instruction Set Architecture (level 2)

- [ ] 1.3.9 Section Review, Questions 2, 3, 5, 6, 7 
  2. What is the decimal representation of each of the following unsigned binary integers?
a. 11111000 = 248
b. 11001010 = 202
c. 11110000 = 240

  3. What is the sum of each pair of binary integers?
a. 00001111 + 00000010 = 00010001
b. 11010101 + 01101011 = 101000000
c. 00001111 + 00001111 = 00011110

  5. What is the minimum number of binary bits needed to represent each of the following
unsigned decimal integers?
a. 65 needs 7 bits
b. 409 needs 9 bits
c. 16385 needs 15 bits

  6. What is the hexadecimal representation of each of the following binary numbers?
a. 0011 0101 1101 1010 = 35DA
b. 1100 1110 1010 0011 = CEA3
c. 1111 1110 1101 1011 = FEDB

  7. What is the binary representation of the following hexadecimal numbers?
a. A4693FBC = 1010 0100 0110 1001 0011 1111 1011 1100
b. B697C7A1 = 1011 0110 1001 0111 1100 0111 1010 0001
c. 2B3D9461 = 0010 1011 0011 1101 1001 0100 0110 0001


- [ ] 1.7.1 Short Answer, Questions 1-22 and 25
  1. In an 8-bit binary number, which is the most significant bit (MSB)?
  The furthest left bit is the MSB or bit 7 in an 8 bit number.
  
  2. What is the decimal representation of each of the following unsigned binary integers?
a. 00110101 = 53
b. 10010110 = 150
c. 11001100 = 204

  3. What is the sum of each pair of binary integers?
a. 10101111 + 11011011 = 110001010
b. 10010111 + 11111111 = 110010110
c. 01110101 + 10101100 = 100100001

  4. Calculate binary 00001101 minus 00000111.
  = 00000110
  
  5. How many bits are used by each of the following data types?
a. word            = 16 bits
b. doubleword      = 32 bits
c. quadword        = 64 bits
d. double quadword = 128 bits

  6. What is the minimum number of binary bits needed to represent each of the following
unsigned decimal integers?
a. 4095   = 12 bits
b. 65534  = 16 bits
c. 42319  = 16 bits

  7. What is the hexadecimal representation of each of the following binary numbers?
a. 0011 0101 1101 1010 = 35DA
b. 1100 1110 1010 0011 = CEA3
c. 1111 1110 1101 1011 = FEDB

  8. What is the binary representation of the following hexadecimal numbers?
a. 0126F9D4 = 0000 0001 0010 0110 1111 1001 1101 0100
b. 6ACDFA95 = 0110 1010 1100 1101 1111 1010 1001 0101
c. F69BDC2A = 1111 0110 1001 1011 1101 1100 0010 1010

  9. What is the unsigned decimal representation of each of the following hexadecimal integers?
a. 3A   = 58
b. 1BF  = 447
c. 1001 = 4097

  10. What is the unsigned decimal representation of each of the following hexadecimal integers?
a. 62  = 98
b. 4B3 = 1203
c. 29F = 671

  11. What is the 16-bit hexadecimal representation of each of the following signed decimal integers?
a. -24  = 
b. -331 = 

  12. What is the 16-bit hexadecimal representation of each of the following signed decimal integers?
a. -21 = 
b. -45 = 

  13. The following 16-bit hexadecimal numbers represent signed integers. Convert each to
decimal.
a. 6BF9 = 
b. C123 = 

  14. The following 16-bit hexadecimal numbers represent signed integers. Convert each to
decimal.
a. 4CD2 = 
b. 8230 = 

  15. What is the decimal representation of each of the following signed binary numbers?
a. 10110101 = 
b. 00101010 = 42
c. 11110000 = -16

  16. What is the decimal representation of each of the following signed binary numbers?
a. 10000000 = 
b. 11001100 = 
c. 10110111 = 

  17. What is the 8-bit binary (two’s-complement) representation of each of the following signed
decimal integers?
a. -5
b. -42
c. -16

  18. What is the 8-bit binary (two’s-complement) representation of each of the following signed
decimal integers?
a. -72
b. -98
c. -26

  19. What is the sum of each pair of hexadecimal integers?
a. 6B4 + 3FE
b. A49 + 6BD

  20. What is the sum of each pair of hexadecimal integers?
a. 7C4 + 3BE
b. B69 + 7AD

  21. What are the hexadecimal and decimal representations of the ASCII character capital B?

  22. What are the hexadecimal and decimal representations of the ASCII character capital G?

  25. Create a truth table to show all possible inputs and outputs for the boolean function
described by ¬(A ∨ B).


- [ ] 1.7.2 Algorithm Workbench, Choose any 1 question 

- [ ] EXTRA CREDIT: 1.4.2 Section Review, Questions 1-5 
  1. Describe the following boolean expression: ¬X ∨ Y.

  2. Describe the following boolean expression: (X ∧ Y).

  3. What is the value of the boolean expression (T ∧ F) ∨ T ?
  
  4. What is the value of the boolean expression ¬(F ∨ T) ?

  5. What is the value of the boolean expression ¬F ∨ ¬T ?
  
