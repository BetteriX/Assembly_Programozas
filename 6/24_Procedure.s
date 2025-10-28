# Procedure (without parameter)

        .intel_syntax noprefix
        .globl     main, plus, a
        .data
a:      .4byte    12
        .text
plus:   mov        eax, DWORD PTR [a]      # \
        add        eax, 1                  #  > plus:   inc   DWORD PTR [a]
        mov        DWORD PTR [a], eax      # /
        ret                                # return to the caller. The return address is in the stack (old RIP) 

main:   call       plus                    # invocation/call of subroutine started at the address referenced by label "plus". RIP is saved into the stack.
        mov        eax, DWORD PTR [a]
        ret


### C style ###
# int a=12;
# void plus(){
#   a++;
#   }
# int main(){
#   plus();
#   return a; 
#   }

