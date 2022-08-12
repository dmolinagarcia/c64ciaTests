
TESTS=\
	13spos-old.prg \
	13spcn-old.prg \
	13iros-old.prg \
	13ircn-old.prg \
	13spos-new.prg \
	13spcn-new.prg \
	13iros-new.prg \
	13ircn-new.prg \
	13ir2os.prg \
	13ir2cn.prg \
	13sdload.prg \
	13sddelay.prg \
	13sdinit.prg

all: $(TESTS) disk

13spos-old.prg: 13sp.asm
	acme -DONESHOT=1 -DCIA=0 -f cbm -o 13spos-old.prg 13sp.asm
13spcn-old.prg: 13sp.asm
	acme -DONESHOT=0 -DCIA=0 -f cbm -o 13spcn-old.prg 13sp.asm

13iros-old.prg: 13ir.asm
	acme -DONESHOT=1 -DCIA=0 -f cbm -o 13iros-old.prg 13ir.asm
13ircn-old.prg: 13ir.asm
	acme -DONESHOT=0 -DCIA=0 -f cbm -o 13ircn-old.prg 13ir.asm

13spos-new.prg: 13sp.asm
	acme -DONESHOT=1 -DCIA=1 -f cbm -o 13spos-new.prg 13sp.asm
13spcn-new.prg: 13sp.asm
	acme -DONESHOT=0 -DCIA=1 -f cbm -o 13spcn-new.prg 13sp.asm

13iros-new.prg: 13ir.asm
	acme -DONESHOT=1 -DCIA=1 -f cbm -o 13iros-new.prg 13ir.asm
13ircn-new.prg: 13ir.asm
	acme -DONESHOT=0 -DCIA=1 -f cbm -o 13ircn-new.prg 13ir.asm

13ir2os.prg: 13ir2.asm
	acme -DONESHOT=1 -f cbm -o 13ir2os.prg 13ir2.asm
13ir2cn.prg: 13ir2.asm
	acme -DONESHOT=0 -f cbm -o 13ir2cn.prg 13ir2.asm

13sdload.prg: 13sdload.a65
	xa -o 13sdload.prg 13sdload.a65
13sdinit.prg: 13sdinit.asm
	acme -f cbm -o 13sdinit.prg 13sdinit.asm
13sddelay.prg: 13sddelay.asm
	acme -f cbm -o 13sddelay.prg 13sddelay.asm
	
clean:
	rm -f *.prg

TESTNO=13

disk:
	DISKNAME=$$(echo cia${TESTNO}.d64) ;\
	DISKLABEL=$$(echo cia${TESTNO}) ;\
	c1541 -format "$${DISKLABEL},00" d64 $${DISKNAME} ;\
	for f in $$(ls *prg); do c1541 $${DISKNAME} -write $$f $$(basename $$f .prg); done ;\

