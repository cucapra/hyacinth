open Ssacompiler

let _ =
  let lexbuf = Lexing.from_channel stdin in
  let prog = Parser.prog Lexer.token lexbuf in
  print_endline "Program";
  print_endline (Pretty.pretty prog);

  (try
    let vars = Check.check_ssa prog in
    print_endline "\nChecking, bound variables:";
    List.iter print_endline vars
  with e ->
    print_endline ("\nCheck error: " ^ Printexc.to_string e));

  (try
    print_endline "\nInterpreted:";
    let store = Interpreter.interpret prog in
    print_endline "\nFinal store:";
    print_endline (Interpreter.print_store store)
  with e ->
    print_endline ("Interpreter error: " ^ Printexc.to_string e));
