SECTION .data
  hello: db "Hello World", 0x0A
  size: equ $-hello
SECTION .text
  global start
  global _main
_main:
start:
  mov rdi, 1 ; fd 1 = stdout
  lea rsi, [rel hello]
  mov rdx, size
  mov rax, 0x2000004 ; write(int fd, user_addr_t cbuf, user_size_t nbyte)
  syscall
  mov rdi, 0
  mov rax, 0x2000001 ; exit(int rval)
  syscall