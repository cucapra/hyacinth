open Llvm
open Partition

let context = global_context ()

let partition_key = "partition"
let start_key = "start"
let end_key = "end"

let set_metadata_int (v : llvalue) (key : string) (i : int) =
  let kind = mdkind_id context key in
  let s = mdstring context (string_of_int i) in
  let m = mdnode context [| s |] in
  set_metadata v kind m

let get_metadata_int (v : llvalue) (key : string) : int option =
  let kind = mdkind_id context key in
  match (metadata v kind) with
  | Some m ->
    begin match (get_mdstring (Array.get (get_mdnode_operands m) 0)) with
    | Some s -> clear_metadata v kind; Some (int_of_string s)
    | None -> failwith ("Expected metadata string for key: " ^ key)
    end
  | None -> None

let add_metadata (placements : placement ValueMap.t) (v : llvalue) =
  match ValueMap.find_opt v placements with
  | Some p ->
    set_metadata_int v partition_key p.partition;
    set_metadata_int v start_key p.start_time;
    set_metadata_int v end_key p.end_time;
  | None -> ()

let emit_intermediate_llvm filename (md : llmodule) (placements : placement ValueMap.t) =
  iter_functions (iter_blocks (iter_instrs (add_metadata placements))) md;
  print_module (filename ^ "_intermediate.ll") md

let consume_metadata (placements : placement ValueMap.t ref) (v : llvalue) =
  let p = get_metadata_int v partition_key in
  let s = get_metadata_int v start_key in
  let e = get_metadata_int v end_key in
  match (p, s, e) with
  | (Some p', Some s', Some e') ->
    let placement = { partition = p'; start_time = s'; end_time = e';} in
    placements := ValueMap.add v placement !placements
  | _ -> ()

let consume_intermediate_llvm instrs_per_block : placement ValueMap.t =
  let placements = ref ValueMap.empty in
  List.iter (List.iter (consume_metadata placements)) instrs_per_block;
  !placements
