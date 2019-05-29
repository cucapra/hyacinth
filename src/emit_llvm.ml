open Dfg
open Ast
open Partition
open Llvm
open Llvm_shared
open Emit_utils

let context = global_context ()
let void_type = void_type context
let void_pt_type = pointer_type (i8_type context)
let int_type = i32_type context
let int64_type = i64_type context
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
let host_id = -1

let set_metadata inst placement  =
  let s_id = mdkind_id context "start" in
  let e_id = mdkind_id context "end" in
  let s = mdstring context (string_of_int placement.start_time) in
  let e = mdstring context (string_of_int placement.end_time) in
  set_metadata inst s_id s;
  set_metadata inst e_id e

let lookup_function_in name md =
  let callee = match lookup_function name md with
  | Some callee -> callee
  | None -> failwith ("unknown function referenced: " ^ name)
  in
  callee

let builder_and_fun partition block mappings =
  let new_block = get_block mappings partition block in
  let new_builder = builder_at_end context new_block in
  let new_fun = block_parent new_block in
  (new_builder, new_fun)

let new_comms_id () : llvalue =
  let id = const_i32 (!comms_id) in
  comms_id := !comms_id + 1;
  id

let call_init builder md =
  let init = lookup_function_in init_name md in
  build_call init [||] "" builder

let value_to_value_ptr value builder =
  let ty = (type_of value) in
  let value_ptr, to_replace = match classify_type ty with
  | TypeKind.Double | TypeKind.Integer | TypeKind.Pointer ->
    let alloca = build_alloca ty "send_alloca" builder in
    let store = build_store value alloca builder in
    let bitcast = build_bitcast alloca void_pt_type "send_cast" builder in
    bitcast, store
  | _ ->
    print_endline ("should bitcast send for: " ^ (print_type ty) ^ ", " ^  string_of_llvalue value);
    value, value
  in
  let size = size_of ty in
  (value_ptr, size, to_replace)

let call_send value (to_partition : int) id builder ctx =
  let value_ptr, size, to_replace = value_to_value_ptr value builder in
  let send = lookup_function_in send_name llvm_module in
  let destination = const_i32 to_partition in
  let args = [| value_ptr; size;  destination; id; ctx |] in
  build_call send args "" builder |> ignore;
  to_replace

let call_receive name (ty : lltype) (from_partition : int) id  builder ctx =
  let receive = lookup_function_in receive_name llvm_module in
  let size = size_of ty in
  let args = [| size; (const_i32 from_partition); id; ctx |] in
  let value = build_call receive args name builder in
  let bitcast = build_bitcast value (pointer_type ty) "bitcast" builder in
  build_load bitcast "receive_load" builder

let broadcast_value value from_partition branches block block_map builder ctx =
  let value_ptr, size, _ = value_to_value_ptr value builder in
  let send_fun = lookup_function_in send_name llvm_module in
  let insert_comms (p, br) =
    if (p != from_partition) then begin
      let id = new_comms_id () in
      let destination = const_i32 p in
      let args = [| value_ptr; size;  destination; id; ctx |] in
      build_call send_fun args "" builder |> ignore;

      let dest_builder, _ = builder_and_fun p block block_map in
      let receive = call_receive receive_name (type_of value) from_partition id dest_builder ctx in
      set_operand br 0 receive
    end
  in
  List.iter insert_comms branches

