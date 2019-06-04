SSAC := dune exec ssac --

.PHONY: build install clean

.PRECIOUS: %_partitioned.ll

default: install

build:
	dune build

install:
	dune build && dune install

clean:
	rm -f {.,src,examples/*}/*.{ll,bc,out,dot,png}

%_cores.ll %_host.ll %.dot: %.bc
	cat $< | $(SSAC) -l -t 1 -o $*

%_partitioned.ll: %_cores.ll %_host.ll src/communication.ll
	llvm-link -S $^ -o $@

%.out: %.ll
	clang -O1 $^ -o $@

%.ll: %.c
	clang -emit-llvm -O1 -S $< -o $*.ll

%.bc: %.c
	clang -emit-llvm -O1 -c $< -o $*.bc

%.png : %.dot
	dot -Tpng $*.dot > $*.png

