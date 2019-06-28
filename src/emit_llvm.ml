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
let float_type = float_type context
let double_type = double_type context
let const_i32 = const_int int_type
let llvm_module = create_module context "new_module"
let init_name = "init"
let send_name = "send"
let receive_name = "receive"
let send_arg_name = "send_argument"
let receive_arg_name = "receive_argument"
let send_return_name = "send_return"
let receive_return_name = "receive_return"
let call_partitioned_name = "call_partitioned_functions"
let join_name = "join_partitioned_functions"
let comms_id = ref 0
let target = ref PThreads
let host_id = -1

let target_ptr_type () =
  begin match !target with
  | PThreads -> i64_type context
  | BSGManycore -> i32_type context
  end

let set_metadata_placement inst placement  =
  let id = mdkind_id context "time" in
  let s = mdstring context (string_of_int placement.start_time) in
  let e = mdstring context (string_of_int placement.end_time) in
  let m = mdnode context [| s; e|] in
  set_metadata inst id m

let set_metadata_string (s : string) inst =
  let s_id = mdkind_id context "reason" in
  let v = mdstring context s in
  let m = mdnode context [| v |] in
  set_metadata inst s_id m

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

let size_of_ty ty =
  const_trunc (size_of ty) (target_ptr_type ())

let call_init builder md =
  let init = lookup_function_in init_name md in
  build_call init [||] "" builder

let call_partitioned_funs builder md ctx new_fun_set =
  let funs = Array.of_list (to_list new_fun_set) in
  let replace_funs_t = pointer_type (function_type void_type [| void_pt_type |]) in
  let funs_arg = const_array replace_funs_t funs in
  let funs_global = define_global "funs" funs_arg md in
  let funs_len = Array.length funs in
  let indices = [| const_i32 0; const_i32 0|] in
  let gep = build_in_bounds_gep funs_global indices "funs" builder in
  let call_partitioned = lookup_function_in call_partitioned_name md in
  let args = [| const_i32 funs_len; gep; ctx |] in
  build_call call_partitioned args call_partitioned_name builder

let value_to_value_ptr value reason builder =
  let ty = (type_of value) in
  let value_ptr, to_replace = match classify_type ty with
  | TypeKind.Double | TypeKind.Integer | TypeKind.Pointer ->
    let alloca = build_alloca ty "send_alloca" builder in
    let store = build_store value alloca builder in
    let bitcast = build_bitcast alloca void_pt_type "send_cast" builder in
    List.iter (set_metadata_string reason) [alloca; store; bitcast];
    bitcast, store
  | _ ->
    print_endline ("should bitcast send for: " ^ (print_type ty) ^ ", " ^  string_of_llvalue value);
    value, value
  in
  let size = size_of_ty ty in
  (value_ptr, size, to_replace)

let call_send_variant variant value reason (to_partition : int) id builder ctx =
  let value_ptr, size, to_replace = value_to_value_ptr value reason builder in
  let send = lookup_function_in variant llvm_module in
  let destination = const_i32 to_partition in
  let args = [| value_ptr; size; destination; id; ctx |] in
  let send = build_call send args "" builder in
  set_metadata_string reason send;
  to_replace

let call_send_return value reason builder ctx =
  let value_ptr, size, to_replace = value_to_value_ptr value reason builder in
  let send = lookup_function_in send_return_name llvm_module in
  let args = [| value_ptr; size; ctx |] in
  let send = build_call send args "" builder in
  set_metadata_string reason send;
  to_replace

let call_receive_variant variant name reason (ty : lltype) from_partition id builder ctx =
  let receive = lookup_function_in variant llvm_module in
  let size = size_of_ty ty in
  let args = match (from_partition, id) with
  | Some p, Some i -> [| size; (const_i32 p); i; ctx |]
  | None, Some i -> [| size; i; ctx |]
  | _ -> [| size; ctx |]
  in
  let value = build_call receive args name builder in
  let bitcast = build_bitcast value (pointer_type ty) "bitcast" builder in
  let load = build_load bitcast "receive_load" builder in
  List.iter (set_metadata_string reason) [value; bitcast; load];
  load

