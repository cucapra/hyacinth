open Smtlib
open Dfg

let solver = Smtlib.make_solver "z3"

let results_to_strings : (identifier * term) list -> string list =
    List.map (fun (x,t) -> let Id s = x in
      s ^ "\t: " ^ (sexp_to_string (term_to_sexp t)))

let solve_test () : string  =
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

let comms_per_node (p : (node * term)) : term =
  match p with
  | (_, _) -> (int_to_term 0)

let comms_cost (assignments : (node * term) list) : term =
  let f (t_acc : term) (p : (node * term)) : term = add t_acc (comms_per_node p) in
  List.fold_left f (int_to_term 0) assignments


(* Idea: take in the list of nodes, return a list with.. logical partitions? *)
 let solve_dfg (graph : dfg) : (node * int) list =
  let _assignments = List.mapi (fun (i : int) (x : node) -> (x, (int_to_term i))) in

  if List.length graph > 0 then [] else []