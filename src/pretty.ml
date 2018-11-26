open Ast

let pretty_indentation (s : string) : string =
  let lines = String.split_on_char '\n' s in
  let f (acc : string) (s : string) : string =  acc ^ "\t" ^ s ^ "\n" in
  List.fold_left f "" lines

let pretty_value (v : value) : string =
  match v with
    | VFloat(fl) -> string_of_float fl
    | VVar(var) -> var

let pretty_unop (u : unop) : string =
  match u with
    | UNot -> "not"
    | UNeg -> "neg "
    | USqrt -> "sqrt "
    | UAbs -> "abs "

let pretty_binop (b : binop) : string =
  match b with
    | BAnd -> "&&"
    | BOr -> "||"
    | BEquals -> "=="
    | BNotEquals -> "!="
    | BLess -> "<"
    | BLessEq -> "<="
    | BGreater -> ">"
    | BGreaterEq -> ">="
    | BAdd -> " + "
    | BSub -> " - "
    | BMul -> " * "
    | BDiv -> " / "

let pretty_expr (e : expr) : string =
  match e with
    | EValue(value) -> pretty_value value
    | EBinop(binop, val1, val2) ->
      (pretty_value val1) ^ (pretty_binop binop) ^ (pretty_value val2)
    | EUnop(unop, v) -> (pretty_unop unop) ^ (pretty_value v)
    | EPhi (v1, v2) -> "phi (" ^ v1 ^ ", " ^ v2 ^ ")"

let rec pretty (c : com) : string =
  match c with
    | CAssgn(var, expr) -> var ^ " := " ^ (pretty_expr expr) ^ ";"
    | CIf(cond, expr) ->
      let pe = pretty_indentation (pretty expr) in
      "if (" ^ cond ^ ") {\n\t" ^ pe ^ "\n}"
    | CSeq(coms) ->
      let f (acc : string) (c : com) : string =  acc ^ "\n" ^ (pretty c) in
      List.fold_left f "" coms
    | CPrint(expr) -> "print " ^ (pretty_expr expr) ^ ";"
