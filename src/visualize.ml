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
  | NLit(fl) -> "\"lit " ^ (string_of_int (int_of_float fl)) ^ " " ^ (print_address n) ^ " \""
  | NOp(o) -> "\"" ^ (print_operation o.op) ^ (print_address n) ^ " \""

module VNode = struct
   type t = node
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
  let vertex_name v = string_of_node v
  let default_vertex_attributes _ = []
  let graph_attributes _ = []
end)

let incoming n =
  match n with
  | NOp o -> o.incoming
  | _ -> []

let dfg_to_viz_graph (graph : dfg) : G.t =
  let g = G.create () in
  let add_edge n n' =  G.add_edge g n' n in
  let per_node n = G.add_vertex g n; List.iter (add_edge n) (incoming n) in
  List.iter per_node graph;
  g

let visualize_dfg (graph : dfg) =
  let file = open_out_bin "mygraph.dot" in
  Dot.output_graph file (dfg_to_viz_graph graph)