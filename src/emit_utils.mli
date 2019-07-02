open Llvm

type mappings
type valueset

type target =
  | PThreads
  | BSGManycore

val target_of_string : string -> target

(* Make a new empty state. *)
val init_mappings : unit -> mappings

val add_instr : mappings -> llvalue -> llvalue -> unit
val get_instr :  mappings -> llvalue -> llvalue
val get_instr_opt :  mappings -> llvalue -> (llvalue option)

val add_arg : mappings -> int -> llvalue -> llvalue -> unit
val get_arg_opt :  mappings -> int -> llvalue -> llvalue option

val add_block : mappings -> int -> llbasicblock -> llbasicblock -> unit
val get_block : mappings -> int -> llbasicblock -> llbasicblock

val set_global_last_access : mappings -> llvalue -> int -> unit
val get_global_last_access_opt : mappings -> llvalue -> int option
val clear_global_last_access  : mappings -> unit

(* (m : mappings) (k : llvalue) (b : llbuilder) (ctx: llvalue) (new_fun : llvalue) *)
val add_fun : mappings -> llvalue -> llbuilder -> llvalue -> llvalue -> unit
val get_fun : mappings -> llvalue -> (llbuilder * llvalue * valueset)
val get_fun_opt : mappings -> llvalue -> ((llbuilder * llvalue * valueset) option)
val iter_funs : mappings -> (llvalue -> (llbuilder * llvalue * valueset) -> unit) -> unit

val add_value : valueset -> llvalue -> unit
val to_list : valueset -> llvalue list
val size : valueset -> int
