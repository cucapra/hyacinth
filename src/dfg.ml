open Ast
open Pretty

exception UnboundVariableDFG of var

module VarMap =
  Map.Make(struct type t = var;; let compare = String.compare end)

module ComMap =
  Map.Make(struct type t = com;; let compare = compare end)

type operation =
  | OOp of op
  | OPhi

and opnode =
  {
    op : operation;
    incoming : node list;
  }

and node =
  | NLit of float
  | NOp of opnode
  | NInput of int

and result =
  {
    curr : node option;
    nodes : node list;
    map : int VarMap.t;
    com_map : node ComMap.t ref;
  }

type dfg = node list

(* Conversion *)

let lookup (r : result) (x : var) : node =
  try let i = VarMap.find x r.map in List.nth r.nodes i
  with Not_found -> NInput (-1)

let insert (r : result) (x : var) (n : node) : result =
  let len = List.length r.nodes in
  {r with map = VarMap.add x len r.map; nodes = r.nodes @ [n]}

let val_to_node (v : value) (r : result) : node =
  match v with
  | VFloat(fl) ->
    (* for floats, we always want a new literal node *)
    NLit(fl)
  | VVar(var) ->
    (* for variables, we want to use the existing node *)
    lookup r var

let expr_to_node (e : expr) (r : result) : node =
  match e with
  | EValue (v) -> val_to_node v r
  | EPhi (var1, var2) ->
    let n1 = lookup r var1 in
    let n2 = lookup r var2 in
    NOp ({
      op = OPhi;
      incoming = [n1; n2];
    })
  | EOp (o, values) ->
    NOp({
      op = OOp(o);
      incoming = List.map (fun (v) -> val_to_node v r) values;
    })
  | EInput (n) -> NInput n


let rec com_to_nodes (c : com) (r : result) : result =
  match c with
  | CAssgn(var, expr) ->
    let n = expr_to_node expr r in
    let r' = insert r var n in
    r'.com_map := ComMap.add c n !(r'.com_map);
    r'
  | CIf(_, branch) ->
    com_to_nodes branch r
  | CSeq(coms) -> com_seq_to_nodes coms r
  | CPrint(expr) ->
    let en = expr_to_node expr r in
    let pn = NOp({
      op = OOp(OExternal("print", 0));
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

let print_address n : string =
  let address = 2*(Obj.magic n) in
  Printf.sprintf "%d" address

let print_address_list ns : string =
  String.concat ", " (List.map print_address ns)

let print_operation (o : operation) : string =
  match o with
  | OPhi -> "Phi"
  | OOp(op) -> pretty_op op

let rec print_nodes (ns : node list) : string =
  let f (acc : string) (n : node) = acc ^ (print_node n) in
  List.fold_left f "" ns

and print_node (n : node) : string =
  match n with
  | NLit fl -> "NLit: " ^ (string_of_float fl) ^ " " ^(print_address n) ^ "\n"
  | NOp on ->
    "NOp: op: [" ^ (print_operation on.op) ^ "]" ^ " " ^(print_address n) ^
    " incoming: [" ^ (print_address_list on.incoming) ^ "]\n"
  | NInput n -> "NInput " ^ (string_of_int n)

let ssa_to_dfg (seq_per_block : com list) : dfg list * node ComMap.t =
  let com_map = ref ComMap.empty in
  let dfg_per_seq seq =
    let init = {curr = None; map = VarMap.empty; nodes = []; com_map = com_map} in
    let r = com_to_nodes seq init in
    let keep n = match n with
    | NOp _ | NInput _ -> true
    | NLit _-> false in
    List.filter keep r.nodes
  in
  let nodes = List.map dfg_per_seq seq_per_block in
  (nodes, !com_map)