let call_receive name reason (ty : lltype) (from_partition : int) id builder ctx =
  call_receive_variant receive_name name reason ty (Some from_partition) (Some id) builder ctx

let call_receive_arg name reason (ty : lltype) id builder ctx =
  call_receive_variant receive_arg_name name reason ty None (Some id) builder ctx

let call_receive_return name reason (ty : lltype) builder ctx =
  call_receive_variant receive_return_name name reason ty None None builder ctx

let broadcast_value value from_partition branches block block_map builder ctx =
  let value_ptr, size, _ = value_to_value_ptr value "broadcast" builder in
  let send_fun = lookup_function_in send_name llvm_module in
  let insert_comms (p, br) =
    if (p != from_partition) then begin
      let id = new_comms_id () in
      let destination = const_i32 p in
      let args = [| value_ptr; size;  destination; id; ctx |] in
      let send = build_call send_fun args "" builder in
      set_metadata_string "broadcast" send;

      let dest_builder, _ = builder_and_fun p block block_map in
      let receive = call_receive "broadcast" receive_name (type_of value) from_partition id dest_builder ctx in
      set_operand br 0 receive
    end
  in
  List.iter insert_comms branches

let declare_external_functions host_md =
  (* declare init, send*, receive*, replace, join *)
  let send_t = function_type void_type [| void_pt_type; target_ptr_type (); int_type; int_type; void_pt_type |] in
  declare_function send_name send_t llvm_module |> ignore;
  declare_function send_name send_t host_md |> ignore;
  let receive_t = function_type void_pt_type [| target_ptr_type (); int_type; int_type; void_pt_type |] in
  declare_function receive_name receive_t llvm_module |> ignore;
  declare_function receive_name receive_t host_md |> ignore;
  let send_arg_t = function_type void_type [| void_pt_type; target_ptr_type (); int_type; int_type; void_pt_type |] in
  declare_function send_arg_name send_arg_t llvm_module |> ignore;
  declare_function send_arg_name send_arg_t host_md |> ignore;
  let receive_arg_t = function_type void_pt_type [| target_ptr_type (); int_type; void_pt_type |] in
  declare_function receive_arg_name receive_arg_t llvm_module |> ignore;
  declare_function receive_arg_name receive_arg_t host_md |> ignore;
  let send_return_t = function_type void_type [| void_pt_type; target_ptr_type (); void_pt_type |] in
  declare_function send_return_name send_return_t llvm_module |> ignore;
  declare_function send_return_name send_return_t host_md |> ignore;
  let receive_return_t = function_type void_pt_type [| target_ptr_type (); void_pt_type |] in
  declare_function receive_return_name receive_return_t llvm_module |> ignore;
  declare_function receive_return_name receive_return_t host_md |> ignore;
  let init_t = function_type void_pt_type [||] in
  declare_function init_name init_t host_md |> ignore;
  let call_partitioned_funs_t = pointer_type (pointer_type (function_type void_type [| void_pt_type |])) in
  let call_partitioned_t = function_type void_pt_type [| int_type; call_partitioned_funs_t; void_pt_type |] in
  declare_function call_partitioned_name call_partitioned_t llvm_module |> ignore;
  declare_function call_partitioned_name call_partitioned_t host_md |> ignore;
  let join_t = function_type void_type [| int_type; void_pt_type |] in
  declare_function join_name join_t host_md |> ignore;

  let declare_function (f : llvalue) =
    if (is_declaration f) then
      declare_function (value_name f) (element_type (type_of f)) llvm_module |> ignore
  in
  iter_functions declare_function host_md;

  let define_global (g : llvalue) =
    define_global (value_name g) (global_initializer g) llvm_module |> ignore
  in
  iter_globals define_global host_md

