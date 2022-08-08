
all: ciamirrors.prg disk

ciamirrors.prg: main.asm
	acme -f cbm -o 05ciamirrors.prg main.asm
	
disk: 
	c1541 -format "cia05,00" d64 cia05.d64 \
		-write 05ciamirrors.prg 05ciamirrors 
clean:
	$(RM) 05ciamirrors.prg
	$(RM) cia05.d64