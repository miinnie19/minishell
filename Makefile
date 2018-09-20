# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mnaidoo <marvin@42.fr>                     +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/08/31 11:53:06 by mnaidoo           #+#    #+#              #
#    Updated: 2017/08/31 11:53:15 by mnaidoo          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME      = minishell

SRC =		sources/sh_exec.c			\
		  	sources/sh_get_path.c		\
			sources/sh_launch.c			\
		    sources/minishell.c			\
			sources/sh_cd.c				\
			sources/sh_echo.c			\
			sources/sh_clear.c			\
			sources/sh_env.c			\
			sources/sh_increase_array.c	\
			sources/sh_realloc.c		\
			sources/sh_setenv.c			\
			sources/ft_split.c			\
			sources/sh_exit.c			\
		    sources/sh_unsetenv.c

HEADER = -I include

LFLAGS = -L./libft/ -lft

FLAGS = -o minishell -Wall -Werror -Wextra

all:
		@make -C libft/
		@gcc $(FLAGS) $(SRC) $(HEADER) $(LFLAGS)

clean:
		@rm $(NAME)
		@make -C libft/ clean

fclean: clean
		@rm -rf $(NAME)
		@rm -rf libft/libft.a

val:
	@valgrind --leak-check=full ./minishell

re: fclean all