# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ft_strlen.s                                        :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abiari <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/17 19:48:20 by abiari            #+#    #+#              #
#    Updated: 2020/02/17 19:48:24 by abiari           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

section .data

section .text
	global _ft_strlen

_ft_strlen:
	mov rax, -1
loop:
	inc rax
	mov cl, byte [rdi+rax]
	cmp cl, byte 0
	jne loop
	ret
