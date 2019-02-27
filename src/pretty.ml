open Ast

let pretty_indentation (s : string) : string =
  let lines = String.split_on_char '\n' s in
  let f (acc : string) (s : string) : string =  acc ^ "\t" ^ s ^ "\n" in
  List.fold_left f "" lines

let pretty_value (v : value) : string =
  match v with
  | VFloat fl -> string_of_float fl
  | VVar var -> var

let pretty_internal_op (io : internal_op) : string =
  match io with
  | UNot -> "not"
  | UNeg -> "neg "
  | USqrt -> "sqrt "
  | UAbs -> "abs "
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

let pretty_op (o : op) : string =
  match o with
  | OInternal io -> pretty_internal_op io
  | OExternal (name, _) -> name

let pretty_expr (e : expr) : string =
  match e with
  | EValue value -> pretty_value value
  | EPhi (v1, v2) -> "phi (" ^ v1 ^ ", " ^ v2 ^ ")"
  | EOp (o, values) ->
    let f (acc : string) (v : value) : string =  acc ^ " " ^ (pretty_value v) in
    (pretty_op o) ^  (List.fold_left f "" values)
  | EInput n -> "input " ^ (string_of_int n)

let rec pretty (c : com) : string =
  match c with
  | CAssgn (var, expr) -> var ^ " := " ^ (pretty_expr expr) ^ ";"
  | CIf (cond, expr) ->
    let pe = pretty_indentation (pretty expr) in
    "if (" ^ cond ^ ") {\n\t" ^ pe ^ "\n}"
  | CSeq coms ->
    let f (acc : string) (c : com) : string =  acc ^ "\n" ^ (pretty c) in
    List.fold_left f "" coms
  | CPrint expr -> "print " ^ (pretty_expr expr) ^ ";"
