HYAC := dune exec hyac --
TIMEOUT := 2
ROWS := 1
COLS := 2
TARGET := pthreads
CLANG_LFLAGS := -lpthread -lm 

ifeq ($(TARGET), bsg_manycore)
	CFLAGS := -m32
    LDFLAGS := -m32
	TARGET_FLAGS := -m64 --target=x86_64-redhat-linux-gnu
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
	rm -f tests/*{.bc,.out,.dot,.png,_partitioned.ll,_host.ll,_cores.ll,_comms.ll,_intermediate.ll}
	rm -f tests/output
	rm -rf hyacpp
	dune clean

test:
	-turnt tests/*.c
	make clean

test_save:
	-turnt --save tests/*.c
	make clean

%_comms.ll %_host.ll %_cores.ll %.dot: %.bc
	cat $< | $(HYAC) -t $(TIMEOUT) -r $(ROWS) -c $(COLS) -target $(TARGET) $(HYAC_EXTRA_FLAGS) -o $*

%_partitioned.ll: %_comms.ll  %_host.ll %_cores.ll src/pthreads/communication.ll
	llvm-link -S $^ -o $@

%.out: %.ll
	clang $(CLANG_LFLAGS) -O1 $^ -o $@

%.ll: %.c
	clang -emit-llvm -Xclang -disable-lifetime-markers  $(TARGET_FLAGS) -O1 -S $< -o $@

%.bc: %.c
	clang -emit-llvm -Xclang -disable-lifetime-markers  $(TARGET_FLAGS) -O1 -c $< -o $@

%.png : %.dot
	dot -Tpng $< > $@

bsg_communication:
	make src/bsg_manycore/bsg_communication.o

CXX := clang++
CXXFLAGS := $(CXXFLAGS) -ferror-limit=1
LLVM_BIN_PATH 	:= /usr/local/opt/llvm/bin

LLVM_CXXFLAGS := `$(LLVM_BIN_PATH)/llvm-config --cxxflags`
LLVM_LDFLAGS := `$(LLVM_BIN_PATH)/llvm-config --ldflags --libs --system-libs`

BUILDDIR := build

CPP_FILES := src/LLVMSupport/*.cpp 

hyacpp: $(CPP_FILES)
	$(CXX) -lz3 $(CXXFLAGS) $(LLVM_CXXFLAGS) $(CPP_FILES) $(LLVM_LDFLAGS) -o hyacpp
