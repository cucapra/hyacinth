open Smtlib

let solver = Smtlib.make_solver "z3"

let results_to_strings : (identifier * term) list -> string list =
    List.map (fun (x,t) -> let Id s = x in
      s ^ "\t: " ^ (sexp_to_string (term_to_sexp t)))

let solve () : string  =
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
(*   Smtlib.Const term_ *)

(*
((age >= 16) ∧ haveLicense) ∨ ((age < 16) ∧ havePermit ∧ withParent)

f = z3.Or(z3.And(age >= 16, haveLicense), z3.And(age < 16, havePermit, withParent))
f = z3.And(f, z3.Implies(haveLicense, z3.Not(havePermit)))
 *)