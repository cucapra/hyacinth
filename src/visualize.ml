open Dfg
open Pretty
open Graph

let print_operation (o : operation) : string =
  match o with
  | OPhi -> "Phi"
  | OPrint -> "Print"
  | OBinop(bo) -> pretty_binop bo
  | OUnop(uo) -> pretty_unop uo

let print_address n : string =
  let address = 2*(Obj.magic n) in
  Printf.sprintf "(%d)" address

let string_of_node (n : node) : string =
  match n with
  | NLit(fl) -> "literal: " ^ (string_of_int (int_of_float fl))
  | NOp(o) -> "operation: " ^ (print_operation o.op)

let string_of_partition (n, p, (t1, t2)) =
  let node = string_of_node n in
  let sched = "\nCore: " ^ (string_of_int p)
    ^ "\nTime: (" ^ (string_of_int t1) ^ ", " ^ (string_of_int t2) ^ ")" in
  "\"" ^ node ^ sched ^ "\""

module VNode = struct
   type t = (node * int * (int * int))
   let compare = Pervasives.compare
   let hash = Hashtbl.hash
   let equal = (==)
end

module VEdge = struct
   type t = string
   let compare = Pervasives.compare
   let equal = (=)
   let default = ""
end

module G = Imperative.Digraph.ConcreteBidirectionalLabeled(VNode)(VEdge)

module Dot = Graphviz.Dot(struct
  include G
  let edge_attributes (_, e, _) = [`Label e; `Color 4711]
  let default_edge_attributes _ = []
  let get_subgraph _ = None
  let vertex_attributes _ = [`Shape `Box]
  let vertex_name v = string_of_partition v
  let default_vertex_attributes _ = []
  let graph_attributes _ = []
end)

let incoming n =
  match n with
  | NOp o -> o.incoming
  | _ -> []

let dfg_to_viz_graph (graph : (node * int * (int * int)) list) : G.t =
  let g = G.create () in
  let add_edge n1 n2 =
    let n2opt = List.find_opt (fun (n, _, (_, _)) -> n == n2) graph in
    match n2opt with
    | Some n2' -> G.add_edge g n2' n1
    | _ ->
      let (_, p', (t1', _)) = n1 in
      G.add_edge g (n2, p', (t1', t1')) n1 in
  let per_node p =
    G.add_vertex g p;
    let (n, _, (_, _)) = p in
    List.iter (add_edge p) (incoming n) in
  List.iter per_node graph;
  g

let visualize_dfg (graph : (node * int * (int * int)) list) =
  let file = open_out_bin "mygraph.dot" in
  Dot.output_graph file (dfg_to_viz_graph graph)