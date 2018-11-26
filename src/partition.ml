open Smtlib
open Dfg

let rows = 8
let cols = 8
let tiles = rows * cols

type assignments = (node * term) list

let results_to_strings : (identifier * term) list -> string list =
    List.map (fun (x,t) -> let Id s = x in
      s ^ "\t: " ^ (sexp_to_string (term_to_sexp t)))

let solve_test () : string  =
  let solver = Smtlib.make_solver "z3" in
  declare_const solver (Id "a") int_sort;
  declare_const solver (Id "l") bool_sort;
  declare_const solver (Id "p") bool_sort;
  declare_const solver (Id "r") bool_sort;
  assert_ solver
    (or_
      (and_ (gte (const "a") (Int 16)) (const "l"))
      (and_ (lt (const "a") (Int 16))
        (and_ (const "p")
          (and_ (gt (const "a") (Int 14)) (const "r")))));
  match check_sat solver with
  | Unsat | Unknown -> "Failed"
  | Sat ->
    let s = results_to_strings (get_model solver) in
    print_endline (String.concat "\n" s);
  "Sat"

let comms_per_incoming (a : assignments) (i_n : node) (t : term) : term =
  match i_n with
  | NStart | NLit(_) -> int_to_term 0
  | NOp(_) ->
    let (_, t') = List.find (fun (n', _) -> i_n = n') a in
    ite (equals t t') (int_to_term 0) (int_to_term 1)

let comms_per_node (a : assignments) (p : (node * term)) : term =
  match p with
  | (NStart, _) | (NLit(_), _) -> int_to_term 0
  | (NOp(o), t) ->
    let f (t_acc : term) (n : node) : term = add t_acc (comms_per_incoming a n t) in
    List.fold_left f (int_to_term 0) o.incoming

let comms_cost (a : assignments) : term =
  let f (t_acc : term) (p : (node * term)) : term = add t_acc (comms_per_node a p) in
  List.fold_left f (int_to_term 0) a

let constrain_partitions (s : solver) (a : assignments) =
  List.iter (fun (_, t) -> assert_ s
    (and_ (gte t (int_to_term 0)) (lt t (int_to_term tiles)))) a

(* Idea: take in the list of nodes, return a list with partition assionments? *)
(*  let solve_dfg (graph : dfg) : (node * int) list = *)
let solve_dfg (graph : dfg) : string =
  let solver = Smtlib.make_solver "z3" in
  let a = List.mapi (fun (i : int) (x : node) ->
    let s = "n" ^ string_of_int i in
    declare_const solver (Id s) int_sort;
    (x, (const s))) graph in
  constrain_partitions solver a;
  declare_const solver (Id "cost") int_sort;
  let cost = comms_cost a in
  assert_ solver (equals cost (const "cost"));
(*   let cost_term = lt cost (int_to_term 100) in *)
(*   let cost_term = (and_ (gt cost (int_to_term 10)) (lt cost (int_to_term 100))) in
 *)(*   assert_ solver cost_term; *)
  minimize solver cost;
  match check_sat solver with
  | Unsat | Unknown -> "Failed"
  | Sat ->
    let results = (get_model solver) in
    let s = results_to_strings results in
    print_endline (String.concat "\n" s);
  "Sat"
