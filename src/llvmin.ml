open Ast
open Llvm
open Llvm_shared

module ValueMap =
  Map.Make(struct type t = llvalue;; let compare = compare end)

type result =
  {
    coms: (com list) list;
    reg_map : string ValueMap.t;
    idx : int;
    to_ast : (llvalue * com) list;
  }

let register_new (v : llvalue) (rs : result ref) : (string * bool) =
  try let name = ValueMap.find v !rs.reg_map in (name, false)
  with Not_found ->
    let name' = "%" ^ (string_of_int !rs.idx) in
    let map' = ValueMap.add v name' !rs.reg_map in
    rs := {!rs with reg_map = map'; idx = !rs.idx + 1};
    (name', true)

let register (v : llvalue) (rs : result ref) : string =
  let reg, _ = register_new v rs in
  reg

let register_number (r : string) : int =
  int_of_string (Core.String.strip ~drop:(fun c -> c = '%') r)

let operand_register (v : llvalue) (rs : result ref) : string =
  let r, is_new = register_new v rs in
  if is_new then (
    let com = CAssgn (r, EInput (register_number r)) in
    let block_coms = (com::(List.hd !rs.coms))::(List.tl !rs.coms) in
    rs := {!rs with coms = block_coms; to_ast = (v, com)::!rs.to_ast});
  r

let operand_to_value (operand : llvalue) (rs : result ref) : value =
  if is_constant operand then
    let kind = classify_value operand in
    let v = begin match kind with
    | ConstantInt ->
      (match int64_of_const operand with
      | Some i -> Int64.to_float i
      | None -> failwith "Constant not an integer")
    | ConstantFP ->
      (match float_of_const operand with
      | Some fl -> fl
      | None -> failwith "Constant not a FP")
    | _ -> print_endline
      ("constant not an Int or FP: " ^ (string_of_llvalue operand));
      -1.0
    end in
    VFloat v
  else
    VVar (operand_register operand rs)

let op_from_instr (instr : llvalue) : op =
  let opcode = instr_opcode instr in
  let name = pretty_opcode opcode in
  OExternal (name, opcode_cost opcode)

let instr_to_com (rs : result) (instr : llvalue) : result =
  let result : result ref = ref rs in

  let arity = num_operands instr in
  let arity_range = Core.List.range 0 arity in

  let f idx = operand_to_value (operand instr idx) result in
  let operands = List.map f arity_range in

  let reg = register instr result in
  let op_expr = EOp (op_from_instr instr, operands) in
  let com = CAssgn (reg, op_expr) in
  let block_coms = (com::(List.hd !result.coms))::(List.tl !result.coms) in

  {!result with coms = block_coms; to_ast = (instr, com)::rs.to_ast}

(* Each block should be partitioned seperately *)
let fold_functions (md : llmodule) : result =

  let f_block (acc_b : result) (block : llbasicblock) : result =
    let new_result = {acc_b with coms = []::acc_b.coms} in
    fold_left_instrs instr_to_com new_result block in

  let f_function (acc_f : result) (fn : llvalue) : result =
    if include_function fn then
      fold_left_blocks f_block acc_f fn
    else
      acc_f
  in
  let rs = {coms = []; reg_map = ValueMap.empty; idx = 0; to_ast = []} in

  fold_left_functions f_function rs md

let llvm_to_ast (md : llmodule) : (com list * (llvalue * com) list) =
  let result = fold_functions md in
  let coms_to_seq acc coms = (CSeq (List.rev coms))::acc in
  let seq_per_block = List.fold_left coms_to_seq [] result.coms in
  (seq_per_block, List.rev result.to_ast)

let parse_llvm (_llvm_in : in_channel) : (com list * (llmodule * ((llvalue * com) list))) =
  let context = global_context () in
  let buffer = MemoryBuffer.of_stdin () in
  let md = Llvm_bitreader.parse_bitcode context buffer in
  let seq_per_block, to_ast = llvm_to_ast md in
  (seq_per_block, (md, to_ast))
