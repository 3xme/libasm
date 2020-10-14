# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_read.s                                          :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abiari <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/17 19:48:47 by abiari            #+#    #+#              #
#    Updated: 2020/02/17 19:48:49 by abiari           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .data

section .text
	global _ft_read

%macro read 3
    mov rax, 0x2000003
    mov rdi, %1
    mov rsi, %2
    mov rdx, %3
    syscall
%endmacro

_ft_read:
	read rdi, rsi, rdx
	ret