let declare_external_functions replace_md =
  (* declare init, send, receive, replace, join *)
  let send_t = function_type void_type [| void_pt_type; int64_type; int_type; int_type; void_pt_type |] in
  declare_function send_name send_t llvm_module |> ignore;
  declare_function send_name send_t replace_md |> ignore;
  let receive_t = function_type void_pt_type [| int64_type; int_type; int_type; void_pt_type |] in
  declare_function receive_name receive_t llvm_module |> ignore;
  declare_function receive_name receive_t replace_md |> ignore;
  let init_t = function_type void_pt_type [||] in
  declare_function init_name init_t replace_md |> ignore;
  let replace_funs_t = pointer_type (pointer_type (function_type void_type [| void_pt_type |])) in
  let replace_t = function_type void_pt_type [| int_type; replace_funs_t; void_pt_type |] in
  declare_function replace_name replace_t replace_md |> ignore;
  let join_t = function_type void_type [| int_type; void_pt_type |] in
  declare_function join_name join_t replace_md |> ignore;

  let declare_function (f : llvalue) =
    if (is_declaration f) then
      declare_function (value_name f) (return_type (type_of f)) llvm_module |> ignore
  in
  iter_functions declare_function replace_md;

  let declare_global (g : llvalue) =
    declare_global (return_type (type_of g)) (value_name g) llvm_module |> ignore
  in
  iter_globals declare_global replace_md

let builders_from_block block p mappings replace_md =
  let new_builder, new_fun = builder_and_fun p block mappings in
  let parent = block_parent block in
  let replace_opt = get_fun_opt mappings parent in
  let replace_builder, ctx = match replace_opt with
  | Some (b, c, vs) ->
    add_value vs new_fun;
    (b, c)
  | None ->
    let fun_type = return_type (type_of parent) in
    let replace_name = "replace_" ^ (value_name parent) in
    let part_fun = define_function replace_name fun_type replace_md in
    let fun_begin = instr_begin (entry_block part_fun) in
    let builder = builder_at context fun_begin in
    let ctx = call_init builder replace_md in
    add_fun mappings parent builder ctx new_fun;
    (builder, ctx)
  in

  (new_builder, new_fun, replace_builder, ctx)

let builder_before_last_instr block =
  let before_last = match instr_end block with
  | After v -> Before v
  | At_start _ -> failwith "builder should be before last instruction"
  in
  builder_at context before_last

let replace_operand idx inst block partition builder find_partition mappings replace_md =
  let op = operand inst idx in
  match (get_instr_opt mappings op) with
  | Some new_op ->
    (* If the operand is on a different partition, insert send/receive *)
    let op_partition = find_partition op in
    if partition != op_partition then
      let op_builder, op_fun = builder_and_fun op_partition block mappings in
      let id = new_comms_id () in
      let ctx = param op_fun 0 in
      let receive = call_receive receive_name (type_of new_op) op_partition id builder ctx in
      call_send new_op partition id op_builder ctx |> ignore;
      set_operand inst idx receive
    else
      set_operand inst idx new_op
  | None ->
    (* If the operand is an argument, insert send/receive from host *)
    begin match (classify_value op) with
    | Argument ->
      begin match (get_arg_opt mappings partition op) with
      | Some new_arg -> set_operand inst idx new_arg
      | None ->
        let new_builder, new_fun, replace_builder, r_ctx = builders_from_block block partition mappings replace_md in
        let ctx = param new_fun 0 in
        if (op != ctx) then (
          let id = new_comms_id () in
          let call = call_receive "argument" (type_of op) host_id id new_builder ctx in
          call_send op partition id replace_builder r_ctx |> ignore;
          add_arg mappings partition op call;
          set_operand inst idx call)
      end
    | _ -> ()
    end

let replace_operands inst block partition builder find_partition mappings replace_md =
  let replace_op idx =
     replace_operand idx inst block partition builder find_partition mappings replace_md
  in
  let arity = num_operands inst in
  let arity_range = Core.List.range 0 arity in
  List.iter replace_op arity_range

