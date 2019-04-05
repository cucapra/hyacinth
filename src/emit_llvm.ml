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
  let sorted = List.stable_sort (fun (_, (p1, _)) (_, (p2, _)) -> compare p1 p2) partitions in
  List.iter (fun (v, p) -> Printf.printf "%s -> %s\n" (format_partition p) (Llvm.string_of_llvalue v)) sorted;