.global my_strlen
.type my_strlen, @function

my_strlen:
    xor %rax, %rax
.Lloop1:
    cmpb $0, (%rdi)
    je .Lout1
    add $1, %rax
    inc %rdi
    jmp .Lloop1

.Lout1:
    ret
.size my_strlen, .-my_strlen
