open Smtlib
open Dfg
open Ast
open Pervasives

exception UnexpectedTerm of term

module NodeMap =
  Map.Make(struct type t = Dfg.node;; let compare = compare end)

type config =
  {
    rows : int;
    cols : int;
    timeout : int; (* in seconds *)
    debug : bool;
    direct_distance : bool;
  }

type placement =
  {
    partition : int;
    start_time : int;
    end_time : int;
  }

(* node, core assignment, (starting time, ending time) *)
and assignments = (node * term * (term * term)) list
and partitioning = placement NodeMap.t

let rows = ref 2
let cols = ref 2

let debug = ref false
let lookup_table = ref true

let term_0 = int_to_term 0
let dist_fun_id = (Id "manhattan_dist")
let con = Smtlib.const

let declare_int (s : solver) (n : string) =
  declare_const s (Id n) int_sort

let split_prefix (s : string) : (string * string) =
  let spl = Core.String.split s ~on:'_' in
  (List.nth spl 0, List.nth spl 1)

let term_to_string (t : term) : string =
  (sexp_to_string (term_to_sexp t))

let term_to_int (t : term) : int =
  match t with
  | Int i -> i
  | _ -> raise (UnexpectedTerm t)

(* Debugging *)

let assert_ s t : unit =
  if !debug then print_endline (term_to_string t);
  Smtlib.assert_ s t

let push s : unit =
  if !debug then (print_endline "push");
  Smtlib.push s

let pop s : unit =
  if !debug then (print_endline "pop");
  Smtlib.pop s

let results_to_strings r : string list =
  let filter_extra (Id i, _)  = (Core.String.is_prefix i ~prefix:"z3name!") ||
    (String.equal "latest_time" i) in
  let per_node = List.filter (fun (x) -> not (filter_extra x)) r in
  let extra = List.filter filter_extra r in

  let compare_ids (Id i1, _) (Id i2, _) =
    let (p1, n1) = split_prefix i1 in
    let (p2, n2) = split_prefix i2 in
    let cp = compare (int_of_string n1) (int_of_string n2) in
    if cp != 0 then cp else compare p1 p2 in
  let sorted_per_node = List.sort compare_ids per_node in
  let sorted_extra = List.sort compare extra in
  let sorted = sorted_per_node @ sorted_extra in

  let print_term (Id s, t) = s ^ "\t: " ^ (term_to_string t) in
  List.map print_term sorted

let time_per_internal_op (uo : internal_op) : int =
  match uo with
  | UNot -> 2
  | UNeg -> 2
  | USqrt -> 10
  | UAbs -> 3
  | BAnd -> 1
  | BOr -> 1
  | BEquals -> 1
  | BNotEquals -> 1
  | BLess -> 1
  | BLessEq -> 1
  | BGreater -> 1
  | BGreaterEq -> 1
  | BAdd -> 3
  | BSub -> 3
  | BMul -> 5
  | BDiv -> 10

let time_per_op (o : operation) : int =
  match o with
  | OPhi -> 0
  | OOp(OInternal(io)) -> time_per_internal_op io
  | OOp(OExternal(_, cost)) -> cost

(* The cost for communicating between two partitions is their manhattan distance
  in the core grid *)
let components (p : int) : (int * int) =
  let x = p mod !rows in
  let y : int = p / !rows in
  (x, y)

let manhattan_dist (x, y) (x', y') =
  (abs (x - x')) + (abs (y - y'))

let constrain_comms_times_lookup_table (s : solver) =
  declare_fun s dist_fun_id [int_sort; int_sort] int_sort;
  let tiles = !rows * !cols in
  let parts = Core.List.range 0 tiles in
  let map_rel (p1 : int) (p2 : int) =
    let (x1, y1) = components p1 in
    let (x2, y2) = components p2 in
    let time = manhattan_dist (x1, y1) (x2, y2) in
    let args = [int_to_term p1; int_to_term p2] in
    assert_ s (equals (App(dist_fun_id, args)) (int_to_term time)) in
  List.iter (fun (p) -> List.iter (map_rel p) parts) parts

