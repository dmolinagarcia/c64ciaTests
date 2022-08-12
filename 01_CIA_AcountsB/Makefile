all: clean cmp-b-counts-a-old.prg cmp-b-counts-a-new.prg disk

generate.prg: generate.asm
	acme -DCYCLES=63 -v1 --cpu 6502 -f cbm -o 01generate.prg generate.asm

test.prg: test.asm
	acme -DCYCLES=63 -v1 --cpu 6502 -f cbm -o 01test.prg test.asm

cmp-b-counts-a-old.prg: cmp-b-counts-a-old.asm test.asm
	acme -DCYCLES=63 -v1 --cpu 6502 -f cbm -o 01cmpold.prg cmp-b-counts-a-old.asm
	exomizer sfx basic -o 01cmpold.prg 01cmpold.prg
cmp-b-counts-a-new.prg: cmp-b-counts-a-new.asm test.asm
	acme -DCYCLES=63 -v1 --cpu 6502 -f cbm -o 01cmpnew.prg cmp-b-counts-a-new.asm
	exomizer sfx basic -o 01cmpnew.prg 01cmpnew.prg

TESTNO=01

disk:
	DISKNAME=$$(echo cia${TESTNO}.d64) ;\
	DISKLABEL=$$(echo cia${TESTNO}) ;\
	c1541 -format "$${DISKLABEL},00" d64 $${DISKNAME} ;\
	for f in $$(ls *prg); do c1541 $${DISKNAME} -write $$f $$(basename $$f .prg); done ;\

clean:
	rm -f *~
	rm -f *.prg
	rm -f *.d64
