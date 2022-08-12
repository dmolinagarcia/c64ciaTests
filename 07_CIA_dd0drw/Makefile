
all: dd0drw.prg disk

dd0drw.prg: dd0drw.asm
	acme -f cbm -o 07dd0drw.prg dd0drw.asm

TESTNO=07

disk:
	DISKNAME=$$(echo cia${TESTNO}.d64) ;\
	DISKLABEL=$$(echo cia${TESTNO}) ;\
	c1541 -format "$${DISKLABEL},00" d64 $${DISKNAME} ;\
	for f in $$(ls *prg); do c1541 $${DISKNAME} -write $$f $$(basename $$f .prg); done ;\

clean:
	$(RM) 07dd0drw.prg cia07.d64
