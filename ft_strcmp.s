# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strcmp.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abiari <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/17 19:49:18 by abiari            #+#    #+#              #
#    Updated: 2020/02/17 19:49:20 by abiari           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .data

section .text
	global _ft_strcmp

_ft_strcmp:
loop:
	mov r15b, byte [rsi]
	cmp [rdi], r15b
	jne stop
	cmp [rdi], byte 0
	je stop
	cmp [rsi], byte 0
	je stop
	inc rdi
	inc rsi
	jmp loop
stop:
	xor rax, rax
	movzx rax, byte [rdi]
	movzx rdx, byte [rsi]
	sub rax, rdx
	ret

