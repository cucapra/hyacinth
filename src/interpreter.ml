open Ast

exception UnboundVariableInterp of var

module VarMap =
  Map.Make(struct type t = var;; let compare = String.compare end)

(* For now, Phi nodes just select the variable most recently assigned to *)

type store =
  { vars : float VarMap.t;
    phi : var list
  }

let set (s : store) (x : var) (v : float) : store =
  { vars = VarMap.add x v s.vars; phi = x::(s.phi) }

let lookup (s : store) (x : var) : float =
  try VarMap.find x s.vars
  with Not_found -> raise (UnboundVariableInterp x)

let phi_select (s : store) (v1 : var) (v2 : var) : var =
  let f (x : var) = (x = v1) || (x = v2) in
  try List.find f s.phi
  with Not_found -> raise (UnboundVariableInterp v1)

let interpret_value (s : store) (v : value) : float =
  match v with
    | VFloat(fl) -> fl
    | VVar(var) -> lookup s var

let interpret_unop (u : unop) : (float -> float) =
  match u with
    | UNot ->  fun (x) -> if x > 0. then 0. else 1.
    | UNeg -> (~-.)
    | USqrt -> sqrt
    | UAbs -> abs_float

let interpret_binop (b : binop) : (float -> float -> float) =
  let bf = fun (op) (x : float) (y : float) -> if (op x y) then 1. else 0. in
  match b with
    | BAnd -> bf (fun (x) (y) -> x > 0. && y > 0.)
    | BOr -> bf (fun (x) (y) -> x > 0. || y > 0.)
    | BEquals -> bf (=)
    | BNotEquals -> bf (!=)
    | BLess -> bf (<)
    | BLessEq -> bf (<=)
    | BGreater -> bf (>)
    | BGreaterEq -> bf (>=)
    | BAdd -> (+.)
    | BSub -> (-.)
    | BMul -> ( *. )
    | BDiv -> (/.)

let interpret_expr (s : store) (e : expr) : float =
  match e with
    | EValue(value) -> interpret_value s value
    | EBinop(binop, v1, v2) ->
      let f1 = (interpret_value s v1) in
      let f2 = (interpret_value s v2) in
      (interpret_binop binop) f1 f2
    | EUnop(unop, v) -> interpret_unop unop (interpret_value s v)
    | EPhi (v1, v2) -> lookup s (phi_select s v1 v2)

let interpret (c : com) : float VarMap.t =
  let rec interpret_com (s : store) (c : com) : store =
    match c with
      | CAssgn(var, expr) -> set s var (interpret_expr s expr)
      | CIf(cond, branch) ->
        let cval = lookup s cond in
        if cval > 0. then interpret_com s branch else s
      | CSeq(coms) ->
        let f (acc : store) (c' : com) = (interpret_com acc c')
        in List.fold_left f s coms
      | CPrint(expr) ->
        let f = interpret_expr s expr in print_endline (string_of_float f); s;
  in
let result = interpret_com {vars = VarMap.empty; phi = []} c in
  result.vars

let print_store (s : float VarMap.t) =
  let f (var : var) (f : float) (acc : string) : string =
    acc ^ var ^ "\t: " ^ (string_of_float f) ^ "\n"
  in VarMap.fold f s ""
