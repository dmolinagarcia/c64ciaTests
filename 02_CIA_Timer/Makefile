
all: clean cia-timer-oldcias.prg cia-timer-newcias.prg disk

cia-timer-oldcias.prg: cia-timer.asm dump-oldcia.bin
	dasm cia-timer.asm -DDUMP=0 -o02oldcias.prg
	
cia-timer-newcias.prg: cia-timer.asm dump-newcia.bin
	dasm cia-timer.asm -DDUMP=1 -o02newcias.prg

debug:   cia-timer-debug.asm dump-oldcia.bin
	dasm cia-timer-debug.asm -DDUMP=0 -o02debug.prg
	x64 -fullscreen 02debug.prg 

TESTNO=02

disk:
	DISKNAME=$$(echo cia${TESTNO}.d64) ;\
	DISKLABEL=$$(echo cia${TESTNO}) ;\
	c1541 -format "$${DISKLABEL},00" d64 $${DISKNAME} ;\
	for f in $$(ls *prg); do c1541 $${DISKNAME} -write $$f $$(basename $$f .prg); done ;\

clean:
	rm -f *~
	rm -f 02oldcias.prg
	rm -f 02newcias.prg
	rm -f cia02.d64
