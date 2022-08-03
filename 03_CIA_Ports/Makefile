COMPILER = acme
CFLAGS = -v1 --cpu 6502 -f cbm -o

.PHONY: all clean

.SUFFIXES: .prg .asm
%.prg: %.asm
	$(COMPILER) $(CFLAGS) $@ $<

all: ciaports.prg ghosting.prg disk

ciaports.prg: ciaports.asm
ghosting.prg: ghosting.asm
disk: 
	c1541 -format "cia02,00" d64 cia03.d64 \
		-write ciaports.prg ciaports \
		-write ghosting.prg ghosting

clean:
	-rm *.prg
	-rm *.d64
	-rm *~
