SUBDIRS := $(wildcard 0*/.)

all: $(SUBDIRS) pack
$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)	

clean: $(SUBDIRS) unpack
$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)	

.PHONY: $(TOPTARGETS) $(SUBDIRS)

pack:
	$(eval PRGS := $(wildcard 0*/*prg))
	c1541 -format "cia01,00" d64 ciaTests.d64
	for f in $(PRGS); do exomizer sfx basic -o $$f $$f; c1541 ciaTests.d64 -write $$f $$(basename $$f .prg) ; done 

unpack:
	rm -rf ciaTests.d81	ciaTests.d64

run: 
	x64 -8 ciaTests.d64
