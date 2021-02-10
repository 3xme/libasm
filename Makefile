# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abiari <abiari@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/18 18:00:26 by abiari            #+#    #+#              #
#    Updated: 2021/02/06 18:30:52 by abiari           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME = libasm.a

SRC = ft_strlen.s ft_strcmp.s ft_strcpy.s ft_strdup.s ft_write.s ft_read.s

OBJ = $(SRC:.s=.o)
	
all: $(NAME)

$(NAME):
	nasm -f macho64 ft_strlen.s -o ft_strlen.o
	nasm -f macho64 ft_strcmp.s -o ft_strcmp.o
	nasm -f macho64 ft_strcpy.s -o ft_strcpy.o
	nasm -f macho64 ft_strdup.s -o ft_strdup.o
	nasm -f macho64 ft_write.s -o ft_write.o
	nasm -f macho64 ft_read.s -o ft_read.o
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

clean:
	/bin/rm -f $(OBJ)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re bonus