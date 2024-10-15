# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lrecine- <lrecine-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/08 13:52:22 by lrecine-          #+#    #+#              #
#    Updated: 2024/10/15 19:47:58 by lrecine-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRCS_FILES = $(wildcard ft_*.c)
OBJS_FILES = $(SRCS_FILES:.c=.o)

CC = cc
CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME): $(OBJS_FILES)
	ar rcs $(NAME) $(OBJS_FILES)

%.o: %.c
	$(CC) $(CFLAGS) -c $< -o $@

bonus: $(OBJS_FILES)
	ar rcs $(NAME) $(OBJS_FILES)

clean:
	rm -f $(OBJS_FILES)

fclean: clean
	rm -f $(NAME)

re: fclean all

.PHONY: all clean fclean re