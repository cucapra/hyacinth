open Ssacompiler

let _ =
    let lexbuf = Lexing.from_channel stdin in
    let prog = Parser.prog Lexer.token lexbuf in
    print_endline (Pretty.pretty prog);
    print_string "= ";
