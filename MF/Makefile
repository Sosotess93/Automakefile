##
## Makefile for  in /home/charra_s/Downloads
## 
## Made by Sofiane Charrad
## Login   <charra_s@epitech.net>
## 
## Started on  Tue Jun 23 09:42:52 2015 Sofiane Charrad
## Last update Tue Jun 23 16:42:11 2015 Sofiane Charrad
##

NAME	=	automakefile

SRC	=	test2.c

COMP	=	gcc

OBJS	=	$(SRC:.c=.o)

CFLAGS	=

LDFLAGS = 

RECUP	= $(wildcard ./*.c)

LIBS	=

RM	= rm -f

ECHO	=	echo -e


all	: $(NAME)

$(NAME)	: $(OBJS)
	$(COMP) $(CFLAGS) $(LDFLAGS) $(LIBS) -o $(NAME) $(OBJS)
	@$(ECHO) '\033[0;32m> Compiled [OK]\033[0m'


clean	:
	$(RM) $(OBJS)
	@$(ECHO) '\033[0;32mTerminé.\033[0m'

fclean	: clean
	$(RM) $(NAME)
	@$(ECHO) '\033[0;31m> REMOVE [OK]\033[0m'

re	: fclean all

archive: clean
	@$(ECHO) "Creation de l'archive \033[0;32m$(NAME)$(shell date '+%y%m%d.tar.gz')\033[0m..."
	@REP=`basename $$PWD`; tar -vcf $(NAME)$(shell date '+%y%m%d.tar.gz') $(RECUP)
	@$(ECHO) "\033[0;32mFichier $(NAME) généré.\033[0m"

.PHONY	: all clean re fclean
