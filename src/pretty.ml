open Ast

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

let rec pretty_expr (e : expr) : string =
  match e with
    | EValue(value) -> pretty_value value
    | EBinop(binop, e1, e2) ->
      (pretty_expr e1) ^ (pretty_binop binop) ^ (pretty_expr e2)
    | EUnop(unop, expr) -> (pretty_unop unop) ^ (pretty_expr expr)
    | EPhi (e1, e2) ->
      "phi (" ^ (pretty_expr e1) ^ ", " ^ (pretty_expr e2) ^ ")"

let rec pretty (c : com) : string =
  match c with
    | CAssgn(var, expr) -> var ^ " := " ^ (pretty_expr expr) ^ ";"
    | CIf(cond, expr) ->
    (* TODO: add tabs *)
      "if (" ^ (pretty_expr cond) ^ ") {\n\t" ^ (pretty expr) ^ "\n}"
    | CSeq(coms) ->
      let f (acc : string) (c : com) : string =  acc ^ "\n" ^ (pretty c)
      in List.fold_left f "" coms
    | CPrint(expr) -> "print " ^ (pretty_expr expr) ^ ";"
