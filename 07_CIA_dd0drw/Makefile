
all: dd0drw.prg disk

dd0drw.prg: dd0drw.asm
	acme -f cbm -o 07dd0drw.prg dd0drw.asm

disk: 
	c1541 -format "cia07,00" d64 cia07.d64 \
		-write 07dd0drw.prg 07dd0drw

clean:
	$(RM) 07dd0drw.prg cia07.d64
