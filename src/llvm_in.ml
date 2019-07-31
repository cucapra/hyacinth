open Llvm
open Llvm_shared

(* Some control flow instructions do not need to be assigned *)
let included_instrs (acc : llvalue list) (v : llvalue) =
  match (instr_opcode v) with
  | Br -> acc
  | _ -> v::acc

(* Each block should be partitioned seperately *)
let llvm_to_block_lists (md : llmodule) : (llvalue list list) =
  let f_block acc_b (block : llbasicblock) : (llvalue list list) =
    let block_instrs = List.rev (fold_left_instrs included_instrs [] block) in
    block_instrs::acc_b
  in
  let f_function acc_f (fn : llvalue) : (llvalue list list) =
    if include_function fn then
      List.rev (fold_left_blocks f_block acc_f fn)
    else
      acc_f
  in
  fold_left_functions f_function [] md

let parse_llvm (_llvm_in : in_channel) : (llmodule * llvalue list list) =
  let context = global_context () in
  let buffer = MemoryBuffer.of_stdin () in
  let md = Llvm_bitreader.parse_bitcode context buffer in
  let instrs_per_block = llvm_to_block_lists md in

(*   List.iter (fun ls -> print_endline "block: ";
    List.iter (fun v -> print_endline (string_of_llvalue v)) ls)
   instrs_per_block; *)
  (md, instrs_per_block)
