#!/bin/sh
CONFIGFILE=$(cat "makefileconfig")
rm -f Makefile
echo '
NAME    =       PROGRAMME

SRC     =       test2.c

COMP    =       gcc

OBJS    =       $(SRC:.c=.o)

CFLAGS  =

LDFLAGS =

RECUP   = $(wildcard ./*.c)

LIBS    =

RM      = rm -f

ECHO    =       echo -e


all     : $(NAME)

$(NAME) : $(OBJS)
	$(COMP) $(CFLAGS) $(LDFLAGS) $(LIBS) -o $(NAME) $(OBJS)
	@$(ECHO) "\033[0;32m> Compiled [OK]\033[0m"


clean   :
	$(RM) $(OBJS)
	@$(ECHO) "\033[0;32mTerminé.\033[0m"

fclean  : clean
	$(RM) $(NAME)
	@$(ECHO) "\033[0;31m> REMOVE [OK]\033[0m"

re      : fclean all

archive: clean
	@$(ECHO) "Creation de larchive \033[0;32m$(NAME).tar.gz\033[0m ..."
	@REP=`basename $$PWD`; tar -vcf $(NAME)$(RECUP)
	@$(ECHO) "\033[0;32mFichier $(NAME) généré.\033[0m"

.PHONY:	all clean fclean re' > Makefile
make $(MAKEFILECONFIG)
