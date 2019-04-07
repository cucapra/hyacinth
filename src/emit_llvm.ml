open Dfg
open Ast
open Partition

let format_partition (p, (t1, t2)) =
  (string_of_int p) ^ ", ("  ^ (string_of_int t1) ^ ", " ^ (string_of_int t2) ^ ")"

let emit_llvm (dfg : partitioning) (llvm_to_ast : (Llvm.llvalue * com) list) (node_map : node ComMap.t) =
  let partition_for_com (c : com) =
    let node = ComMap.find c node_map in
    let (_, p, (t1, t2)) = List.find (fun (n, _, _) -> node == n) dfg in
    (p, (t1, t2))
  in
  let partitions = List.map (fun (v, c) -> (v, partition_for_com c)) llvm_to_ast in
  let sort_by (_, (p1, _)) (_, (p2, _)) = compare p1 p2 in
  let sorted = List.stable_sort sort_by partitions in

  let context = (Llvm.create_context ()) in
  let new_module = Llvm.create_module context "new_module" in
  let void = (Llvm.void_type context) in
  let fun_type = Llvm.function_type void (Array.make 3 (Llvm.double_type context)) in
  let part_fun = Llvm.define_function "partition" fun_type new_module in
  let fun_begin = Llvm.instr_begin (Llvm.entry_block part_fun) in
  let builder = Llvm.builder_at context fun_begin in

  let add_instruction (v, p) =
    Printf.printf "%s -> %s\n" (format_partition p) (Llvm.string_of_llvalue v);
    match (Llvm.classify_value v) with
    | Instruction _ ->
      Printf.printf "parent: %s\n" (Llvm.string_of_llvalue (Llvm.value_of_block (Llvm.instr_parent v)));
      Llvm.insert_into_builder (Llvm.instr_clone v) "" builder;
    | _ -> ()
  in

  List.iter add_instruction sorted;
  Llvm.print_module "llvm_out.ll" new_module

(*
val define_function : string -> lltype -> llmodule -> llvalue
val create_module : llcontext -> string -> llmodule
val create_context : unit -> llcontext
val function_type : lltype -> lltype array -> lltype
val print_module : string -> llmodule -> unit

val insert_into_builder : llvalue -> string -> llbuilder -> unit
insert_into_builder i name b inserts the specified instruction i at the position specified by the instruction builder b. See the method llvm::LLVMBuilder::Insert.

val builder_at_end : llcontext -> llbasicblock -> llbuilder
builder_at_end bb creates an instruction builder positioned at the end of the basic block bb. See the constructor for llvm::LLVMBuilder.

val function_begin : llmodule -> (llmodule, llvalue) llpos

val builder_at : llcontext ->
       (llbasicblock, llvalue) llpos -> llbuilder
builder_at ip creates an instruction builder positioned at ip. See the constructor for llvm::LLVMBuilder.
*)