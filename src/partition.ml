open Smtlib
open Dfg
open Ast
open Core
open Pervasives

let rows = 4
let cols = 4
let tiles = rows * cols

let term_0 = int_to_term 0
let dist_fun_id = (Id "manhattan_dist")
let con = Smtlib.const

type assignments = (node * term * (term * term)) list

let declare_int (s : solver) (n : string) =
  declare_const s (Id n) int_sort

let split_prefix (s : string) : (string * string) =
  let spl = String.split s ~on:'_' in
  (List.nth_exn spl 0, List.nth_exn spl 1)

let term_to_string (t : term) : string =
  (sexp_to_string (term_to_sexp t))

let results_to_strings r : string list =
  let filter_extra (Id i, _)  = (String.is_prefix i ~prefix:"z3name!") ||
    (String.equal "latest_time" i) in
  let per_node = List.filter ~f:(fun (x) -> not (filter_extra x)) r in
  let extra = List.filter ~f:filter_extra r in

  let compare_ids (Id i1, _) (Id i2, _) =
    let (p1, n1) = split_prefix i1 in
    let (p2, n2) = split_prefix i2 in
    let cp = compare (int_of_string n1) (int_of_string n2) in
    if cp != 0 then cp else compare p1 p2 in
  let sorted_per_node = List.sort ~compare:compare_ids per_node in
  let sorted_extra = List.sort ~compare:compare extra in
  let sorted = sorted_per_node @ sorted_extra in

  let print_term (Id s, t) = s ^ "\t: " ^ (term_to_string t) in
  List.map ~f:print_term sorted

let time_per_binop (bo : binop) : term =
  match bo with
  | BAnd -> int_to_term 1
  | BOr -> int_to_term 1
  | BEquals -> int_to_term 1
  | BNotEquals -> int_to_term 3
  | BLess -> int_to_term 3
  | BLessEq -> int_to_term 3
  | BGreater -> int_to_term 3
  | BGreaterEq -> int_to_term 3
  | BAdd -> int_to_term 3
  | BSub -> int_to_term 3
  | BMul -> int_to_term 5
  | BDiv -> int_to_term 10

let time_per_unop (uo : unop) : term =
  match uo with
  | UNot -> int_to_term 1
  | UNeg -> int_to_term 1
  | USqrt -> int_to_term 10
  | UAbs -> int_to_term 3

let time_per_op (o : operation) : term =
  match o with
  | OPhi -> int_to_term 1
  | OPrint -> term_0
  | OBinop(bo) -> time_per_binop bo
  | OUnop(uo) -> time_per_unop uo

(* The cost for communicating between two partitions is their manhattan distance
  in the core grid *)
let components (p : int) : (int * int) =
  let x = p % rows in
  let y : int = p / rows in
  (x, y)

let manhattan_dist (x, y) (x', y') =
  (abs (x - x')) + (abs (y - y'))

let constrain_comms_times (s : solver) =
  declare_fun s dist_fun_id [int_sort; int_sort] int_sort;
  let parts = List.range 0 tiles in
  let map_rel (p1 : int) (p2 : int) =
    let (x1, y1) = components p1 in
    let (x2, y2) = components p2 in
    let time = manhattan_dist (x1, y1) (x2, y2) in
    let args = [int_to_term p1; int_to_term p2] in
    assert_ s (equals (App(dist_fun_id, args)) (int_to_term time)) in
  List.iter ~f:(fun (p) -> List.iter ~f:(map_rel p) parts) parts

let time_for_comms (p1 : term) (p2 : term) : term =
  App(dist_fun_id, [p1; p2])

let constrain_per_incoming (s : solver) (a : assignments) (i_n : node) pt t1 =
  match i_n with
  | NStart | NLit(_) -> ()
  | NOp(_) ->
    let (_, pt', (_, t2')) = List.find_exn ~f:(fun (n', _, _) -> i_n = n') a in
    let partition_comms_term = time_for_comms pt pt' in
    (* The starting time must be after the incoming ending time plus the
    communication cost *)
    assert_ s (gte t1 (add t2' partition_comms_term))

let constrain_per_node (s : solver) (a : assignments) p  =
  match p with
  | (NStart, _, _) | (NLit(_), _, _) -> ()
  | (NOp(op), pt, (t1, t2)) ->
    (* The ending time must be after the starting time plus the op time *)
    let op_cost_term = time_per_op op.op in
    assert_ s (equals (add t1 op_cost_term) t2);
    (* The starting time must be after the ending time of each incoming node *)
    let f (n : node) = constrain_per_incoming s a n pt t1 in
    List.iter ~f:f op.incoming

let constrain_nodes (s : solver) (a : assignments) =
  List.iter ~f:(fun (p) -> constrain_per_node s a p) a

let constrain_partitions (s : solver) (a : assignments) =
  List.iter ~f:(fun (_, pt, _) -> assert_ s
    (and_ (gte pt term_0) (lt pt (int_to_term tiles)))) a

let constrain_times (s : solver) (t1 : term) (t2 : term) =
  assert_ s (gte t1 term_0);
  assert_ s (gte t2 t1)

let constrain_overlapping_times (s : solver) (a : assignments) =
  let no_overlap (_, p, (t1, t2)) (_, p', (t1', t2')) =
    assert_ s (implies (equals p p') (or_ (gte t1' t2) (lte t2' t1))) in
  let rec constrain_overlaps (curr : assignments) =
    match curr with
    | head::tail -> List.iter ~f:(no_overlap head) tail; constrain_overlaps tail
    | _ -> ()
  in
  constrain_overlaps a

let latest_time (s : solver) (a : assignments) : term =
  let l = "latest_time" in
  declare_int s l;
  let max (l : term) (_, _, (_, y)) = assert_ s (equals l (ite (lt l y) y l)) in
  List.iter ~f:(max (con l)) a;
  (con l)

(* Idea: take in the list of nodes, return a list with partition assignments *)
(*  let solve_dfg (graph : dfg) : (node * int) list = *)
let solve_dfg (graph : dfg) : string =
  let s : solver = Smtlib.make_solver "z3" in
  let a = List.mapi ~f:(fun (i : int) (x : node) ->
    let pt = "p_" ^ string_of_int i in
    let t1 = "t1_" ^ string_of_int i in
    let t2 = "t2_" ^ string_of_int i in
    declare_int s pt;
    declare_int s t1;
    declare_int s t2;
    let t1' : term = (con t1) in
    let t2' : term = (con t2) in
    constrain_times s t1' t2';
    (x, con pt, (con t1, con t2))) graph in
  constrain_comms_times s;
  constrain_partitions s a;
  constrain_overlapping_times s a;
  constrain_nodes s a;
  let total_time = latest_time s a in
  minimize s total_time;
  match check_sat s with
  | Unsat -> "Unsat"
  | Unknown -> "Unknown"
  | Sat ->
    let results = (get_model s) in
    let s = results_to_strings results in
    print_endline (String.concat ~sep:"\n" s);
  "Sat"