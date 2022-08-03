COMPILER = acme
CFLAGS = -v1 --cpu 6502 -f cbm -o

.PHONY: all clean

.SUFFIXES: .prg .asm
%.prg: %.asm
	$(COMPILER) $(CFLAGS) $@ $<

all: 03ciaports.prg 03ghosting.prg disk

03ciaports.prg: 03ciaports.asm
g03hosting.prg: 03ghosting.asm
disk: 
	c1541 -format "cia02,00" d64 cia03.d64 \
		-write 03ciaports.prg 03ciaports \
		-write 03ghosting.prg 03ghosting

clean:
	-rm *.prg
	-rm *.d64
