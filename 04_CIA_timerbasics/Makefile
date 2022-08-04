all: timer.prg testold.prg testnew.prg timer2old.prg timer2new.prg disk

timer.prg: timer.s
	acme -f cbm -o 04timer.prg timer.s

testold.prg: test_old.s test.s
	acme -f cbm -o 04testold.prg test_old.s
testnew.prg: test_new.s test.s
	acme -f cbm -o 04testnew.prg test_new.s

timer2old.prg: timer2old.s timer2old.s
	acme -f cbm -o 04timer2old.prg timer2old.s
timer2new.prg:  timer2new.s timer2new.s
	acme -f cbm -o 04timer2new.prg timer2new.s

clean:
	rm -f *~
	rm -f *.prg

disk: 
	c1541 -format "cia04,00" d64 cia04.d64 \
		-write 04timer.prg 04timer \
		-write 04testold.prg 04testold \
		-write 04testnew.prg 04testnew \
		-write 04timer2old.prg 04timer2old \
		-write 04timer2new.prg 04timer2new 		
