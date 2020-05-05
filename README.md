Hyacinth Compiler
=====

Note: this project is under active development, and this documentation may not be fully up-to-date.

-----

This is a compiler that partitions functions' [LLVM][] intermediate representation across a spatial architecture of cores, minimizing the estimated idealized cycle count.

Installing Dependencies
------

The OCaml implementation assumes [Ocaml][] 4.08.1.

    $ brew install ocaml

We recommend installing dependencies via OCaml's [opam][] package manager.

On OSX:

    $ # Homebrew
    $ brew install opam

On Linux, use the [binary installation script][].

Initialize Opam with:

    $ opam init

Then, we require [Dune][] for the build system, [Core][] for additional OCaml functionality, [OCamlgraph][] for the partition visualization, and [OCaml-Z3][] for constraint generation.

    $ opam install dune core ocamlgraph
    $ opam pin add z3 https://github.com/plasma-umass/ocaml-z3.git

Finally, we require [Z3][] itself for constraint solving.

On OSX:

    $ # Homebrew
    $ brew install z3

On Linux:

    $ apt-get install z3

To take in [LLVM][] bitcode as input, install both the distribution and the OCaml bindings:

On OSX:

    $ brew install llvm@8

On Linux:

    $ apt-get install llvm-8 clang-8

Then:

    $ opam pin add llvm 8.0.0

You can add this LLVM installation and the installed libraries to your path with:

    $ export PATH="/usr/local/opt/llvm@8/bin:$PATH"
    $ export LDFLAGS="-L/usr/local/opt/llvm@8/lib"
    $ export CPPFLAGS="-I/usr/local/opt/llvm@8/include"

(The exact path may differ based on your installation method.)

[ocaml]: https://ocaml.org/
[opam]: https://opam.ocaml.org
[binary installation script]: https://opam.ocaml.org/doc/Install.html#Binary-distribution
[dune]: https://github.com/ocaml/dune
[core]: https://github.com/janestreet/core
[ocamlgraph]: https://github.com/backtracking/ocamlgraph
[ocaml-z3]: https://github.com/plasma-umass/ocaml-z3
[z3]: https://github.com/Z3Prover/z3
[LLVM]: https://llvm.org

Building & Running
-----

To build the v1 `hyac` executable, run the following from the top-level directory to install onto your path:

    $ eval $(opam env)
    $ make install

Assuming you have a file `hello.c`, to simulate partitioning the file:

    $ make hello_partitioned.out

The `hyac` executable supports the following arguments:

    $ -d Prints verbose debug printing
    $ -i Expect intermediate annotations for partitioning
    $ -m Computes Manhattan distance directly rather than via a lookup table
    $ -r Number of rows in the spatial configuration
    $ -c Number of columns in the spatial configuration
    $ -t Timeout for z3, in seconds
    $ -o (Partial) filename for output files
    $ -target Target: 'pthread' (default), 'bsg_manycore'
    $ -help  Display this list of options
    $ --help  Display this list of options

Hyacinth also produces a dot final for visualizing the final partitioning. To view the result as a png:

    $ make hello.png

### V2

To build and run the v2 C++ executable:

    $ make hyacpp

And:

    $ ./hyacpp <IR file>

Which produced and intermediate partitioned file, `hyacpp_output_intermediate.ll`.

Then:

    $ make hyacpp_output_intermediate.bc
    $ cat hyacpp_output_intermediate.bc | hyac -i

Testing
-----

Hyacinth uses [Turnt][] for testing, which compares both the emitted LLVM IR files and the results of executing the emitted partitioning.

To run all tests:

    $ make test

To run all tests and save the resulting files as the source of truth:

    $ make test_save

[Turnt]: https://github.com/cucapra/turnt


