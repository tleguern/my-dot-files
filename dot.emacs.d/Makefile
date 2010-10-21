##
## Makefile for el in /u/all/le-gue_t/cu/.emacs.d
##
## Made by tristan le-guern-
## Login   <le-gue_t@epitech.net>
##
## Started on  Wed May  5 01:30:18 2010 tristan le-guern-
##
##

EMACS=		emacs -no-site-file -no-init-file

EMACSFLAGS=	-batch -q -f batch-byte-compile

SRC=		src/*.el

.MAIN:		all

all:
		${EMACS} ${EMACSFLAGS} ${SRC}
		mv ${SRC}c ~/.emacs.d/

clean:
		rm -f *.elc
# yes, this is crappy.
