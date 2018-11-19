(* open Z3

let solve () : string  =
  let context = Z3.mk_context [] in
  let solver = Z3.Solver.mk_solver context None in

  let xsy = Z3.Symbol.mk_string context "x" in
  let x = Z3.Boolean.mk_const context xsy in

  Z3.Solver.add solver [x];

  match Z3.Solver.check solver [] with
  | UNSATISFIABLE -> "unsat"
  | UNKNOWN -> "unknown"
  | SATISFIABLE ->
      match Z3.Solver.get_model solver with
      | None -> "no model"
      | Some model -> Printf.sprintf "%s" (Z3.Model.to_string model) *)