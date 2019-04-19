open Dfg
open Ast
open Partition
open Llvm

let compare_partition_funs (p1, f1) (p2, f2) =
  let same_partitions = compare p1 p2 in
  if same_partitions != 0 then same_partitions else compare f1 f2

module NewFunctionMap =
  Map.Make(struct type t = int * llvalue;; let compare = compare_partition_funs end)

module InstMap =
  Map.Make(struct type t = llvalue;; let compare = compare end)

let context = global_context ()
let void_type = void_type context
let int_type = i32_type context
let float_type = float_type context
let double_type = double_type context
let llvm_module = create_module context "new_module"
let send_name = "send"
let receive_name = "receive"

let format_partition (p, (t1, t2)) =
  (string_of_int p) ^ ", ("  ^ (string_of_int t1) ^ ", " ^ (string_of_int t2) ^ ")"

let set_metadata inst (t1, t2) =
  let s_id = mdkind_id context "start" in
  let e_id = mdkind_id context "end" in
  let s = mdstring context (string_of_int t1) in
  let e = mdstring context (string_of_int t2) in
  set_metadata inst s_id s;
  set_metadata inst e_id e

let call_send (value : llvalue) (to_partition : int) builder =
  let double = match classify_type (type_of value) with
  | TypeKind.Double -> value
  | _ ->
    print_endline ("inserting dummy 0 send for non-double: " ^ string_of_llvalue value);
    const_float double_type 0.
  in
  let callee = begin match lookup_function send_name llvm_module with
  | Some callee -> callee
  | None -> failwith "unknown function referenced"
  end in
  let destination = const_int int_type to_partition in
  let args = [| double; destination |] in
  build_call callee args "" builder

let call_receive name (from_partition : int) builder =
  let callee = match lookup_function receive_name llvm_module with
  | Some callee -> callee
  | None -> failwith "unknown function referenced"
  in
  let source = const_int int_type from_partition in
  let args = [| source |] in
  build_call callee args name builder

let declare_external_functions () =
  (* declare send and receive *)
  let send_t = function_type void_type [| double_type; int_type |] in
  let _ = declare_function send_name send_t llvm_module in
  let receive_t = function_type double_type [| int_type |] in
  let _ = declare_function receive_name receive_t llvm_module in ()

let replace_operands inst map =
  let arity = num_operands inst in
  let arity_range = Core.List.range 0 arity in

  let replace_op idx =
    let current = operand inst idx in
    let new_opt = InstMap.find_opt current map in
    match new_opt with
    | Some new_inst -> set_operand inst idx new_inst
    | None -> ()
  in
  List.iter replace_op arity_range

let emit_llvm (dfg : partitioning) (llvm_to_ast : (llvalue * com) list) (node_map : node ComMap.t) =
  let partition_for_com (c : com) =
    let node = ComMap.find c node_map in
    let (_, p, (t1, t2)) = List.find (fun (n, _, _) -> node == n) dfg in
    (p, (t1, t2))
  in
  let llvm_to_partition = List.map (fun (v, c) -> (v, partition_for_com c)) llvm_to_ast in

  let new_funs = ref NewFunctionMap.empty in
  let insts_map = ref InstMap.empty in
  declare_external_functions ();

  let add_instruction (v, (p, ts)) =
    let builder_from_parent parent =
      let key = (p, parent) in
      let insts_opt = NewFunctionMap.find_opt key !new_funs in
      match insts_opt with
      | Some b -> b
      | None ->
        let fun_type = function_type void_type [||] in
        let new_name = (value_name parent) ^ "_" ^ (string_of_int p) in
        let part_fun = define_function new_name fun_type llvm_module in
        let fun_begin = instr_begin (entry_block part_fun) in
        let builder = builder_at context fun_begin in
        new_funs := NewFunctionMap.add key builder !new_funs;
        builder
    in
    match (classify_value v) with
    | Instruction op ->
      let builder = builder_from_parent (block_parent (instr_parent v)) in
      begin match (op : Opcode.t) with
      | Ret ->
        let call = call_send (operand v 0) (-1) builder in
        set_metadata call ts;
        insts_map := InstMap.add v call !insts_map;
        replace_operands call !insts_map;
      | _ ->
        let clone = instr_clone v in
        set_metadata clone ts;
        insts_map := InstMap.add v clone !insts_map;
        replace_operands clone !insts_map;
        insert_into_builder clone "" builder
      end
    | Argument ->
      let builder = builder_from_parent (param_parent v) in
      let call = call_receive "argument" (-1) builder in
      insts_map := InstMap.add v call !insts_map
    | _ ->
      failwith "Not intruction or argument"
  in
  List.iter add_instruction llvm_to_partition;
  print_module "llvm_out.ll" llvm_module

(*

val build_call : llvalue ->
       llvalue array -> string -> llbuilder -> llvalue
build_call fn args name b creates a %name = call %fn(args...) instruction at the
 position specified by the instruction builder b. See the method
 llvm::LLVMBuilder::CreateCall.

val set_metadata : llvalue -> llmdkind -> llvalue -> unit

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
builder_at ip creates an instruction builder positioned at ip. See the constructor for llvm::LLVMBuilder.  *)