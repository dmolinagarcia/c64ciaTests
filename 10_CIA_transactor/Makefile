
all: ciatest64.prg disk

ciatest64.prg: ciatest64.bas
	petcat -w2 -o 10ciatest64.prg -- ciatest64.bas

disk: 
	c1541 -format "cia10,00" d64 cia10.d64 \
		-write 10ciatest64.prg 10ciatest64

clean:
	$(RM) 10ciatest64.prg cia10.d64

