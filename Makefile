# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lrecine- <lrecine-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/17 15:32:04 by lrecine-          #+#    #+#              #
#    Updated: 2024/10/17 15:35:56 by lrecine-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRC = ft_isalnum.c ft_isalpha.c ft_isdigit.c ft_strlen.c ft_isascii.c \
    ft_isprint.c ft_memset.c ft_bzero.c ft_memcpy.c ft_memmove.c \
    ft_toupper.c ft_tolower.c ft_strchr.c \
    ft_strrchr.c ft_memchr.c ft_atoi.c ft_strdup.c \
    ft_strlcpy.c ft_strlcat.c ft_calloc.c ft_memcmp.c ft_strnstr.c \
    ft_substr.c ft_strncmp.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c \
    ft_strmapi.c ft_striteri.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c \
    ft_putnbr_fd.c

SRC_BONUS = ft_lstnew.c ft_lstadd_front.c ft_lstsize.c ft_lstlast.c ft_lstadd_back.c \
    ft_lstdelone.c ft_lstiter.c ft_lstclear.c ft_lstmap.c

HEADER = libft.h

OBJ = ${SRC:.c=.o}
OBJ_BONUS = ${SRC_BONUS:.c=.o}
CC = cc

CCFLAGS = -Wall -Wextra -Werror

NAME = libft.a

%.o :%.c
	${CC} ${CCFLAGS} -c $< -o $@

all: ${NAME}

$(NAME): ${OBJ}
	ar rcs ${NAME} ${OBJ}

bonus: ${OBJ} ${OBJ_BONUS}
	ar rcs ${NAME} ${OBJ} ${OBJ_BONUS}

clean:
	rm -f ${OBJ} ${OBJ_BONUS}

fclean: clean
	rm -f libft.a

re: fclean all


.PHONY: all clean fclean re bonus