SUBDIRS := $(wildcard 0*/.)
PRGS := $(wildcard 0*/*prg)



all: $(SUBDIRS) pack
$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)	

clean: $(SUBDIRS) unpack
$(SUBDIRS):
	$(MAKE) -C $@ $(MAKECMDGOALS)	

.PHONY: $(TOPTARGETS) $(SUBDIRS)

pack:
	c1541 -format "cia01,00" d81 ciaTests.d81
	echo $(PRGS)
	for f in $(PRGS); do c1541 ciaTests.d81 -write $$f $$(basename $$f .prg) ; done 

unpack:
	rm -rf ciaTests.d81	



#	for f in $(PRGS); do c1541 ciaTests.d81 -write $$f $$(basename $$f .prg); done 
	