let builders_from_block block p mappings host_md =
  let new_builder, new_fun = builder_and_fun p block mappings in
  let parent = block_parent block in
  let replace_opt = get_fun_opt mappings parent in
  let replace_builder, ctx = match replace_opt with
  | Some (b, c, vs) ->
    add_value vs new_fun;
    (b, c)
  | None ->
    let fun_type = element_type (type_of parent) in
    let replace_name = "replace_" ^ (value_name parent) in
    let part_fun = define_function replace_name fun_type host_md in
    let fun_begin = instr_begin (entry_block part_fun) in
    let builder = builder_at context fun_begin in
    let ctx = call_init builder host_md in
    add_fun mappings parent builder ctx new_fun;
    (builder, ctx)
  in

  (new_builder, new_fun, replace_builder, ctx)

let builder_before_last_instr block =
  let before_last = match instr_end block with
  | After v -> Before v
  | At_start b -> instr_begin b
  in
  builder_at context before_last

let replace_operand idx inst block partition builder find_partition mappings host_md =
  let op = operand inst idx in
  match (get_instr_opt mappings op) with
  | Some new_op ->
    (* If the operand is on a different partition, insert send/receive *)
    let op_partition = find_partition op in
    if partition != op_partition then
      let op_builder, op_fun = builder_and_fun op_partition block mappings in
      let id = new_comms_id () in
      let ctx = param op_fun 0 in
      let receive = call_receive receive_name "replace mapped op" (type_of new_op) op_partition id builder ctx in
      call_send_variant send_name new_op "replace mapped op" partition id op_builder ctx |> ignore;
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
        let _, new_fun, replace_builder, r_ctx = builders_from_block block partition mappings host_md in
        let entry = entry_block new_fun in
        let entry_builder = builder_at context (instr_begin entry) in
        let ctx = param new_fun 0 in
        if (op != ctx) then (
          let id = new_comms_id () in
          let call = call_receive_arg "argument" "replace argument" (type_of op) id entry_builder ctx in
          call_send_variant send_arg_name op "replace argument" partition id replace_builder r_ctx |> ignore;
          add_arg mappings partition op call;
          set_operand inst idx call)
      end
    | _ -> ()
    end

let replace_operands inst block partition builder find_partition mappings host_md =
  let replace_op idx =
     replace_operand idx inst block partition builder find_partition mappings host_md
  in
  let arity = num_operands inst in
  let arity_range = Core.List.range 0 arity in
  List.iter replace_op arity_range

let repair_phi_node find_partition mappings phi : unit =
  let map_incoming partition (v, block) =
    let prev_block = get_block mappings partition block in
    match (get_instr_opt mappings v) with
    | Some new_val ->
      let op_partition = find_partition v in
      (* If the operand is on a different partition, insert send/receive
         on the SOURCE block, not the current block *)
      if partition != op_partition then begin
        let op_block = get_block mappings op_partition block in
        let op_builder = builder_before_last_instr op_block in
        let prev_block_builder = builder_before_last_instr prev_block in
        let id = new_comms_id () in
        let ctx = param (block_parent op_block) 0 in
        call_send_variant send_name new_val "repair_phi" partition id op_builder ctx |> ignore;
        let receive = call_receive "repair_phi" receive_name (type_of new_val) op_partition id prev_block_builder ctx in
        (receive, prev_block)
      end
      else
        (new_val, prev_block)
    | None ->
      (v, prev_block)
  in
  match (instr_opcode phi) with
  | PHI ->
    let partition = find_partition phi in
    let new_incoming = List.map (map_incoming partition) (incoming phi) in
    let new_phi = get_instr mappings phi in
    List.iter (fun inc -> add_incoming inc new_phi) new_incoming
  | _ -> ()

