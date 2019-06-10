SSAC Compiler
=====

Note: this project is under active development, and this documentation may not be fully up-to-date.

-----

This is a compiler that partitions programs in a simple Static-Single Assignment (SSA) form across a spatial architecture of cores, minimizing the estimated idealized cycle count. It is currently under development to take in a and emit a subset of LLVM. 

Installing Dependencies
------

We recommend installing dependencies via OCaml's [opam][] package manager.

On OSX:

    $ # Homebrew
    $ brew install opam

On Linux:

    $ apt install opam

Then, we require [Dune][] for the build system, [Core][] for additional OCaml functionality, [Menhir][] for the parser, [OCamlgraph][] for the partition visualization, and [OCaml-Z3][] for constraint generation.

    $ opam install dune
    $ opam install core 
    $ opam install menhir
    $ opam install ocamlgraph
    $ opam pin add z3 https://github.com/plasma-umass/ocaml-z3.git

Finally, we require [Z3][] itself for constraint solving.

On OSX:

    $ # Homebrew
    $ brew install z3

On Linux:

    $ apt install z3

To take in [LLVM][] bitcode as input, install both the distribution and the OCaml bindings:

On OSX:

    $ brew install llvm

On Linux:

    $ apt install llvm

Then:

    $ opam install llvm

[opam]: https://github.com/ocaml/dune 
[dune]: https://github.com/ocaml/dune
[menhir]: http://gallium.inria.fr/~fpottier/menhir/
[core]: https://github.com/janestreet/core
[ocamlgraph]: https://github.com/backtracking/ocamlgraph
[ocaml-z3]: https://github.com/plasma-umass/ocaml-z3
[z3]: https://github.com/Z3Prover/z3
[LLVM]: https://llvm.org

Building & Running
-----

Run the following from the top-level directory to install the compiler's `ssac` executable onto your path:

    $ eval $(opam env)
    $ make install

Program are read from standard input:

    $ cat examples/simple_phi | ssac
    
Assuming you have a file `hello.c`, to simulate partitioning the file:

    $ make hello_partitioned.out

The `ssac` executable supports the following arguments:

    $ SSA-Spatial Compiler
    $ 
    $   -l Expects LLVM bitcode as the input program
    $   -p Pretty prints the input program
    $   -b Prints the bound variables from the SSA check
    $   -i Prints the interpreter final store
    $   -d Prints debugging for constraint generation
    $   -r Number of rows in the spatial configuration
    $   -c Number of columns in the spatial configuration
    $   -t Timeout for z3, in seconds
    $   -o Filename for the dot output file
    $   -help  Display this list of options
    $   --help  Display this list of options

SSAC also produces a dot final for visualizing the final partitioning. To view the result as a png:

    $ make hello.png
    
Testing
-----

SSAC uses [Turnt][] for testing, which compares both the emitted LLVM IR files and the results of executing the emitted partitioning. 

To run all tests:

    $ make test
    
To run all tests and save the resulting files as the source of truth:

    $ make test_save

[Turnt]: https://github.com/cucapra/turnt


