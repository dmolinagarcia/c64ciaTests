
PROGS = \
	cia01.prg \
	cia02.prg \
	cia03.prg \
	cia03a.prg \
	cia04.prg \
	cia05.prg \
	cia06.prg \
	cia07.prg \
	cia08.prg \
	cia09.prg \
	cia10.prg \
	cia11.prg \
	cia12.prg \
	cia13.prg \
	cia14.prg \
	cia15.prg

all: $(PROGS)

%.prg:%.a65 common.a65
	xa -o $*.prg $*.a65

clean:
	rm -f *~
	rm -f *.prg
	