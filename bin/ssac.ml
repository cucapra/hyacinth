open Ssacompiler

let _ =
    let lexbuf = Lexing.from_channel stdin in
    let prog = Parser.prog Lexer.token lexbuf in
    print_endline (Pretty.pretty prog);
    try
      let vars = Check.check_ssa prog
      in
        print_endline "\nBound variables:";
        List.iter print_endline vars
    with e ->
        print_endline ("\nError: " ^ Printexc.to_string e)

