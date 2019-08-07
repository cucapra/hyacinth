open Llvm

type target =
  | PThreads
  | BSGManycore

let target_of_string (s : string) : target =
  match s with
  | "pthreads" -> PThreads
  | "bsg_manycore" -> BSGManycore
  | _ -> failwith ("unknown target: " ^ s)

module ValueSet =
  Set.Make(struct type t = llvalue;; let compare = compare end)

module ValueMap =
  Map.Make(struct type t = llvalue;; let compare = compare end)

let compare_partition_values (p1, v1) (p2, v2) =
  let same_partitions = compare p1 p2 in
  if same_partitions != 0 then same_partitions else compare v1 v2

module PartitionValueMap =
  Map.Make(struct type t = int * llvalue;; let compare = compare_partition_values end)

module PartitionBlockMap =
  Map.Make(struct type t = int * llbasicblock;; let compare = compare_partition_values end)

type valueset = ValueSet.t ref

type maps = {
  instruction_map : llvalue ValueMap.t ref;
  arg_map : llvalue PartitionValueMap.t ref;
  block_map : llbasicblock PartitionBlockMap.t ref;
  global_map : llvalue ValueMap.t ref;
  global_last_map : int ValueMap.t ref;
  fun_map : (llbuilder * llvalue * valueset) ValueMap.t ref;
}

type mappings = maps ref

let init_mappings (_ : unit) : mappings =
  ref {
    instruction_map = ref ValueMap.empty;
    arg_map = ref PartitionValueMap.empty;
    block_map = ref PartitionBlockMap.empty;
    global_map = ref ValueMap.empty;
    global_last_map = ref ValueMap.empty;
    fun_map = ref ValueMap.empty;
  }

let add_instr (m : mappings) (k : llvalue) (v : llvalue) : unit =
  !m.instruction_map := ValueMap.add k v !(!m.instruction_map)

let get_instr (m : mappings) (k : llvalue) : llvalue =
  ValueMap.find k !(!m.instruction_map)

let get_instr_opt (m : mappings) (k : llvalue) : llvalue option =
  ValueMap.find_opt k !(!m.instruction_map)

let add_arg (m : mappings) (p : int) (k : llvalue) (v : llvalue) : unit =
  !m.arg_map := PartitionValueMap.add (p, k) v !(!m.arg_map)

let get_arg_opt (m : mappings) (p : int) (k : llvalue) : llvalue option =
  PartitionValueMap.find_opt (p, k) !(!m.arg_map)

let add_block (m : mappings) (p : int) (k : llbasicblock) (v : llbasicblock) : unit =
  !m.block_map := PartitionBlockMap.add (p, k) v !(!m.block_map)

let get_block (m : mappings) (p : int) (k : llbasicblock) : llbasicblock =
  PartitionBlockMap.find (p, k) !(!m.block_map)

let add_global (m : mappings) (k : llvalue) (v : llvalue) =
  !m.global_map := ValueMap.add k v !(!m.global_map)

let iter_mapped_globals (m : mappings) (f : llvalue -> llvalue -> unit) =
  ValueMap.iter f !(!m.global_map)

let set_global_last_access (m : mappings) (g : llvalue) (p : int) : unit =
  !m.global_last_map := ValueMap.add g p !(!m.global_last_map)

let get_global_last_access_opt (m : mappings) (g : llvalue) : int option =
  ValueMap.find_opt g !(!m.global_last_map)

let clear_global_last_access (m : mappings) : unit =
  !m.global_last_map := ValueMap.empty

let add_fun (m : mappings) (k : llvalue) (b : llbuilder) (ctx: llvalue) (new_fun : llvalue) : unit =
  let vs = ref (ValueSet.singleton new_fun) in
  !m.fun_map := ValueMap.add k (b, ctx, vs) !(!m.fun_map)

let get_fun (m : mappings) (k : llvalue) : (llbuilder * llvalue * valueset) =
  ValueMap.find k !(!m.fun_map)

let get_fun_opt (m : mappings) (k : llvalue) : (llbuilder * llvalue * valueset) option =
  ValueMap.find_opt k !(!m.fun_map)

let iter_funs (m : mappings) (f: llvalue -> (llbuilder * llvalue * valueset) -> unit) : unit =
  ValueMap.iter f !(!m.fun_map)

let add_value (vs: valueset) (v : llvalue) : unit =
  vs := ValueSet.add v !vs

let to_list (vs: valueset) : llvalue list =
  ValueSet.elements !vs

let size (vs: valueset) : int =
  ValueSet.cardinal !vs
