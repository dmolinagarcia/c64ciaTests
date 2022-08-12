all: timer.prg testold.prg testnew.prg timer2old.prg timer2new.prg disk

timer.prg: timer.s
	acme -f cbm -o 04timer.prg timer.s
	exomizer sfx basic -o 04timer.prg 04timer.prg

testold.prg: test_old.s test.s
	acme -f cbm -o 04testold.prg test_old.s
	exomizer sfx basic -o 04testold.prg 04testold.prg
testnew.prg: test_new.s test.s
	acme -f cbm -o 04testnew.prg test_new.s
	exomizer sfx basic -o 04testnew.prg 04testnew.prg

timer2old.prg: timer2old.s timer2old.s
	acme -f cbm -o 04timer2old.prg timer2old.s
	exomizer sfx basic -o 04timer2old.prg 04timer2old.prg

timer2new.prg:  timer2new.s timer2new.s
	acme -f cbm -o 04timer2new.prg timer2new.s
	exomizer sfx basic -o 04timer2new.prg 04timer2new.prg

clean:
	rm -f *~
	rm -f *.prg
	rm -f *.d64

TESTNO=04

disk:
	DISKNAME=$$(echo cia${TESTNO}.d64) ;\
	DISKLABEL=$$(echo cia${TESTNO}) ;\
	c1541 -format "$${DISKLABEL},00" d64 $${DISKNAME} ;\
	for f in $$(ls *prg); do c1541 $${DISKNAME} -write $$f $$(basename $$f .prg); done ;\
