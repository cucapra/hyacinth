open Llvm

type block = llbasicblock

let outgoing_edges (node : block) : block list =
  let terminator = match block_terminator node with
  | Some t -> t
  | None -> failwith "Block must have terminator"
  in
  let succs = successors terminator |> Array.to_list in
  List.filter (fun n -> n != node) succs

let dfs (visited : block list) (start_node : block) =
  let rec explore (path : block list) (visited : block list) (node : block) =
    if (List.mem node visited) || (List.mem node path) then visited else
      let path' = node::path in
      let edges = outgoing_edges node in
      let visited = List.fold_left (explore path') visited edges in
      node::visited
  in explore [] visited start_node

let sort_blocks (cfg : block list) : block list =
  let sorted = dfs [] (List.hd cfg) in
  assert ((List.length cfg) = (List.length sorted));
  sorted
