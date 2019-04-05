open Ast

module ValueMap =
  Map.Make(struct type t = Llvm.llvalue;; let compare = compare end)

type result =
  {
    coms : com list;
    reg_map : string ValueMap.t;
    idx : int;
    to_ast : (Llvm.llvalue * com) list;
  }

let register (v : Llvm.llvalue) (rs : result ref) : string =
  try let name = ValueMap.find v !rs.reg_map in name
  with Not_found ->
    let name' = "%" ^ (string_of_int !rs.idx) in
    let map' = ValueMap.add v name' !rs.reg_map in
    rs := {!rs with reg_map = map'; idx = !rs.idx + 1};
    name'

let regigister_number (r : string) : int =
  int_of_string (Core.String.strip ~drop:(fun c -> c = '%') r)

let rec print_type llty =
  let ty = Llvm.classify_type llty in
  match ty with
  | Llvm.TypeKind.Void -> Printf.printf "  void\n"
  | Llvm.TypeKind.Half -> Printf.printf "  half\n"
  | Llvm.TypeKind.Float -> Printf.printf "  float\n"
  | Llvm.TypeKind.Double -> Printf.printf "  double\n"
  | Llvm.TypeKind.X86fp80 -> Printf.printf "  X86fp80\n"
  | Llvm.TypeKind.Fp128 -> Printf.printf "  Fp128\n"
  | Llvm.TypeKind.Ppc_fp128 -> Printf.printf "  Ppc_fp128\n"
  | Llvm.TypeKind.Label -> Printf.printf "  Label\n"
  | Llvm.TypeKind.Struct -> Printf.printf "  Struct\n"
  | Llvm.TypeKind.Integer -> Printf.printf "  integer\n"
  | Llvm.TypeKind.Function -> Printf.printf "  function\n"
  | Llvm.TypeKind.Array ->
    Printf.printf "  array of";
    print_type (Llvm.element_type llty)
  | Llvm.TypeKind.Pointer  ->
    Printf.printf "  pointer to";
    print_type (Llvm.element_type llty)
  | Llvm.TypeKind.Vector ->
    Printf.printf "  vector of";
      print_type (Llvm.element_type llty)
  | Llvm.TypeKind.Metadata -> Printf.printf "  Metadata\n"
  | Llvm.TypeKind.X86_mmx -> Printf.printf "  X86_mmx\n"

let print_val lv =
  Printf.printf "  name %s\n" (Llvm.value_name lv) ;
  let llty = Llvm.type_of lv in
  Printf.printf "  type %s\n" (Llvm.string_of_lltype llty) ;
  print_type llty ;
  ()

let opcode_cost (opcode : Llvm.Opcode.t) : int =
  match opcode with
  | Alloca -> 1
  | Load -> 1
  | Store -> 1
  | FMul -> 5
  | FSub -> 3
  | FDiv -> 10
  | FAdd -> 3
  | FCmp -> 1
  | PHI -> 0
  | Ret -> 1
  | Call -> 10
  | Br -> 1
  | Select -> 1
  | _ -> 10

let pretty_opcode (opcode : Llvm.Opcode.t) : string =
  match opcode with
  | Alloca -> "alloca"
  | Load -> "load"
  | Store -> "store"
  | FMul -> "fmul"
  | FSub -> "fsub"
  | FDiv -> "fdiv"
  | FAdd -> "fadd"
  | FCmp -> "fcmp"
  | PHI -> "phi"
  | Ret -> "ret"
  | Call -> "call"
  | Br -> "br"
  | Select -> "select"
  | _ -> "other"

let print_fun lv =
  Llvm.iter_blocks
    (fun llbb ->
      Llvm.iter_instrs
        (fun lli ->
          print_val lli;
          Printf.printf "%s\n" (pretty_opcode (Llvm.instr_opcode lli));
          Printf.printf "%s\n" (Llvm.string_of_llvalue lli)
        )
        llbb
    )
    lv

let operand_to_value (operand : Llvm.llvalue) (rs : result ref) : value =
  if Llvm.is_constant operand then
    let kind = Llvm.classify_value operand in
    let v = begin match kind with
    | ConstantInt ->
      (match Llvm.int64_of_const operand with
      | Some i -> Int64.to_float i
      | None -> failwith "Constant not an integer")
    | ConstantFP ->
      (match Llvm.float_of_const operand with
      | Some fl -> fl
      | None -> failwith "Constant not a FP")
    | _ -> print_endline
      ("constant not an Int or FP: " ^ (Llvm.string_of_llvalue operand));
      -1.0
    end in
    VFloat v
  else
    VVar (register operand rs)

let op_from_instr (instr : Llvm.llvalue) : op =
  let opcode = Llvm.instr_opcode instr in
  let name = pretty_opcode opcode in
  OExternal (name, opcode_cost opcode)

let instr_to_com (rs : result) (instr : Llvm.llvalue) : result =
  let result : result ref = ref rs in

  let arity = Llvm.num_operands instr in
  let arity_range = Core.List.range 0 arity in

  let f idx = operand_to_value (Llvm.operand instr idx) result in
  let operands = List.map f arity_range in

  let reg = register instr result in
  let op_expr = EOp (op_from_instr instr, operands) in
  let com = CAssgn (reg, op_expr) in

  {!result with coms = com::rs.coms; to_ast = (instr, com)::rs.to_ast }

let params_to_coms (rs : result ref) (fn : Llvm.llvalue) =
  let param_to_assgn p =
    let r = register p rs in
    let com = CAssgn (r, EInput (regigister_number r)) in
    rs :=  {!rs with coms = com::!rs.coms; to_ast = (p, com)::!rs.to_ast} in
  Llvm.iter_params param_to_assgn fn

let fold_functions (md : Llvm.llmodule) : result =
  let rs =
    {coms = []; reg_map = ValueMap.empty; idx = 0; to_ast = []} in

  let f_block (acc_b : result) (block : Llvm.llbasicblock) : result =
  Llvm.fold_left_instrs instr_to_com acc_b block in

  let f_function (acc_f : result) (fn : Llvm.llvalue) : result =
  let acc_f' = ref acc_f in
  params_to_coms acc_f' fn;
  Llvm.fold_left_blocks f_block !acc_f' fn in
  Llvm.fold_left_functions f_function rs md

let llvm_to_ast (md : Llvm.llmodule) : (com list * (Llvm.llvalue * com) list) =
  let result = fold_functions md in
  (List.rev result.coms, List.rev result.to_ast)

let parse_llvm (_llvm_in : in_channel) : (com * (Llvm.llvalue * com) list) =
  let llctx = Llvm.global_context () in
  let llmem = Llvm.MemoryBuffer.of_stdin () in
  let llm = Llvm_bitreader.parse_bitcode llctx llmem in
(*   Llvm.iter_functions print_fun llm; *)
  let coms, to_ast = llvm_to_ast llm in
  (CSeq coms, to_ast)
