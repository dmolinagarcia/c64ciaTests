
all: dd0dtest.prg disk

dd0dtest.prg: dd0dtest.asm
	64tass -o 09dd0dtest.prg dd0dtest.asm

disk: 
	c1541 -format "cia09,00" d64 cia09.d64 \
		-write 09dd0dtest.prg 09dd0dtest

clean:
	rm -f 09dd0dtest.prg cia09.d64

