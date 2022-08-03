
all: clean cia-timer-oldcias.prg cia-timer-newcias.prg disk

cia-timer-oldcias.prg: cia-timer.asm dump-oldcia.bin
	dasm cia-timer.asm -DDUMP=0 -o02oldcias.prg
	
cia-timer-newcias.prg: cia-timer.asm dump-newcia.bin
	dasm cia-timer.asm -DDUMP=1 -o02newcias.prg

disk: 
	c1541 -format "cia02,00" d64 cia02.d64 \
		-write 02oldcias.prg old \
		-write 02newcias.prg new

clean:
	rm -f *~
	rm -f 02oldcias.prg
	rm -f 02newcias.prg
	rm -f cia02.d64
