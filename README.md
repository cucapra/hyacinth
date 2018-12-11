SSA-Spatial Compiler
=====

This is a compiler that partitions programs in a simple Static-Single Assignment (SSA) form across a spatial architecture of cores, minimizing the estimated idealized cycle count. 

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


[opam]: https://github.com/ocaml/dune 
[dune]: https://github.com/ocaml/dune
[menhir]: http://gallium.inria.fr/~fpottier/menhir/
[core]: https://github.com/janestreet/core
[ocamlgraph]: https://github.com/backtracking/ocamlgraph
[ocaml-z3]: https://github.com/plasma-umass/ocaml-z3
[z3]: https://github.com/Z3Prover/z3
