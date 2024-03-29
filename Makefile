SUBDIRS := $(wildcard *CIA*/.)

all: $(SUBDIRS) disk list
$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)	

clean: $(SUBDIRS) unpack
$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)	

.PHONY: $(TOPTARGETS) $(SUBDIRS)

disk:
	$(eval PRGS := $(wildcard *CIA*/*prg))
	c1541 -format "cia01,00" d64 ciaTests.d64
#	for f in $(PRGS); do exomizer sfx basic -o $$f $$f; c1541 ciaTests.d64 -write $$f $$(basename $$f .prg) ; done 
	for f in $(PRGS); do c1541 ciaTests.d64 -write $$f $$(basename $$f .prg) ; done 

list:
	c1541 ciaTests.d64 -dir	

unpack:
	rm -rf ciaTests.d81	ciaTests.d64

run: 
	x64sc -8 ciaTests.d64 -cartcrt ../Epyx_FastLoad_1984_v2.crt

runnocrt: 
	x64sc -8 ciaTests.d64
