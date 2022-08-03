
all: clean cia-timer-oldcias.prg cia-timer-newcias.prg disk

cia-timer-oldcias.prg: cia-timer.asm dump-oldcia.bin
	dasm cia-timer.asm -DDUMP=0 -ocia-timer-oldcias.prg
	
cia-timer-newcias.prg: cia-timer.asm dump-newcia.bin
	dasm cia-timer.asm -DDUMP=1 -ocia-timer-newcias.prg

disk: 
	c1541 -format "cia02,00" d64 cia02.d64 \
		-write cia-timer-oldcias.prg old \
		-write cia-timer-newcias.prg new

clean:
	rm -f *~
	rm -f cia-timer-oldcias.prg
	rm -f cia-timer-newcias.prg
	rm -f cia02.d64
