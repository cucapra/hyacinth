open Ast
open Pretty

exception UnboundVariableDFG of var

module VarMap =
  Map.Make(struct type t = var;; let compare = String.compare end)

type operation =
  | OPhi
  | OIf
  | OPrint
  | OBinop of binop
  | OUnop of unop

and opnode =
  {
    op : operation;
    incoming : node list;
  }

and node =
  | NLit of float
  | NOp of opnode
  | NStart

and result =
  {
    curr : node;
    nodes : node list;
    map : int VarMap.t;
  }

and dfg = node list

(* Conversion *)

let lookup (r : result) (x : var) : node =
  try let i = VarMap.find x r.map in List.nth r.nodes i
  with Not_found -> raise (UnboundVariableDFG x)

let insert (r : result) (x : var) (n : node) : result =
  let len = List.length r.nodes in
  {r with map = VarMap.add x len r.map; nodes = r.nodes @ [n]}

let val_to_node (v : value) (r : result) : node =
  match v with
  | VFloat(fl) ->
    (* for floats, we want always want a new literal node *)
    NLit(fl)
  | VVar(var) ->
    (* for variables, we want to use the existing node *)
    lookup r var

let expr_to_node (e : expr) (r : result) : node =
  match e with
  | EValue(v) -> val_to_node v r
  | EBinop(binop, v1, v2) ->
    let n1 = val_to_node v1 r in
    let n2 = val_to_node v2 r in
    NOp({
      op = OBinop(binop);
      incoming = [n1; n2];
    })
  | EUnop(unop, v) ->
    let n = val_to_node v r in
    NOp({
      op = OUnop(unop);
      incoming = [n];
    })
  | EPhi (var1, var2) ->
    let n1 = lookup r var1 in
    let n2 = lookup r var2 in
    NOp({
      op = OPhi;
      incoming = [n1; n2];
    })

let rec com_to_nodes (c : com) (r : result) : result =
  match c with
  | CAssgn(var, expr) ->
    let n = expr_to_node expr r in
    insert r var n
  | CIf(cond, branch) ->
    let cn = expr_to_node cond r in
    let ifn = NOp({
      op = OIf;
      incoming = [cn];
    }) in
    com_to_nodes branch (insert r "" ifn)
  | CSeq(coms) -> com_seq_to_nodes coms r
  | CPrint(expr) ->
    let en = expr_to_node expr r in
    let pn = NOp({
      op = OPrint;
      incoming = [en];
    }) in
    insert r "" pn

and com_seq_to_nodes (cs : com list) (r : result) : result =
  match cs with
  | [] -> r
  | h::t ->
    let r' = com_to_nodes h r in
    let r'' = com_seq_to_nodes t r' in
    {r'' with curr = r'.curr}

(* Printing *)

let print_operation (o : operation) : string =
  match o with
  | OPhi -> "Phi"
  | OIf -> "If"
  | OPrint -> "Print"
  | OBinop(bo) -> pretty_binop bo
  | OUnop(uo) -> pretty_unop uo

let rec print_nodes (ns : node list) : string =
  let f (acc : string) (n : node) = acc ^ (print_node n) in
  List.fold_left f "" ns

and print_node (n : node) : string =
  match n with
  | NLit(fl) -> "NLit: " ^ (string_of_float fl) ^ "\n"
  | NOp(on) ->
    "NOp: op: [" ^ (print_operation on.op) ^ "]" ^
    " incoming: [" ^ (string_of_int (List.length on.incoming)) ^ "]\n"
  | NStart -> "NStart\n"

let ssa_to_dfg (c : com) : dfg =
  let r = com_to_nodes c {curr = NStart; map = VarMap.empty; nodes = [NStart]} in
  r.nodes