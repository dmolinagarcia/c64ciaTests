
all: reload0a.prg reload0b.prg disk

reload0a.prg: reload0a.asm
	acme -f cbm -o 06reload0a.prg reload0a.asm
reload0b.prg: reload0b.asm
	acme -f cbm -o 06reload0b.prg reload0b.asm

TESTNO=06

disk:
	DISKNAME=$$(echo cia${TESTNO}.d64) ;\
	DISKLABEL=$$(echo cia${TESTNO}) ;\
	c1541 -format "$${DISKLABEL},00" d64 $${DISKNAME} ;\
	for f in $$(ls *prg); do c1541 $${DISKNAME} -write $$f $$(basename $$f .prg); done ;\

clean:
	rm -f *.prg *.d64