let constrain_comms_times_direct (s : solver) =
  let abs = "define-fun absolute ((x Int)) Int (ite (>= x 0) x (- x))" in
  let dist =  Printf.sprintf  "define-fun manhattan_dist ((x Int) (y Int)) Int
    (+ (absolute (- (mod x %d) (mod y %d))) (absolute (- (div x %d) (div y %d))))"
    !cols !cols !cols !cols in
  let r = (sexp_to_string (command s (Smtlib.SString abs))) in
  let r' = (sexp_to_string (command s (Smtlib.SString dist))) in
  if ((r = "success") && (r' = "success")) then ()
  else print_endline ("Warning: unexpected responses: " ^ r ^ r')

let constrain_comms_times (s : solver) =
  if !lookup_table then constrain_comms_times_lookup_table s
  else constrain_comms_times_direct s

let time_for_comms (p1 : term) (p2 : term) : term =
  App(dist_fun_id, [p1; p2])

let constrain_per_incoming (s : solver) (a : assignments) (i_n : node) pt t1 =
  match i_n with
  | NLit _ -> () (* No cost for incoming literals *)
  | NOp _ | NInput _->
    begin match (List.find_opt (fun (n', _, _) -> i_n == n') a) with
    | Some (_, pt', (_, t2')) ->
      let partition_comms_term = time_for_comms pt pt' in
      (* The starting time must be after the incoming ending time plus the
      communication cost *)
      assert_ s (gte t1 (add t2' partition_comms_term))
    | None -> print_endline ("Cannot find partition for: " ^ (print_node i_n))
    end

let constrain_per_node (s : solver) (a : assignments) p  =
  match p with
  | (NLit(_), _, _) -> failwith "Literals should not be directly constrained"
  | (NOp(op), pt, (t1, t2)) ->
    (* The ending time must be after the starting time plus the op time *)
    let op_cost_term = int_to_term (time_per_op op.op) in
    assert_ s (equals (add t1 op_cost_term) t2);
    (* The starting time must be after the ending time of each incoming node *)
    let f (n : node) = constrain_per_incoming s a n pt t1 in
    List.iter f op.incoming
  | (NInput _, pt, (t1, t2)) ->
    (* The ending time must be after the starting time plus the input time *)
    let input_cost = int_to_term 1 in
    assert_ s (equals (add t1 input_cost) t2);
    (* For now, inputs must be from partition 0 *)
    assert_ s (equals pt term_0)

let constrain_nodes (s : solver) (a : assignments) =
  List.iter (fun (p) -> constrain_per_node s a p) a

let constrain_partitions (s : solver) (a : assignments) =
  let tiles = !rows * !cols in
  List.iter (fun (_, pt, _) -> assert_ s
    (and_ (gte pt term_0) (lt pt (int_to_term tiles)))) a

let constrain_times (s : solver) (t1 : term) (t2 : term) =
  assert_ s (gte t1 term_0);
  assert_ s (gte t2 t1)

let constrain_overlapping_times (s : solver) (a : assignments) =
  let no_overlap (_, p, (t1, t2)) (_, p', (t1', t2')) =
    assert_ s (implies (equals p p') (or_ (gte t1' t2) (lte t2' t1))) in
  let rec constrain_overlaps (curr : assignments) =
    match curr with
    | head::tail -> List.iter (no_overlap head) tail; constrain_overlaps tail
    | _ -> ()
  in
  constrain_overlaps a

let latest_time (s : solver) (a : assignments) : term =
  let l = "latest_time" in
  declare_int s l;
  let max (l : term) (_, _, (_, y)) = assert_ s (equals l (ite (lte l y) y l)) in
  List.iter (max (con l)) a;
  (con l)

let sequential_time (a : assignments) : int =
  let total_time (acc : int) (n, _, _) = match n with
  | NLit _ -> acc
  | NOp o -> time_per_op o.op + acc
  | NInput _ -> acc in
  List.fold_left total_time 0 a

let solve_for_goal (s : solver) (total : term) (goal : int) =
  print_endline ("Searching for solution for goal: " ^ (string_of_int goal));
  push s;
  (assert_ s (lte total (int_to_term goal)));
  match check_sat s with
  | Unsat -> print_endline "Unsat"; pop s; None
  | Unknown -> print_endline "Timeout"; pop s; None
  | Sat -> print_endline "Sat!";
    let model = Some (get_model s) in
    pop s;
    model

let rec incrememntal_solve_loop (s : solver) (total : term) (goal : int) best =
  let opt_res = solve_for_goal s total goal in
  match opt_res with
  | Some res ->
    let find_time (Id i, _) = String.equal "latest_time" i in
    let (_, t) = List.find find_time res in
    let old_best = match t with
    | Int n -> n
    | _ -> goal in
    incrememntal_solve_loop s total (old_best - 1) opt_res
  | None -> best

let set_timeout (s : solver) (seconds : int) =
  let ms_string = string_of_int (seconds * 1000) in
  let response = (Smtlib.SString ("set-option :timeout " ^ ms_string)) in
  let s = (sexp_to_string (command s response)) in
  if (s = "success") then () else
  print_endline ("Warning: unexpected response setting timeout: " ^ s)

let set_configuration (s : solver) (c : config) =
    set_timeout s c.timeout;
    cols := c.cols;
    rows := c.rows;
    debug := c.debug;
    lookup_table := not c.debug

(* Idea: take in the list of nodes, return a list with partition assignments *)
let solve_dfg (graph : dfg) (config : config) : partitioning =
  let s : solver = Smtlib.make_solver "z3" in
  set_configuration s config;
  let a = List.mapi (fun (i : int) (x : node) ->
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
  let upper_bound = sequential_time a in
  print_endline ("Sequential time: " ^ (string_of_int upper_bound) ^"\n");

  let opt_res = incrememntal_solve_loop s total_time upper_bound None in
  match opt_res with
  | Some res ->
    let s = results_to_strings res in
    print_endline (Core.String.concat ~sep:"\n" s);
    let partitioning = ref NodeMap.empty in
    List.iteri (fun (i : int) (x : node) ->
      let find_t s = List.find (fun (Id i, _) -> String.equal i s) res in
      let find_int s = (let (_, t) = find_t s in term_to_int t) in
      let pt = find_int ("p_" ^ string_of_int i) in
      let t1 = find_int ("t1_" ^ string_of_int i) in
      let t2 = find_int ("t2_" ^ string_of_int i) in
      let placement = {partition = pt; start_time = t1; end_time = t2;} in
      partitioning := NodeMap.add x placement !partitioning) graph;
    !partitioning
  | None -> failwith "No partitioning found"
