SSAC := dune exec ssac --
TIMEOUT := 2
ROWS := 1
COLS := 2
TARGET := pthreads

ifeq ($(TARGET), bsg_manycore)
	TARGET_FLAGS := -m32
endif

.PHONY: build install clean test test_save bsg_communication

.PRECIOUS: %_partitioned.ll %_host.ll %_cores.ll %_comms.ll

default: install

build:
	dune build

install:
	dune build && dune install

clean:
	rm -f {.,src,examples/*}/*.{ll,bc,out,dot,png}
	rm -f tests/*{.bc,.out,.dot,.png,_partitioned.ll,_host.ll,_cores.ll,_comms.ll}
	rm -f tests/output
	dune clean

test:
	-turnt tests/*.c
	make clean

test_save:
	-turnt --save tests/*.c
	make clean

%_comms.ll %_host.ll %_cores.ll %.dot: %.bc
	cat $< | $(SSAC) -t $(TIMEOUT) -r $(ROWS) -c $(COLS) -target $(TARGET) -o $*

%_partitioned.ll: %_comms.ll  %_host.ll %_cores.ll src/pthreads/communication.ll
	llvm-link -S $^ -o $@

%.out: %.ll
	clang -O1 $^ -o $@

%.ll: %.c
	clang -emit-llvm -Xclang -disable-lifetime-markers  $(TARGET_FLAGS) -O1 -S $< -o $@

%.bc: %.c
	clang -emit-llvm -Xclang -disable-lifetime-markers  $(TARGET_FLAGS) -O1 -c $< -o $@

%.png : %.dot
	dot -Tpng $< > $@

bsg_communication:
	make src/bsg_manycore/bsg_communication.o
