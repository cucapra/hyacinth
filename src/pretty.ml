open Ast

let pretty_value (v : value) : string =
  match v with
    | VFloat(fl) -> string_of_float fl
    | VVar(var) -> var

let pretty_unop (u : unop) : string =
  match u with
    | UNeg -> "neg"
    | USqrt -> "sqrt"
    | UAbs -> "abs"

let pretty_binop (b : binop) : string =
  match b with
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

let rec pretty (c : com) : string =
  match c with
    | CAssgn(var, expr) -> var ^ " := " ^ (pretty_expr expr) ^ ";\n"
    | CSeq(hd::coms) -> (pretty hd) ^ (pretty (CSeq coms))
    | CSeq([]) -> ""
    | CExpr(expr) ->  (pretty_expr expr) ^ ";\n"
    | CPrint(expr) -> "print " ^ (pretty_expr expr) ^ ";\n"
    | CSkip -> "skip;\n"
