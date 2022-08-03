
all: clean generate.prg test.prg cmp-b-counts-a-old.prg cmp-b-counts-a-new.prg disk

generate.prg: generate.asm
	acme -DCYCLES=63 -v1 --cpu 6502 -f cbm -o 01generate.prg generate.asm

test.prg: test.asm
	acme -DCYCLES=63 -v1 --cpu 6502 -f cbm -o 01test.prg test.asm

cmp-b-counts-a-old.prg: cmp-b-counts-a-old.asm test.asm
	acme -DCYCLES=63 -v1 --cpu 6502 -f cbm -o 01cmpold.prg cmp-b-counts-a-old.asm
cmp-b-counts-a-new.prg: cmp-b-counts-a-new.asm test.asm
	acme -DCYCLES=63 -v1 --cpu 6502 -f cbm -o 01cmpnew.prg cmp-b-counts-a-new.asm

disk: 
	c1541 -format "cia01,00" d64 cia01.d64 \
		-write 01generate.prg generate \
		-write 01test.prg test \
		-write 01cmpold.prg cmpold \
		-write 01cmpnew.prg cmpnew
	
clean:
	rm -f *~
	rm -f *.prg
	rm -f *.d64
