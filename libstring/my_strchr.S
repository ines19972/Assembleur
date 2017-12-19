.global my_strchr
.type my_strchr, @function

my_strchr:

push %rbp
mov %rsp, %rbp

.Lloop:
  mov (%rdi), %dl
  cmpb $0, %dl
  je .Lout
  cmpb %sil, %dl
  je .Lout
  inc %rdi
  jmp .Lloop

.Lout:
  mov %rdi, %rax
  leave
  ret

.size my_strchr, .-my_strchr
