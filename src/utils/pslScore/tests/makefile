kentSrc = ../../..
include ../../../inc/common.mk

PROG = pslScore

test:
	pslScore test.psl > testOut.tab
	@diff expectOut.tab testOut.tab
	../pslScore.pl test.psl 2> /dev/null > testOutPl.tab
	@diff expectOut.tab testOutPl.tab
	pslScore NP_149062.psl > NP_149062.tab
	@diff expect.NP_149062.tab NP_149062.tab
	../pslScore.pl NP_149062.psl > NP_149062Pl.tab
	@diff expect.NP_149062.tab NP_149062Pl.tab

clean:
	rm -f testOut.tab testOutPl.tab NP_149062.tab NP_149062Pl.tab
