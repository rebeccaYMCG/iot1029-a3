.global _start
_start:
    MOV R0, #72
    MOV R1, #68
    MOV R5, #15

    CMP R0, R1 // Compare the values in R0 and R1
    BGT greaterThan // If R0 > R1, branch to the label 'greaterThan'
    BLT lesserThan // If R0 < R1, branch to the label 'lesserThan'
    BEQ equalTo // If R0 == R1, branch to the label 'equalTo'
    BAL end // Branch to label 'end' 

greaterThan:
    LSL R5, #2 // Logical shift left the value in R5 x2 -> Equivalent to multiplying by 2^2
    BAL end 

lesserThan:
    LSR R5, #1 // Logical shift right the value in R5 -> Equivalent to dividing by 2^1
    BAL end

equalTo:
    ROR R5, #1 // Perform a right rotation on R5

end:
    // Terminates the program
    MOV R0, R5 // Indicates this program executed successfully
    MOV R7, #1
    SWI 0