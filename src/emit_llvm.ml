open Dfg
open Ast
open Partition
open Llvm

let compare_partition_funs (p1, f1) (p2, f2) =
  let same_partitions = compare p1 p2 in
  if same_partitions != 0 then same_partitions else compare f1 f2

module NewFunctionMap =
  Map.Make(struct type t = int * llvalue;; let compare = compare_partition_funs end)

module ValueMap =
  Map.Make(struct type t = llvalue;; let compare = compare end)

module ValueSet =
  Set.Make(struct type t = llvalue;; let compare = compare end)

let context = global_context ()
let void_type = void_type context
let void_pt_type = pointer_type (i8_type context)
let int_type = i32_type context
let float_type = float_type context
let double_type = double_type context
let const_i32 = const_int int_type
let llvm_module = create_module context "new_module"
let init_name = "init"
let send_name = "send"
let receive_name = "receive"
let replace_name = "call_partitioned_functions"
let join_name = "join_partitioned_functions"
let comms_id = ref 0

let set_metadata inst (t1, t2) =
  let s_id = mdkind_id context "start" in
  let e_id = mdkind_id context "end" in
  let s = mdstring context (string_of_int t1) in
  let e = mdstring context (string_of_int t2) in
  set_metadata inst s_id s;
  set_metadata inst e_id e

let lookup_function_in name md =
  let callee = match lookup_function name md with
  | Some callee -> callee
  | None -> failwith ("unknown function referenced: " ^ name)
  in
  callee

let new_comms_id () : llvalue =
  let id = const_i32 (!comms_id) in
  comms_id := !comms_id + 1;
  id

let call_init builder md =
  let callee = lookup_function_in init_name md in
  build_call callee [||] "" builder

let call_send value (to_partition : int) id builder ctx =
  let double = match classify_type (type_of value) with
  | TypeKind.Double -> value
  | _ ->
    print_endline ("inserting dummy 0 send for non-double: " ^ string_of_llvalue value);
    const_float double_type 0.
  in
  let callee = lookup_function_in send_name llvm_module in
  let destination = const_i32 to_partition in
  let args = [| double; destination; id; ctx |] in
  build_call callee args "" builder

let call_receive name (from_partition : int) id  builder ctx =
  let callee = lookup_function_in receive_name llvm_module in
  let source = const_i32 from_partition in
  let args = [| source; id; ctx |] in
  build_call callee args name builder

let declare_external_functions replace_md =
  (* declare init, send, receive, replace, join *)
  let send_t = function_type void_type [| double_type; int_type; int_type; void_pt_type |] in
  ignore (declare_function send_name send_t llvm_module);
  ignore (declare_function send_name send_t replace_md);
  let receive_t = function_type double_type [| int_type; int_type; void_pt_type |] in
  ignore (declare_function receive_name receive_t llvm_module);
  ignore (declare_function receive_name receive_t replace_md);
  let init_t = function_type void_pt_type [||] in
  ignore (declare_function init_name init_t replace_md);
  let replace_funs_t = pointer_type (pointer_type (function_type void_type [| void_pt_type |])) in
  let replace_t = function_type void_pt_type [| int_type; replace_funs_t; void_pt_type |] in
  ignore (declare_function replace_name replace_t replace_md);
  let join_t = function_type void_type [| int_type; void_pt_type |] in
  ignore (declare_function join_name join_t replace_md);

  let declare_function (f : llvalue) =
    if (is_declaration f) then
      ignore (declare_function (value_name f) (return_type (type_of f)) llvm_module)
  in
  iter_functions declare_function replace_md;

  let declare_global (g : llvalue) =
    ignore (declare_global (return_type (type_of g)) (value_name g) llvm_module)
  in
  iter_globals declare_global replace_md

let replace_operands inst parent partition builder find_partition func_map instr_map =
  let replace_op idx =
    let op = operand inst idx in
    match (ValueMap.find_opt op instr_map) with
    | Some new_op ->
      let op_partition = find_partition op in
      if partition != op_partition then
        let op_key = (op_partition, parent) in
        let op_builder, op_fun = NewFunctionMap.find op_key !func_map in
        let id = new_comms_id () in
        let ctx = param op_fun 0 in
        let receive = call_receive receive_name op_partition id builder ctx in
        let _ = call_send new_op partition id op_builder ctx in
        set_operand inst idx receive
      else
        set_operand inst idx new_op
    | None -> ()
  in
  let arity = num_operands inst in
  let arity_range = Core.List.range 0 arity in
  List.iter replace_op arity_range

let builders_from_parent parent p new_funs replace_funs replace_md =
  let new_key = (p, parent) in
  let replace_opt = ValueMap.find_opt parent !replace_funs in
  let new_builder_opt = NewFunctionMap.find_opt new_key !new_funs in

  let new_builder, new_fun = match new_builder_opt with
  | Some bs -> bs
  | None ->
    let fun_type = function_type void_type [| void_pt_type |] in
    let new_name = (value_name parent) ^ "_" ^ (string_of_int p) in
    let part_fun = define_function new_name fun_type llvm_module in
    let _ = declare_function new_name fun_type replace_md in
    let fun_begin = instr_begin (entry_block part_fun) in
    let builder = builder_at context fun_begin in
    new_funs := NewFunctionMap.add new_key (builder, part_fun) !new_funs;
    builder, part_fun
  in

  let replace_builder, ctx, _ = match replace_opt with
  | Some (b, c, s) ->
    s := ValueSet.add new_fun !s;
    (b, c, s)
  | None ->
    let fun_type = return_type (type_of parent) in
    let replace_name = "replace_" ^ (value_name parent) in
    let part_fun = define_function replace_name fun_type replace_md in
    let fun_begin = instr_begin (entry_block part_fun) in
    let builder = builder_at context fun_begin in
    let ctx = call_init builder replace_md in
    let new_fun_set = ref (ValueSet.singleton new_fun) in
    replace_funs := ValueMap.add parent (builder, ctx, new_fun_set) !replace_funs;
    builder, ctx, new_fun_set
  in

  (new_builder, new_fun, replace_builder, ctx)

