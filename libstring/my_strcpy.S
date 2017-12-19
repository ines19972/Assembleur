.global my_strcpy
.type my_strcpy, @function

my_strcpy:

push %rbp
mov %rsp, %rbp

mov $0, %rdx
.Lloop:
  mov (%rsi, %rdx), %rcx
  cmp $0, %rcx
  je .Lout
  mov %rcx, (%rdi, %rdx)
  inc %rdx
  jmp .Lloop

.Lout:
  mov %rdi, %rax
  leave
  ret

.size my_strcpy, .-my_strcpy
