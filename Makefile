# dwme - dynamic window manager
# See LICENSE file for copyright and license details.

include config.mk

NAME = dwm
SRC  = drw.c dwm.c util.c
OBJ  = ${SRC:.c=.o}

INCLUDES = ext/dmenu ext/ste
DEPENDENTS = $(DESTDIR)$(PREFIX)/bin/st $(DESTDIR)$(PREFIX)/bin/dmenu

all: options $(INCLUDES) ${NAME}

options:
	@echo dwm build options:
	@echo "CFLAGS   = ${CFLAGS}"
	@echo "LDFLAGS  = ${LDFLAGS}"
	@echo "CC       = ${CC}"

.c.o:
	${CC} -c ${CFLAGS} $<

${OBJ}: config.h config.mk

${DEPENDENTS}: ${INCLUDES}

${INCLUDES}: sync-modules
	make -C $@ clean install

config.h:
	cp config.def.h $@

${NAME}: ${OBJ}
	${CC} -o $@ ${OBJ} ${LDFLAGS}

sync-modules: 
	git submodule init
	git submodule update

push-xsession:
	cp ./dwme.desktop /usr/share/xsessions/dwme.desktop

clean:
	rm -f dwm ${OBJ} dwm-${VERSION}.tar.gz

dist: clean
	mkdir -p dwm-${VERSION}
	cp -R LICENSE Makefile README config.def.h config.mk\
		dwm.1 drw.h util.h ${SRC} dwm.png transient.c dwm-${VERSION}
	tar -cf dwm-${VERSION}.tar dwm-${VERSION}
	gzip dwm-${VERSION}.tar
	rm -rf dwm-${VERSION}

install: ${DEPENDENTS} all
	mkdir -p ${DESTDIR}${PREFIX}/bin
	cp -f dwm ${DESTDIR}${PREFIX}/bin
	chmod 755 ${DESTDIR}${PREFIX}/bin/dwm
	mkdir -p ${DESTDIR}${MANPREFIX}/man1
	sed "s/VERSION/${VERSION}/g" < dwm.1 > ${DESTDIR}${MANPREFIX}/man1/dwm.1
	chmod 644 ${DESTDIR}${MANPREFIX}/man1/dwm.1

uninstall:
	rm -f ${DESTDIR}${PREFIX}/bin/dwm\
		${DESTDIR}${MANPREFIX}/man1/dwm.1

.PHONY: all options clean dist install uninstall sync-modules push-xsession
