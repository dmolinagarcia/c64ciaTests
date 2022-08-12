TESTS=\
	11alarm.prg 11alarmcond.prg 11alarmcond2.prg \
	11tod4.prg 11tod4cia1.prg 11tod5.prg 11tod6.prg \
	11fixhour.prg 11fixmin.prg 11fixsec.prg 11fixtsec.prg \
	11powerup.prg 11hourtest.prg \
	11writestop.prg 11readlatch.prg \
	11stability.prg 11stabilityntsc.prg \
	11hzsync0.prg 11hzsync1.prg 11hzsync2.prg 11hzsync3.prg 11hzsync4.prg 11hzsync5.prg \
	11alarm0.prg 11alarm1.prg 11hammerfist0.prg 11hammerfist1.prg 11frogger.prg

all: $(TESTS) disk

11alarm.prg: 11alarm.s
	acme -o 11alarm.prg 11alarm.s
11alarmcond.prg: 11alarmcond.s
	acme -o 11alarmcond.prg 11alarmcond.s
11alarmcond2.prg: 11alarmcond2.s
	acme -o 11alarmcond2.prg 11alarmcond2.s	

11alarm0.prg: 11alarm0.asm
	64tass -a -o 11alarm0.prg 11alarm0.asm
11alarm1.prg: 11alarm1.asm
	64tass -a -o 11alarm1.prg 11alarm1.asm	

11tod4.prg: 11tod4.asm
	64tass -a -o 11tod4.prg 11tod4.asm
11tod4cia1.prg: 11tod4cia1.asm
	64tass -a -o 11tod4cia1.prg 11tod4cia1.asm
11tod5.prg: 11tod5.asm
	64tass -a -o 11tod5.prg 11tod5.asm
11tod6.prg: 11tod6.asm
	64tass -a -o 11tod6.prg 11tod6.asm	

11fixhour.prg: 11fixhour.s
	acme -o 11fixhour.prg 11fixhour.s
11fixmin.prg: 11fixmin.s
	acme -o 11fixmin.prg 11fixmin.s
11fixsec.prg: 11fixsec.s
	acme -o 11fixsec.prg 11fixsec.s
11fixtsec.prg: 11fixtsec.s
	acme -o 11fixtsec.prg 11fixtsec.s

11powerup.prg: 11powerup.s
	acme -o 11powerup.prg 11powerup.s	

11hourtest.prg: 11hourtest.bas
	petcat -w2 -o 11hourtest.prg -- 11hourtest.bas

11readlatch.prg: 11readlatch.s
	acme -o 11readlatch.prg 11readlatch.s
11writestop.prg: 11writestop.s
	acme -o 11writestop.prg 11writestop.s

11stability.prg: 11stability.s
	acme -DSYNC=0 -o 11stability.prg 11stability.s
11stabilityntsc.prg: 11stability.s
	acme -DSYNC=1 -o 11stabilityntsc.prg 11stability.s	

11hzsync0.prg: 11hzsync0.asm
	64tass -a -o 11hzsync0.prg 11hzsync0.asm
11hzsync1.prg: 11hzsync1.asm
	64tass -a -o 11hzsync1.prg 11hzsync1.asm
11hzsync2.prg: 11hzsync2.asm
	64tass -a -o 11hzsync2.prg 11hzsync2.asm
11hzsync3.prg: 11hzsync3.asm
	64tass -a -o 11hzsync3.prg 11hzsync3.asm
11hzsync4.prg: 11hzsync4.asm
	64tass -a -o 11hzsync4.prg 11hzsync4.asm
11hzsync5.prg: 11hzsync5.asm
	64tass -a -o 11hzsync5.prg 11hzsync5.asm	

11hammerfist0.prg: 11hammerfist0.asm
	dasm 11hammerfist0.asm -o11hammerfist0.prg
11hammerfist1.prg: 11hammerfist1.asm
	dasm 11hammerfist1.asm -o11hammerfist1.prg

11frogger.prg: 11frogger.asm
	acme -f cbm -o 11frogger.prg 11frogger.asm


TESTNO=11

disk:
	DISKNAME=$$(echo cia${TESTNO}.d64) ;\
	DISKLABEL=$$(echo cia${TESTNO}) ;\
	c1541 -format "$${DISKLABEL},00" d64 $${DISKNAME} ;\
	for f in $$(ls *prg); do c1541 $${DISKNAME} -write $$f $$(basename $$f .prg); done ;\


clean:
	rm -f *.prg *.d64	