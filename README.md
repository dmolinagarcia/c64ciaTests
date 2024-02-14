# c64ciaTests
Vice Test Suite ready to run on real C64. Adapted for 74HCT6526 testing.
All tests come from https://sourceforge.net/p/vice-emu/code/HEAD/tree/testprogs/CIA/
They have been adapted to fit everything within a single floppy.

This repository is for personal use, but has been made public for the general interest. Please forgive me if you find mistakes or any odd issue. There will me tons of comments in Spanish.

# Tests Ronda 1. Horizontal IZQ Vertical DER
c1541 ciaTests.d64 -dir	
0 "cia01           " 00 2a            OLD/NEW   CIA1/2  NEW    OLD      Analysis Correct?
6     "01cmpnew"          prg         NEW       2       OK      --          YES
6     "01cmpold"          prg         OLD       2       --      OK          YES
13    "02newcias"         prg         NEW       12      OK      --          YES
13    "02oldcias"         prg         OLD       12      --      OK          YES
8     "03ciaports"        prg         N/A       1       Not the same, but inconclusive
12    "03ghosting"        prg         N/A       1       Not the same, but inconclusive
2     "04testnew"         prg         NEW       1       OK      --
2     "04testold"         prg         OLD       1       --      OK
3     "04timer2new"       prg         NEW       2       OK      --
3     "04timer2old"       prg         OLD       2       --      OK
2     "04timer"           prg         N/A       1       OK      OK
4     "05ciamirrors"      prg                           OK      KO
6     "06reload0a"        prg                           KO      KO
6     "06reload0b"        prg                           KO      KO
1     "07dd0drw"          prg                           OK      OK
3     "08cia01"           prg                           OK
4     "08cia02"           prg                           OK
3     "08cia03anew"       prg                           OK
3     "08cia03a"          prg                           KO
3     "08cia03new"        prg                           OK
3     "08cia03"           prg                           KO
5     "08cia04new"        prg                           KO
5     "08cia04"           prg                           KO
5     "08cia05"           prg                           OK
5     "08cia06"           prg                           KO
3     "08cia07"           prg                           KO
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
2     "11alarm0"          prg                           OK
2     "11alarm1"          prg                           OK
1     "11alarmcond2"      prg                           KO
1     "11alarmcond"       prg                           KO
1     "11alarm"           prg                           OK
3     "11fixhour"         prg                           KO
3     "11fixmin"          prg                           KO
3     "11fixsec"          prg 
3     "11fixtsec"         prg 
1     "11frogger"         prg 
1     "11hammerfist0"     prg 
1     "11hammerfist1"     prg 
6     "11hourtest"        prg 
2     "11hzsync0"         prg                           OK
2     "11hzsync1"         prg                           KO
2     "11hzsync2"         prg                           OK
2     "11hzsync3"         prg 
2     "11hzsync4"         prg 
2     "11hzsync5"         prg 
4     "11powerup"         prg                           KO
3     "11readlatch"       prg                           KO
14    "11stabilityntsc"   prg 
14    "11stability"       prg 
3     "11tod4cia1"        prg 
3     "11tod4"            prg 
4     "11tod5"            prg 
4     "11tod6"            prg 
4     "11writestop"       prg 
4     "12c10_7f"          prg                           KO
4     "12c10"             prg                           KO
4     "12c11_7f"          prg 
4     "12c119"            prg 
4     "12c11"             prg 
4     "12c12"             prg 
4     "12c13_7f"          prg 
4     "12c139"            prg 
4     "12c13"             prg 
4     "12c14485-0_7f"     prg                           x 
4     "12c14485-0"        prg                           x 
4     "12c14485-1_7f"     prg                           x 
4     "12c14485-19"       prg                           x 
4     "12c14485-39"       prg                           x 
4     "12c14485-3"        prg                           x 
4     "12c14485-4_7f"     prg                           x 
4     "12c14_7f"          prg                           x 
4     "12c14"             prg                           x 
4     "12c15"             prg                           x 
4     "12c16"             prg                           x 
4     "12c1gen-0_7f"      prg                           x 
4     "12c1gen-0"         prg                           x 
4     "12c1gen-1_7f"      prg                           x 
4     "12c1gen-19"        prg                           x 
4     "12c1gen-39"        prg                           x 
4     "12c1gen-3"         prg                           x 
4     "12c1gen-4_7f"      prg                           x 
4     "12c20_7f"          prg                           x 
4     "12c20"             prg                           x 
4     "12c21_7f"          prg                           x 
4     "12c219"            prg                           x 
4     "12c239"            prg                           x 
4     "12c23"             prg                           x 
4     "12c24485-0_7f"     prg                           x 
4     "12c24485-0"        prg                           x 
4     "12c24485-1_7f"     prg                           x 
4     "12c24485-19"       prg                           x 
4     "12c24485-39"       prg                           x 
4     "12c24485-3"        prg                           x 
4     "12c24485-4_7f"     prg                           x 
4     "12c24_7f"          prg                           x 
4     "12c2gen-0_7f"      prg                            x
4     "12c2gen-0"         prg                            x
4     "12c2gen-1_7f"      prg                            x
4     "12c2gen-19"        prg                            x
4     "12c2gen-39"        prg                            x
4     "12c2gen-3"         prg                            x
4     "12c2gen-4_7f"      prg                           x 
6     "13ir2cn"           prg                           OK
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
12    "13spos-new"        prg                           KO
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
2     "14irq"             prg                           KO




