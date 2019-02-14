open Ast

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
  | Llvm.TypeKind.Integer  -> Printf.printf "  integer\n"
  | Llvm.TypeKind.Function -> Printf.printf "  function\n"
  | Llvm.TypeKind.Array    -> Printf.printf "  array of" ; print_type (Llvm.element_type llty)
  | Llvm.TypeKind.Pointer  -> Printf.printf "  pointer to" ; print_type (Llvm.element_type llty)
  | Llvm.TypeKind.Vector   -> Printf.printf "  vector of" ; print_type (Llvm.element_type llty)
  | Llvm.TypeKind.Metadata -> Printf.printf "  Metadata\n"
  | Llvm.TypeKind.X86_mmx -> Printf.printf "  X86_mmx\n"

let print_val lv =
  Printf.printf "  name %s\n" (Llvm.value_name lv) ;
  let llty = Llvm.type_of lv in
  Printf.printf "  type %s\n" (Llvm.string_of_lltype llty) ;
  print_type llty ;
  ()

let print_opcode lli =
  let opcode = Llvm.instr_opcode lli in
  match opcode with
  | Alloca ->
    Printf.printf "alloca\n";
    print_val (Llvm.operand lli 0)
  | Load -> Printf.printf "load\n"
  | Store -> Printf.printf "store\n"
  | FMul -> Printf.printf "fmul\n";
(*     print_val (Llvm.operand lli 0);
    print_val (Llvm.operand lli 1) *)
  | FSub -> Printf.printf "fsub\n"
  | FDiv -> Printf.printf "fdiv\n"
  | FAdd -> Printf.printf "fadd\n"
  | FCmp -> Printf.printf "fcmp\n"
  | PHI -> Printf.printf "phi\n"
  | Ret -> Printf.printf "ret\n"
  | Call -> Printf.printf "call\n"
  | Br -> Printf.printf "br\n"
  | _ ->  Printf.printf "other\n"

let print_fun lv =
  Llvm.iter_blocks
    (fun llbb ->
(*       Printf.printf "  bb: %s\n" (Llvm.value_name (Llvm.value_of_block (llbb))); *)
      Llvm.iter_instrs
        (fun lli ->
          print_val lli;
          print_opcode lli;
          Printf.printf "%s\n" (Llvm.string_of_llvalue lli)
        )
        llbb
    )
    lv

let parse_llvm (_llvm_in : in_channel) : com =
  let llctx = Llvm.global_context () in
  let llmem = Llvm.MemoryBuffer.of_stdin () in
  let llm = Llvm_bitreader.parse_bitcode llctx llmem in
  Llvm.iter_functions print_fun llm;
  failwith "not implemented!"
