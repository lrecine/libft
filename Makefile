# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lrecine- <lrecine-@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/10/08 13:52:22 by lrecine-          #+#    #+#              #
#    Updated: 2024/10/08 13:54:10 by lrecine-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRCS_FILES = ft_*.c
OBJS_FILES = $(SRCS_FILES:.c=.o)

CC = gcc
CFLAGS = -Wall -Wextra -Werror

all: $(NAME)

%o: %c
	$(CC) $(CFLAGS) -c $< -o $@

$(NAME): $(OBJS_FILES)
	ar rc $(NAME) $(OBJS_FILES)

clean:
	rm -f $(OBJS_FILES)

fclean: clean
	rm -f $(NAME)

re: fclean all