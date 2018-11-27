open Smtlib
open Dfg

let rows = 8
let cols = 8
let tiles = rows * cols

let term_0 = int_to_term 0

type assignments = (node * term * (term * term)) list

let results_to_strings r : string list =
  List.map (fun (x,t) -> let Id s = x in
    s ^ "\t: " ^ (sexp_to_string (term_to_sexp t)))
  (List.sort (fun (Id i1, _) (Id i2, _) -> String.compare i1 i2) r)

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
    let (_, t', _) = List.find (fun (n', _, _) -> i_n = n') a in
    ite (equals t t') (int_to_term 0) (int_to_term 1)

let comms_per_node (a : assignments) (p : (node * term * (term * term))) : term =
  match p with
  | (NStart, _, _) | (NLit(_), _, _) -> int_to_term 0
  | (NOp(o), t, _) ->
    let f (t_acc : term) (n : node) : term = add t_acc (comms_per_incoming a n t) in
    List.fold_left f (int_to_term 0) o.incoming

let comms_cost (a : assignments) : term =
  let f (t_acc : term) p : term = add t_acc (comms_per_node a p) in
  List.fold_left f (int_to_term 0) a

let constrain_partitions (s : solver) (a : assignments) =
  List.iter (fun (_, t, _) -> assert_ s
    (and_ (gte t term_0) (lt t (int_to_term tiles)))) a

let constrain_times (s : solver) (t1 : term) (t2 : term) =
  assert_ s (gte t1 term_0);
  assert_ s (gte t2 t1)

(* Idea: take in the list of nodes, return a list with partition assignments? *)
(*  let solve_dfg (graph : dfg) : (node * int) list = *)
let solve_dfg (graph : dfg) : string =
  let s = Smtlib.make_solver "z3" in
  let a = List.mapi (fun (i : int) (x : node) ->
    let pt = "p_" ^ string_of_int i in
    let t1 = "t1_" ^ string_of_int i in
    let t2 = "t2_" ^ string_of_int i in
    declare_const s (Id pt) int_sort;
    declare_const s (Id t1) int_sort;
    declare_const s (Id t2) int_sort;
    constrain_times s (const t1) (const t2);
    (x, const pt, (const t1, const t2))) graph in
  constrain_partitions s a;
  declare_const s (Id "cost") int_sort;
  let cost = comms_cost a in
  assert_ s (equals cost (const "cost"));
(*   let cost_term = lt cost (int_to_term 100) in *)
(*   let cost_term = (and_ (gt cost (int_to_term 10)) (lt cost (int_to_term 100))) in
 *)(*   assert_ s cost_term; *)
  minimize s cost;
  match check_sat s with
  | Unsat | Unknown -> "Failed"
  | Sat ->
    let results = (get_model s) in
    let s = results_to_strings results in
    print_endline (String.concat "\n" s);
  "Sat"
