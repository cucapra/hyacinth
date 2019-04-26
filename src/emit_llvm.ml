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
let void_pt_type = pointer_type void_type
let int_type = i32_type context
let float_type = float_type context
let double_type = double_type context
let llvm_module = create_module context "new_module"
let init_name = "init"
let send_name = "send"
let receive_name = "receive"
let comms_id = ref 0

let format_partition (p, (t1, t2)) =
  (string_of_int p) ^ ", ("  ^ (string_of_int t1) ^ ", " ^ (string_of_int t2) ^ ")"

let set_metadata inst (t1, t2) =
  let s_id = mdkind_id context "start" in
  let e_id = mdkind_id context "end" in
  let s = mdstring context (string_of_int t1) in
  let e = mdstring context (string_of_int t2) in
  set_metadata inst s_id s;
  set_metadata inst e_id e

let new_comms_id () : llvalue =
  let id = const_int int_type (!comms_id) in
  comms_id := !comms_id + 1;
  id

let call_init builder =
  let callee = begin match lookup_function init_name llvm_module with
  | Some callee -> callee
  | None -> failwith "unknown function referenced"
  end in
  build_call callee [||] "" builder

let call_send value (to_partition : int) id builder ctx =
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
  let args = [| double; destination; id; ctx |] in
  build_call callee args "" builder

let call_receive name (from_partition : int) id  builder ctx =
  let callee = match lookup_function receive_name llvm_module with
  | Some callee -> callee
  | None -> failwith "unknown function referenced"
  in
  let source = const_int int_type from_partition in
  let args = [| source; id; ctx |] in
  build_call callee args name builder

let declare_external_functions () =
  (* declare init, send and receive *)
  let init_t = function_type void_type [||] in
  ignore (declare_function init_name init_t llvm_module);
  let send_t = function_type void_type [| double_type; int_type; int_type; void_pt_type |] in
  ignore (declare_function send_name send_t llvm_module);
  let receive_t = function_type double_type [| int_type; int_type; void_pt_type |] in
  ignore (declare_function receive_name receive_t llvm_module)

let replace_operands inst parent partition builder ctx find_partition func_map instr_map =
  let replace_op idx =
    let op = operand inst idx in
    match (InstMap.find_opt op instr_map) with
    | Some new_op ->
      let op_partition = find_partition op in
      if partition != op_partition then
        (print_endline "different parititions!";
        let op_key = (op_partition, parent) in
        let op_builder = NewFunctionMap.find op_key !func_map in
        let id = new_comms_id () in
        let receive = call_receive receive_name op_partition id builder ctx in
        let _ = call_send new_op partition id op_builder ctx in
        set_operand inst idx receive)
      else
        (print_endline "same parititions!";
        set_operand inst idx new_op)
    | None -> ()
  in
  let arity = num_operands inst in
  let arity_range = Core.List.range 0 arity in
  List.iter replace_op arity_range

let emit_llvm (dfg : partitioning) ((_md, llvm_to_ast) : (llmodule * (llvalue * com) list)) (node_map : node ComMap.t) =
  let partition_for_com (c : com) =
    let node = ComMap.find c node_map in
    let (_, p, (t1, t2)) = List.find (fun (n, _, _) -> node == n) dfg in
    (p, (t1, t2))
  in
  let llvm_to_partition = List.map (fun (v, c) -> (v, partition_for_com c)) llvm_to_ast in
  let new_funs = ref NewFunctionMap.empty in
  let insts_map = ref InstMap.empty in
  declare_external_functions ();
  let fun_type = function_type void_type [||] in
  let new_name = "harness_fun" in
  let part_fun = define_function new_name fun_type llvm_module in
  let fun_begin = instr_begin (entry_block part_fun) in
  let builder = builder_at context fun_begin in
  let ctx = call_init builder in

  let add_instruction (v, (p, ts)) =
    let builder_from_parent parent =
      let key = (p, parent) in
      let builder_opt = NewFunctionMap.find_opt key !new_funs in
      match builder_opt with
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
    let find_partition op =
      let pair_opt = List.find_opt (fun (v, _) -> v == op) llvm_to_ast in
      match pair_opt with
      | Some (_, c) -> let (p, _) = partition_for_com c in p
      | None -> p
    in
    match (classify_value v) with
    | Instruction op ->
      let parent = block_parent (instr_parent v) in
      let builder = builder_from_parent parent in
      begin match (op : Opcode.t) with
      | Ret ->
        let call = call_send (operand v 0) (-1) (new_comms_id ()) builder ctx in
        set_metadata call ts;
        insts_map := InstMap.add v call !insts_map;
        replace_operands call parent p builder ctx find_partition new_funs !insts_map;
      | _ ->
        let clone = instr_clone v in
        set_metadata clone ts;
        insts_map := InstMap.add v clone !insts_map;
        replace_operands clone parent p builder ctx find_partition new_funs !insts_map;
        insert_into_builder clone "" builder
      end
    | Argument ->
      let builder = builder_from_parent (param_parent v) in
      let call = call_receive "argument" (-1) (new_comms_id ()) builder ctx in
      insts_map := InstMap.add v call !insts_map
    | _ -> failwith "Not intruction or argument"
  in
  List.iter add_instruction llvm_to_partition;
  NewFunctionMap.iter (fun _ b -> ignore (build_ret_void b)) !new_funs;
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