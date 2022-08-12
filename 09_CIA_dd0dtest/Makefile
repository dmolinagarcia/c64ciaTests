
all: dd0dtest.prg disk

dd0dtest.prg: dd0dtest.asm
	64tass -o 09dd0dtest.prg dd0dtest.asm

TESTNO=09

disk:
	DISKNAME=$$(echo cia${TESTNO}.d64) ;\
	DISKLABEL=$$(echo cia${TESTNO}) ;\
	c1541 -format "$${DISKLABEL},00" d64 $${DISKNAME} ;\
	for f in $$(ls *prg); do c1541 $${DISKNAME} -write $$f $$(basename $$f .prg); done ;\

clean:
	rm -f 09dd0dtest.prg cia09.d64

