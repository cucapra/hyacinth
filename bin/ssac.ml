open Ssacompiler
open Partition

let program_file : string option ref = ref None
let anon_fun (arg : string) : unit =
    print_endline ("Warning: no argument expected, ignoring: " ^ arg)

let debug : bool ref = ref false
let intermediate : bool ref = ref false
let direct_man_distance : bool ref = ref false
let rows : int ref = ref 2
let columns : int ref = ref 2
let timeout : int ref = ref 100000
let out_filename : string ref = ref "ssac-output"
let target_string : string ref = ref "pthreads"

let usage = "SSA-Spatial Compiler\n"
let spec_list : (Arg.key * Arg.spec * Arg.doc) list =
  [
    ("-d", Arg.Set debug, "Prints verbose debug printing");
    ("-i", Arg.Set intermediate, "Expect intermediate annotations for partitioning");
    ("-m", Arg.Set direct_man_distance, "Computes Manhattan distance directly rather than via a lookup table");
    ("-r", Arg.Set_int rows, "Number of rows in the spatial configuration");
    ("-c", Arg.Set_int columns, "Number of columns in the spatial configuration");
    ("-t", Arg.Set_int timeout, "Timeout for z3, in seconds");
    ("-o", Arg.Set_string out_filename, "(Partial) filename for output files");
    ("-target", Arg.Set_string target_string, "Target: 'pthread' (default), 'bsg_manycore'");
  ]

let _ =
  Arg.parse spec_list anon_fun usage;
  let config =
    {
      rows = !rows;
      cols = !columns;
      timeout = !timeout;
      debug = !debug;
      direct_distance = !direct_man_distance;
    }
  in
  let md, instrs_per_block = Llvm_in.parse_llvm () in
  let partitions = if !intermediate then
      Intermediate_llvm.consume_intermediate_llvm instrs_per_block
    else begin
      print_endline ("\nPartitioning for spatial layout with " ^ (string_of_int !rows)
        ^ " rows, " ^ (string_of_int !columns) ^ " columns, "
        ^ (string_of_int !timeout) ^"s timeout");
      let fold_solve acc instrs = Partition.solve_dfg acc instrs config in
      List.fold_left fold_solve ValueMap.empty instrs_per_block
    end
  in
  Visualize.visualize_dfg partitions (!out_filename ^ ".dot");

  Intermediate_llvm.emit_intermediate_llvm !out_filename md partitions;

  let target = Emit_utils.target_of_string !target_string in
  Emit_llvm.emit_llvm target !out_filename partitions md !debug

