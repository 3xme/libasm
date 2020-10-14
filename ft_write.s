# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_write.s                                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abiari <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/17 19:48:31 by abiari            #+#    #+#              #
#    Updated: 2020/02/17 19:48:36 by abiari           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .data

section .text
	global _ft_write

%macro write 3
    mov rax, 0x2000004
    mov rdi, %1
    mov rsi, %2
    mov rdx, %3
    syscall
%endmacro

_ft_write:
	write rdi, rsi, rdx
	ret
