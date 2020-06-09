# **************************************************************************** #
#                                                           LE - /             #
#                                                               /              #
#    Makefile                                         .::    .:/ .      .::    #
#                                                  +:+:+   +:    +:  +:+:+     #
#    By: jarcher <marvin@le-101.fr>                 +:+   +:    +:    +:+      #
#                                                  #+#   #+    #+    #+#       #
#    Created: 2018/10/01 14:19:03 by jarcher      #+#   ##    ##    #+#        #
#    Updated: 2019/09/02 10:55:02 by jarcher     ###    #+. /#+    ###.fr      #
#                                                          /                   #
#                                                         /                    #
# **************************************************************************** #

NAME =	libft.a

SRCS =	src/libft/ft_isnumber.c	\
		src/libft/ft_memset.c		\
		src/libft/ft_bzero.c		\
		src/libft/ft_fits_in_int.c	\
		src/libft/ft_memcpy.c		\
		src/libft/ft_memccpy.c	\
		src/libft/ft_memmove.c	\
		src/libft/ft_memchr.c		\
		src/libft/ft_memcmp.c		\
		src/libft/ft_strlen.c		\
		src/libft/ft_strlen_int.c	\
		src/libft/ft_strdup.c		\
		src/libft/ft_strdup_until.c	\
		src/libft/ft_strcpy.c		\
		src/libft/ft_strncpy.c	\
		src/libft/ft_strcat.c		\
		src/libft/ft_strncat.c	\
		src/libft/ft_strlcat.c	\
		src/libft/ft_strstr.c		\
		src/libft/ft_strnstr.c	\
		src/libft/ft_strcmp.c		\
		src/libft/ft_strncmp.c	\
		src/libft/ft_atoi.c		\
		src/libft/ft_strchr.c		\
		src/libft/ft_strrchr.c	\
		src/libft/ft_isalpha.c	\
		src/libft/ft_isdigit.c	\
		src/libft/ft_isalnum.c	\
		src/libft/ft_isascii.c	\
		src/libft/ft_isprint.c	\
		src/libft/ft_toupper.c	\
		src/libft/ft_tolower.c	\
		src/libft/ft_memalloc.c	\
		src/libft/ft_memdel.c		\
		src/libft/ft_strnew.c		\
		src/libft/ft_strdel.c		\
		src/libft/ft_strclr.c		\
		src/libft/ft_striter.c	\
		src/libft/ft_striteri.c	\
		src/libft/ft_strmap.c		\
		src/libft/ft_strmapi.c	\
		src/libft/ft_strequ.c		\
		src/libft/ft_strnequ.c	\
		src/libft/ft_strsub.c		\
		src/libft/ft_strjoin.c	\
		src/libft/ft_strtrim.c	\
		src/libft/ft_strsplit.c	\
		src/libft/ft_itoa.c		\
		src/libft/ft_putchar.c	\
		src/libft/ft_putstr.c		\
		src/libft/ft_putendl.c	\
		src/libft/ft_putnbr.c		\
		src/libft/ft_putchar_fd.c	\
		src/libft/ft_putstr_fd.c	\
		src/libft/ft_putendl_fd.c	\
		src/libft/ft_putnbr_fd.c	\
						\
		src/libft/get_next_line.c	\
						\
		src/ft_printf/ft_printf_main.c	\
		src/ft_printf/ft_printf.c	\
		src/ft_printf/get_number.c		\
		src/ft_printf/init_struct.c		\
		src/ft_printf/printf_base.c		\
		src/ft_printf/printf_float.c		\
		src/ft_printf/printf_hexa_octal.c	\
		src/ft_printf/printf_nb.c			\
		src/ft_printf/printf_precision.c	\
		src/ft_printf/printf_str.c		\
		src/ft_printf/printf_unicode.c	\
		src/ft_printf/set_modifiers.c		\
		src/ft_printf/libft/ft_putchar_printf.c				\
		src/ft_printf/libft/ft_putchar_unicode.c		\
		src/ft_printf/libft/ft_putstr_printf.c		\
		src/ft_printf/libft/ft_putnbr_unsigned_base.c		\
		src/ft_printf/libft/ft_strlen_float_unsigned.c	\
		src/ft_printf/libft/ft_strlen_unicode.c		\
		src/ft_printf/libft/ft_strlen_unsigned.c



OBJS =	$(SRCS:.c=.o)

CFLAGS = -Wall -Wextra -Werror -Iinclude

RM =	rm -f

all: $(NAME)

$(NAME): $(OBJS)
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)

clean:
	$(RM) $(OBJS)

fclean:	clean
	$(RM) $(NAME)

re: fclean all

.PHONY: all clean fclean re
.SILENT: clean fclean $(OBJS)
