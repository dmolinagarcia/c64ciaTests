# c64ciaTests
Vice Test Suite ready to run on real C64. Adapted for 74HCT6526 testing.
All tests come from https://sourceforge.net/p/vice-emu/code/HEAD/tree/testprogs/CIA/
They have been adapted to fit everything within a single floppy.

This repository is for personal use, but has been made public for the general interest. Please forgive me if you find mistakes or any odd issue. There will me tons of comments in Spanish.

# Tests
                                            OLD-MODE            NEW-MODE
6     "01cmpnew"          prg               FAIL
6     "01cmpold"          prg               OK
13    "02newcias"         prg               FAIL
13    "02oldcias"         prg               FAIL
8     "03ciaports"        prg               seems ok
12    "03ghosting"        prg               OK
2     "04testnew"         prg               OK
2     "04testold"         prg               FAIL
3     "04timer2new"       prg               FAIL
3     "04timer2old"       prg               FAIL
2     "04timer"           prg               OK
4     "05ciamirrors"      prg               FAIL(TOD)
6     "06reload0a"        prg               OK
6     "06reload0b"        prg               OK
1     "07dd0drw"          prg               OK
3     "08cia01"           prg               OK
4     "08cia02"           prg               OK
3     "08cia03anew"       prg               OK
3     "08cia03a"          prg               
3     "08cia03new"        prg 
3     "08cia03"           prg 
5     "08cia04new"        prg 
5     "08cia04"           prg 
5     "08cia05"           prg 
5     "08cia06"           prg 
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
14    "09dd0dtest"        prg 
4     "10ciatest64"       prg 
2     "11alarm0"          prg 
2     "11alarm1"          prg 
1     "11alarmcond2"      prg 
1     "11alarmcond"       prg 
1     "11alarm"           prg 
3     "11fixhour"         prg 
3     "11fixmin"          prg 
3     "11fixsec"          prg 
3     "11fixtsec"         prg 
1     "11frogger"         prg 
1     "11hammerfist0"     prg 
1     "11hammerfist1"     prg 
6     "11hourtest"        prg 
2     "11hzsync0"         prg 
2     "11hzsync1"         prg 
2     "11hzsync2"         prg 
2     "11hzsync3"         prg 
2     "11hzsync4"         prg 
2     "11hzsync5"         prg 
4     "11powerup"         prg 
3     "11readlatch"       prg 
14    "11stabilityntsc"   prg 
14    "11stability"       prg 
3     "11tod4cia1"        prg 
3     "11tod4"            prg 
4     "11tod5"            prg 
4     "11tod6"            prg 
4     "11writestop"       prg 
4     "12c10_7f"          prg 
4     "12c10"             prg 
4     "12c11_7f"          prg 
4     "12c119"            prg 
4     "12c11"             prg 
4     "12c12"             prg 
4     "12c13_7f"          prg 
4     "12c139"            prg 
4     "12c13"             prg 
4     "12c14485-0_7f"     prg 
4     "12c14485-0"        prg 
4     "12c14485-1_7f"     prg 
4     "12c14485-19"       prg 
4     "12c14485-39"       prg 
4     "12c14485-3"        prg 
4     "12c14485-4_7f"     prg 
4     "12c14_7f"          prg 
4     "12c14"             prg 
4     "12c15"             prg 
4     "12c16"             prg 
4     "12c1gen-0_7f"      prg 
4     "12c1gen-0"         prg 
4     "12c1gen-1_7f"      prg 
4     "12c1gen-19"        prg 
4     "12c1gen-39"        prg 
4     "12c1gen-3"         prg 
4     "12c1gen-4_7f"      prg 
4     "12c20_7f"          prg 
4     "12c20"             prg 
4     "12c21_7f"          prg 
4     "12c219"            prg 
4     "12c239"            prg 
4     "12c23"             prg 
4     "12c24485-0_7f"     prg 
4     "12c24485-0"        prg 
4     "12c24485-1_7f"     prg 
4     "12c24485-19"       prg 
4     "12c24485-39"       prg 
4     "12c24485-3"        prg 
4     "12c24485-4_7f"     prg 
4     "12c24_7f"          prg 
4     "12c2gen-0_7f"      prg 
4     "12c2gen-0"         prg 
4     "12c2gen-1_7f"      prg 
4     "12c2gen-19"        prg 
4     "12c2gen-39"        prg 
4     "12c2gen-3"         prg 
4     "12c2gen-4_7f"      prg 
6     "13ir2cn"           prg 
6     "13ir2os"           prg 
4     "13ircn-new"        prg 
4     "13ircn-old"        prg 
5     "13iros-new"        prg 
5     "13iros-old"        prg 
3     "13sddelay"         prg 
2     "13sdinit"          prg 
2     "13sdload"          prg 
12    "13spcn-new"        prg 
12    "13spcn-old"        prg 
12    "13spos-new"        prg 
12    "13spos-old"        prg 
5     "14irq2-n"          prg 
5     "14irq2"            prg 
2     "14irq-c1-4-n"      prg 
2     "14irq-c1-4-o"      prg 
2     "14irq-c1os-4-n"    prg 
2     "14irq-c1os-4-o"    prg 
2     "14irq-c1os"        prg 
2     "14irq-c1"          prg 
2     "14irq-c2-4"        prg 
2     "14irq-c2os-4"      prg 
2     "14irq-c2os"        prg 
2     "14irq-c2"          prg 
2     "14irq-n"           prg 
2     "14irqos-n"         prg 
2     "14irqos"           prg 
2     "14irq"             prg