let repair_phi_node find_partition mappings phi =
  let partition = find_partition phi in
  let map_incoming (v, block) =
    let prev_block = get_block mappings partition block in
    match (get_instr_opt mappings v) with
    | Some new_val ->
      let op_partition = find_partition v in
      let op_block = get_block mappings op_partition block in
      (* If the operand is on a different partition, insert send/receive
         on the SOURCE block, not the current block *)
      if partition != op_partition then begin
        let op_builder = builder_before_last_instr op_block in
        let prev_block_builder = builder_before_last_instr prev_block in
        let id = new_comms_id () in
        let ctx = param (block_parent op_block) 0 in
        call_send new_val partition id op_builder ctx |> ignore;
        let receive = call_receive receive_name (type_of new_val) op_partition id prev_block_builder ctx in
        (receive, op_block)
      end
      else
        (new_val, prev_block)
    | None -> (v, prev_block)
  in
  let opcode = instr_opcode phi in
  match (opcode : Opcode.t) with
  | PHI ->
    let phi' = get_instr mappings phi in
    let new_incoming = List.map map_incoming (incoming phi') in
    let builder = builder_at context (instr_begin (instr_parent phi')) in
    let new_phi = build_phi new_incoming "new_phi" builder in
    replace_all_uses_with phi' new_phi;
    delete_instruction phi'
  | _ -> ()

let clone_blocks_per_partition replace_md partitions mappings =
  (* Get all the basic blocks, and map them to new blocks per partition *)
  let per_block partition old_fun new_fun old_block =
    let new_block = if old_block == entry_block old_fun
      then entry_block new_fun
      else append_block context "l" new_fun
    in
    add_block mappings partition old_block new_block
  in

  let per_partition fn partition =
    let fun_type = function_type void_type [| void_pt_type |] in
    let new_name = (value_name fn) ^ "_" ^ (string_of_int partition) in
    let new_fun = define_function new_name fun_type llvm_module in
    declare_function new_name fun_type replace_md |> ignore;

    iter_blocks (per_block partition fn new_fun) fn
  in
  let per_function fn = List.iter (per_partition fn) partitions in
  iter_included_functions per_function replace_md

let get_nonempty_partitions (dfg : placement NodeMap.t) : int list =
  NodeMap.bindings dfg |> List.map (fun (_, p) -> p.partition) |> List.sort_uniq compare

let insert_ret_void block block_map partition =
  let builder, _ = builder_and_fun partition block block_map in
  build_ret_void builder |> ignore

let replace_fun replace_md old_fun (_, ctx, new_fun_set) =
  let old_name = value_name old_fun in
  let new_fun = lookup_function_in ("replace_" ^ old_name) replace_md in
  let return_t = return_type (return_type (type_of old_fun)) in
  replace_all_uses_with old_fun new_fun;
  let after_init = match instr_begin (entry_block new_fun) with
  | Before v -> instr_succ v
  | At_end _ -> failwith "builder should be after init"
  in
  let builder = builder_at context after_init in
  let funs = Array.of_list (to_list new_fun_set) in
  let replace_funs_t = pointer_type (function_type void_type [| void_pt_type |]) in
  let funs_arg = const_array replace_funs_t funs in
  let funs_global = define_global "funs" funs_arg replace_md in
  let funs_len = Array.length funs in
  let indices = [| const_i32 0; const_i32 0|] in
  let gep = build_in_bounds_gep funs_global indices "funs" builder in
  let replace = lookup_function_in replace_name replace_md in
  let args = [| const_i32 funs_len; gep; ctx |] in
  let threads = build_call replace args "threads" builder in

  let end_builder = builder_at_end context (entry_block new_fun) in
  let call_join _ =
    let join = lookup_function_in join_name replace_md in
    build_call join [| const_i32 funs_len; threads |] "" end_builder |> ignore
  in

  if return_t == void_type then begin
    call_join ();
    build_ret_void end_builder |> ignore
  end
  else begin
    let return = call_receive "return" return_t host_id (const_i32 host_id) end_builder ctx in
    call_join ();
    build_ret return end_builder |> ignore
  end

let set_branch_destination br destinations p block mappings =
  let per_destination (idx, dest) =
    let new_dest = get_block mappings p dest in
    set_operand br idx (value_of_block new_dest)
  in
  List.iter per_destination destinations;
  let builder, _ = builder_and_fun p block mappings in
  insert_into_builder br "" builder

let emit_llvm (dfg : placement NodeMap.t) ((replace_md, llvm_to_ast) : (llmodule * (llvalue * com) list)) (node_map : node ComMap.t) =
  print_endline "\nStarting to emit LLVM";
  set_data_layout "e-m:o-i64:64-f80:128-n8:16:32:64-S128" llvm_module;
  declare_external_functions replace_md;

  let placement_for_com c = NodeMap.find (ComMap.find c node_map) dfg in
  let partitions = get_nonempty_partitions dfg in
  let mappings = init_mappings () in

  let find_partition_opt v' =
    let pair_opt = List.find_opt (fun (x, _) -> x == v') llvm_to_ast in
    match pair_opt with
    | Some (_, c) -> Some (placement_for_com c).partition
    | None -> None
  in
  clone_blocks_per_partition replace_md partitions mappings;

  let add_instruction (v : llvalue) =
    let com_opt = List.find_opt (fun (x, _) -> x == v) llvm_to_ast in
    let com = match com_opt with
    | Some (_, com) -> com
    | None -> failwith ("failed to find com for: " ^ (string_of_llvalue v)) in
    let placement = placement_for_com com in
    let p = placement.partition in
    let find_partition v' = match find_partition_opt v' with
    | Some p' -> p'
    | None -> p
    in
    let op = instr_opcode v in
    let block = instr_parent v in
    let new_builder, new_fun, _, _ = builders_from_block block p mappings replace_md in
    let ctx = param new_fun 0 in
    begin match (op : Opcode.t) with
    | Br ->
      begin match get_branch v with
      | Some (`Conditional (v0, b1, b2)) ->
        let p0 = find_partition v0 in
        let p0_builder, _ = builder_and_fun p0 block mappings in
        let v0' = ref v0 in
        let per_partition p : (int * llvalue) =
          let br = instr_clone v in
          (* Send v0 to every core but the one it's already on *)
          if (p == p0) then begin
            replace_operand 0 br block p p0_builder find_partition mappings replace_md;
            v0' := operand br 0
          end;
          (p, br)
        in
        let branches = List.map per_partition partitions in
        broadcast_value !v0' p0 branches block mappings p0_builder ctx;

        (* Set branching destinations to mapped blocks per paritition *)
        let dests = [(1, b1); (2, b2)] in
        List.iter (fun (p, br) -> set_branch_destination br dests p block mappings) branches
      | Some (`Unconditional old_dest) ->
        let per_partition p =
          let br = instr_clone v in
          set_branch_destination br [(0, old_dest)] p block mappings
        in
        List.iter per_partition partitions
      | None -> failwith "Instruction must be branch"
      end
    | Ret ->
      (* If it's not a void return, it needs to be sent back to the host;
      there may be multiple returns per function, so we'll insert the receive
      once, later. *)
      if (num_operands v) > 0 then begin
        let ret = operand v 0 in
        let call = call_send ret host_id (const_i32 host_id) new_builder ctx in
        replace_operands call block p new_builder find_partition mappings replace_md;
      end;
      (* Insert void return at this block for all partitions *)
      List.iter (insert_ret_void block mappings) partitions
    | _ ->
      let clone = instr_clone v in
      set_metadata clone placement;
      add_instr mappings v clone;
      replace_operands clone block p new_builder find_partition mappings replace_md;
      insert_into_builder clone "" new_builder
    end
  in
  iter_included_functions (iter_blocks (iter_instrs add_instruction)) replace_md;

  let find_partition v' = match find_partition_opt v' with
  | Some p' -> p'
  | None -> failwith "No partition"
  in
  let repair_phi = repair_phi_node find_partition mappings in
  iter_included_functions (iter_blocks (iter_instrs repair_phi)) replace_md;

  iter_funs mappings (replace_fun replace_md);
  print_module "llvm_out.ll" llvm_module;
  print_module "llvm_replace.ll" replace_md
