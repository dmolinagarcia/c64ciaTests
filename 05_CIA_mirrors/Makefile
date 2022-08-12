
all: ciamirrors.prg disk

ciamirrors.prg: main.asm
	acme -f cbm -o 05ciamirrors.prg main.asm
	
TESTNO=05

disk:
	DISKNAME=$$(echo cia${TESTNO}.d64) ;\
	DISKLABEL=$$(echo cia${TESTNO}) ;\
	c1541 -format "$${DISKLABEL},00" d64 $${DISKNAME} ;\
	for f in $$(ls *prg); do c1541 $${DISKNAME} -write $$f $$(basename $$f .prg); done ;\

clean:
	$(RM) 05ciamirrors.prg
	$(RM) cia05.d64