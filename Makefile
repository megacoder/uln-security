TARGETS=all check clean clobber distclean install uninstall
TARGET=all

PREFIX=${DESTDIR}/opt
BINDIR=${PREFIX}/bin
SUBDIRS=

ifeq	(${MAKE},gmake)
	INSTALL=ginstall
else
	INSTALL=install
endif

.PHONY: ${TARGETS} ${SUBDIRS}

all::

${TARGETS}::

clean::
	${RM} junk.html

clobber distclean:: clean

check::	uln-security uln-security.xsl updateinfo.xml.gz
	zcat updateinfo.xml.gz | ./uln-security >junk.html
	xdg-open junk.html &

install:: FIXME
	${INSTALL} -D FIXME ${BINDIR}/FIXME

uninstall::
	${RM} ${BINDIR}/FIXME

ifneq	(,${SUBDIRS})
${TARGETS}::
	${MAKE} TARGET=$@ ${SUBDIRS}
${SUBDIRS}::
	${MAKE} -C $@ ${TARGET}
endif
