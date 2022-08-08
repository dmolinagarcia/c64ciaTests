
all: build pack disk

.PHONY: pack disk build

build:
	make -C src all

pack: build
	exomizer sfx basic -o 08cia1.prg src/cia1.prg src/cia1data
	exomizer sfx basic -o 08cia2.prg src/cia2.prg src/cia2data
	exomizer sfx basic -o 08cia3.prg src/cia3.prg src/cia3data
	exomizer sfx basic -o 08cia3a.prg src/cia3a.prg src/cia3adata
	exomizer sfx basic -o 08cia4.prg src/cia4.prg src/cia4data
	exomizer sfx basic -o 08cia5.prg src/cia5.prg src/cia5data
	exomizer sfx basic -o 08cia6.prg src/cia6.prg src/cia6data
	exomizer sfx basic -o 08cia7.prg src/cia7.prg src/cia7data
	exomizer sfx basic -o 08cia8.prg src/cia8.prg src/cia8data
	exomizer sfx basic -o 08cia9.prg src/cia9.prg src/cia9data
	exomizer sfx basic -o 08cia10.prg src/cia10.prg src/cia10data
	exomizer sfx basic -o 08cia11.prg src/cia11.prg src/cia11data
	exomizer sfx basic -o 08cia12.prg src/cia12.prg src/cia12data
	exomizer sfx basic -o 08cia13.prg src/cia13.prg src/cia13data
	exomizer sfx basic -o 08cia14.prg src/cia14.prg src/cia14data
	exomizer sfx basic -o 08cia15.prg src/cia15.prg src/cia15data

	exomizer sfx basic -o 08cia3new.prg src/cia3.prg src/cia3data-new
	exomizer sfx basic -o 08cia3anew.prg src/cia3a.prg src/cia3adata-new
	exomizer sfx basic -o 08cia4new.prg src/cia4.prg src/cia4data-new
	exomizer sfx basic -o 08cia8new.prg src/cia8.prg src/cia8data-new
	
disk: pack
	c1541 -format "cia08,00" d64 cia08.d64 \
		-write 08cia1.prg 08cia1 \
		-write 08cia2.prg 08cia2 \
		-write 08cia3.prg 08cia3 \
		-write 08cia3a.prg 08cia3a \
		-write 08cia4.prg 08cia4 \
		-write 08cia5.prg 08cia5 \
		-write 08cia6.prg 08cia6 \
		-write 08cia7.prg 08cia7 \
		-write 08cia8.prg 08cia8 \
		-write 08cia9.prg 08cia9 \
		-write 08cia10.prg 08cia10 \
		-write 08cia11.prg 08cia11 \
		-write 08cia12.prg 08cia12 \
		-write 08cia13.prg 08cia13 \
		-write 08cia14.prg 08cia14 \
		-write 08cia15.prg 08cia15

	c1541 -format "cia08,00" d64 cia08new.d64 \
		-write 08cia1.prg 08cia1 \
		-write 08cia2.prg 08cia2 \
		-write 08cia3new.prg 08cia3 \
		-write 08cia3anew.prg 08cia3a \
		-write 08cia4new.prg 08cia4 \
		-write 08cia5.prg 08cia5 \
		-write 08cia6.prg 08cia6 \
		-write 08cia7.prg 08cia7 \
		-write 08cia8new.prg 08cia8 \
		-write 08cia9.prg 08cia9 \
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
