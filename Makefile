SSAC := dune exec ssac --
TIMEOUT := 1
ROWS := 1
COLS := 2

.PHONY: build install clean

.PRECIOUS: %_partitioned.ll

default: install

build:
	dune build

install:
	dune build && dune install

clean:
	rm -f {.,src,examples/*}/*.{ll,bc,out,dot,png}
	dune clean

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