let clone_blocks_per_partition host_md partitions mappings =
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
    declare_function new_name fun_type host_md |> ignore;

    iter_blocks (per_block partition fn new_fun) fn
  in
  let per_function fn = List.iter (per_partition fn) partitions in
  iter_included_functions per_function host_md

let get_nonempty_partitions (dfg : placement NodeMap.t) : int list =
  NodeMap.bindings dfg |> List.map (fun (_, p) -> p.partition) |> List.sort_uniq compare

let insert_ret_void block block_map partition =
  let builder, _ = builder_and_fun partition block block_map in
  build_ret_void builder |> ignore

let set_branch_destination br destinations p block mappings =
  let per_destination (idx, dest) =
    let new_dest = get_block mappings p dest in
    set_operand br idx (value_of_block new_dest)
  in
  List.iter per_destination destinations;
  let builder, _ = builder_and_fun p block mappings in
  insert_into_builder br "" builder

let add_branch_instructions v block find_partition partitions mappings host_md =
  match get_branch v with
  | Some (`Conditional (v0, _, _)) ->
    (* Note: cannot get these from the pattern match above, because the order
    may not match the operand indexing *)
    let b1 = operand v 1 |> block_of_value in
    let b2 = operand v 2 |> block_of_value in
    let p0 = find_partition v0 in
    let p0_builder, p0_f = builder_and_fun p0 block mappings in
    let ctx = param p0_f 0 in
    let v0' = ref v0 in
    let per_partition p : (int * llvalue) =
      let br = instr_clone v in
      (* Send v0 to every core but the one it's already on *)
      if (p == p0) then begin
        replace_operand 0 br block p p0_builder find_partition mappings host_md;
        v0' := operand br 0
      end;
      (p, br)
    in
    let branches = List.map per_partition partitions in
    if (List.length branches > 1) then
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

let add_straightline_instructions v block placement find_partition partitions mappings host_md =
  let p = placement.partition in
  let new_builder, new_fun, _, _ = builders_from_block block p mappings host_md in
  let ctx = param new_fun 0 in
  match (instr_opcode v) with
  | Ret ->
    (* If it's not a void return, it needs to be sent back to the host;
    there may be multiple returns per function, so we'll insert the receive
    once, later. *)
    if (num_operands v) > 0 then begin
      let ret = operand v 0 in
      let call = call_send_return ret "return" new_builder ctx in
      set_metadata_string "return" call;
      let before = builder_before context call in
      replace_operands call block p before find_partition mappings host_md;
    end;
    (* Insert void return at this block for all partitions *)
    List.iter (insert_ret_void block mappings) partitions
  | PHI ->
    let clone = build_empty_phi (type_of v) "new_phi" new_builder in
    set_metadata_placement clone placement;
    add_instr mappings v clone
  | _ ->
    let clone = instr_clone v in
    set_metadata_placement clone placement;
    add_instr mappings v clone;
    replace_operands clone block p new_builder find_partition mappings host_md;
    insert_into_builder clone "" new_builder

let pthread_replace_fun host_md old_fun (_, ctx, new_fun_set) =
  let old_name = value_name old_fun in
  let new_fun = lookup_function_in ("replace_" ^ old_name) host_md in
  let return_t = return_type (element_type (type_of old_fun)) in
  replace_all_uses_with old_fun new_fun;
  let after_init = match instr_begin (entry_block new_fun) with
  | Before v -> instr_succ v
  | At_end _ -> failwith "builder should be after init"
  in
  let builder = builder_at context after_init in
  let threads = call_partitioned_funs builder host_md ctx new_fun_set in

  let end_builder = builder_at_end context (entry_block new_fun) in
  let call_join _ =
    let join = lookup_function_in join_name host_md in
    let funs_len = size new_fun_set in
    build_call join [| const_i32 funs_len; threads |] "" end_builder |> ignore
  in

  if return_t == void_type then begin
    call_join ();
    build_ret_void end_builder |> ignore
  end
  else begin
    let return = call_receive_return "return" "return" return_t end_builder ctx in
    call_join ();
    build_ret return end_builder |> ignore
  end

let manycore_construct_main mappings =
  (* The same program gets run on every tile. The main function calls the
  C-defined call_partitioned_functions, which uses the tile_id to call the
  correct version of the function per tile. *)
  let main_t = function_type int_type [||] in
  let main_fun = define_function "main" main_t llvm_module in
  let builder = builder_at context (instr_begin (entry_block main_fun)) in

  let call_partitioned_per_fun _ (_, _, new_fun_set) =
    let null = const_null void_pt_type in
    call_partitioned_funs builder llvm_module null new_fun_set |> ignore
  in
  iter_funs mappings call_partitioned_per_fun;
  build_ret (const_i32 0) builder |> ignore

let map_globals_to_dram () =
  iter_globals (set_section ".dram") llvm_module

let emit_llvm tg filename (dfg : placement NodeMap.t) ((host_md, llvm_to_ast) : (llmodule * (llvalue * com) list)) (node_map : node ComMap.t) =
  print_endline "\nStarting to emit LLVM";
  target := tg;
  begin match !target with
  | PThreads ->
    set_data_layout "e-m:o-i64:64-f80:128-n8:16:32:64-S128" llvm_module
  | BSGManycore ->
    set_target_triple "riscv32-unknown-elf" host_md;
    set_target_triple "riscv32-unknown-elf" llvm_module;
    set_data_layout "e-m:e-p:32:32-i64:64-n32-S128" host_md;
    set_data_layout "e-m:e-p:32:32-i64:64-n32-S128" llvm_module
  end;
  declare_external_functions host_md;

  let placement_for_com c =
    let n = ComMap.find c node_map in
    match NodeMap.find_opt n dfg with
    | Some p -> p
    | None -> failwith ("No placement for:" ^ (print_node n) ^ ",  com: " ^ (Pretty.pretty c))
  in
  let partitions = get_nonempty_partitions dfg in
  let mappings = init_mappings () in

  let find_partition_opt v' =
    let pair_opt = List.find_opt (fun (x, _) -> x == v') llvm_to_ast in
    match pair_opt with
    | Some (_, c) -> Some (placement_for_com c).partition
    | None -> None
  in
  let find_partition v' = match find_partition_opt v' with
  | Some p' -> p'
  | None -> failwith "No partition"
  in
  clone_blocks_per_partition host_md partitions mappings;

  let add_instructions (v : llvalue) =
    (* print_endline ("Emitting LLVM for instruction: " ^ (string_of_llvalue v)); *)
    let op = instr_opcode v in
    let block = instr_parent v in
    begin match (op : Opcode.t) with
    | Br ->
      add_branch_instructions v block find_partition partitions mappings host_md
    | _ ->
      let _, com = List.find (fun (x, _) -> x == v) llvm_to_ast in
      let placement = placement_for_com com in
      let find_partition_default v' = match find_partition_opt v' with
      | Some p' -> p'
      | None -> placement.partition
      in
      add_straightline_instructions v block placement find_partition_default partitions mappings host_md
    end
  in
  let per_function f fn =
    let blocks = fold_left_blocks (fun bs b -> b::bs) [] fn in
    let sorted = Sort_basic_blocks.sort_blocks (List.rev blocks) in
    List.iter (iter_instrs f) sorted
  in
  iter_included_functions (per_function add_instructions) host_md;
  let repair_phi = repair_phi_node find_partition mappings in
  iter_included_functions (per_function repair_phi) host_md;

  iter_funs mappings (pthread_replace_fun host_md);


  begin match !target with
  | PThreads -> ()
  | BSGManycore -> map_globals_to_dram ()
  end;

  print_module (filename ^ "_cores.ll") llvm_module;
  print_module (filename ^ "_host.ll") host_md
