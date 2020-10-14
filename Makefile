# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: abiari <abiari@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2020/02/18 18:00:26 by abiari            #+#    #+#              #
#    Updated: 2020/02/21 17:05:00 by abiari           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #


NAME = libasm.a

SRC = ft_strlen.s ft_strcmp.s ft_strcpy.s ft_write.s ft_read.s

OBJ = $(SRC:.s=.o)

SRC_BONUS = *.s

OBJ_BONUS = $(SRC_BONUS:.s=.o)
 
all: $(NAME)

$(NAME): compile
	

compile:
	nasm -f macho64 $(SRC_BONUS) -o $(OBJ_BONUS)
	ar rc $(NAME) $(OBJ_BONUS)
	ranlib $(NAME)

clean:
	/bin/rm -f $(OBJ) $(OBJ_BONUS)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re bonus