
all: ciatest64.prg disk

ciatest64.prg: ciatest64.bas
	petcat -w2 -o 10ciatest64.prg -- ciatest64.bas

TESTNO=10

disk:
	DISKNAME=$$(echo cia${TESTNO}.d64) ;\
	DISKLABEL=$$(echo cia${TESTNO}) ;\
	c1541 -format "$${DISKLABEL},00" d64 $${DISKNAME} ;\
	for f in $$(ls *prg); do c1541 $${DISKNAME} -write $$f $$(basename $$f .prg); done ;\

clean:
	$(RM) 10ciatest64.prg cia10.d64

