
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
	@$(ECHO) "[0;32m> Compiled [OK][0m"


clean   :
	$(RM) $(OBJS)
	@$(ECHO) "[0;32mTerminé.[0m"

fclean  : clean
	$(RM) $(NAME)
	@$(ECHO) "[0;31m> REMOVE [OK][0m"

re      : fclean all

archive: clean
	@$(ECHO) "Creation de larchive [0;32m$(NAME).tar.gz[0m ..."
	@REP=`basename $$PWD`; tar -vcf $(NAME)$(RECUP)
	@$(ECHO) "[0;32mFichier $(NAME) généré.[0m"

.PHONY:	all clean fclean re
