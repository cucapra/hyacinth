open Llvm
open Partition

let context = global_context ()

let add_metadata (placements : placement ValueMap.t) (v : llvalue) =
  match ValueMap.find_opt v placements with
  | Some p ->
    let id = mdkind_id context "partition" in
    let ps = mdstring context (string_of_int p.partition) in
    let m = mdnode context [| ps |] in
    set_metadata v id m
  | None -> ()

let emit_intermediate_llvm filename (md : llmodule) (placements : placement ValueMap.t) =
  iter_functions (iter_blocks (iter_instrs (add_metadata placements))) md;
  print_module (filename ^ "_intermediate.ll") md
