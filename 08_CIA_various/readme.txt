
various CIA tests, originally by andre fachat.

the src dir contains the original tests which can be run like this:

LOAD"CIAn",8
LOAD"CIAnDATA",8,1
RUN

Now press keys A, B, ... for various tests. 
Last key varies but Last+1 key won't change screen.

Green characters indicate success, red characters indicate failure.

The border will turn red when any test fails.

the following tests depend on old vs new CIA:

CIA3    K, L
CIA3A   D, H
CIA4    X
CIA8    A,C,F,J,L

additional reference data for new CIA has been added.

alternatively this directory contains packed/linked prg files of each test that
can be loaded and run directly.

NOTE:
- Test C of CIA15 was missing it's reference data in the original source
  archive. It was recreated and cross checked on a real C64.
- the original code was changed in a way that all tests are run once at startup

--------------------------------------------------------------------------------

08cia01:   Timer A / B
CIA2:   Timer A / B
CIA3:   Timer A / B IRQ Flags
CIA3a:  Timer A / B IRQ Flags
CIA4:   Timer A / B IRQ Flags
CIA5:   Timer A / B IRQ Flags

08cia06:   Timer A / B (Cascade)
CIA7:   Timer A / B (Cascade)
CIA8:   Timer A / B (Cascade) IRQ Flags

CIA9:   Timer A (toggle count CNT or Clock)

CIA10:  Port B (output timer(s) at PB6/PB7 and read back PB)
CIA11:  Port B (output timer(s) at PB6/PB7 and read back PB)
CIA12:  Port B (output timer(s) at PB6/PB7 and read back PB)
CIA13:  Port B (output timer(s) at PB6/PB7 and read back PB)

CIA14:  Timer A / B (Cascade)

CIA15:  TOD Clock


3     ""           prg 
4     "08cia02"           prg 
3     "08cia03anew"       prg 
3     "08cia03a"          prg 
3     "08cia03new"        prg 
3     "08cia03"           prg 
5     "08cia04new"        prg 
5     "08cia04"           prg 
5     "08cia05"           prg 
5     ""           prg 
3     "08cia07"           prg 
4     "08cia08new"        prg 
4     "08cia08"           prg 
4     "08cia09"           prg 
3     "08cia10"           prg 
3     "08cia11"           prg 
3     "08cia12"           prg 
3     "08cia13"           prg 
4     "08cia14"           prg 
4     "08cia15"           prg 
