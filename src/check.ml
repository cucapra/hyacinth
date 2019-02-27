open Ast

module VarSet =
  Set.Make(struct type t = var let compare = String.compare end)

exception UnboundVariable of var
exception ReassignedVariable of var

let check_var (v : var) (vars : VarSet.t) : VarSet.t =
  if VarSet.mem v vars then vars else raise (UnboundVariable v)

let check_ssa_value (v : value) (vars : VarSet.t) : VarSet.t =
  match v with
    | VVar(x) -> check_var x vars
    | VFloat(_) -> vars

let check_ssa_expr (e : expr) (vars : VarSet.t) : VarSet.t =
  match e with
    | EValue value -> check_ssa_value value vars
    | EOp (_, values) ->
      List.iter (fun v -> let _ = check_ssa_value v vars in ()) values;
      vars
    | EPhi (v1, v2) -> let _ = check_var v1 vars in check_var v2 vars
    | EInput _ -> vars

let check_ssa (c : com) : var list =
  let rec check_ssa_com (c : com) (vars : VarSet.t) : VarSet.t =
    match c with
    | CAssgn (x, expr) ->
      if VarSet.mem x vars
      then raise (ReassignedVariable x)
      else check_ssa_expr expr (VarSet.add x vars)
    | CIf (cond, expr) ->
      check_ssa_com expr (check_var cond vars)
    | CSeq coms ->
      let f (acc : VarSet.t) (c : com) : VarSet.t = check_ssa_com c acc
      in List.fold_left f vars coms
    | CPrint expr -> check_ssa_expr expr vars
  in
  VarSet.elements (check_ssa_com c VarSet.empty)
