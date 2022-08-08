
all: reload0a.prg reload0b.prg disk

reload0a.prg: reload0a.asm
	acme -f cbm -o 06reload0a.prg reload0a.asm
reload0b.prg: reload0b.asm
	acme -f cbm -o 06reload0b.prg reload0b.asm

disk: 
	c1541 -format "cia06,00" d64 cia06.d64 \
		-write 06reload0a.prg 06reload0a \
		-write 06reload0b.prg 06reload0b		

clean:
	rm -f *.prg *.d64
