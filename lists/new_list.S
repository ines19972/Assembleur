.global new_list
.type new_list, @function

new_list:

  push %rbp
  mov %rsp, %rbp
  mov $16, %rax
  call malloc@plt
  mov $0, %rdi
  mov %rdi, 8(%rax)
  mov %rdi, (%rax)
  leave
  ret

.size new_list, .-new_list 

.global list_insert_head
.type list_insert_head, @function

list_insert_head:

push %rbp
mov %rsp, %rbp

push %rdi
push %rsi
mov $16, %rdi
call malloc@plt
pop %rsi
pop %rdi
mov %rdi, 8(%rax)
mov %rsi, (%rax)
leave
ret

.size list_insert_head, .-list_insert_head
