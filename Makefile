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
	rm -f {.,src}/*.{ll,bc,out,dot,png}
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
	clang -emit-llvm -Xclang -disable-lifetime-markers  $(TARGET_FLAGS) -O0 -S $< -o $@

%.bc: %.c
	clang -emit-llvm -Xclang -disable-lifetime-markers  $(TARGET_FLAGS) -O0 -c $< -o $@

%.png : %.dot
	dot -Tpng $< > $@

BSG_COMMS_SKELETONS_SRC = $(wildcard src/bsg_manycore/*-skeleton.c)
BSG_COMMS_SKELETONS = $(BSG_COMMS_SKELETONS_SRC:.c=.ll)

CXX := clang++
CXXFLAGS += -std=c++17 -ferror-limit=1 -fvisibility-inlines-hidden -Wall -Werror -Wextra -Wno-unused-parameter -Wno-c++17-extensions -I/usr/include/z3

LDFLAGS += -L/usr/local/opt/llvm/lib -Wl,-rpath,/usr/local/opt/llvm/lib
CPPFLAGS += -I/usr/local/opt/llvm/include -I/usr/local/opt/llvm/include/c++/v1/ -fsanitize=address,undefined

LLVM_CXXFLAGS := `llvm-config --cxxflags` -fcxx-exceptions
LLVM_LDFLAGS := `llvm-config --ldflags --libs --system-libs`

BUILDDIR := build

CPP_FILES := src/LLVMSupport/*.cpp

hyacpp: $(CPP_FILES) $(BSG_COMMS_SKELETONS)
	$(CXX) -lz3 $(CXXFLAGS) $(LLVM_CXXFLAGS) $(CPP_FILES) $(LLVM_LDFLAGS) -o hyacpp
