
TESTS=\
	4tod.prg 4todcia1.prg 5tod.prg 6tod.prg \
	hammerfist0.prg hammerfist1.prg \
	frogger.prg

all: $(TESTS)
	
4tod.prg: 4tod.asm
	64tass -a -o 4tod.prg 4tod.asm
4todcia1.prg: 4todcia1.asm
	64tass -a -o 4todcia1.prg 4todcia1.asm
5tod.prg: 5tod.asm
	64tass -a -o 5tod.prg 5tod.asm
6tod.prg: 6tod.asm
	64tass -a -o 6tod.prg 6tod.asm
	
hammerfist0.prg: hammerfist0.asm
	dasm hammerfist0.asm -ohammerfist0.prg
hammerfist1.prg: hammerfist1.asm
	dasm hammerfist1.asm -ohammerfist1.prg

frogger.prg: frogger.asm
	acme -f cbm -o frogger.prg frogger.asm

clean:
	rm -f *.prg