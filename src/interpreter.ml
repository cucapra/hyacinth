open Ast
open Check

module VarMap =
  Map.Make(struct type t = var;; let compare = String.compare end)

let set (s : float VarMap.t) (x : var) (v : float) : float VarMap.t =
  VarMap.add x v s

let lookup (s : float VarMap.t) (x : var) : float =
  try VarMap.find x s
  with Not_found -> raise (UnboundVariable x)

let interpret_value (s : float VarMap.t) (v : value) : float =
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

let rec interpret_expr (s : float VarMap.t) (e : expr) : float =
  match e with
    | EValue(value) -> interpret_value s value
    | EBinop(binop, e1, e2) ->
      let f1 = (interpret_expr s e1) in
      let f2 = (interpret_expr s e2) in
      (interpret_binop binop) f1 f2
    | EUnop(unop, expr) -> interpret_unop unop (interpret_expr s expr)

let interpret (c : com) : float VarMap.t =
  let rec interpret_com (s : float VarMap.t) (c : com) : float VarMap.t =
    match c with
      | CAssgn(var, expr) -> set s var (interpret_expr s expr)
      | CIf(cond, branch) ->
        let cval = (interpret_expr s cond) in
        if cval > 0. then (interpret_com s branch) else s
      | CSeq(coms) ->
        let f (acc : float VarMap.t) (c' : com) = (interpret_com acc c')
        in List.fold_left f s coms
      | CPrint(expr) ->
        let f = interpret_expr s expr in print_endline (string_of_float f); s;
  in
interpret_com VarMap.empty c

let print_store (s : float VarMap.t) =
  let f (var : var) (f : float) (acc : string) : string =
    acc ^ var ^ "\t:\t" ^ (string_of_float f) ^ "\n"
  in VarMap.fold f s ""
