section .data
	msg db      "hello, world!"
	msg_len equ $-msg

section .text
    global _start
_start:
    mov     rax, 1 ; syscall to use, in this case it's '1' which means sys_write
    mov     rdi, 1 ; first argument to the sys_write function which is fd in this case '1' = stdout
    mov     rsi, msg ; bytes to write to stdout
    mov     rdx, msg_len ; count of characters to write to stdout
    syscall ; call the syscall
    mov    rax, 60 ; '60' is the  syscall to exit the program 
    mov    rdi, 0  ; 0 is the exit code, 0 for no errors and 1 for errors
    syscall        ; execute the syscall
