# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: prossi <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/11/16 11:34:52 by prossi            #+#    #+#              #
#    Updated: 2017/02/27 14:22:39 by prossi           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = my_libft.a

SRC_PATH = ./src/off_libft

PIMP_SRC_PATH = ./src/pimp_libft

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

PIMP_SRC = ft_openfile ft_readfile ft_closefile

SRC := $(addsuffix .c, $(SRC))

PIMP_SRC := $(addsuffix .c, $(PIMP_SRC))

OBJ = $(SRC:.c=.o)

PIMP_OBJ = $(PIMP_SRC:.c=.o)

SRC := $(addprefix $(SRC_PATH)/,$(SRC))

PIMP_SRC := $(addprefix $(PIMP_SRC_PATH)/,$(PIMP_SRC))

FLAG = -Wall -Wextra -Werror

OP = -c 

all: $(NAME)

$(NAME):
	gcc $(FLAG) $(OP) $(SRC)
	mv *.o src/off_libft
	gcc $(FLAG) $(OP) $(PIMP_SRC)
	mv *.o src/pimp_libft
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

clean:
	/bin/rm -f $(OBJ) $(PIMP_OBJ)

fclean: clean
	/bin/rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re