let emit_llvm (dfg : partitioning) ((replace_md, llvm_to_ast) : (llmodule * (llvalue * com) list)) (node_map : node ComMap.t) =
  set_data_layout "e-m:o-i64:64-f80:128-n8:16:32:64-S128" llvm_module;
  let partition_for_com (c : com) =
    let node = ComMap.find c node_map in
    let (_, p, (t1, t2)) = List.find (fun (n, _, _) -> node == n) dfg in
    (p, (t1, t2))
  in
  let llvm_to_partition = List.map (fun (v, c) -> (v, partition_for_com c)) llvm_to_ast in
  let new_funs = ref NewFunctionMap.empty in
  let replace_funs = ref ValueMap.empty in
  let insts_map = ref ValueMap.empty in
  declare_external_functions replace_md;

  let add_instruction (v, (p, ts)) =
    let find_partition op =
      let pair_opt = List.find_opt (fun (v, _) -> v == op) llvm_to_ast in
      match pair_opt with
      | Some (_, c) -> let (p, _) = partition_for_com c in p
      | None -> p
    in
    match (classify_value v) with
    | Instruction op ->
      let parent = block_parent (instr_parent v) in
      let new_builder, new_fun, replace_builder, r_ctx = builders_from_parent parent p new_funs replace_funs replace_md in
      let ctx = param new_fun 0 in
      begin match (op : Opcode.t) with
      | Ret ->
        let id = new_comms_id () in
        let call = call_send (operand v 0) (-1) id new_builder ctx in
        let return = call_receive "return" (-1) id replace_builder r_ctx in
        let _ = build_ret return replace_builder in
        set_metadata call ts;
        insts_map := ValueMap.add v call !insts_map;
        replace_operands call parent p new_builder find_partition new_funs !insts_map;
      | _ ->
        let clone = instr_clone v in
        set_metadata clone ts;
        insts_map := ValueMap.add v clone !insts_map;
        replace_operands clone parent p new_builder find_partition new_funs !insts_map;
        insert_into_builder clone "" new_builder
      end
    | Argument ->
      let parent = param_parent v in
      let new_builder, new_fun, replace_builder, r_ctx = builders_from_parent parent p new_funs replace_funs replace_md in
      let ctx = param new_fun 0 in
      let id = new_comms_id () in
      let call = call_receive "argument" (-1) id new_builder ctx in
      let _ = call_send v p id replace_builder r_ctx in
      insts_map := ValueMap.add v call !insts_map
    | _ -> failwith "Not intruction or argument"
  in
  List.iter add_instruction llvm_to_partition;
  NewFunctionMap.iter (fun _ (b, _) -> ignore (build_ret_void b)) !new_funs;
  let replace_fun old_fun (_, ctx, new_fun_set) =
    let old_name = value_name old_fun in
    let new_fun = lookup_function_in ("replace_" ^ old_name) replace_md in
    replace_all_uses_with old_fun new_fun;
    let after_init = match instr_begin (entry_block new_fun) with
    | Before v -> instr_succ v
    | At_end _ -> failwith "builder should be after init"
    in
    let builder = builder_at context after_init in
    let funs = Array.of_list (ValueSet.elements !new_fun_set) in
    let replace_funs_t = pointer_type (function_type void_type [| void_pt_type |]) in
    let funs_arg = const_array replace_funs_t funs in
    let funs_global = define_global "funs" funs_arg replace_md in
    let funs_len = Array.length funs in
    let indices = [| const_i32 0; const_i32 0|] in
    let gep = build_in_bounds_gep funs_global indices "funs" builder in
    let replace = lookup_function_in replace_name replace_md in
    let args = [| const_i32 funs_len; gep; ctx |] in
    let threads = build_call replace args "threads" builder in

    let before_ret = match instr_end (entry_block new_fun) with
    | After v -> Before v
    | At_start _ -> failwith "builder should be before return"
    in
    let end_builder = builder_at context before_ret in
    let join = lookup_function_in join_name replace_md in
    ignore (build_call join [| const_i32 funs_len; threads |] "" end_builder)
  in
  ValueMap.iter replace_fun !replace_funs;
  print_module "llvm_out.ll" llvm_module;
  print_module "llvm_replace.ll" replace_md



(*
  val builder_at : llcontext ->
       (llbasicblock, llvalue) llpos -> llbuilder

val define_global : string -> llvalue -> llmodule -> llvalue
  val build_gep : llvalue ->
       llvalue array -> string -> llbuilder -> llvalue


val param : llvalue -> int -> llvalue

val delete_function : llvalue -> unit
delete_function f destroys the function f. See the method llvm::Function::eraseFromParent.

val set_value_name : string -> llvalue -> unit
set_value_name n v sets the name of the value v to n. See the method llvm::Value::setName.


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
builder_at ip creates an instruction builder positioned at ip. See the constructor for llvm::LLVMBuilder.

*)