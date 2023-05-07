This tests TIMERB counting TIMERA overflows on CIA2.

* 01CMPOLD.prg tests old CIA (6526)
* 01CMPNEW.prg tests new CIA (6526A)

* GENERATE.prg generates test data


sys 57812("dumpdata"),8,1 : rem read and prepare parameter list for save
poke 193,0                : rem patch IO start address $4000
poke 194,64
poke 174,0                : rem patch IO end address $5000
poke 175,82
sys 62957                 : rem jump into save right where writing starts 

* Restart, change CIA if needed, 

load"dumpdata",8,1
load"test",8
run

The tests starts TIMERA on CIA1 as reference. Then TIMERA on CIA2 at 0x13 and TIMERB on CIA2 at 0x07, counting TA underflows. Each test, TA is decreased until 0x00, and then TB is decreased too, testing all possible combinations. FORCELOAD is toggled on and off for both timers too.

Values are compared against a known good one, captured using the generate.asm program.

