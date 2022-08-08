
all: build pack disk

.PHONY: pack disk build

build:
	make -C src all

pack: build
	exomizer sfx basic -o 08cia01.prg src/cia01.prg src/cia01data
	exomizer sfx basic -o 08cia02.prg src/cia02.prg src/cia02data
	exomizer sfx basic -o 08cia03.prg src/cia03.prg src/cia03data
	exomizer sfx basic -o 08cia03a.prg src/cia03a.prg src/cia03adata
	exomizer sfx basic -o 08cia04.prg src/cia04.prg src/cia04data
	exomizer sfx basic -o 08cia05.prg src/cia05.prg src/cia05data
	exomizer sfx basic -o 08cia06.prg src/cia06.prg src/cia06data
	exomizer sfx basic -o 08cia07.prg src/cia07.prg src/cia07data
	exomizer sfx basic -o 08cia08.prg src/cia08.prg src/cia08data
	exomizer sfx basic -o 08cia09.prg src/cia09.prg src/cia09data
	exomizer sfx basic -o 08cia10.prg src/cia10.prg src/cia10data
	exomizer sfx basic -o 08cia11.prg src/cia11.prg src/cia11data
	exomizer sfx basic -o 08cia12.prg src/cia12.prg src/cia12data
	exomizer sfx basic -o 08cia13.prg src/cia13.prg src/cia13data
	exomizer sfx basic -o 08cia14.prg src/cia14.prg src/cia14data
	exomizer sfx basic -o 08cia15.prg src/cia15.prg src/cia15data

	exomizer sfx basic -o 08cia03new.prg src/cia03.prg src/cia03data-new
	exomizer sfx basic -o 08cia03anew.prg src/cia03a.prg src/cia03adata-new
	exomizer sfx basic -o 08cia04new.prg src/cia04.prg src/cia04data-new
	exomizer sfx basic -o 08cia08new.prg src/cia08.prg src/cia08data-new
	
disk: pack
	c1541 -format "cia08,00" d64 cia08.d64 \
		-write 08cia01.prg 08cia01 \
		-write 08cia02.prg 08cia02 \
		-write 08cia03.prg 08cia03 \
		-write 08cia03a.prg 08cia03a \
		-write 08cia04.prg 08cia04 \
		-write 08cia05.prg 08cia05 \
		-write 08cia06.prg 08cia06 \
		-write 08cia07.prg 08cia07 \
		-write 08cia08.prg 08cia08 \
		-write 08cia09.prg 08cia09 \
		-write 08cia10.prg 08cia10 \
		-write 08cia11.prg 08cia11 \
		-write 08cia12.prg 08cia12 \
		-write 08cia13.prg 08cia13 \
		-write 08cia14.prg 08cia14 \
		-write 08cia15.prg 08cia15

	c1541 -format "cia08,00" d64 cia08new.d64 \
		-write 08cia01.prg 08cia01 \
		-write 08cia02.prg 08cia02 \
		-write 08cia03new.prg 08cia03 \
		-write 08cia03anew.prg 08cia03a \
		-write 08cia04new.prg 08cia04 \
		-write 08cia05.prg 08cia05 \
		-write 08cia06.prg 08cia06 \
		-write 08cia07.prg 08cia07 \
		-write 08cia08new.prg 08cia08 \
		-write 08cia09.prg 08cia09 \
		-write 08cia10.prg 08cia10 \
		-write 08cia11.prg 08cia11 \
		-write 08cia12.prg 08cia12 \
		-write 08cia13.prg 08cia13 \
		-write 08cia14.prg 08cia14 \
		-write 08cia15.prg 08cia15

clean:
	rm -f *~
	rm -rf *d64
	rm -rf *prg
	make -C src clean
