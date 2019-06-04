SSAC := dune exec ssac --

.PHONY: build install clean

.PRECIOUS: %_partitioned.ll

default: install

build:
	dune build

install:
	dune build && dune install

clean:
	rm -f *.ll
	rm -f *.bc
	rm -f *.png
	rm -f *.out
	rm -f *.dot
	rm -f examples/*/*.ll
	rm -f examples/*/*.bc
	rm -f examples/*/*.png
	rm -f examples/*/*.out
	rm -f examples/*/*.dot
	rm -f src/*.ll
	rm -f src/*.bc
	# rm -f {., src, examples/*}/*.{ll, bc, out, dot, png}

%_cores.ll %_host.ll: %.bc
	cat $< | $(SSAC) -l -t 1 -o $*

%_partitioned.ll: %_cores.ll %_host.ll src/communication.ll
	llvm-link -S $^ -o $@

%.out: %.ll
	clang -O1 $^ -o $@

%.ll: %.c
	clang -emit-llvm -O1 -S $< -o $*.ll

%.bc: %.c
	clang -emit-llvm -O1 -c $< -o $*.bc

%.dot: %.bc
	cat $*.bc | $(SSAC) -l -t 1 -o $*.dot

%.png : %.dot
	dot -Tpng $*.dot > $*.png

