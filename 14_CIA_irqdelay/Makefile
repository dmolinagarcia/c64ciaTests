
all:
	cl65 -C c64-asm.cfg -u __EXEHDR__ -o 14irq.prg 14irq.s
	cl65 -C c64-asm.cfg -u __EXEHDR__ --asm-define ONESHOT -o 14irqos.prg 14irq.s
	cl65 -C c64-asm.cfg -u __EXEHDR__ --asm-define TESTNEW -o 14irq-n.prg 14irq.s
	cl65 -C c64-asm.cfg -u __EXEHDR__ --asm-define TESTNEW --asm-define ONESHOT -o 14irqos-n.prg 14irq.s
	
	cl65 -C c64-asm.cfg -u __EXEHDR__ -o 14irq2.prg 14irq2.s
	cl65 -C c64-asm.cfg -u __EXEHDR__ --asm-define TESTNEW -o 14irq2-n.prg 14irq2.s

	cl65 -C c64-asm.cfg -u __EXEHDR__ --asm-define CIA=0 --asm-define TESTVAL=4 --asm-define ONESHOT -o 14irq-c1os-4-o.prg 14irq-cia1.s
	cl65 -C c64-asm.cfg -u __EXEHDR__ --asm-define CIA=1 --asm-define TESTVAL=4 --asm-define ONESHOT -o 14irq-c1os-4-n.prg 14irq-cia1.s
	cl65 -C c64-asm.cfg -u __EXEHDR__ --asm-define CIA=0 --asm-define TESTVAL=4 -o 14irq-c1-4-o.prg 14irq-cia1.s
	cl65 -C c64-asm.cfg -u __EXEHDR__ --asm-define CIA=1 --asm-define TESTVAL=4 -o 14irq-c1-4-n.prg 14irq-cia1.s

	cl65 -C c64-asm.cfg -u __EXEHDR__ --asm-define CIA=0 --asm-define TESTVAL=255 -o 14irq-c1.prg 14irq-cia1.s
	cl65 -C c64-asm.cfg -u __EXEHDR__ --asm-define CIA=0 --asm-define TESTVAL=255 --asm-define ONESHOT -o 14irq-c1os.prg 14irq-cia1.s

	cl65 -C c64-asm.cfg -u __EXEHDR__ --asm-define CIA=0 --asm-define TESTVAL=255 -o 14irq-c2.prg 14irq-cia2.s
	cl65 -C c64-asm.cfg -u __EXEHDR__ --asm-define CIA=0 --asm-define TESTVAL=5 -o 14irq-c2-4.prg 14irq-cia2.s
	cl65 -C c64-asm.cfg -u __EXEHDR__ --asm-define CIA=0 --asm-define TESTVAL=255 --asm-define ONESHOT -o 14irq-c2os.prg 14irq-cia2.s
	cl65 -C c64-asm.cfg -u __EXEHDR__ --asm-define CIA=0 --asm-define TESTVAL=4 --asm-define ONESHOT -o 14irq-c2os-4.prg 14irq-cia2.s

	rm -f *.o

clean:
	rm -f *.prg
	rm -f *~
