open Ssacompiler
open Partition

let program_file : string option ref = ref None
let anon_fun (arg : string) : unit =
    print_endline ("Warning: no argument expected, ignoring: " ^ arg)

let llvm_input : bool ref = ref false
let pretty_print : bool ref = ref false
let bound_ssa : bool ref = ref false
let print_interpreter : bool ref = ref false
let debug : bool ref = ref false
let direct_man_distance : bool ref = ref false
let rows : int ref = ref 2
let columns : int ref = ref 2
let timeout : int ref = ref 100000
let out_filename : string ref = ref "ssac-output.dot"


let usage = "SSA-Spatial Compiler\n"
let spec_list : (Arg.key * Arg.spec * Arg.doc) list =
  [
    ("-l", Arg.Set llvm_input, "Expects LLVM as the input program");
    ("-p", Arg.Set pretty_print, "Pretty prints the input program");
    ("-b", Arg.Set bound_ssa, "Prints the bound variables from the SSA check");
    ("-i", Arg.Set print_interpreter, "Prints the interpreter final store");
    ("-d", Arg.Set debug, "Prints debugging for constraint generation");
    ("-m", Arg.Set direct_man_distance, "Computes Manhattan distance directly rather than via a lookup table");
    ("-r", Arg.Set_int rows, "Number of rows in the spatial configuration");
    ("-c", Arg.Set_int columns, "Number of columns in the spatial configuration");
    ("-t", Arg.Set_int timeout, "Timeout for z3, in seconds");
    ("-o", Arg.Set_string out_filename, "Filename for the dot output file");
  ]

let _ =
  Arg.parse spec_list anon_fun usage;
  let prog = (if !llvm_input then
    Llvmin.parse_llvm stdin
  else
    let lexbuf = Lexing.from_channel stdin in Parser.prog Lexer.token lexbuf
  ) in
  if !pretty_print then
    (print_endline "Program"; print_endline (Pretty.pretty prog);)
  else ();

  (try
    let vars = Check.check_ssa prog in
    print_endline "Checking for SSA form:";
    if !bound_ssa then
      (print_endline "Bound variables:";
      List.iter print_endline vars)
    else print_endline "Success";
  with e ->
    print_endline ("\nCheck error: " ^ Printexc.to_string e));

  (try
    print_endline "\nInterpreting:";
    let store = Interpreter.interpret prog in
    if !print_interpreter then
      (print_endline "\nFinal store:";
      print_endline (Interpreter.print_store store))
    else print_endline "Success"
  with e ->
    print_endline ("Interpreter error: " ^ Printexc.to_string e));

  (try
    print_endline "\nSSA to DFG:";
    let dfg = Dfg.ssa_to_dfg prog in
    let config =
      {
        rows = !rows;
        cols = !columns;
        timeout = !timeout;
        debug = !debug;
        direct_distance = !direct_man_distance;
      } in
    print_endline "Success";
    print_endline ("\nPartitioning for spatial layout with " ^ (string_of_int !rows)
      ^ " rows, " ^ (string_of_int !columns) ^ " columns, "
      ^ (string_of_int !timeout) ^"s timeout");
    let dfg_assignments = Partition.solve_dfg dfg config in
    Visualize.visualize_dfg dfg_assignments !out_filename;
  with e ->
    print_endline ("SSA to DFG error: " ^ Printexc.to_string e));
