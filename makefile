# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: prossi <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/16 11:34:52 by prossi            #+#    #+#              #
#    Updated: 2017/02/25 15:33:09 by prossi           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = my_libft.a

HEAD = ./include

SRC_PATH = ./src

SRC = ft_strlen ft_strdup ft_strcpy ft_strncpy \
	  ft_strcat ft_strncat ft_putchar ft_putchar_fd \
	  ft_putstr ft_putstr_fd ft_memset ft_bzero \
	  ft_memcpy ft_memccpy ft_memmove ft_memchr \
	  ft_memcmp ft_strchr ft_strrchr ft_strstr \
	  ft_strnstr ft_strcmp ft_strncmp ft_atoi \
	  ft_isalpha ft_isdigit ft_isalnum ft_isascii \
	  ft_isprint ft_toupper ft_tolower ft_memalloc \
	  ft_memdel ft_strnew ft_strdel ft_strclr \
	  ft_striter ft_striteri ft_strmap ft_strmapi \
	  ft_strequ ft_strnequ ft_strsub ft_strjoin \
	  ft_putendl ft_strtrim ft_putendl_fd ft_putnbr \
	  ft_putnbr_fd ft_itoa ft_lenint ft_strputneg \
	  ft_strsplit ft_countw ft_strlcat ft_isupper \
	  ft_islower ft_isblank ft_lstnew ft_lstdelone \
	  ft_lstdel ft_lstadd ft_lstiter ft_lstmap

SRC := $(addsuffix .c, $(SRC))

OBJ = $(SRC:.c=.o)

SRC := $(addprefix $(SRC_PATH)/,$(SRC))

FLAG = -Wall -Wextra -Werror

OP = -c -I $(HEAD)

all: $(NAME)

$(NAME):
	gcc $(FLAG) $(OP) $(SRC)
	(mv *.o src/)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

clean:
	/bin/rm -f $(OBJ)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
