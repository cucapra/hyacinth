open Dfg
open Pretty
open Graph
open Partition

let print_operation (o : operation) : string =
  match o with
  | OPhi -> "Phi"
  | OOp op -> pretty_op op

let print_address n : string =
  let address = 2*(Obj.magic n) in
  Printf.sprintf "(%d)" address

let string_of_node (n : node) : string =
  match n with
  | NLit fl -> "literal: " ^ (string_of_float fl)
  | NOp o -> "operation: " ^ (print_operation o.op)
  | NInput n -> "input: " ^ (string_of_int n)

let string_of_partition (n, p, (t1, t2)) =
  let node = string_of_node n in
  let sched = "\nCore: " ^ (string_of_int p)
    ^ "\nTime: (" ^ (string_of_int t1) ^ ", " ^ (string_of_int t2) ^ ")" in
  "\"" ^ node ^ sched ^ "\""

let vertex_attribute (n, p, _) =
  let color = match p with
  | 0 -> 0xb7d2ff
  | 1 -> 0xf7f08a
  | 2 -> 0xff9393
  | _ -> 0xd5b7ff in
  let shape = match n with
  | NInput _ -> `Diamond
  | NLit _ -> `Box
  | NOp _ -> `Ellipse in
  [`Shape shape; `Fillcolor color; `Style `Filled]

let edge_attribute ((_, p1, _), _, (_, p2, _)) =
  if (p1 = p2) then
    [`Color 4711]
  else
    let cost = manhattan_dist (components p1) (components p2) in
    [`Label ("Cost: " ^ string_of_int cost)]

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
  let edge_attributes e = edge_attribute e
  let default_edge_attributes _ = []
  let get_subgraph _ = None
  let vertex_attributes v = vertex_attribute v
  let vertex_name v = string_of_partition v
  let default_vertex_attributes _ = []
  let graph_attributes _ = []
end)

let incoming n =
  match n with
  | NOp o -> o.incoming
  | _ -> []

let dfg_to_viz_graph (graph : partitioning) : G.t =
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

let visualize_dfg (graph : partitioning) (output : string) =
  let file = open_out_bin output in
  Dot.output_graph file (dfg_to_viz_graph graph)