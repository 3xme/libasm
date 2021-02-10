section .data

section .text
	global _ft_strdup
	extern _ft_strlen
	extern _ft_strcpy
	extern _malloc
        extern ___error
_ft_strdup:
        call _ft_strlen
        mov rcx, rax
        inc rcx
        push rdi
        mov rdi, rcx
        call _malloc
        cmp rax, 0
        je  error
        pop rsi
        mov rdi, rax
        call _ft_strcpy
        ret
error:
        call ___error
        mov r10, 12
        mov [rax], r10
        mov rax, 0
        ret
