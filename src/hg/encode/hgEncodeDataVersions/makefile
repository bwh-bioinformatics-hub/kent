kentSrc = ../../..
include ../../../inc/common.mk

L += ${MYSQLLIBS} -lm 
MYLIBDIR = ../../../lib/${MACHTYPE}
MYLIBS =  ${MYLIBDIR}/jkhgap.a ${MYLIBDIR}/jkOwnLib.a ${MYLIBDIR}/jkweb.a

A = hgEncodeDataVersions

O = $A.o
    
include ../../../inc/cgi_build_rules.mk
    
compile: $O
	${CC} $O ${MYLIBS} ${L}
	mv ${AOUT} $A${EXE}
