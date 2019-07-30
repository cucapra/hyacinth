open Graph
open Llvm
open Llvm_shared
open Partition

let string_of_node (v : llvalue) : string =
  string_of_llvalue v

let string_of_partition (n, p, (t1, t2)) =
  let node = string_of_node n in
  let sched = "\nCore: " ^ (string_of_int p)
    ^ "\nTime: (" ^ (string_of_int t1) ^ ", " ^ (string_of_int t2) ^ ")" in
  "\"" ^ node ^ sched ^ "\""

let vertex_attribute (_, p, _) =
  let color = match p with
  | 0 -> 0xb7d2ff
  | 1 -> 0xf7f08a
  | 2 -> 0xff9393
  | _ -> 0xd5b7ff in
  [`Shape `Box; `Fillcolor color; `Style `Filled]

let edge_attribute ((_, p1, _), _, (_, p2, _)) =
  if (p1 = p2) then
    [`Color 4711]
  else
    let cost = manhattan_dist (components p1) (components p2) in
    [`Label ("Cost: " ^ string_of_int cost)]

module VNode = struct
  type t = (llvalue * int * (int * int))
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

let incoming (v : llvalue) : llvalue list=
  map_operands (fun v' -> v') v

let dfg_to_viz_graph (graph : placement ValueMap.t) : G.t =
  let g = G.create () in
  let add_edge n1 n2 =
    match ValueMap.find_opt n2 graph with
    | Some p -> G.add_edge g (n2, p.partition, (p.start_time, p.end_time)) n1
    | _ -> (* Literal *)
      let (_, p', (t1', _)) = n1 in
      G.add_edge g (n2, p', (t1', t1')) n1 in
  let per_node n p =
    G.add_vertex g (n, p.partition, (p.start_time, p.end_time));
    let p' = (n, p.partition, (p.start_time, p.end_time)) in
    List.iter (add_edge p') (incoming n) in
  ValueMap.iter per_node graph;
  g

let visualize_dfg (graph : placement ValueMap.t) (output : string) =
  let file = open_out_bin output in
  Dot.output_graph file (dfg_to_viz_graph graph)
