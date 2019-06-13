SSAC := dune exec ssac --
TIMEOUT := 1
ROWS := 1
COLS := 2

.PHONY: build install clean test test_save bsg_communication

.PRECIOUS: %_partitioned.ll

default: install

build:
	dune build

install:
	dune build && dune install

clean:
	rm -f {.,src,examples/*}/*.{ll,bc,out,dot,png}
	rm -f tests/*{.bc,.out,.dot,_partitioned.ll,_host.ll}
	rm -f tests/output
	dune clean

test:
	-turnt tests/*.c
	make clean

test_save:
	-turnt --save tests/*.c
	make clean

%_cores.ll %_host.ll %.dot: %.bc
	cat $< | $(SSAC) -l -t $(TIMEOUT) -r $(ROWS) -c $(COLS) -o $*

%_partitioned.ll: %_cores.ll %_host.ll src/communication.ll
	llvm-link -S $^ -o $@

%.out: %.ll
	clang -O1 $^ -o $@

%.ll: %.c
	clang -emit-llvm -O1 -S $< -o $@

%.bc: %.c
	clang -emit-llvm -O1 -c $< -o $@

%.png : %.dot
	dot -Tpng $< > $@

bsg_communication:
	make src/bsg_manycore/bsg_communication.o
